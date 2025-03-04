create or replace package body "OTAS_SORT_AND_SEARCH" as

FUNCTION OTAS_TABLE(
    p_sort_by varchar2,
    p_sort_type varchar2,
    p_search_column varchar2,
    p_search_term varchar2
)
return v_otas_tab PIPELINED
AS
TYPE q_cur IS REF CURSOR;
v_cur q_cur;
v_otas_rec v_rec;
l_query varchar2(1000);
BEGIN
l_query := 'SELECT otas_id, otas_code, otas_name FROM NIM037';
IF p_search_column IS NOT NULL and p_search_term IS NOT NULL THEN 
    IF p_search_column = 'code' THEN
        l_query := l_query || ' WHERE OTAS_CODE LIKE ''%' || UPPER(p_search_term) || '%''';
    ELSIF p_search_column = 'name' THEN
        l_query := l_query || ' WHERE OTAS_NAME LIKE ''%' || UPPER(p_search_term) || '%''';
    END IF;
END IF;

IF p_sort_by IS NOT NULL THEN
    IF p_sort_by = 'code' THEN
        l_query := l_query || ' ORDER BY otas_code ' || NVL(p_sort_type, 'ASC');
    ELSIF p_sort_by = 'name' THEN
        l_query := l_query || ' ORDER BY OTAS_NAME ' || NVL(p_sort_type, 'ASC');
    END IF;
END IF;

OPEN v_cur FOR l_query;

LOOP
    FETCH v_cur INTO v_otas_rec.otas_id, v_otas_rec.otas_code, v_otas_rec.otas_name;
    EXIT WHEN v_cur%NOTFOUND;

    PIPE ROW(v_otas_rec);

END LOOP;

CLOSE v_cur;

END OTAS_TABLE;

end "OTAS_SORT_AND_SEARCH";
/