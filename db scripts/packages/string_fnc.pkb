create or replace PACKAGE BODY           "STRING_FNC" 
IS
	FUNCTION split_string (p_list VARCHAR2, p_delimiter VARCHAR2)
    RETURN split_tble
    AS
        idx         PLS_INTEGER;
        str_list	VARCHAR2 (32767) := p_list;
        tbl         split_tble := split_tble();
    BEGIN
        LOOP
            idx := INSTR (str_list, p_delimiter);

            tbl.EXTEND;
            IF idx > 0 THEN
                tbl(tbl.LAST) := SUBSTR (str_list, 1, idx - 1);
                str_list := SUBSTR (str_list, idx + LENGTH (p_delimiter));
            ELSE
                tbl(tbl.LAST) := str_list;
                EXIT;
            END IF;            
        END LOOP;

        RETURN tbl;
    END split_string;

    FUNCTION split_string_pipelined (p_list VARCHAR2, p_delimiter VARCHAR2)
    RETURN split_tble PIPELINED
    AS
        tab             string_fnc.split_tble;
    BEGIN
        tab := string_fnc.split_string(p_list, p_delimiter);
        FOR x IN tab.FIRST .. tab.LAST
        LOOP
            PIPE ROW (tab(x));
        END LOOP;
    END split_string_pipelined;
END;
/