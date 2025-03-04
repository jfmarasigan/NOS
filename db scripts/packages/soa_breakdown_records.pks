create or replace package "SOA_BREAKDOWN_RECORDS" as
    FUNCTION get_breakdown (
        p_soa_customer_id NUMBER,
        p_soa_payment_terms_id NUMBER,
        p_soa_breakdown_number NUMBER   
        )
    RETURN NUMBER;

    FUNCTION get_breakdown_customers (
        p_soa_customer_id NUMBER,
        p_soa_breakdown_number NUMBER   
        )
    RETURN NUMBER;

    FUNCTION get_breakdown_customers_sum (
        p_soa_customer_id NUMBER,
        p_soa_payment_terms_id NUMBER
        )
    RETURN NUMBER;

    TYPE v_eom IS RECORD(
        legal_name VARCHAR(20),
        billing_contact_a VARCHAR(20),
        billing_contact_b VARCHAR(20),   
        balance_current NUMBER,
        balance_thirty NUMBER,
        balance_sixty NUMBER,
        balance_over_sixty NUMBER, 
        date_created DATE,
        invoice_id NUMBER,
        payment_terms_name VARCHAR(10),
        days NUMBER
    );

    TYPE v_eom_tab IS TABLE OF v_eom;

    FUNCTION EOM_TABLE(
        p_customer_id NUMBER
    )
    return v_eom_tab PIPELINED;
    
end "SOA_BREAKDOWN_RECORDS";
/