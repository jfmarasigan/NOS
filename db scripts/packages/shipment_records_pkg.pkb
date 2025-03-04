create or replace PACKAGE BODY           "SHIPMENT_RECORDS_PKG" 
as
    FUNCTION get_first_vendor (
        p_shipment_id       nit016.shipment_id%TYPE
    )
    return VARCHAR2
    as
        v_vendor            nit006.vendor_name%TYPE;
    begin
        SELECT c.vendor_name
          INTO v_vendor
          FROM nit015 b,
               nit006 c
         WHERE b.vendor_id = c.vendor_id
           AND b.shipment_id = p_shipment_id
           AND b.vendor_sequence = 1;

        RETURN v_vendor;
    end get_first_vendor;

    FUNCTION get_shipment_records (
        p_search        VARCHAR2,
        p_sort_col      VARCHAR2,
        p_month         VARCHAR2
    )
    RETURN shipment_tab PIPELINED
    as
        TYPE cur IS REF CURSOR;
        v_cur           cur;

        v_query         VARCHAR2(2000);
        v_rec           shipment_rec;
    begin
        v_query := 'SELECT a.shipment_id,
                           c.vendor_code vendor_code,
                           c.vendor_name vendor,
                           TO_NUMBER(SUBSTR(a.shipment_number, 6, 3), ''999'') ship_no,
                           a.shipment_number, a.vessel_name, a.vessel_bl_no,
                           case when a.is_posted = ''Y'' THEN ''P'' 
                                when a.is_received = ''Y'' THEN ''R''
                                else null
                                end p,
                           a.etd, 
                           a.eta,
                           a.container_no
                      FROM nit016 a,
                           nit015 b,
                           nit006 c
                     WHERE a.shipment_id = b.shipment_id
                       AND b.vendor_id = c.vendor_id
                       AND b.vendor_sequence = 1 
                       AND SUBSTR(a.shipment_number, 0, 4) = ''' || p_search || ''' ';

        IF p_month IS NOT NULL THEN
            v_query := v_query || ' AND EXTRACT(MONTH FROM a.eta) = ' || p_month || ' 
                                    AND EXISTS (SELECT x.container_no, COUNT(x.container_no)
                                                  FROM nit016 x
                                                 WHERE x.container_no = a.container_no
                                              GROUP BY x.container_no
                                              HAVING COUNT(x.container_no) > 1)';
        END IF;

        IF p_sort_col IS NOT NULL THEN
            IF p_sort_col = '1' THEN
                v_query := v_query || ' ORDER BY c.vendor_code ';
            ELSIF p_sort_col = '2' THEN
                v_query := v_query || ' ORDER BY a.shipment_number ';
            ELSIF p_sort_col = '3' THEN
                v_query := v_query || ' ORDER BY a.eta ';
            ELSIF p_sort_col = '4' THEN
                v_query := v_query || ' ORDER BY a.etd ';
            ELSE
                v_query := v_query || ' ORDER BY a.container_no ';
            END IF;
        ELSE 
            v_query := v_query || ' ORDER BY c.vendor_code ';
        END IF;

        OPEN v_cur FOR v_query;
        LOOP
            FETCH v_cur INTO v_rec.shipment_id, v_rec.vendor_code, v_rec.vendor, v_rec.ship_no, v_rec.shipment_number,
                             v_rec.vessel_name, v_rec.vessel_bl_no, v_rec.p, v_rec.etd, v_rec.eta, v_rec.container_no;
            EXIT WHEN v_cur%NOTFOUND;

            v_rec.month_s := CASE WHEN p_month IS NOT NULL THEN TRIM(TO_CHAR(TO_DATE(p_month || '/' || p_search, 'MM/YYYY'), 'MONTH'))
                                  ELSE null
                                  END;

            PIPE ROW (v_rec);
        END LOOP;
        CLOSE v_cur;
    end get_shipment_records;

    FUNCTION get_shipment_vendor_basic_info (
        p_shipment_id   nit016.shipment_id%TYPE
    )
    RETURN vendor_shipment_tab PIPELINED
    as
        v_rec           vendor_shipment_rec;
    begin
        for x in (select a.svp_id, a.vendor_id, b.vendor_name, a.vendor_sequence, a.po_id, a.ref_invoices
                    from nit015 a,
                         nit006 b
                   where a.vendor_id = b.vendor_id
                     and a.shipment_id = p_shipment_id
                   order by a.vendor_sequence ASC)
        loop
            v_rec.svp_id := x.svp_id;
            v_rec.vendor_id := x.vendor_id;
            v_rec.vendor_name := x.vendor_name;
            v_rec.vendor_sequence := x.vendor_sequence;
            v_rec.po_id := x.po_id;
            v_rec.invoices := x.ref_invoices;

            -- -- retrive invoices
            -- select LISTAGG(b.document_number, ',')
            --   into v_rec.invoices
            --   from nit035 a,
            --        nit036 b
            --  where a.invoice_id = b.invoice_id
            --    and a.svp_id = x.svp_id;

            PIPE ROW (v_rec);
        end loop;
    end get_shipment_vendor_basic_info;

    FUNCTION get_next_shipment_item_id (
        p_shipment_id   nit016.shipment_id%TYPE
    )
    RETURN number
    as
        v_id            nit018.shipment_items_id%TYPE;
    begin
        SELECT NVL(MAX(shipment_items_id), 0) + 1
          INTO v_id
          FROM nit018
         WHERE shipment_id = p_shipment_id;

        RETURN v_id;
    end get_next_shipment_item_id;

    FUNCTION save_shipment (
        p_clob_data         clob
    )
    RETURN nit016.shipment_id%TYPE
    as
        s_json                  json_object_t;

        v_shipment_id           nit016.shipment_id%TYPE;
        v_shipment_no           nit016.shipment_number%TYPE;
        v_vessel_name           nit016.vessel_name%TYPE;
        v_vessel_bl_no          nit016.vessel_bl_no%TYPE;
        v_barge                 nit016.barge%TYPE;
        v_barge_bl_no           nit016.barge_bl_no%TYPE;
        v_container_type        nit016.container_type%TYPE;
        v_container_no          nit016.container_no%TYPE;
        v_origin                nit016.origin%TYPE;
        v_eta                   varchar2(15);
        v_etd                   varchar2(15);
        v_ata                   varchar2(15);
        v_freight_cost          nit017.freight_cost%TYPE;
        v_insurance_cost        nit017.insurance_cost%TYPE;
        v_handling_cost         nit017.handling_cost%TYPE;
        v_duties_and_taxes      nit017.duties_and_taxes%TYPE;
        v_misc_expenses         nit017.misc_expenses%TYPE;
        v_vendor_credits        nit017.vendor_credits%TYPE;
    begin
        s_json := json_object_t.parse(p_clob_data);

        v_shipment_id       := s_json.get_number('shipmentId');
        v_shipment_no       := s_json.get_string('shipmentNo');
        v_vessel_name       := s_json.get_string('vessel');
        v_vessel_bl_no      := s_json.get_string('vesselBlNo');
        v_barge             := s_json.get_string('barge');
        v_barge_bl_no       := s_json.get_string('bargeBlNo');
        v_container_type    := s_json.get_string('containerType');
        v_container_no      := s_json.get_string('containerNo');
        v_origin            := s_json.get_string('origin');
        v_etd               := s_json.get_string('etd');
        v_eta               := s_json.get_string('eta');
        v_ata               := s_json.get_string('ata');

        v_freight_cost      := s_json.get_number('freightCost');
        v_insurance_cost    := s_json.get_number('insuranceCost');
        v_handling_cost     := s_json.get_number('handlingCost');
        v_duties_and_taxes  := s_json.get_number('dutiesAndTaxes');
        v_misc_expenses     := s_json.get_number('miscExpenses');
        v_vendor_credits    := s_json.get_number('vendorCredits');

        v_shipment_id := shipment_records_pkg.save_basic_info(
            v_shipment_id, 
            v_shipment_no,
            v_vessel_name,
            v_vessel_bl_no,
            v_barge, 
            v_barge_bl_no,
            v_container_type,
            v_container_no,
            v_origin,
            v_eta,
            v_etd,
            v_ata,
            v_freight_cost,
            v_insurance_cost, 
            v_handling_cost,
            v_duties_and_taxes,
            v_misc_expenses,
            v_vendor_credits 
        );

        shipment_records_pkg.save_vendor_po3(v_shipment_id, p_clob_data);

        return v_shipment_id;
    end save_shipment;

    FUNCTION save_basic_info (
        p_shipment_id       nit016.shipment_id%TYPE,
        p_shipment_no       nit016.shipment_number%TYPE,
        p_vessel_name       nit016.vessel_name%TYPE,
        p_vessel_bl_no      nit016.vessel_bl_no%TYPE,
        p_barge             nit016.barge%TYPE,
        p_barge_bl_no       nit016.barge_bl_no%TYPE,
        p_container_type    nit016.container_type%TYPE,
        p_container_no      nit016.container_no%TYPE,
        p_origin            nit016.origin%TYPE,
        p_eta               varchar2,
        p_etd               varchar2,
        p_ata               varchar2,
        p_freight_cost      nit017.freight_cost%TYPE,
        p_insurance_cost    nit017.insurance_cost%TYPE,
        p_handling_cost     nit017.handling_cost%TYPE,
        p_duties_and_taxes  nit017.duties_and_taxes%TYPE,
        p_misc_expenses     nit017.misc_expenses%TYPE,
        p_vendor_credits    nit017.vendor_credits%TYPE
    )
    RETURN nit016.shipment_id%TYPE
    as
        v_shipment_id       nit016.shipment_id%TYPE := p_shipment_id;
    begin
        if v_shipment_id is not null then
            UPDATE nit016 
               SET shipment_number = p_shipment_no,
                   vessel_name = p_vessel_name,
                   vessel_bl_no = p_vessel_bl_no,
                   barge = p_barge,
                   barge_bl_no = p_barge_bl_no,
                   container_type = p_container_type,
                   container_no = p_container_no,
                   origin = p_origin,
                   eta = TO_DATE(p_eta, 'MM/DD/YYYY'),
                   etd = TO_DATE(p_etd, 'MM/DD/YYYY'),
                   ata = TO_DATE(p_ata, 'MM/DD/YYYY')
             WHERE shipment_id = v_shipment_id;

            UPDATE nit017
               SET freight_cost = p_freight_cost,
                   insurance_cost = p_insurance_cost,
                   handling_cost = p_handling_cost,
                   duties_and_taxes = p_duties_and_taxes,
                   misc_expenses = p_misc_expenses,
                   vendor_credits = p_vendor_credits
             WHERE shipment_id = p_shipment_id;
        else 
            INSERT INTO nit016 (shipment_number, vessel_name, vessel_bl_no, barge, barge_bl_no,
                                container_type, container_no, origin, eta, etd, ata)
                VALUES (p_shipment_no, p_vessel_name, p_vessel_bl_no, p_barge, p_barge_bl_no,
                        p_container_type, p_container_no, p_origin, p_eta, p_etd, p_ata)
                RETURNING shipment_id INTO v_shipment_id;

            INSERT INTO nit017(shipment_id, freight_cost, insurance_cost, handling_cost,
                               duties_and_taxes, misc_expenses, vendor_credits)
                VALUES (v_shipment_id, p_freight_cost, p_insurance_cost, p_handling_cost,
                        p_duties_and_taxes, p_misc_expenses, p_vendor_credits);
        end if;

        return v_shipment_id;
    end save_basic_info;

    PROCEDURE save_vendor_po (
        p_shipment_id       nit016.shipment_id%TYPE,
        p_clob_data         clob
    )
    as
        TYPE inv_nos_t IS TABLE OF nit036.document_number%TYPE INDEX BY PLS_INTEGER; 
        l_inv_nos   inv_nos_t;

        TYPE inv_ids_t IS TABLE OF nit036.invoice_id%TYPE INDEX BY PLS_INTEGER; 
        l_inv_ids   inv_ids_t;

        v_inv_id    nit036.invoice_id%TYPE;
        v_old_po    nit015.po_id%TYPE;
        v_svp_id    nit015.svp_id%TYPE;
    begin
        FOR vendor IN (
            SELECT jt.*,
                   vendor_id || '-' || po_id || '-' || svp_id vps, 
                   LAG(vendor_id || '-' || po_id || '-' || svp_id, 1) OVER (ORDER BY vendor_id, po_id, svp_id) prev_vps
            FROM JSON_TABLE (
                p_clob_data, '$.vendors[*]'
                COLUMNS (
                    svp_id          NUMBER          PATH '$.svpId',
                    vendor_id       NUMBER          PATH '$.vendorId',
                    vendor_seq      NUMBER          PATH '$.vendorSeq',
                    po_id           varchar2(15)    PATH '$.poId',
                    inv_nos         varchar2(4000)  PATH '$.invNos'
                )
            ) AS jt
        ) 
        LOOP
            v_svp_id := vendor.svp_id;

            BEGIN
                SELECT po_id
                  INTO v_old_po
                  FROM nit015
                 WHERE shipment_id = p_shipment_id
                   AND svp_id = v_svp_id;
            EXCEPTION
                WHEN NO_DATA_FOUND THEN
                    v_old_po := null;
            END;

            SELECT *
              BULK COLLECT INTO l_inv_nos
              FROM TABLE (string_fnc.split_string_pipelined(vendor.inv_nos, ','));

            IF v_svp_id IS NOT NULL THEN 
                UPDATE nit015
                   SET po_id = vendor.po_id
                 WHERE shipment_id = p_shipment_id
                   AND svp_id = v_svp_id;

                SELECT invoice_id
                  BULK COLLECT INTO l_inv_ids
                  FROM nit035
                 WHERE svp_id = v_svp_id;

                DELETE FROM nit035 
                 WHERE svp_id = v_svp_id;

                FORALL l_index IN 1 .. l_inv_ids.COUNT
                    DELETE FROM nit036
                     WHERE invoice_id = l_inv_ids (l_index);
            ELSE
                INSERT INTO nit015 (shipment_id, vendor_id, vendor_sequence, po_id)
                VALUES (p_shipment_id, vendor.vendor_id, vendor.vendor_seq, vendor.po_id)
                RETURNING svp_id INTO v_svp_id;
            END IF;

            FOR indx IN 1 .. l_inv_nos.COUNT
            LOOP
                v_inv_id := NULL;

                INSERT INTO nit036 (document_number)
                VALUES(l_inv_nos (indx))
                RETURNING invoice_id INTO v_inv_id;

                INSERT INTO nit035(svp_id, invoice_id)
                VALUES (v_svp_id, v_inv_id);
            END LOOP;

            IF v_old_po IS NOT NULL THEN
                -- po is updated / replaced
                IF v_old_po != vendor.po_id THEN
                    -- delete line items from previous PO
                    DELETE FROM nit018 
                    WHERE po_id = v_old_po;

                    -- insert items from new PO
                    INSERT INTO nit018 (shipment_id, po_id, item_id, qty, cost, uom_id)
                    SELECT p_shipment_id, vendor.po_id, item_id, qty, internal_price, internal_uom_id
                      FROM nit013
                     WHERE po_id = vendor.po_id;
                END IF;
            ELSE
                INSERT INTO nit018 (shipment_id, po_id, item_id, qty, cost, uom_id)
                SELECT p_shipment_id, vendor.po_id, item_id, qty, internal_price, internal_uom_id
                  FROM nit013
                 WHERE po_id = vendor.po_id;
            END IF;
        END LOOP;
    end save_vendor_po;

    PROCEDURE save_vendor_po2 (
        p_shipment_id       nit016.shipment_id%TYPE,
        p_clob_data         clob
    )
    as
        v_inv_id    nit036.invoice_id%TYPE;
        v_old_po    nit015.po_id%TYPE;
        v_svp_id    nit015.svp_id%TYPE;
        v_vps       VARCHAR2(200);

        v_sitem_id  nit018.shipment_items_id%TYPE;
    begin
        FOR vendor IN (
            SELECT jt.*,
                   svp_id || '-' ||vendor_id || '-' || po_id vps, 
                   LAG(svp_id || '-' ||vendor_id || '-' || po_id, 1) OVER (ORDER BY svp_id nulls last, vendor_id, po_id, inv_status desc ) prev_vps
            FROM JSON_TABLE (
                p_clob_data, '$.vendors[*]'
                COLUMNS (
                    svp_id          NUMBER          PATH '$.svpId',
                    vendor_id       NUMBER          PATH '$.vendorId',
                    vendor_seq      NUMBER          PATH '$.vendorSeq',
                    po_id           varchar2(15)    PATH '$.poId',
                    inv_nos         varchar2(4000)  PATH '$.invNos',
                    NESTED PATH '$.invoices[*]'
                        COLUMNS (
                            invoice_id   NUMBER         PATH '$.invoiceId',
                            doc_no       VARCHAR2(10)   PATH '$.docNo',
                            inv_status   VARCHAR2(1)    PATH '$.status'
                        )
                )
            ) AS jt
        ) 
        LOOP
            v_vps := vendor.vps;

            IF v_vps != NVL(vendor.prev_vps, '@@x@@') THEN
                v_svp_id := vendor.svp_id;

                BEGIN
                    SELECT po_id
                      INTO v_old_po
                      FROM nit015
                     WHERE shipment_id = p_shipment_id
                       AND svp_id = v_svp_id;
                EXCEPTION
                    WHEN NO_DATA_FOUND THEN
                        v_old_po := null;
                END;

                IF v_svp_id IS NOT NULL THEN 
                    UPDATE nit015
                       SET po_id = vendor.po_id
                     WHERE shipment_id = p_shipment_id
                       AND svp_id = v_svp_id;
                ELSE
                    INSERT INTO nit015 (shipment_id, vendor_id, vendor_sequence, po_id)
                    VALUES (p_shipment_id, vendor.vendor_id, vendor.vendor_seq, vendor.po_id)
                    RETURNING svp_id INTO v_svp_id;
                END IF;                

                IF v_old_po IS NOT NULL THEN
                    -- po is updated / replaced
                    IF v_old_po != vendor.po_id THEN
                        -- delete line items from previous PO
                        DELETE FROM nit018 
                        WHERE po_id = v_old_po;

                        -- insert items from new PO
                        IF vendor.po_id IS NOT NULL THEN
                            v_sitem_id := shipment_records_pkg.get_next_shipment_item_id(p_shipment_id);

                            INSERT INTO nit018 (shipment_id, shipment_items_id, po_id, item_id, qty, cost, uom_id)
                            SELECT p_shipment_id, v_sitem_id, vendor.po_id, item_id, qty, internal_price, internal_uom_id
                              FROM nit013
                             WHERE po_id = vendor.po_id;
                        END IF;
                    END IF;
                ELSE
                    v_sitem_id := shipment_records_pkg.get_next_shipment_item_id(p_shipment_id);

                    INSERT INTO nit018 (shipment_id, shipment_items_id, po_id, item_id, qty, cost, uom_id)
                    SELECT p_shipment_id, v_sitem_id, vendor.po_id, item_id, qty, internal_price, internal_uom_id
                      FROM nit013
                     WHERE po_id = vendor.po_id;
                END IF;
            END IF;

            IF vendor.invoice_id IS NOT NULL AND vendor.inv_status = 'D' THEN
                DELETE FROM nit035
                 WHERE invoice_id = vendor.invoice_id;

                DELETE FROM nit036
                 WHERE invoice_id = vendor.invoice_id;
            ELSIF vendor.invoice_id IS NULL AND vendor.inv_status = 'N' THEN
                IF vendor.doc_no IS NULL OR LENGTH(vendor.doc_no) > 15 THEN
                    raise_application_error(-20001, 'One or more of the vendor invoice numbers submitted is invalid.');
                END IF;

                INSERT INTO nit036 (document_number)
                VALUES (vendor.doc_no)
                RETURNING invoice_id INTO v_inv_id;

                INSERT INTO nit035 (svp_id, invoice_id)
                VALUES (v_svp_id, v_inv_id);
            END IF;
        END LOOP;
    end save_vendor_po2;

    PROCEDURE save_vendor_po3 (
        p_shipment_id       nit016.shipment_id%TYPE,
        p_clob_data         clob
    )
    as
        v_old_po    nit015.po_id%TYPE;
        v_cv_po     nit015.po_id%TYPE;
        v_csvp_id   nit015.svp_id%TYPE;
        v_here      NUMBER;

        v_sitem_id  nit018.shipment_items_id%TYPE;
    begin
        FOR vendor IN (
            SELECT jt.*
            FROM JSON_TABLE (
                p_clob_data, '$.vendors[*]'
                COLUMNS (
                    svp_id          NUMBER          PATH '$.svpId',
                    vendor_id       NUMBER          PATH '$.vendorId',
                    vendor_seq      NUMBER          PATH '$.vendorSeq',
                    po_id           varchar2(15)    PATH '$.poId',
                    inv_nos         varchar2(4000)  PATH '$.invNos'
                )
            ) AS jt
        )
        LOOP
            BEGIN
                SELECT po_id
                  INTO v_old_po
                  FROM nit015
                 WHERE shipment_id = p_shipment_id
                   AND svp_id = vendor.svp_id;
            EXCEPTION
                WHEN NO_DATA_FOUND THEN
                    v_old_po := null;
            END;

            IF vendor.svp_id IS NOT NULL THEN 
                UPDATE nit015
                   SET po_id = vendor.po_id,
                       ref_invoices = vendor.inv_nos
                 WHERE shipment_id = p_shipment_id
                   AND svp_id = vendor.svp_id;
            ELSE
                INSERT INTO nit015 (shipment_id, vendor_id, vendor_sequence, po_id, ref_invoices)
                VALUES (p_shipment_id, vendor.vendor_id, vendor.vendor_seq, vendor.po_id, vendor.inv_nos);
            END IF;                

            v_cv_po := vendor.po_id;
            v_csvp_id := vendor.svp_id;

            IF v_old_po IS NOT NULL THEN
                -- po is updated / replaced
                IF v_old_po != vendor.po_id THEN
                    -- delete line items from previous PO
                    DELETE FROM nit018 
                    WHERE po_id = v_old_po
                      AND shipment_id = p_shipment_id;

                    -- insert items from new PO
                    IF vendor.po_id IS NOT NULL THEN
                        FOR i IN (SELECT item_id, qty, internal_price, internal_uom_id
                                    FROM nit013
                                   WHERE po_id = vendor.po_id)
                        LOOP
                            v_sitem_id := shipment_records_pkg.get_next_shipment_item_id(p_shipment_id);

                            INSERT INTO nit018 (shipment_id, shipment_items_id, po_id, item_id, qty, cost, uom_id)
                            VALUES (p_shipment_id, v_sitem_id, vendor.po_id, i.item_id, i.qty, i.internal_price, i.internal_uom_id);
                        END LOOP;
                    END IF;
                END IF;
            ELSE
                FOR i IN (SELECT item_id, qty, internal_price, internal_uom_id
                            FROM nit013
                           WHERE po_id = vendor.po_id)
                LOOP
                    v_sitem_id := shipment_records_pkg.get_next_shipment_item_id(p_shipment_id);

                    INSERT INTO nit018 (shipment_id, shipment_items_id, po_id, item_id, qty, cost, uom_id)
                    VALUES (p_shipment_id, v_sitem_id, vendor.po_id, i.item_id, i.qty, i.internal_price, i.internal_uom_id);
                END LOOP;
            END IF;
        END LOOP;
    end save_vendor_po3;

    PROCEDURE save_serial_numbers (
        p_shipment_id           nit026.shipment_id%TYPE,
        p_shipment_items_id     nit026.shipment_items_id%TYPE,
        p_collection_name       varchar2
    )
    as
    begin
        for x in (select c001 serial_number, n003 sn_id
                    from apex_collections
                   where collection_name = p_collection_name
                     and c001 is not null)
        loop
            merge into nit026
            using dual
               on (serial_number_id = x.sn_id and
                   shipment_id = p_shipment_id and
                   shipment_items_id = p_shipment_items_id)
            when matched then
                update set serial_number = x.serial_number
            when not matched then
                insert (shipment_id, shipment_items_id, serial_number)
                values (p_shipment_id, p_shipment_items_id, x.serial_number)
            ;
        end loop;
    end save_serial_numbers;

    FUNCTION receive_shipment (
        p_shipment_id       nit016.shipment_id%TYPE,
        p_warehouse_id      nit016.warehouse_id%TYPE
    )
    RETURN varchar2
    as
        v_received          nit016.is_received%TYPE := 'N';
        v_posted            nit016.is_posted%TYPE := 'N';
        v_ship_no           nit016.shipment_number%TYPE;
        v_message           varchar2(100) := 'OK';

        v_qty_units         NUMBER;
    begin
        select is_received, is_posted, shipment_number
          into v_received, v_posted, v_ship_no
          from nit016
         where shipment_id = p_shipment_id;

        if v_received = 'N' and v_posted = 'N' then
            for x in (select a.item_id, a.qty, b.uom_id, a.cost, c.eta
                        from nit018 a,
                             nit002 b,
                             nit016 c
                       where a.item_id = b.item_id
                         and a.shipment_id = c.shipment_id
                         and b."LEVEL" = 4
                         and a.shipment_id = p_shipment_id)
            loop
                merge into nit004
                using dual
                   on (item_id = x.item_id and
                       warehouse_id = p_warehouse_id and
                       uom_id = x.uom_id)
                when matched then
                    update 
                       set qty = qty + x.qty,
                           update_date = sysdate,
                           update_user = v('APP_USER')
                when not matched then
                    insert (item_id, warehouse_id, uom_id, qty, create_user, create_date, update_user, update_date)
                    values (x.item_id, p_warehouse_id, x.uom_id, x.qty, v('APP_USER'), sysdate, v('APP_USER'), sysdate);

                item_trans_pkg.log_item_transaction (x.item_id, p_warehouse_id, x.uom_id, 'S-' || v_ship_no, x.eta, 'I', x.cost, x.qty);
            end loop;

            update nit016
               set is_received = 'Y',
                   warehouse_id = p_warehouse_id
             where shipment_id = p_shipment_id;
        else
            v_message := 'Shipment No. ' || v_ship_no || '  is already ' || CASE WHEN v_posted = 'Y' THEN 'posted'
                                                                                 WHEN v_received = 'Y' THEN 'received'
                                                                                 END;
        end if;

        return v_message;
    exception
        when no_data_found then
            return 'Shipment does not exist';
    end receive_shipment;

    FUNCTION get_shipment_total_value (
        p_shipment_id       nit016.shipment_id%TYPE
    )
    RETURN NUMBER
    as
        v_total             NUMBER;
    begin
        select sum(item_total_cost)
          into v_total
          from (select (a.qty * b.quantity) * a.cost item_total_cost
                  from nit018 a,
                       nit002 b
                 where a.shipment_id = p_shipment_id
                   and a.item_id = b.item_id
                   and b."LEVEL" = 4);

        return v_total;
    end get_shipment_total_value;

    FUNCTION get_shipment_incidental_cost(
        p_shipment_id       nit016.shipment_id%TYPE
    )
    RETURN NUMBER
    as
        v_total             NUMBER;
    begin
        select sum(incidental_cost)
          into v_total
          from (select nvl(freight_cost, 0) +
                       nvl(insurance_cost, 0) +
                       nvl(handling_cost, 0) + 
                       nvl(duties_and_taxes, 0) + 
                       nvl(misc_expenses, 0) + 
                       nvl(vendor_credits, 0) incidental_cost
                  from nit017
                 where shipment_id = p_shipment_id);

        return v_total;
    end get_shipment_incidental_cost;

    FUNCTION post_shipment (
        p_shipment_id       nit016.shipment_id%TYPE
    )
    RETURN VARCHAR2
    as
        v_shipment_total_val        NUMBER;
        v_shipment_incidental_cost  NUMBER;
        v_received                  nit016.is_received%TYPE := 'N';
        v_message                   VARCHAR2(100) := 'OK';
        v_ship_no                   nit016.shipment_number%TYPE;
    begin
        select is_received, shipment_number
          into v_received, v_ship_no
          from nit016
         where shipment_id = p_shipment_id;

        if v_received = 'Y' then
            v_shipment_total_val := shipment_records_pkg.get_shipment_total_value(p_shipment_id);
            v_shipment_incidental_cost := shipment_records_pkg.get_shipment_incidental_cost(p_shipment_id);

            UPDATE nit018
               SET landed_cost = cost + (cost * ROUND(v_shipment_incidental_cost / v_shipment_total_val, 4))
             WHERE shipment_id = p_shipment_id;

            UPDATE nit016
               SET is_posted = 'Y'
             WHERE shipment_id = p_shipment_id;
        else 
            v_message := 'Shipment No. ' || v_ship_no ||' is not yet received.';
        end if;

        return v_message;
    exception
        when no_data_found then
            return 'Shipment does not exist';
    end post_shipment;

    FUNCTION post_all_po (
        p_shipment_id       nit016.shipment_id%TYPE
    )
    RETURN varchar2
    as
        v_vendor_code   nit006.vendor_code%TYPE;
        v_shipment_no   nit016.shipment_number%TYPE;

        TYPE t_tab IS TABLE OF nit012.po_id%TYPE;
        l_tab           t_tab;

        v_msg           varchar2(200);
    begin
        UPDATE nit012
           SET is_posted = 'Y'
         WHERE po_id IN (SELECT po_id 
                           FROM nit015
                          WHERE shipment_id = p_shipment_id)
           AND is_posted != 'Y'               
        RETURNING po_id BULK COLLECT INTO l_tab;

        BEGIN
            SELECT UPPER(c.vendor_code), a.shipment_number
              INTO v_vendor_code, v_shipment_no
              FROM nit016 a,
                   nit015 b,
                   nit006 c
             WHERE a.shipment_id = b.shipment_id
               AND b.vendor_id = c.vendor_id
               AND a.shipment_id = p_shipment_id
               AND b.vendor_sequence = 1;
        EXCEPTION
            WHEN NO_DATA_FOUND THEN
                v_shipment_no := null;
                v_vendor_code := null;
        END;

        IF v_shipment_no IS NULL THEN
            v_msg := 'No shipment selected. Please contact your administrator.';
        ELSIF l_tab.COUNT > 0 THEN
            v_msg := 'All Purchase Orders for Shipment ' || v_vendor_code || '#' || v_shipment_no || ' have been posted.';
        ELSE        
            v_msg := 'There are no unposted purchase orders for Shipment ' || v_shipment_no;
        END IF;

        return v_msg;
    end post_all_po;

    -- used by shipment_report.jasper subreport
    FUNCTION get_shipment_report_items (
        p_shipment_id       nit016.shipment_id%TYPE
    )
    RETURN rep_ship_item_tab PIPELINED
    AS
        v_rec                   rep_ship_item_rec;
        v_incidental_cost       NUMBER;
    BEGIN
        BEGIN 
            SELECT (NVL(freight_cost, 0) + NVL(insurance_cost, 0) + NVL(handling_cost, 0) + NVL(misc_expenses, 0)) - NVL(vendor_credits, 0)
              INTO v_incidental_cost
              FROM nit017
             WHERE shipment_id = p_shipment_id;
        EXCEPTION
            WHEN NO_DATA_FOUND THEN
                v_incidental_cost := 0;
        END;

        FOR x IN (SELECT a.shipment_id, a.shipment_items_id, b.item_desc,
                         a.qty cases, c.quantity cs_unit, 
                         e.uom_code cs_uom, 
                         d.internal_price fob_spn,
                         (c.quantity * a.qty) total_units,
                         (c.quantity * a.qty) * NVL(d.internal_price, f.price) total_item_cost,
                         SUM((c.quantity * a.qty) * NVL(d.internal_price, f.price)) OVER() total_ship_item_cost,
                         f.price item_price
                    FROM nit018 a,
                         nit001 b,
                         nit002 c,
                         nim026 e,    
                         nit013 d,
                         nit002 f
                    WHERE a.shipment_id = p_shipment_id
                     AND a.item_id = b.item_id
                     AND a.item_id = c.item_id
                     AND a.item_id = d.item_id(+)
                     AND a.po_id = d.po_id(+)
                     AND c.uom_id = e.uom_id
                     AND b.item_id = f.item_id
                     AND c."LEVEL" = 4
                     AND f."LEVEL" = 1)
        LOOP
            v_rec.shipment_items_id := x.shipment_items_id;
            v_rec.shipment_id := x.shipment_id;
            v_rec.item_desc := x.item_desc;
            v_rec.cases := x.cases;
            v_rec.cs_units := x.cs_unit;
            v_rec.cs_uom := x.cs_uom;
            v_rec.total_units := x.total_units;
            v_rec.fob_spn := NVL(x.fob_spn, x.item_price);
            v_rec.incidental_cost := NVL(ROUND(v_incidental_cost / x.total_ship_item_cost, 4), 0);
            v_rec.unit_cost := v_rec.fob_spn + v_rec.incidental_cost;
            v_rec.total_cost := v_rec.total_units * v_rec.unit_cost;
            v_rec.total_incidental_cost := NVL(v_incidental_cost, 0);
            PIPE ROW (v_rec);
        END LOOP;
    END get_shipment_report_items;

    FUNCTION get_shipment_vendor_invoices (
        p_shipment_id       nit016.shipment_id%TYPE
    )
    RETURN rep_ship_vendor_inv_tab PIPELINED
    AS
        v_rec   rep_ship_vendor_inv_rec;
    BEGIN
        FOR x IN (select vendor_no, vendor_name, ref_po, svp_id,
                         substr(ref_invoices, 1, case when idx4th > 0 then idx4th - 1 else ri_len end) ref_invoices
                    from (select a.vendor_sequence vendor_no,
                                 b.vendor_name,
                                 a.po_id ref_po,
                                 a.svp_id,
                                 a.ref_invoices,
                                 instr(a.ref_invoices, ',', 1, 4) idx4th,
                                 length(a.ref_invoices) ri_len
                            from nit015 a,
                                 nit006 b
                           where a.shipment_id = p_shipment_id
                             and a.vendor_id = b.vendor_id)
                   order by vendor_no)
        LOOP
            v_rec.vendor_no := x.vendor_no;
            v_rec.vendor_name := SUBSTR(x.vendor_name, 1, 25);
            v_rec.ref_po := x.ref_po;
            v_rec.invoices := x.ref_invoices;

            -- SELECT LISTAGG(j.document_number, ',') WITHIN GROUP (ORDER BY i.invoice_id)
            --   INTO v_rec.invoices
            --   FROM nit035 i,
            --        nit036 j
            --  WHERE i.invoice_id = j.invoice_id
            --    AND i.svp_id = x.svp_id;

            PIPE ROW (v_rec);
        END LOOP;
    END get_shipment_vendor_invoices;

    FUNCTION get_rep_duplicate_container_no (
        p_mth               VARCHAR2,
        p_yr                VARCHAR2,
        p_sort              VARCHAR2
    )
    RETURN shipment_tab PIPELINED
    AS
        v_rec               shipment_rec;
        v_mth_yr            VARCHAR2(10) := p_mth || '/' || p_yr;
    BEGIN
        FOR rec IN (SELECT CASE p_sort WHEN '1' THEN c.vendor_code
                    		           WHEN '2' THEN a.shipment_number
                                       WHEN '3' THEN TO_CHAR(a.eta, 'MM/DD/YYYY')
                                       WHEN '4' THEN TO_CHAR(a.etd, 'MM/DD/YYYY')
                                       WHEN '5' THEN a.container_no
                                       ELSE c.vendor_code
                                       END sort_col,
                           c.vendor_code,
                           a.shipment_number, a.vessel_name, a.vessel_bl_no,
                           case when a.is_posted = 'Y' THEN 'P'
                                when a.is_received = 'Y' THEN 'R'
                                else null
                                end p,
                           a.etd, 
                           a.eta,
                           a.container_no
                      FROM nit016 a,
                           nit015 b,
                           nit006 c
                     WHERE a.shipment_id = b.shipment_id
                       AND b.vendor_id = c.vendor_id
                       AND b.vendor_sequence = 1
                       AND EXISTS (SELECT x.container_no, COUNT(x.container_no)
                                     FROM nit016 x
                                    WHERE x.container_no = a.container_no
                                      AND x.eta BETWEEN add_months(trunc(to_date(v_mth_yr, 'MM/YYYY')), -6) AND 
                                                        add_months(last_day(to_date(v_mth_yr, 'MM/YYYY')), 6)
                                 GROUP BY x.container_no
                                   HAVING COUNT(x.container_no) > 1) 
                  ORDER BY sort_col)
        LOOP
            v_rec.vendor_code := rec.vendor_code;
            v_rec.shipment_number := rec.shipment_number;
            v_rec.vessel_name := SUBSTR(rec.vessel_name, 0, 40);
            v_rec.vessel_bl_no := rec.vessel_bl_no;
            v_rec.etd := rec.etd;
            v_rec.eta := rec.eta;
            v_rec.container_no := rec.container_no;
            v_rec.month_s := TO_CHAR(TO_DATE(v_mth_yr, 'MM/YYYY'), 'fmMONTH, YYYY');

            v_rec.sort_col := CASE p_sort WHEN '1' THEN 'Vendor Code'
                    		              WHEN '2' THEN 'Shipment Number'
                                          WHEN '3' THEN 'ETA'
                                          WHEN '4' THEN 'ETD'
                                          WHEN '5' THEN 'Container Number'
                                          ELSE 'Vendor Code'
                                          END; 

            PIPE ROW(v_rec);
        END LOOP;
    END get_rep_duplicate_container_no;

    FUNCTION get_inv_costing_sheet_main (
        p_shipment_id       VARCHAR2,
        p_month             VARCHAR2
    )
    RETURN inv_costing_sheet_main_tab PIPELINED
    AS
        v_rec               inv_costing_sheet_main_rec;
        v_month             NUMBER;
        v_shipment_id       NUMBER;
    BEGIN
        v_month := TO_NUMBER(p_month);
        v_shipment_id := TO_NUMBER(p_shipment_id);

        FOR rec IN (select a.shipment_id, a.shipment_number, d.vendor_name,
                           a.ata, a.vessel_name, a.vessel_bl_no, a.barge, a.barge_bl_no, a.container_no,
                           c.freight_cost, c.insurance_cost, c.handling_cost,
                           c.duties_and_taxes, c.misc_expenses, c.vendor_credits, b.svp_id, 
                           b.ref_invoices,
                           instr(b.ref_invoices, ',', 1, 1) idx1st,
                           length(b.ref_invoices) ri_len
                      from nit016 a,
                           nit015 b,
                           nit017 c,
                           nit006 d
                     where a.shipment_id = b.shipment_id
                       and a.shipment_id = c.shipment_id
                       and b.vendor_id = d.vendor_id
                       and b.vendor_sequence = 1
                       and (
                                (v_shipment_id IS NOT NULL AND a.shipment_id = v_shipment_id) OR
                                (v_month IS NOT NULL AND extract(month from a.ata) = v_month)
                           )
                    order by a.shipment_id)
        LOOP
            v_rec.shipment_id := rec.shipment_id;
            v_rec.shipment_number := rec.shipment_number;
            v_rec.vendor_name := rec.vendor_name;
            v_rec.ata := rec.ata;
            v_rec.vessel_name := rec.vessel_name;
            v_rec.vessel_bl_no := rec.vessel_bl_no;
            v_rec.barge := rec.barge;
            v_rec.barge_bl_no := rec.barge_bl_no;
            v_rec.container_no := rec.container_no;
            v_rec.freight_cost := NVL(rec.freight_cost, 0);
            v_rec.insurance_cost := NVL(rec.insurance_cost, 0);
            v_rec.handling_cost := NVL(rec.handling_cost, 0);
            v_rec.duties_and_taxes := NVL(rec.duties_and_taxes, 0);
            v_rec.misc_expenses := NVL(rec.misc_expenses, 0);
            v_rec.vendor_credits := NVL(rec.vendor_credits, 0);
            v_rec.title_h := TRIM(TO_CHAR(rec.ata, 'FMMONTH, YYYY'));

            -- BEGIN 
            --     SELECT y.document_number
            --       INTO v_rec.document_number
            --       FROM nit035 x, 
            --            nit036 y
            --      WHERE x.invoice_id = y.invoice_id
            --        AND x.svp_id = rec.svp_id
            --      ORDER BY x.invoice_id 
            --      FETCH FIRST 1 ROWS ONLY;
            -- EXCEPTION
            --     WHEN NO_DATA_FOUND THEN
            --         v_rec.document_number := NULL;
            -- END;
            v_rec.document_number := SUBSTR(rec.ref_invoices, 1, case when rec.idx1st > 0 then rec.idx1st - 1 else rec.ri_len end);
            v_rec.total_in_cost := NVL(rec.freight_cost, 0) + NVL(rec.insurance_cost, 0) + NVL(rec.handling_cost, 0) + NVL(rec.misc_expenses, 0) - NVL(rec.vendor_credits, 0);

            PIPE ROW (v_rec);
        END LOOP;

    END get_inv_costing_sheet_main;

    FUNCTION get_shipment_report_main (
        p_shipment_id       VARCHAR2
    )
    RETURN shipment_rep_main_tab PIPELINED
    AS
        v_rec               shipment_rep_main_rec;
        v_shipment_id       NUMBER;
    BEGIN
        FOR x IN (SELECT a.shipment_id, a.shipment_number,
                         a.vessel_name, a.vessel_bl_no,
                         a.barge, a.barge_bl_no,
                         a.container_type, a.container_no, a.origin,
                         a.etd, a.eta, a.ata,
                         b.freight_cost, b.insurance_cost, b.handling_cost,
                         b.duties_and_taxes, b.misc_expenses, b.vendor_credits,
                         CASE WHEN is_posted = 'Y' THEN 'POSTED'
                              ELSE 'UNPOSTED'
                              END status,
                         d.vendor_name,
                         c.ref_invoices,
                         instr(c.ref_invoices, ',', 1, 1) idx1st,
                         length(c.ref_invoices) ri_len
                    FROM nit016 a,
                         nit017 b,
                         nit015 c,
                         nit006 d
                   WHERE a.shipment_id = b.shipment_id
                     AND a.shipment_id = c.shipment_id
                     AND c.vendor_id = d.vendor_id
                     AND c.vendor_sequence = 1
                     AND a.shipment_id = TO_NUMBER(p_shipment_id) )
        LOOP
            v_rec.shipment_id := x.shipment_id;
            v_rec.shipment_number := x.shipment_number;
            v_rec.vessel_name := SUBSTR(x.vessel_name, 0, 40);
            v_rec.vessel_bl_no := x.vessel_bl_no;
            v_rec.barge := SUBSTR(x.barge, 0, 40);
            v_rec.barge_bl_no := x.barge_bl_no;
            v_rec.container_type := x.container_type; 
            v_rec.container_no := x.container_no; 
            v_rec.origin := x.origin;
            v_rec.etd := to_char(x.etd, 'MM/DD/YYYY');
            v_rec.eta := to_char(x.eta, 'MM/DD/YYYY');
            v_rec.ata := to_char(x.ata, 'MM/DD/YYYY');
            v_rec.freight_cost := NVL(x.freight_cost, 0); 
            v_rec.insurance_cost := NVL(x.insurance_cost, 0); 
            v_rec.handling_cost := NVL(x.handling_cost, 0);
            v_rec.duties_and_taxes := NVL(x.duties_and_taxes, 0); 
            v_rec.misc_expenses := NVL(x.misc_expenses, 0); 
            v_rec.vendor_credits := NVL(x.vendor_credits, 0);
            v_rec.status := x.status;
            v_rec.vendor_name := SUBSTR(x.vendor_name, 0, 40);
            v_rec.vendor_inv_no := SUBSTR(x.ref_invoices, 1, case when x.idx1st > 0 then x.idx1st - 1 else x.ri_len end);

            PIPE ROW(v_rec);
        END LOOP;
    END get_shipment_report_main;

    FUNCTION get_shipment_vessel_sum_main (
        p_month_from        VARCHAR2,
        p_month_to          VARCHAR2,
        p_year              VARCHAR2,
        p_sort              VARCHAR2
    )
    RETURN shipment_vessel_sum_tab PIPELINED
    AS
        v_rec               shipment_vessel_sum_rec;
        v_date_from_str     VARCHAR2(10);
        v_date_to_str       VARCHAR2(10);
        v_date_from         DATE;
        v_date_to           DATE;
    BEGIN
        v_date_from_str := p_month_from || '/' || p_year;
        v_date_to_str := p_month_to || '/' || p_year;
        v_date_from := TO_DATE(v_date_from_str, 'MM/YYYY');
        v_date_to := TO_DATE(v_date_to_str, 'MM/YYYY');

        FOR rec IN (SELECT rownum vendor_no, main.*
                      FROM (SELECT CASE p_sort WHEN '1' THEN c.vendor_code
                            		           WHEN '2' THEN a.shipment_number
                                               WHEN '3' THEN TO_CHAR(a.eta, 'MM/DD/YYYY')
                                               WHEN '4' THEN TO_CHAR(a.etd, 'MM/DD/YYYY')
                                               WHEN '5' THEN a.container_no
                                               ELSE c.vendor_code
                                               END
                                   sort_col,
                                   c.vendor_code, a.ata, a.eta,
                                   NVL(a.container_no, '-') container_no,
                                   NVL(SUBSTR(a.vessel_name, 0, 40), '-') vessel_name,
                                   NVL(a.barge, '-') barge,
                                   a.container_type,
                                   NVL(a.vessel_bl_no, '-') vessel_bl_no,
                                   NVL(a.barge_bl_no, '-') barge_bl_no
                              FROM nit016 a,
                                   nit015 b,
                                   nit006 c
                             WHERE a.shipment_id = b.shipment_id
                               AND b.vendor_id = c.vendor_id
                               AND b.vendor_sequence = 1
                               AND SUBSTR(a.shipment_number, 0, 4) = p_year
                               AND a.eta BETWEEN v_date_from AND LAST_DAY(v_date_to)
                            ORDER BY sort_col) main)
        LOOP
            v_rec.vendor_no := rec.vendor_no;
            v_rec.sort_col := CASE p_sort WHEN '1' THEN 'Vendor Code'
                                          WHEN '2' THEN 'Shipment Number'
                                          WHEN '3' THEN 'ETA'
                                          WHEN '4' THEN 'ETD'
                                          WHEN '5' THEN 'Container Number'
                                          ELSE 'Vendor Code'
                                          END;

            v_rec.date_from := v_date_from_str;
            v_rec.date_to := v_date_to_str;
            v_rec.vendor_code := rec.vendor_code;
            v_rec.eta := rec.eta;
            v_rec.ata := rec.ata;
            v_rec.container_no := rec.container_no;
            v_rec.container_type := rec.container_type;
            v_rec.vessel_name := rec.vessel_name;
            v_rec.vessel_bl_no := rec.vessel_bl_no;
            v_rec.barge := rec.barge;
            v_rec.barge_bl_no := rec.barge_bl_no;

            PIPE ROW(v_rec);
        END LOOP;
    END get_shipment_vessel_sum_main;

end "SHIPMENT_RECORDS_PKG";
/