create or replace PACKAGE           "SHIPMENT_RECORDS_PKG" 
as
    FUNCTION get_first_vendor (
        p_shipment_id       nit016.shipment_id%TYPE
    )
    RETURN VARCHAR2;

    TYPE shipment_rec IS RECORD (
        shipment_id     nit016.shipment_id%TYPE,
        vendor          nit006.vendor_name%TYPE,
        vendor_code     nit006.vendor_code%TYPE,
        ship_no         VARCHAR2(3),
        shipment_number nit016.shipment_number%TYPE,
        p               nit016.is_posted%TYPE,
        vessel_name     nit016.vessel_name%TYPE,
        vessel_bl_no    nit016.vessel_bl_no%TYPE,
        etd             date,
        eta             date,
        container_no    nit016.container_no%TYPE,
        month_s         VARCHAR2(20),
        sort_col        VARCHAR2(30)
    );

    TYPE shipment_tab IS TABLE OF shipment_rec;

    FUNCTION get_shipment_records (
        p_search        VARCHAR2,
        p_sort_col      VARCHAR2,
        p_month         VARCHAR2
    )
    RETURN shipment_tab PIPELINED;

    TYPE vendor_shipment_rec IS RECORD (
        svp_id          nit015.svp_id%TYPE,
        vendor_id       nit015.vendor_id%TYPE,
        vendor_name     nit006.vendor_name%TYPE,
        vendor_sequence nit015.vendor_sequence%TYPE,
        po_id           nit015.po_id%TYPE,
        invoices        VARCHAR2(4000)
    );

    TYPE vendor_shipment_tab IS TABLE OF vendor_shipment_rec;

    FUNCTION get_shipment_vendor_basic_info (
        p_shipment_id   nit016.shipment_id%TYPE
    )
    RETURN vendor_shipment_tab PIPELINED;

    FUNCTION get_next_shipment_item_id (
        p_shipment_id   nit016.shipment_id%TYPE
    )
    RETURN number;

    FUNCTION save_shipment (
        p_clob_data         clob
    )
    RETURN nit016.shipment_id%TYPE;

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
    RETURN nit016.shipment_id%TYPE;

    PROCEDURE save_vendor_po (
        p_shipment_id       nit016.shipment_id%TYPE,
        p_clob_data         clob
    );

    PROCEDURE save_vendor_po2 (
        p_shipment_id       nit016.shipment_id%TYPE,
        p_clob_data         clob
    );

    -- save vendors together with PO and invoices all in NIT015
    PROCEDURE save_vendor_po3 (
        p_shipment_id       nit016.shipment_id%TYPE,
        p_clob_data         clob
    );

    PROCEDURE save_serial_numbers (
        p_shipment_id           nit026.shipment_id%TYPE,
        p_shipment_items_id     nit026.shipment_items_id%TYPE,
        p_collection_name       varchar2
    );

    FUNCTION receive_shipment (
        p_shipment_id       nit016.shipment_id%TYPE,
        p_warehouse_id      nit016.warehouse_id%TYPE
    )
    RETURN varchar2;

    FUNCTION get_shipment_total_value (
        p_shipment_id       nit016.shipment_id%TYPE
    )
    RETURN NUMBER;

    FUNCTION get_shipment_incidental_cost(
        p_shipment_id       nit016.shipment_id%TYPE
    )
    RETURN NUMBER;

    FUNCTION post_shipment (
        p_shipment_id       nit016.shipment_id%TYPE
    )
    RETURN VARCHAR2;

    FUNCTION post_all_po (
        p_shipment_id       nit016.shipment_id%TYPE
    )
    RETURN varchar2;

    TYPE rep_ship_item_rec IS RECORD (
        shipment_id             nit018.shipment_id%TYPE,
        shipment_items_id       nit018.shipment_items_id%TYPE,
        item_desc               nit001.item_desc%TYPE,
        cases                   nit018.qty%TYPE,
        cs_units                nit004.qty%TYPE,
        cs_uom                  nim026.uom_code%TYPE,
        total_units             NUMBER,
        fob_spn                 NUMBER,
        incidental_cost         NUMBER,
        unit_cost               NUMBER,
        total_cost              NUMBER,
        total_incidental_cost   NUMBER
    );

    TYPE rep_ship_item_tab IS TABLE OF rep_ship_item_rec;

    FUNCTION get_shipment_report_items (
        p_shipment_id       nit016.shipment_id%TYPE
    )
    RETURN rep_ship_item_tab PIPELINED;

    TYPE rep_ship_vendor_inv_rec IS RECORD (
        vendor_no           NUMBER,
        vendor_name         nit006.vendor_name%TYPE,
        ref_po              nit012.po_id%TYPE,
        invoices            VARCHAR2(55)
    );

    TYPE rep_ship_vendor_inv_tab IS TABLE OF rep_ship_vendor_inv_rec;

    FUNCTION get_shipment_vendor_invoices (
        p_shipment_id       nit016.shipment_id%TYPE
    )
    RETURN rep_ship_vendor_inv_tab PIPELINED;

    FUNCTION get_rep_duplicate_container_no (
        p_mth               VARCHAR2,
        p_yr                VARCHAR2,
        p_sort              VARCHAR2
    )
    RETURN shipment_tab PIPELINED;

    TYPE inv_costing_sheet_main_rec IS RECORD (
        shipment_id         nit016.shipment_id%TYPE,
        shipment_number     nit016.shipment_number%TYPE,
        vendor_name         nit006.vendor_name%TYPE,
        document_number     nit036.document_number%TYPE,
        ata                 nit016.ata%TYPE,
        vessel_name         nit016.vessel_name%TYPE,
        vessel_bl_no        nit016.vessel_bl_no%TYPE,
        barge               nit016.barge%TYPE,
        barge_bl_no         nit016.barge_bl_no%TYPE,
        container_no        nit016.container_no%TYPE,
        freight_cost        nit017.freight_cost%TYPE,
        insurance_cost      nit017.insurance_cost%TYPE,
        handling_cost       nit017.handling_cost%TYPE,
        duties_and_taxes    nit017.duties_and_taxes%TYPE,
        misc_expenses       nit017.misc_expenses%TYPE,
        vendor_credits      nit017.vendor_credits%TYPE,
        title_h             VARCHAR2(20),
        total_in_cost       NUMBER
    );

    TYPE inv_costing_sheet_main_tab IS TABLE OF inv_costing_sheet_main_rec;

    FUNCTION get_inv_costing_sheet_main (
        p_shipment_id       VARCHAR2,
        p_month             VARCHAR2
    )
    RETURN inv_costing_sheet_main_tab PIPELINED;

    TYPE shipment_rep_main_rec IS RECORD (
        shipment_id             nit016.shipment_id%TYPE,
        shipment_number         nit016.shipment_number%TYPE,
        vessel_name             nit016.vessel_name%TYPE,
        vessel_bl_no            nit016.vessel_bl_no%TYPE,
        barge                   nit016.barge%TYPE,
        barge_bl_no             nit016.barge_bl_no%TYPE,
        container_type          nit016.container_type%TYPE,
        container_no            nit016.container_no%TYPE,
        origin                  nit016.origin%TYPE,
        etd                     VARCHAR2(10),
        eta                     VARCHAR2(10),
        ata                     VARCHAR2(10),
        freight_cost            nit017.freight_cost%TYPE,
        insurance_cost          nit017.insurance_cost%TYPE,
        handling_cost           nit017.handling_cost%TYPE,
        duties_and_taxes        nit017.duties_and_taxes%TYPE,   
        misc_expenses           nit017.misc_expenses%TYPE,
        vendor_credits          nit017.vendor_credits%TYPE, 
        status                  VARCHAR2(8),
        vendor_name             nit006.vendor_name%TYPE,
        vendor_inv_no           VARCHAR2(10),
        total_incidental_cost   NUMBER,
        incidental_cost_unit    NUMBER
    );

    TYPE shipment_rep_main_tab IS TABLE OF shipment_rep_main_rec;

    FUNCTION get_shipment_report_main (
        p_shipment_id       VARCHAR2
    )
    RETURN shipment_rep_main_tab PIPELINED;

    TYPE shipment_vessel_sum_rec IS RECORD (
        vendor_no               NUMBER,
        sort_col                VARCHAR2(30),
        date_from               VARCHAR2(20),
        date_to                 VARCHAR2(20),
        vendor_code             nit006.vendor_code%TYPE,
        eta                     nit016.eta%TYPE,
        ata                     nit016.ata%TYPE,
        container_no            nit016.container_no%TYPE,
        container_type          nit016.container_type%TYPE,
        vessel_name             nit016.vessel_name%TYPE,
        vessel_bl_no            nit016.vessel_bl_no%TYPE,
        barge                   nit016.barge%TYPE,
        barge_bl_no             nit016.barge_bl_no%TYPE
    );

    TYPE shipment_vessel_sum_tab IS TABLE OF shipment_vessel_sum_rec;

    FUNCTION get_shipment_vessel_sum_main (
        p_month_from        VARCHAR2,
        p_month_to          VARCHAR2,
        p_year              VARCHAR2,
        p_sort              VARCHAR2
    )
    RETURN shipment_vessel_sum_tab PIPELINED;

end "SHIPMENT_RECORDS_PKG";
/