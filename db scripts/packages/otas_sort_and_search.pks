create or replace package "OTAS_SORT_AND_SEARCH" as
TYPE v_rec IS RECORD(
    otas_id number,
    otas_code varchar2(5),
    otas_name varchar2(50)
);

TYPE v_otas_tab IS TABLE OF v_rec;

FUNCTION OTAS_TABLE(
    p_sort_by varchar2,
    p_sort_type varchar2,
    p_search_column varchar2,
    p_search_term varchar2
)
return v_otas_tab PIPELINED;

end "OTAS_SORT_AND_SEARCH";
/