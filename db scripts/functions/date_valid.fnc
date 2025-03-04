create or replace FUNCTION DATE_VALID(v_date IN VARCHAR2) RETURN NUMBER IS
    v_date1 DATE;
BEGIN
    SELECT TO_DATE(v_date) INTO v_date1 FROM DUAL;
        RETURN 1;
    EXCEPTION WHEN Others THEN
        RETURN 0;
END;
/