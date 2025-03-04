create or replace PACKAGE           "ORDER_SALES_PKG" 
AS
	TYPE order_sales_rec IS RECORD (
        otas_id         nim037.otas_id%TYPE,
		otas_code		nim037.otas_code%TYPE,
		otas_name 		nim037.otas_name%TYPE
	);

	TYPE order_sales_tab IS TABLE OF order_sales_rec;

	FUNCTION get_list (
		p_sort_col		NUMBER,
		p_asc_desc 		VARCHAR2
	)
	RETURN order_sales_tab PIPELINED;
END order_sales_pkg;
/