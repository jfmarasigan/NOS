create or replace PACKAGE BODY           "ITEM_TRANS_PKG" as
    FUNCTION get_table(
        p_item_id varchar2
    )
    RETURN v_itm_table PIPELINED
    AS
        v_rec v_itm_rec;
        TYPE q_cur IS REF CURSOR;
        v_cur q_cur;
        v_query varchar2(5000);
    BEGIN
    IF p_item_id IS NOT NULL THEN
    BEGIN
    v_query := 'SELECT 
                ''O'' AS "IO", ''IV '' || npt002.invoice_id AS "INV_SHP_NO",
                npt002.date_created AS "INV_DATE_ETA", npt002.quantity AS "QTY_CS",
                npt002.quantity * 100 AS "QTY_UNITS", nvl(npt002.discounted_price, npt002.item_price)/(npt002.quantity * 100) AS "COSTS", 
                nit022.balance_after_transaction AS "BALANCE", npt002.warehouse_id AS "WHSE" 
            FROM 
                NPT002 npt002, NPT001 npt001, NIT022 nit022
            WHERE npt002.ITEM_ID IN (' || p_item_id || ') AND npt001.invoice_id = npt002.invoice_id AND nit022.transaction_type = 1
                    AND nit022.reference_id = npt002.invoice_id
            UNION ALL
            SELECT 
                ''I'' AS "IO", ''S '' || nit016.shipment_id AS "INV_SHP_NO", 
                nit016.eta AS "INV_DATE_ETA", QTY_UNITS/100
                AS "QTY_CS", QTY_UNITS, nit013.internal_price AS "COSTS",
                nit022.balance_after_transaction AS "BALANCE", nit016.warehouse_id AS "WHSE" 
            FROM 
                NIT016 nit016, NIT015 nit015, NIT013 nit013, NIT022 nit022, 
                (SELECT SUM(CASE internal_uom_id
                    WHEN 1 THEN QTY
                    WHEN 2 THEN QTY * 10
                    WHEN 3 THEN QTY * 50
                    WHEN 4 THEN QTY * 100
                    END) AS QTY_UNITS FROM nit013 where item_id IN (' || p_item_id || '))
             WHERE nit016.shipment_id = nit015.shipment_id AND nit015.po_id = nit013.po_id 
                AND nit013.item_id IN (' || p_item_id || ') AND nit022.transaction_type = 2 AND nit022.reference_id = nit016.shipment_id
             ORDER BY INV_DATE_ETA DESC';

    OPEN v_cur FOR v_query;

    LOOP
        FETCH v_cur INTO v_rec.io, v_rec.inv_shp_no, v_rec.inv_date_eta, v_rec.qty_cs, v_rec.qty_units,
        v_rec.costs, v_rec.balance, v_rec.whse;
        EXIT WHEN v_cur%NOTFOUND;
        PIPE ROW (v_rec);
    END LOOP;
    CLOSE v_cur;
    END;
    END IF;
    END get_table;

    FUNCTION set_item_no(
        p_item_id varchar2
    )
    RETURN header_table PIPELINED AS
    v_query varchar2(1000);
    TYPE q_cur IS REF CURSOR;
    v_cur q_cur;
    v_rec header_rec;
    BEGIN
    IF p_item_id IS NOT NULL THEN
        BEGIN
            v_query:='SELECT DISTINCT ITEM_NUM FROM NIT001 WHERE ITEM_ID IN (' || p_item_id || ')';

            OPEN v_cur FOR v_query;

            LOOP
                FETCH v_cur INTO v_rec.return_item;
                EXIT WHEN v_cur%NOTFOUND;
                PIPE ROW(v_rec);
            END LOOP;
            CLOSE v_cur;
        END;
    END IF;
    END set_item_no;

    FUNCTION set_upc(
        p_item_id varchar2
    )
    RETURN header_table PIPELINED AS
    v_query varchar2(1000);
    TYPE q_cur IS REF CURSOR;
    v_cur q_cur;
    v_rec header_rec;
    BEGIN
    IF p_item_id IS NOT NULL THEN
        BEGIN
            v_query:='SELECT DISTINCT UPC FROM NIT002 WHERE ITEM_ID IN (' || p_item_id || ') AND UOM_ID = 4';

            OPEN v_cur FOR v_query;

            LOOP
                FETCH v_cur INTO v_rec.return_item;
                EXIT WHEN v_cur%NOTFOUND;
                PIPE ROW(v_rec);
            END LOOP;
            CLOSE v_cur;
        END;
    END IF;
    END set_upc;

    FUNCTION set_item_desc(
        p_item_id varchar2
    )
    RETURN header_table PIPELINED AS
    v_query varchar2(1000);
    TYPE q_cur IS REF CURSOR;
    v_cur q_cur;
    v_rec header_rec;
    BEGIN
    IF p_item_id IS NOT NULL THEN
        BEGIN
            v_query:='SELECT DISTINCT ITEM_DESC FROM NIT001 WHERE ITEM_ID IN (' || p_item_id || ')';

            OPEN v_cur FOR v_query;

            LOOP
                FETCH v_cur INTO v_rec.return_item;
                EXIT WHEN v_cur%NOTFOUND;
                PIPE ROW(v_rec);
            END LOOP;
            CLOSE v_cur;
        END;
    END IF;
    END set_item_desc;

    FUNCTION convert_item_qty_between_lvls (
        p_item_id       nit001.item_id%TYPE,
        p_qty           NUMBER,
        p_level_from    nit002."LEVEL"%TYPE,
        p_level_to      nit002."LEVEL"%TYPE
    )
    RETURN NUMBER
    AS
        v_resulting_qty     NUMBER;
        v_level_from_qty    nit002.quantity%TYPE;
        v_level_1_qty       NUMBER;
    BEGIN
        IF p_level_from = p_level_to THEN
            v_resulting_qty := p_qty;
        ELSE
            SELECT p_qty * CASE WHEN p_level_from > 1 THEN quantity ELSE 1 END
              INTO v_level_1_qty
              FROM nit002
             WHERE item_id = p_item_id
               AND "LEVEL" = p_level_from;

            SELECT CASE WHEN p_level_from < p_level_to 
                        THEN v_level_1_qty / (CASE WHEN p_level_to = 1 THEN 1 ELSE quantity END)
                        ELSE v_level_1_qty * (CASE WHEN p_level_to = 1 THEN 1 ELSE quantity END)
                        END
              INTO v_resulting_qty
              FROM nit002
             WHERE item_id = p_item_id
               AND "LEVEL" = p_level_to;
        END IF;

        RETURN v_resulting_qty;
    END convert_item_qty_between_lvls; 

    PROCEDURE log_item_transaction (
    	p_item_id				nit022.item_id%TYPE,
    	p_warehouse_id			nit022.warehouse_id%TYPE,
    	p_uom_id 				nit022.uom_id%TYPE,
    	p_reference_id 			nit022.reference_id%TYPE,
    	p_reference_date		nit022.reference_date%TYPE,
    	p_io 					nit022.io%TYPE,
    	p_cost 					nit022.cost%TYPE,
    	p_qty 					nit004.qty%TYPE
    )
    as
        v_item_level        nit002."LEVEL"%TYPE;
    	v_qty_cs 			nit022.qty_cs%TYPE;
    	v_qty_units 		nit022.qty_units%TYPE;
    	v_balance 			nit022.balance_after_transaction%TYPE;

        v_smallest_cs       nit022.qty_cs%TYPE;
        v_master_cs         nit022.qty_cs%TYPE;
        v_inner_cs1         nit022.qty_cs%TYPE;
        v_inner_cs2         nit022.qty_cs%TYPE;

        v_smallest_bal      nit022.balance_after_transaction%TYPE;
        v_master_bal        nit022.balance_after_transaction%TYPE;
        v_inner_bal1        nit022.balance_after_transaction%TYPE;
        v_inner_bal2        nit022.balance_after_transaction%TYPE;
    begin
        select "LEVEL" item_level
          into v_item_level
          from nit002
         where item_id = p_item_id
           and uom_id = p_uom_id;

    	v_qty_cs := item_trans_pkg.convert_item_qty_between_lvls(p_item_id, p_qty, v_item_level, 4);
    	v_qty_units := item_trans_pkg.convert_item_qty_between_lvls(p_item_id, p_qty, v_item_level, 1);

    	begin
    		select sum(item_trans_pkg.convert_item_qty_between_lvls(a.item_id, a.qty, b."LEVEL", 1)) f_bal
    		  into v_balance
    		  from nit004 a,
                   nit002 b
    		 where a.item_id = b.item_id
               and a.uom_id = b.uom_id
               and a.item_id = p_item_id
    		   and a.warehouse_id = p_warehouse_id;
    	exception
    		when no_data_found then
    			v_balance := 0;
    	end;

        -- for when separate columns for qty and balance is implemented
        -- if v_item_level = 1 then
        --     v_smallest_cs := p_qty;
        --     v_smallest_bal := v_balance;
        -- elsif v_item_level = 2 then
        --     v_inner_cs1 := p_qty;
        --     v_inner_bal1 := v_balance;
        -- elsif v_item_level = 3 then
        --     v_inner_cs2 := p_qty;
        --     v_inner_bal2 := v_balance;
        -- else
        --     v_master_cs := p_qty;
        --     v_master_bal := v_balance;
        -- end if;

    	insert into nit022 (item_id, warehouse_id, uom_id, reference_id, reference_date, 
    						qty_cs, qty_units, balance_after_transaction, io, cost)
    	     values (p_item_id, p_warehouse_id, p_uom_id, p_reference_id, p_reference_date,
    	     		 v_qty_cs, v_qty_units, NVL(v_balance, 0), p_io, p_cost);

    end log_item_transaction;
end "ITEM_TRANS_PKG";
/