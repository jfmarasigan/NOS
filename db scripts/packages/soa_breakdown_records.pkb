create or replace PACKAGE BODY           "SOA_BREAKDOWN_RECORDS" as
    FUNCTION EOM_TABLE(
        p_customer_id NUMBER
    )
    return v_eom_tab PIPELINED
    AS
        TYPE q_cur IS REF CURSOR;
        v_eom_rec v_eom;
        v_cur q_cur;       
        l_query_current varchar2(1000);

        l_query_thirty varchar2(1000);

        l_query_sixty varchar2(1500);

        l_query_over_sixty varchar2(1000);

    BEGIN
    l_query_current := 'SELECT
                    	    npt9.LEGAL_NAME AS "Subsidiary",
                        	npt9.BILLING_CONTACTA,
                            npt9.BILLING_CONTACTB,
                    	    npt1.TOTAL_AMOUNT,
                    	    npt1.DATE_CREATED,
                    	    npt1.INVOICE_ID,
                    	    npm6.PAYMENT_TERMS_NAME,
                    	    npm6.DAYS
                        FROM
                        	NPT001 npt1,
                        	NPT009 npt9,
                        	NPM006 npm6
                        WHERE
                        	npt1.customer_id = ' || p_customer_id || ' AND
                        	npt9.customer_id = npt1.customer_id AND
                        	npt9.PAYMENT_TERMS_ID = npm6.PAYMENT_TERMS_ID AND
                            npt1.DATE_CREATED + npm6.DAYS >= SYSDATE';

    l_query_thirty :=   'SELECT
                    	    npt9.LEGAL_NAME AS "Subsidiary",
                        	npt9.BILLING_CONTACTA,
                            npt9.BILLING_CONTACTB,
                    	    npt1.TOTAL_AMOUNT,
                    	    npt1.DATE_CREATED,
                    	    npt1.INVOICE_ID,
                    	    npm6.PAYMENT_TERMS_NAME,
                    	    npm6.DAYS
                        FROM
                        	NPT001 npt1,
                        	NPT009 npt9,
                        	NPM006 npm6
                        WHERE
                        	npt1.customer_id = ' || p_customer_id || ' AND
                        	npt9.customer_id = npt1.customer_id AND
                        	npt9.PAYMENT_TERMS_ID = npm6.PAYMENT_TERMS_ID AND
                            npt1.DATE_CREATED + npm6.DAYS < SYSDATE AND
                            CAST(SYSDATE - (npt1.DATE_CREATED + npm6.DAYS) AS INT) < 31';

    l_query_sixty :=    'SELECT
                    	    npt9.LEGAL_NAME AS "Subsidiary",
                        	npt9.BILLING_CONTACTA,
                            npt9.BILLING_CONTACTB,
                    	    npt1.TOTAL_AMOUNT,
                    	    npt1.DATE_CREATED,
                    	    npt1.INVOICE_ID,
                    	    npm6.PAYMENT_TERMS_NAME,
                    	    npm6.DAYS
                        FROM
                        	NPT001 npt1,
                        	NPT009 npt9,
                        	NPM006 npm6
                        WHERE
                        	npt1.customer_id = ' || p_customer_id || ' AND
                        	npt9.customer_id = npt1.customer_id AND
                        	npt9.PAYMENT_TERMS_ID = npm6.PAYMENT_TERMS_ID AND
                            CAST(SYSDATE - (npt1.DATE_CREATED + npm6.DAYS) AS INT) > 30 AND
                            CAST(SYSDATE - (npt1.DATE_CREATED + npm6.DAYS) AS INT) < 61';

    OPEN v_cur FOR l_query_current;
    LOOP
        FETCH 
            v_cur
        INTO 
            v_eom_rec.legal_name, 
            v_eom_rec.billing_contact_a,
            v_eom_rec.billing_contact_b,    
            v_eom_rec.balance_current,                    
            v_eom_rec.date_created,                       
            v_eom_rec.invoice_id,
            v_eom_rec.payment_terms_name,
            v_eom_rec.days;     

        EXIT WHEN v_cur%NOTFOUND;     
        PIPE ROW(v_eom_rec);        
    END LOOP;
    CLOSE v_cur;

    OPEN v_cur FOR l_query_thirty;
    LOOP
        FETCH 
            v_cur
        INTO 
            v_eom_rec.legal_name, 
            v_eom_rec.billing_contact_a,
            v_eom_rec.billing_contact_b,    
            v_eom_rec.balance_thirty,                    
            v_eom_rec.date_created,                       
            v_eom_rec.invoice_id,
            v_eom_rec.payment_terms_name,
            v_eom_rec.days;     

        EXIT WHEN v_cur%NOTFOUND;     
        PIPE ROW(v_eom_rec);        
    END LOOP;
    CLOSE v_cur;

    OPEN v_cur FOR l_query_sixty;
    LOOP
        FETCH 
            v_cur
        INTO 
            v_eom_rec.legal_name, 
            v_eom_rec.billing_contact_a,
            v_eom_rec.billing_contact_b,    
            v_eom_rec.balance_sixty,                    
            v_eom_rec.date_created,                       
            v_eom_rec.invoice_id,
            v_eom_rec.payment_terms_name,
            v_eom_rec.days;     

        EXIT WHEN v_cur%NOTFOUND;     
        PIPE ROW(v_eom_rec);        
    END LOOP;
    CLOSE v_cur;

    END EOM_TABLE;

    FUNCTION get_breakdown (
        p_soa_customer_id NUMBER,
        p_soa_payment_terms_id NUMBER,
        p_soa_breakdown_number NUMBER
    )
    return NUMBER
    as
        v_total_breakdown NUMBER := 0;
        v_breakdown NUMBER := 0;
        v_credit NUMBER := 0;
    begin
        FOR i IN (SELECT p_soa_customer_id AS "CUSTOMER_ID" FROM dual UNION SELECT npt9_C.CUSTOMER_ID FROM NPT009 npt9_C, NPT009 npt9_M WHERE npt9_M.CUSTOMER_ID = p_soa_customer_id AND (npt9_C.MAIN_ACCOUNT_CODE = npt9_M.CUSTOMER_CODE OR npt9_C.DEPARTMENT_ACCOUNT_CODE = npt9_M.CUSTOMER_CODE)) LOOP
            IF p_soa_breakdown_number = 1 THEN
                SELECT
                    SUM(npt1.OUTSTANDING_BALANCE)
                INTO
                    v_breakdown
                FROM
                    NPT001 npt1,
                    NPM006 npm6
                WHERE 
                    npt1.CUSTOMER_ID = i.CUSTOMER_ID AND
                    npm6.PAYMENT_TERMS_ID = p_soa_payment_terms_id AND
                    npt1.DATE_CREATED + npm6.DAYS >= SYSDATE;

                SELECT
                    SUM(npt15.current_balance)
                INTO
                    v_credit
                FROM
                    NPT015 npt15,
                    NPM006 npm6
                WHERE
                    npt15.customer_id = i.CUSTOMER_ID AND 
                    npm6.PAYMENT_TERMS_ID = p_soa_payment_terms_id AND
                    npt15.DATE_CREATED + npm6.DAYS >= SYSDATE;

            ELSIF p_soa_breakdown_number = 2 THEN
                SELECT
                    SUM(npt1.OUTSTANDING_BALANCE)
                INTO
                    v_breakdown
                FROM
                    NPT001 npt1,
                    NPM006 npm6
                WHERE 
                    npt1.CUSTOMER_ID = i.CUSTOMER_ID AND
                    npm6.PAYMENT_TERMS_ID = p_soa_payment_terms_id AND
                    npt1.DATE_CREATED + npm6.DAYS < SYSDATE AND
                    CAST(SYSDATE - (npt1.DATE_CREATED + npm6.DAYS) AS INT) < 31;

                SELECT
                    SUM(npt15.current_balance)
                INTO
                    v_credit
                FROM
                    NPT015 npt15,
                    NPM006 npm6
                WHERE
                    npt15.customer_id = i.CUSTOMER_ID AND 
                    npm6.PAYMENT_TERMS_ID = p_soa_payment_terms_id AND
                    npt15.DATE_CREATED + npm6.DAYS < SYSDATE AND
                    CAST(SYSDATE - (npt15.DATE_CREATED + npm6.DAYS) AS INT) < 31;

            ELSIF p_soa_breakdown_number = 3 THEN
                SELECT
                    SUM(npt1.OUTSTANDING_BALANCE)
                INTO
                    v_breakdown
                FROM
                    NPT001 npt1,
                    NPM006 npm6
                WHERE
                    npt1.CUSTOMER_ID = i.CUSTOMER_ID AND
                    npm6.PAYMENT_TERMS_ID = p_soa_payment_terms_id AND
                    CAST(SYSDATE - (npt1.DATE_CREATED + npm6.DAYS) AS INT) > 30 AND
                    CAST(SYSDATE - (npt1.DATE_CREATED + npm6.DAYS) AS INT) < 61;

                SELECT
                    SUM(npt15.current_balance)
                INTO
                    v_credit
                FROM
                    NPT015 npt15,
                    NPM006 npm6
                WHERE
                    npt15.customer_id = i.CUSTOMER_ID AND 
                    npm6.PAYMENT_TERMS_ID = p_soa_payment_terms_id AND
                    CAST(SYSDATE - (npt15.DATE_CREATED + npm6.DAYS) AS INT) > 30 AND
                    CAST(SYSDATE - (npt15.DATE_CREATED + npm6.DAYS) AS INT) < 61;

            ELSIF p_soa_breakdown_number = 4 THEN
                SELECT
                    SUM(npt1.OUTSTANDING_BALANCE)
                INTO
                    v_breakdown
                FROM
                    NPT001 npt1,
                    NPM006 npm6
                WHERE
                    npt1.CUSTOMER_ID = i.CUSTOMER_ID AND
                    npm6.PAYMENT_TERMS_ID = p_soa_payment_terms_id AND
                    CAST(SYSDATE - (npt1.DATE_CREATED + npm6.DAYS) AS INT) > 60 AND
                    CAST(SYSDATE - (npt1.DATE_CREATED + npm6.DAYS) AS INT) < 91;

                SELECT
                    SUM(npt15.current_balance)
                INTO
                    v_credit
                FROM
                    NPT015 npt15,
                    NPM006 npm6
                WHERE
                    npt15.customer_id = i.CUSTOMER_ID AND 
                    npm6.PAYMENT_TERMS_ID = p_soa_payment_terms_id AND
                    CAST(SYSDATE - (npt15.DATE_CREATED + npm6.DAYS) AS INT) > 60 AND
                    CAST(SYSDATE - (npt15.DATE_CREATED + npm6.DAYS) AS INT) < 91;

            ELSIF p_soa_breakdown_number = 5 THEN
                SELECT
                    SUM(npt1.OUTSTANDING_BALANCE)
                INTO
                    v_breakdown
                FROM
                    NPT001 npt1,
                    NPM006 npm6
                WHERE 
                    npt1.CUSTOMER_ID = i.CUSTOMER_ID AND
                    npm6.PAYMENT_TERMS_ID = p_soa_payment_terms_id AND
                    npt1.DATE_CREATED + npm6.DAYS < SYSDATE AND
                    CAST(SYSDATE - (npt1.DATE_CREATED + npm6.DAYS) AS INT) >= 91;

                SELECT
                    SUM(npt15.current_balance)
                INTO
                    v_credit
                FROM
                    NPT015 npt15,
                    NPM006 npm6
                WHERE
                    npt15.customer_id = i.CUSTOMER_ID AND 
                    npm6.PAYMENT_TERMS_ID = p_soa_payment_terms_id AND
                    npt15.DATE_CREATED + npm6.DAYS < SYSDATE AND
                    CAST(SYSDATE - (npt15.DATE_CREATED + npm6.DAYS) AS INT) >= 91;

            END IF;

            IF v_breakdown IS NULL THEN
                v_breakdown := 0;
            END IF;

            IF v_credit IS NULL THEN
                v_credit := 0;
            END IF;

            v_total_breakdown := v_total_breakdown + v_breakdown - v_credit;
        END LOOP;

        RETURN v_total_breakdown;

    END get_breakdown;


    FUNCTION get_breakdown_customers (
        p_soa_customer_id NUMBER,
        p_soa_breakdown_number NUMBER
    )
    return NUMBER
    as
        v_breakdown NUMBER := 0;
        v_credit NUMBER := 0;
    begin
    IF p_soa_breakdown_number = 1 THEN
        SELECT
            SUM(npt1.OUTSTANDING_BALANCE)
        INTO
            v_breakdown
        FROM
            NPT001 npt1,
            NPT009 npt9_M,
            NPT009 npt9_S,
            NPM006 npm6
        WHERE
            npt9_M.CUSTOMER_ID = p_soa_customer_id AND
            npt9_S.MAIN_ACCOUNT_CODE = npt9_M.CUSTOMER_CODE AND
            npt1.CUSTOMER_ID = npt9_S.CUSTOMER_ID AND
            npm6.PAYMENT_TERMS_ID = npt9_S.PAYMENT_TERMS_ID AND
            npt1.DATE_CREATED + npm6.DAYS >= SYSDATE;

        SELECT
            SUM(npt15.current_balance)
        INTO
            v_credit
        FROM
            NPT009 npt9_M,
            NPT009 npt9_S,
            NPT015 npt15,
            NPM006 npm6
        WHERE
            npt9_M.CUSTOMER_ID = p_soa_customer_id AND
            npt9_S.MAIN_ACCOUNT_CODE = npt9_M.CUSTOMER_CODE AND
            npt15.CUSTOMER_ID = npt9_S.CUSTOMER_ID AND
            npm6.PAYMENT_TERMS_ID = npt9_S.PAYMENT_TERMS_ID AND
            npt15.DATE_CREATED + npm6.DAYS >= SYSDATE;

    ELSIF p_soa_breakdown_number = 2 THEN
        SELECT
            SUM(npt1.OUTSTANDING_BALANCE)
        INTO
            v_breakdown
        FROM
            NPT001 npt1,
            NPT009 npt9_M,
            NPT009 npt9_S,
            NPM006 npm6
        WHERE 
            npt9_M.CUSTOMER_ID = p_soa_customer_id AND
            npt9_S.MAIN_ACCOUNT_CODE = npt9_M.CUSTOMER_CODE AND
            npt1.CUSTOMER_ID = npt9_S.CUSTOMER_ID AND
            npm6.PAYMENT_TERMS_ID = npt9_S.PAYMENT_TERMS_ID AND
            npt1.DATE_CREATED + npm6.DAYS < SYSDATE AND
            CAST(SYSDATE - (npt1.DATE_CREATED + npm6.DAYS) AS INT) < 31;

        SELECT
            SUM(npt15.current_balance)
        INTO
            v_credit
        FROM
            NPT009 npt9_M,
            NPT009 npt9_S,
            NPT015 npt15,
            NPM006 npm6
        WHERE
            npt9_M.CUSTOMER_ID = p_soa_customer_id AND
            npt9_S.MAIN_ACCOUNT_CODE = npt9_M.CUSTOMER_CODE AND
            npt15.CUSTOMER_ID = npt9_S.CUSTOMER_ID AND
            npm6.PAYMENT_TERMS_ID = npt9_S.PAYMENT_TERMS_ID AND
            npt15.DATE_CREATED + npm6.DAYS < SYSDATE AND
            CAST(SYSDATE - (npt15.DATE_CREATED + npm6.DAYS) AS INT) < 31;

    ELSIF p_soa_breakdown_number = 3 THEN
        SELECT
            SUM(npt1.OUTSTANDING_BALANCE)
        INTO
            v_breakdown
        FROM
            NPT001 npt1,
            NPT009 npt9_M,
            NPT009 npt9_S,
            NPM006 npm6
        WHERE
            npt9_M.CUSTOMER_ID = p_soa_customer_id AND
            npt9_S.MAIN_ACCOUNT_CODE = npt9_M.CUSTOMER_CODE AND
            npt1.CUSTOMER_ID = npt9_S.CUSTOMER_ID AND
            npm6.PAYMENT_TERMS_ID = npt9_S.PAYMENT_TERMS_ID AND
            npt1.DATE_CREATED + npm6.DAYS < SYSDATE AND
            CAST(SYSDATE - (npt1.DATE_CREATED + npm6.DAYS) AS INT) > 30 AND
            CAST(SYSDATE - (npt1.DATE_CREATED + npm6.DAYS) AS INT) < 61;

            SELECT
                SUM(npt15.current_balance)
            INTO
                v_credit
            FROM
                NPT009 npt9_M,
                NPT009 npt9_S,
                NPT015 npt15,
                NPM006 npm6
            WHERE
                npt9_M.CUSTOMER_ID = p_soa_customer_id AND
                npt9_S.MAIN_ACCOUNT_CODE = npt9_M.CUSTOMER_CODE AND
                npt15.CUSTOMER_ID = npt9_S.CUSTOMER_ID AND
                npm6.PAYMENT_TERMS_ID = npt9_S.PAYMENT_TERMS_ID AND
                npt15.DATE_CREATED + npm6.DAYS < SYSDATE AND
                CAST(SYSDATE - (npt15.DATE_CREATED + npm6.DAYS) AS INT) > 30 AND
                CAST(SYSDATE - (npt15.DATE_CREATED + npm6.DAYS) AS INT) < 61;

    ELSIF p_soa_breakdown_number = 4 THEN
        SELECT
            SUM(npt1.OUTSTANDING_BALANCE)
        INTO
            v_breakdown
        FROM
            NPT001 npt1,
            NPT009 npt9_M,
            NPT009 npt9_S,
            NPM006 npm6
        WHERE
            npt9_M.CUSTOMER_ID = p_soa_customer_id AND
            npt9_S.MAIN_ACCOUNT_CODE = npt9_M.CUSTOMER_CODE AND
            npt1.CUSTOMER_ID = npt9_S.CUSTOMER_ID AND
            npm6.PAYMENT_TERMS_ID = npt9_S.PAYMENT_TERMS_ID AND
            npt1.DATE_CREATED + npm6.DAYS < SYSDATE AND
            CAST(SYSDATE - (npt1.DATE_CREATED + npm6.DAYS) AS INT) > 60 AND
            CAST(SYSDATE - (npt1.DATE_CREATED + npm6.DAYS) AS INT) < 91;

            SELECT
                SUM(npt15.current_balance)
            INTO
                v_credit
            FROM
                NPT009 npt9_M,
                NPT009 npt9_S,
                NPT015 npt15,
                NPM006 npm6
            WHERE
                npt9_M.CUSTOMER_ID = p_soa_customer_id AND
                npt9_S.MAIN_ACCOUNT_CODE = npt9_M.CUSTOMER_CODE AND
                npt15.CUSTOMER_ID = npt9_S.CUSTOMER_ID AND
                npm6.PAYMENT_TERMS_ID = npt9_S.PAYMENT_TERMS_ID AND
                npt15.DATE_CREATED + npm6.DAYS < SYSDATE AND
                CAST(SYSDATE - (npt15.DATE_CREATED + npm6.DAYS) AS INT) > 60 AND
                CAST(SYSDATE - (npt15.DATE_CREATED + npm6.DAYS) AS INT) < 91;

    ELSIF p_soa_breakdown_number = 5 THEN
        SELECT
            SUM(npt1.OUTSTANDING_BALANCE)
        INTO
            v_breakdown
        FROM
            NPT001 npt1,
            NPT009 npt9_M,
            NPT009 npt9_S,
            NPM006 npm6
        WHERE 
            npt9_M.CUSTOMER_ID = p_soa_customer_id AND
            npt9_S.MAIN_ACCOUNT_CODE = npt9_M.CUSTOMER_CODE AND
            npt1.CUSTOMER_ID = npt9_S.CUSTOMER_ID AND
            npm6.PAYMENT_TERMS_ID = npt9_S.PAYMENT_TERMS_ID AND
            npt1.DATE_CREATED + npm6.DAYS < SYSDATE AND
            CAST(SYSDATE - (npt1.DATE_CREATED + npm6.DAYS) AS INT) >= 91;

        SELECT
            SUM(npt15.current_balance)
        INTO
            v_credit
        FROM
            NPT009 npt9_M,
            NPT009 npt9_S,
            NPT015 npt15,
            NPM006 npm6
        WHERE
            npt9_M.CUSTOMER_ID = p_soa_customer_id AND
            npt9_S.MAIN_ACCOUNT_CODE = npt9_M.CUSTOMER_CODE AND
            npt15.CUSTOMER_ID = npt9_S.CUSTOMER_ID AND
            npm6.PAYMENT_TERMS_ID = npt9_S.PAYMENT_TERMS_ID AND
            npt15.DATE_CREATED + npm6.DAYS < SYSDATE AND
            CAST(SYSDATE - (npt15.DATE_CREATED + npm6.DAYS) AS INT) >= 91;
    END IF; 

    IF v_breakdown IS NULL THEN
        v_breakdown := 0;
    END IF;

    IF v_credit IS NULL THEN
        v_credit := 0;
    END IF;      
        RETURN v_breakdown - v_credit;

    END get_breakdown_customers;

    FUNCTION get_breakdown_customers_sum (
        p_soa_customer_id NUMBER,
        p_soa_payment_terms_id NUMBER
    )
    return NUMBER
    as
        v_sum NUMBER := 0;
        v_holder NUMBER := 0;
    BEGIN
        FOR i in 1..5 LOOP
            SELECT soa_breakdown_records.get_breakdown(p_soa_customer_id, p_soa_payment_terms_id, i) INTO v_holder FROM dual;
            v_sum := v_sum + v_holder;
        END LOOP;

        RETURN v_sum;
    END get_breakdown_customers_sum;

END SOA_BREAKDOWN_RECORDS;
/