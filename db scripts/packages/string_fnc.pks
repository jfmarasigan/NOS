create or replace PACKAGE           "STRING_FNC" 
IS
    TYPE split_tble IS TABLE OF VARCHAR2(32767);

    FUNCTION split_string (p_list VARCHAR2, p_delimiter VARCHAR2)
    RETURN split_tble;

    FUNCTION split_string_pipelined (p_list VARCHAR2, p_delimiter VARCHAR2)
    RETURN split_tble PIPELINED;
END;
/