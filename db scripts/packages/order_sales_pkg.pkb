create or replace PACKAGE BODY           "ORDER_SALES_PKG" 
AS
	FUNCTION get_list (
		p_sort_col		NUMBER,
		p_asc_desc 		VARCHAR2
	)
	RETURN order_sales_tab PIPELINED
	AS
		v_query             VARCHAR2(9000);
        TYPE q_cur IS REF CURSOR;

        v_cur               q_cur;
        v_rec               order_sales_rec;
	BEGIN
		v_query := 'SELECT otas_id, otas_code, otas_name
		              FROM nim037';

		IF p_sort_col = 1 THEN
			v_query := v_query || ' ORDER BY otas_code ' || p_asc_desc;
		ELSIF p_sort_col = 2 THEN
			v_query := v_query || ' ORDER BY otas_name ' || p_asc_desc;
		ELSE
			null;
		END IF;

		OPEN v_cur FOR v_query;

        LOOP
            FETCH v_cur INTO v_rec.otas_id, v_rec.otas_code, v_rec.otas_name;
            EXIT WHEN v_cur%NOTFOUND;

            PIPE ROW(v_rec);
        END LOOP;

        CLOSE v_cur;
	END get_list;

END order_sales_pkg;
/