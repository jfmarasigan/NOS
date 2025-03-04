create or replace package "DELIVERY_LOG_PKG" as
TYPE v_rec IS RECORD(
    delivery_id number,
    delivery_date date,
    batch number(2,0),
    checker varchar2(20),
    delivery_man varchar2(50),
    dep_time varchar2(7),
    arv_time varchar2(7),
    van_no varchar2(7),
    received_by varchar2(30)
);
TYPE v_invoice_rec IS RECORD(
    delivery_invoice_id number(12,0),
    delivery_id number(12,0),
    invoice_id number(12,0),
    invoice_delivery varchar2(100),
    dba_delivery varchar2(100),
    dep_time varchar2(7),
    arv_time varchar2(7),
    user_created varchar2(50),
    date_created date,
    user_updated varchar2(50),
    date_updated date,
    line_items number(9,0),
    total_amount number(9,0),
    display_order number(9,0),
    bef number(4,0),
    dur number(4,0)
);

TYPE v_delivery_log_tab IS TABLE OF v_rec;
TYPE v_delivery_log_invoice_tab IS TABLE OF v_invoice_rec;

FUNCTION DELIVERY_LOG_TABLE(
    p_date_from date,
    p_date_to date
)
return v_delivery_log_tab PIPELINED;

FUNCTION DELIVERY_LOG_INVOICE_TABLE(
    p_delivery_id number
) return v_delivery_log_invoice_tab PIPELINED;
end "DELIVERY_LOG_PKG";
/