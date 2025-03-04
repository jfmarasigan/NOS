create or replace package body "DELIVERY_LOG_PKG" as
FUNCTION DELIVERY_LOG_TABLE(
    p_date_from date,
    p_date_to date
)
return v_delivery_log_tab PIPELINED
AS
TYPE q_cur IS REF CURSOR;
v_cur q_cur;
v_delivery_log_rec v_rec;
BEGIN

OPEN v_cur FOR select DELIVERY_ID,
       DELIVERY_DATE,
       BATCH,
       CHECKER,
       DELIVERY_MAN,
       DEP_TIME,
       ARV_TIME,
       VAN_NO,
       RECEIVED_BY
  from NPT012
  WHERE (DELIVERY_DATE BETWEEN TO_DATE(p_date_from) AND TO_DATE(p_date_to)
         OR DELIVERY_DATE = TO_DATE(p_date_from))
  ORDER BY DELIVERY_DATE, BATCH ASC;

LOOP
    FETCH v_cur INTO v_delivery_log_rec.delivery_id, v_delivery_log_rec.delivery_date, v_delivery_log_rec.batch, v_delivery_log_rec.checker, 
    v_delivery_log_rec.delivery_man, v_delivery_log_rec.dep_time, v_delivery_log_rec.arv_time, v_delivery_log_rec.van_no, v_delivery_log_rec.received_by;
    EXIT WHEN v_cur%NOTFOUND;

    PIPE ROW(v_delivery_log_rec);

END LOOP;

CLOSE v_cur;

END DELIVERY_LOG_TABLE;

FUNCTION DELIVERY_LOG_INVOICE_TABLE(
    p_delivery_id number
)
return v_delivery_log_invoice_tab PIPELINED
AS
TYPE q_cur IS REF CURSOR;
v_cur q_cur;
v_invoice_delivery_rec v_invoice_rec;
v_dep_time varchar2(7);
v_arv_time varchar2(7);
BEGIN

SELECT dep_time into v_dep_time from npt012 WHERE delivery_id = p_delivery_id;
SELECT arv_time into v_arv_time from npt012 WHERE delivery_id = p_delivery_id;

FOR inv IN (select npt031.delivery_invoice_id,
       npt031.DELIVERY_ID,
       npt031.INVOICE_ID,
       npt031.INVOICE_DELIVERY,
       npt031.DBA_DELIVERY,
       npt031.DEP_TIME,
       npt031.ARV_TIME,
       npt031.USER_CREATED,
       npt031.DATE_CREATED,
       npt031.USER_UPDATED,
       npt031.DATE_UPDATED,
       npt031.LINE_ITEMS,
       npt031.TOTAL_AMOUNT,
       npt031.DISPLAY_ORDER
  from NPT031 npt031
 where npt031.delivery_id = p_delivery_id
 ORDER BY display_order ASC)

LOOP
       v_invoice_delivery_rec.DELIVERY_INVOICE_ID := inv.delivery_invoice_id;
       v_invoice_delivery_rec.DELIVERY_ID := inv.delivery_id;
       v_invoice_delivery_rec.INVOICE_ID := inv.invoice_id;
       v_invoice_delivery_rec.INVOICE_DELIVERY := inv.invoice_delivery;
       v_invoice_delivery_rec.DBA_DELIVERY := inv. dba_delivery;
       v_invoice_delivery_rec.DEP_TIME := inv.dep_time;
       v_invoice_delivery_rec.ARV_TIME := inv.arv_time;
       v_invoice_delivery_rec.USER_CREATED := inv.user_created;
       v_invoice_delivery_rec.DATE_CREATED := inv.date_created;
       v_invoice_delivery_rec.USER_UPDATED := inv.user_updated;
       v_invoice_delivery_rec.DATE_UPDATED := inv.date_updated;
       v_invoice_delivery_rec.LINE_ITEMS := inv.line_items;
       v_invoice_delivery_rec.TOTAL_AMOUNT := inv.total_amount;
       v_invoice_delivery_rec.DISPLAY_ORDER := inv.display_order;
       v_invoice_delivery_rec.bef := (to_date('01/01/2000'||inv.arv_time, 'MM/DD/YYYYHH12:MIAM') - to_date('01/01/2000'||v_dep_time, 'MM/DD/YYYYHH12:MIAM'))*1440;
       v_invoice_delivery_rec.dur := (to_date('01/01/2000'||inv.dep_time, 'MM/DD/YYYYHH12:MIAM') - to_date('01/01/2000'||inv.arv_time, 'MM/DD/YYYYHH12:MIAM'))*1440;
       v_dep_time := inv.dep_time;
    PIPE ROW(v_invoice_delivery_rec);

END LOOP;

END DELIVERY_LOG_INVOICE_TABLE;
end "DELIVERY_LOG_PKG";
/