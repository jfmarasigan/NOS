create or replace PROCEDURE           "RESERVATION_DISCOUNT_COMBINED" (
    P_CUSTOMER_FIELD IN VARCHAR2,
    P_BARCODE IN VARCHAR2
)
IS
    v_disc NUMBER;
    v_dc NUMBER;
    v_seq_id NUMBER;
    v_seq NUMBER;
    v_id NUMBER := 0;
    v_bc VARCHAR(50);
    v_qty NUMBER;
    v_offset NUMBER := 0;
    v_col VARCHAR(1) := 'A';
    v_sid NUMBER;
    v_collection_name VARCHAR2(50);
BEGIN
    LOOP 
        -- Calculate Discount Value And Discounted Price
        BEGIN
            WITH discount_data AS (
                SELECT a.discount_id, a.discount_value, 
                       NVL(CASE WHEN b.type = 'Percent' THEN f.price * (a.discount_value/100)
                                WHEN b.type = 'Fixed' THEN a.discount_value 
                                ELSE f.price END, 0) AS discounted_price
                FROM NPT028 A, NPT008 B, NPT032 C, NPT009 D, NIT001 E, NIT002 F
                WHERE a.discount_id = b.discount_id
                  AND a.discount_id = c.discount_id
                  AND d.customer_id = c.customer_id
                  AND a.sic_id = e.sic_id
                  AND e.item_id = f.item_id
                  AND d.dba = P_CUSTOMER_FIELD
                  AND b.date_to >= SYSDATE
                  AND b.date_from <= SYSDATE
                  AND f.upc = P_BARCODE
            UNION ALL
                SELECT a.discount_id, a.discount_value, 
                       NVL(CASE WHEN b.type = 'Percent' THEN f.price * (a.discount_value/100)
                                WHEN b.type = 'Fixed' THEN a.discount_value 
                                ELSE f.price END, 0) AS discounted_price
                FROM NPT029 A, NPT008 B, NPT032 C, NPT009 D, NIT001 E, NIT002 F
                WHERE a.discount_id = b.discount_id
                  AND a.discount_id = c.discount_id
                  AND d.customer_id = c.customer_id
                  AND a.dept_id = e.dept_id
                  AND e.item_id = f.item_id
                  AND d.dba = P_CUSTOMER_FIELD
                  AND b.date_to >= SYSDATE
                  AND b.date_from <= SYSDATE
                  AND f.upc = P_BARCODE
            UNION ALL
                SELECT a.discount_id, a.discount_value, 
                       NVL(CASE WHEN b.type = 'Percent' THEN f.price * (a.discount_value/100)
                                WHEN b.type = 'Fixed' THEN a.discount_value 
                                ELSE f.price END, 0) AS discounted_price
                FROM NPT030 A, NPT008 B, NPT032 C, NPT009 D, NIT001 E, NIT002 F
                WHERE a.discount_id = b.discount_id
                  AND a.discount_id = c.discount_id
                  AND d.customer_id = c.customer_id
                  AND a.class_id = e.class_id
                  AND e.item_id = f.item_id
                  AND d.dba = P_CUSTOMER_FIELD
                  AND b.date_to >= SYSDATE
                  AND b.date_from <= SYSDATE
                  AND f.upc = P_BARCODE
            UNION ALL
                SELECT DISTINCT 0, np09.standard_discount_value, 
                       NVL(nt02.price * (np09.standard_discount_value / 100), 0) AS discounted_price
                FROM NPT009 np09, NIT001 nt01, NPT032 np032, NIT002 nt02
                WHERE np09.class_id = nt01.class_id
                  AND np09.customer_id = np032.customer_id 
                  AND np09.dba = P_CUSTOMER_FIELD
                  AND nt01.item_id = nt02.item_id
                  AND nt02.upc = P_BARCODE
            )
            SELECT NVL(discount_id, 0), NVL(MAX(discount_value), 0) AS max_discount_value, NVL(MAX(discounted_price), 0) AS discounted_price
            INTO v_id, v_disc, v_dc
            FROM discount_data
            GROUP BY discount_id
            ORDER BY discount_id
            OFFSET v_offset ROWS
            FETCH NEXT 1 ROWS ONLY;
        EXCEPTION
            WHEN NO_DATA_FOUND THEN
                v_id := -1;
        END;

        -- Fetch sequence ID for discount collection
        BEGIN
            SELECT seq_id 
            INTO v_seq
            FROM apex_collections
            WHERE collection_name = 'RES_AVAILABLE_DISCOUNTS'
              AND n001 = NVL(v_id, 0)
              AND c001 IN ('A', 'B', 'C', 'D');
        EXCEPTION
            WHEN NO_DATA_FOUND THEN
                v_seq := 0; 
        END;

        -- Fetch sequence ID for discount collection based on barcode
        BEGIN
            SELECT seq_id, n001 INTO v_sid, v_qty
            FROM apex_collections
            WHERE collection_name = 'RES_DISCOUNT_' || v_col
              AND c006 = P_BARCODE;
        EXCEPTION
            WHEN NO_DATA_FOUND THEN
                v_sid := 0;
        END;

        -- Fetch item number for barcode
        BEGIN
            SELECT a.item_num INTO v_bc
            FROM NIT001 a, NIT002 b
            WHERE a.item_id = b.item_id
              AND b.upc = P_BARCODE;
        EXCEPTION
            WHEN NO_DATA_FOUND THEN
                v_bc := NULL;
        END;

        IF v_seq BETWEEN 1 AND 4 AND v_bc IS NOT NULL AND v_sid != 0 THEN
            v_collection_name := CASE v_seq
                                  WHEN 1 THEN 'RES_DISCOUNT_A'
                                  WHEN 2 THEN 'RES_DISCOUNT_B'
                                  WHEN 3 THEN 'RES_DISCOUNT_C'
                                  WHEN 4 THEN 'RES_DISCOUNT_D'
                                 END;
            -- Update collection with discount
            apex_collection.update_member_attribute(
                p_collection_name => v_collection_name,
                p_seq => v_sid,
                p_attr_number => 3,
                p_number_value => v_disc
            );

            -- Update collection with discounted price
            apex_collection.update_member_attribute(
                p_collection_name => v_collection_name,
                p_seq => v_sid,
                p_attr_number => 4,
                p_number_value => v_dc
            );
        END IF;

        -- Check exit condition
        IF v_offset = 3 THEN
            EXIT;
        END IF;

        -- Prepare for next iteration
        v_offset := v_offset + 1;
        v_col := chr(ascii(v_col) + 1);
    END LOOP;
END RESERVATION_DISCOUNT_COMBINED;
/