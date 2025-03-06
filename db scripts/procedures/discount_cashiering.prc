create or replace PROCEDURE "DISCOUNT_CASHIERING" (
    P_CUSTOMER IN VARCHAR2,
    P_BARCODE IN VARCHAR2)
IS
    v_disc NUMBER;
    v_dc NUMBER;
    v_seq_id NUMBER;
    v_seq NUMBER;
    v_id NUMBER := 0;
    v_bc VARCHAR(50);
    v_sid NUMBER := 0;
    v_disc_type VARCHAR2(50); 
    v_class_name VARCHAR2(20);
BEGIN
BEGIN
WITH DiscountedPrices AS (
    SELECT a.discount_id, 
           a.discount_value, 
           b.type AS discount_type, 
           UPPER(g.class_name) AS class_name,
           NVL(CASE 
                WHEN b.type = 'Percent' THEN f.price * (a.discount_value / 100)
                WHEN b.type = 'Fixed' THEN a.discount_value 
                ELSE f.price 
               END, 0) AS discounted_price
    FROM NPT028 A, NPT008 B, NPT032 C, NPT009 D, NIT001 E, NIT002 F, NIM025 G
    WHERE d.dba = P_CUSTOMER
      AND a.discount_id = b.discount_id
      AND a.discount_id = c.discount_id
      AND d.customer_id = c.customer_id
      AND a.sic_id = e.sic_id
      AND e.item_id = f.item_id
      AND (LOWER(g.class_name) = 'net' OR LOWER(g.class_name) = 'regular')
      AND b.date_to >= SYSDATE
      AND b.date_from <= SYSDATE
      AND f.upc = P_BARCODE

    UNION ALL

    SELECT a.discount_id, 
           a.discount_value, 
           b.type AS discount_type, 
           UPPER(g.class_name) AS class_name,
           NVL(CASE 
                WHEN b.type = 'Percent' THEN f.price * (a.discount_value / 100)
                WHEN b.type = 'Fixed' THEN a.discount_value 
                ELSE f.price 
               END, 0) AS discounted_price
    FROM NPT029 A, NPT008 B, NPT032 C, NPT009 D, NIT001 E, NIT002 F, NIM025 G
    WHERE d.dba = P_CUSTOMER
      AND a.discount_id = b.discount_id
      AND a.discount_id = c.discount_id
      AND d.customer_id = c.customer_id
      AND a.dept_id = e.dept_id
      AND e.item_id = f.item_id
      AND LOWER(g.class_name) = 'regular'
      AND b.date_to >= SYSDATE
      AND b.date_from <= SYSDATE
      AND f.upc = P_BARCODE

    UNION ALL

    SELECT a.discount_id, 
           a.discount_value, 
           b.type AS discount_type, 
           UPPER(g.class_name) AS class_name,
           NVL(CASE 
                WHEN b.type = 'Percent' THEN f.price * (a.discount_value / 100)
                WHEN b.type = 'Fixed' THEN a.discount_value 
                ELSE f.price 
               END, 0) AS discounted_price
    FROM NPT030 A, NPT008 B, NPT032 C, NPT009 D, NIT001 E, NIT002 F, NIM025 G
    WHERE d.dba = P_CUSTOMER
      AND a.discount_id = b.discount_id
      AND a.discount_id = c.discount_id
      AND d.customer_id = c.customer_id
      AND a.class_id = e.class_id
      AND e.item_id = f.item_id
      AND LOWER(g.class_name) = 'regular'
      AND b.date_to >= SYSDATE
      AND b.date_from <= SYSDATE
      AND f.upc = P_BARCODE

    UNION ALL
    SELECT DISTINCT 0, 
           np09.standard_discount_value, 
           'Percent' AS discount_type, 
           'REGULAR' AS class_code, 
           NVL(nt02.price * (np09.standard_discount_value / 100), 0) AS discounted_price
    FROM NPT009 np09, NIT001 nt01, NPT032 np032, NIT002 nt02
    WHERE np09.class_id = nt01.class_id
      AND np09.customer_id = np032.customer_id 
      AND np09.dba = P_CUSTOMER
      AND nt01.item_id = nt02.item_id
      AND nt02.upc = P_BARCODE
)
SELECT discount_id, 
       discount_value, 
       discount_type, 
       class_name, 
       MAX(discounted_price) AS discounted_price
INTO v_id, v_disc, v_disc_type, v_class_name, v_dc  
FROM DiscountedPrices
GROUP BY discount_id, discount_value, discount_type, class_name
ORDER BY discounted_price DESC
FETCH FIRST 1 ROW ONLY;

    
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        v_id := -1;
END;

BEGIN
    SELECT a.item_num INTO v_bc
    FROM NIT001 a, NIT002 b
    WHERE a.item_id = b.item_id
      AND b.upc = P_BARCODE;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        v_bc := NULL;
END;

BEGIN
    SELECT seq_id INTO v_sid
    FROM apex_collections
    WHERE collection_name = 'DISCOUNT_A'
      AND c006 = P_BARCODE;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        v_sid := 0;
END;

IF v_bc IS NOT NULL AND v_sid != 0 THEN
                         
    apex_collection.update_member_attribute(
        p_collection_name => 'DISCOUNT_A',
        p_seq => v_sid,
        p_attr_number => 3,
        p_number_value => v_disc
    );
    
    apex_collection.update_member_attribute(
        p_collection_name => 'DISCOUNT_A',
        p_seq => v_sid,
        p_attr_number => 4,
        p_number_value => v_dc
    );


    IF v_disc_type = 'Percent' THEN
        apex_collection.update_member_attribute(
            p_collection_name => 'DISCOUNT_A',
            p_seq => v_sid,
            p_attr_number => 8, 
            p_attr_value => '%'
        );
    END IF;

    IF v_class_name = 'NET' THEN
        apex_collection.update_member_attribute(
            p_collection_name => 'DISCOUNT_A',
            p_seq => v_sid,
            p_attr_number => 9, 
            p_attr_value => 'N'
        );
    ELSE
        apex_collection.update_member_attribute(
            p_collection_name => 'DISCOUNT_A',
            p_seq => v_sid,
            p_attr_number => 9, 
            p_attr_value => 'S'
        );
    END IF;

END IF;

END "DISCOUNT_CASHIERING";
/

