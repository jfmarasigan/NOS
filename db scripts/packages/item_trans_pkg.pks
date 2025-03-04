create or replace PACKAGE           "ITEM_TRANS_PKG" as
    TYPE v_itm_rec IS RECORD(
        IO varchar2(1),
        INV_SHP_NO VARCHAR2(15),
        INV_DATE_ETA DATE,
        QTY_CS NUMBER(9,0),
        QTY_UNITS NUMBER(9,0),
        BALANCE NUMBER(9,0),
        COSTS NUMBER(9,2),
        WHSE NUMBER(1)
    );

    TYPE v_itm_table IS TABLE OF v_itm_rec;

    TYPE header_rec IS RECORD(
        RETURN_ITEM varchar2(1000)
    );

    TYPE header_table IS TABLE OF header_rec;

    FUNCTION get_table(
        p_item_id varchar2
    )
    RETURN v_itm_table PIPELINED;

    FUNCTION set_item_no(
        p_item_id varchar2
    )
    RETURN header_table PIPELINED;

    FUNCTION set_upc(
        p_item_id varchar2
    )
    RETURN header_table PIPELINED;

    FUNCTION set_item_desc(
        p_item_id varchar2
    )
    RETURN header_table PIPELINED;

    FUNCTION convert_item_qty_between_lvls (
        p_item_id       nit001.item_id%TYPE,
        p_qty           NUMBER,
        p_level_from    nit002."LEVEL"%TYPE,
        p_level_to      nit002."LEVEL"%TYPE
    )
    RETURN NUMBER;

    PROCEDURE log_item_transaction (
    	p_item_id				nit022.item_id%TYPE,
    	p_warehouse_id			nit022.warehouse_id%TYPE,
    	p_uom_id 				nit022.uom_id%TYPE,
    	p_reference_id 			nit022.reference_id%TYPE,
    	p_reference_date		nit022.reference_date%TYPE,
    	p_io 					nit022.io%TYPE,
    	p_cost 					nit022.cost%TYPE,
    	p_qty 					nit004.qty%TYPE
    );

end "ITEM_TRANS_PKG";
/