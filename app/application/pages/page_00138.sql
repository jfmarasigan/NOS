prompt --application/pages/page_00138
begin
--   Manifest
--     PAGE: 00138
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>4200484135045687
,p_default_application_id=>100
,p_default_id_offset=>0
,p_default_owner=>'NOS'
);
wwv_flow_imp_page.create_page(
 p_id=>138
,p_name=>'Charge COD Invoicing - Print Button'
,p_alias=>'CHARGE-COD-INVOICING-PRINT-BUTTON'
,p_page_mode=>'MODAL'
,p_step_title=>'Print Invoice'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p132KeyMap = {',
'    n: (v) => {',
'        $("#n").trigger("click");',
'    },',
'    y: (v) => {',
'        $("#y").trigger("click");',
'    },',
'    escape: (v) => {',
'        $("#esc").trigger("click");',
'    }',
'}',
'',
'function mapP132Keys() {',
'    $(document).off(''keydown.p132keyevents'');',
'    $(document).on(''keydown.p132keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p132KeyMap[key]) {',
'            ev.preventDefault();',
'            p132KeyMap[key]();',
'        }',
'    });',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP132Keys();',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Dialog-header {',
'    background-color: #046AC8;',
'    padding: .5rem 0rem 0rem 1rem;',
'}',
'',
'.t-Dialog-body {',
'    padding-block-start: var(--ut-dialog-padding-y, .5rem);',
'    padding-inline-start: var(--ut-dialog-padding-x, .5rem);',
'    color: black;',
'}',
'',
'.t-Dialog-bodyWrapperIn {',
'    overflow: hidden;',
'    background-color: white;',
'    color: black;',
'}',
'',
'.t-Region {',
'    color: white;',
'    font-size: 1.5rem;',
'    margin-bottom: .4rem;',
'}',
'',
'.ui-dialog-titlebar {',
'    display: none !important;',
'}',
'',
'.hide {',
'    display: none;',
'}',
'',
'#P129_TYPE{',
'    font-size: 1.125rem;',
'}',
'',
'#P129_AMOUNT{',
'    font-size: 1.125rem;',
'}',
'',
'#P129_REASON{',
'    font-size: 1.125rem;',
'}',
'',
'.t-Form-label {',
'    font-size: 1.125rem;',
'    color: white;',
'    font-weight: 700;',
'    white-space: nowrap;',
'}',
'',
'.btns {',
'    font-size: 1.5rem;',
'}',
'',
'.btns:focus {',
'    outline: none;',
'    box-shadow: none !important;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'500px'
,p_dialog_max_width=>'500px'
,p_dialog_attributes=>'closeOnEscape:false'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(71717890432117868)
,p_button_sequence=>20
,p_button_name=>'Y'
,p_button_static_id=>'y'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>Y</u> - Yes'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns'
,p_grid_new_row=>'N'
,p_grid_column=>5
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(71718273575117868)
,p_button_sequence=>30
,p_button_name=>'N'
,p_button_static_id=>'n'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>N</u> - No'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns'
,p_grid_new_row=>'N'
,p_grid_column=>3
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(71717467243117867)
,p_button_sequence=>50
,p_button_name=>'Cancel'
,p_button_static_id=>'esc'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'C'
,p_warn_on_unsaved_changes=>null
,p_grid_column_css_classes=>'hide'
,p_grid_new_row=>'Y'
,p_grid_column=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70342954256069548)
,p_name=>'P138_INVOICE_NO'
,p_item_sequence=>80
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(137314805219386642)
,p_name=>'P138_URL'
,p_item_sequence=>60
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(139721709592191807)
,p_name=>'P138_TOTAL'
,p_item_sequence=>70
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71719673448117917)
,p_name=>'N Delivery'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(71718273575117868)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71721180212117921)
,p_event_id=>wwv_flow_imp.id(71719673448117917)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_INVOICE_ID    NUMBER;',
'    V_CUSTOMER_ID   NUMBER;',
'    V_DISCOUNT_TYPE VARCHAR(10);',
'    V_DISCOUNT_AMT  NUMBER;',
'    V_REASON        VARCHAR(51);',
'BEGIN',
'    SELECT CUSTOMER_ID INTO V_CUSTOMER_ID',
'      FROM NPT009 ',
'     WHERE DBA = :P87_DBA;',
'',
'    SELECT INVOICE_ID',
'        INTO V_INVOICE_ID',
'        FROM NPT001',
'        WHERE INVOICE_ID = (SELECT MAX(INVOICE_ID)',
'                              FROM NPT001',
'                             WHERE TOTAL_AMOUNT IS NULL',
'                               AND USER_CREATED = v(''APP_USER''))',
'          AND USER_CREATED = v(''APP_USER'');',
'     ',
'    BEGIN',
'        SELECT c001, c002, n001  ',
'        INTO V_DISCOUNT_TYPE, V_REASON, V_DISCOUNT_AMT',
'        FROM APEX_COLLECTIONS',
'        WHERE COLLECTION_NAME = ''INVOICE_ADDITIONAL'';',
'        EXCEPTION WHEN NO_DATA_FOUND THEN',
'            V_DISCOUNT_TYPE := NULL; V_DISCOUNT_AMT := NULL; V_REASON := NULL;',
'    END;',
'',
'    UPDATE NPT001',
'      SET TOTAL_AMOUNT = :P138_TOTAL,',
'          SUB_TOTAL = :P87_SUB,',
'          STATUS = ''CREATED'',',
'          TOTAL_DISCOUNT = :P87_DISCOUNT,',
'          USER_CREATED = v(''APP_USER''),',
'          DATE_CREATED = SYSDATE,',
'          CUSTOMER_ID = V_CUSTOMER_ID,',
'          ADDITIONAL_DISCOUNT_TYPE = V_DISCOUNT_TYPE,',
'          ADDITIONAL_DISCOUNT_VALUE = v_DISCOUNT_AMT,',
'          ADDITIONAL_DISCOUNT_REASON = V_REASON,',
'          SPECIAL_INSTRUCTIONS = :P87_SPECIAL_INSTRUCTIONS,',
'          FOR_DELIVERY = ''N''',
'      WHERE INVOICE_ID = V_INVOICE_ID;       ',
'    ',
'    FOR d IN (WITH COLLECTION_SUMS AS (',
'    SELECT ''INVOICE_A'' AS collection_name, SUM(n005 - (NVL(n004, 0) * n001)) AS TOTAL_EXTENDED_PRICE',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_A''',
' ',
'    UNION ALL',
' ',
'    SELECT ''INVOICE_B'' AS collection_name, SUM(n005 - (NVL(n004, 0) * n001))  AS TOTAL_EXTENDED_PRICE',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_B''',
' ',
'    UNION ALL',
' ',
'    SELECT ''INVOICE_C'' AS collection_name, SUM(n005 - (NVL(n004, 0) * n001))  AS TOTAL_EXTENDED_PRICE',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_C''',
' ',
'    UNION ALL',
' ',
'    SELECT ''INVOICE_D'' AS collection_name, SUM(n005 - (NVL(n004, 0) * n001))  AS TOTAL_EXTENDED_PRICE',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_D''',
'),',
'LOWEST_SUM AS (',
'    SELECT collection_name',
'    FROM COLLECTION_SUMS',
'    WHERE TOTAL_EXTENDED_PRICE = (SELECT MIN(TOTAL_EXTENDED_PRICE) FROM COLLECTION_SUMS)',
'    FETCH FIRST 1 ROW ONLY',
')',
'SELECT ',
'    c001 AS ITEM_NO, ',
'    c002 AS CO, ',
'    c003 AS ITEM_DESCRIPTION, ',
'    n001 AS QTY, ',
'    n002 AS REG_PRICE, ',
'    c004 AS UOM, ',
'    NVL(n004, 0) * n001 AS DISCOUNTED_PRICE,',
'    NVL(n003, 0) AS DISCOUNT_VALUE, ',
'    CASE ',
'        WHEN n003 <> 0 THEN ''S''',
'        ELSE ''N''',
'    END AS DT,',
'    CASE ',
'                    WHEN c004 = ''PCS'' THEN 1',
'                    WHEN c004 = ''PK'' THEN 2',
'                    WHEN c004 = ''BOX'' THEN 3',
'                    WHEN c004 = ''CRT'' THEN 4',
'                    WHEN c004 = ''MTR'' THEN 61',
'                    WHEN c004 = ''ROLL'' THEN 81',
'                    ELSE 0 ',
'               END AS uom_id,',
'    n002 - NVL(n004, 0) AS NET_PRICE,',
'    (n005 - NVL(n004, 0)) * n001 AS EXTENDED_PRICE,',
'    c006 AS BARCODE,',
'    c007 AS ITEM_ID',
'FROM apex_collections',
'WHERE collection_name IN (SELECT collection_name FROM LOWEST_SUM))',
'        LOOP',
'    INSERT INTO NPT002(',
'        QUANTITY, ',
'        USER_CREATED, ',
'        DATE_CREATED, ',
'        WAREHOUSE_ID, ',
'        ITEM_PRICE, ',
'        UOM_ID, ',
'        ITEM_NUM, ',
'        UOM_CODE, ',
'        BRAND_CODE, ',
'        ITEM_DESC, ',
'        DS, ',
'        DISCOUNTED_PRICE,',
'        DISCOUNT_VALUE,',
'        INVOICE_ID,',
'        ITEM_ID',
'    )',
'    VALUES (d.QTY, v(''APP_USER''), SYSDATE, 1, d.REG_PRICE, d.uom_id, d.ITEM_NO, d.UOM, d.CO, d.ITEM_DESCRIPTION, d.DT, NVL(d.DISCOUNTED_PRICE, 0), d.DISCOUNT_VALUE, V_INVOICE_ID, d.ITEM_ID);',
'   END LOOP;',
'END;'))
,p_attribute_02=>'P87_SUB,P87_DBA,P87_DISCOUNT,P87_TOTAL,P87_SPECIAL_INSTRUCTIONS'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71721662524117921)
,p_event_id=>wwv_flow_imp.id(71719673448117917)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'Update NIT004'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_qty NUMBER;',
'    v_item_id NUMBER;',
'    v_uom_id    NUMBER;',
'BEGIN',
'    SELECT n001,',
'            CASE WHEN c004 = ''PCS'' THEN 1',
'                 WHEN c004 = ''PK'' THEN 2',
'                 WHEN c004 = ''BOX'' THEN 3',
'                 WHEN c004 = ''CRT'' THEN 4',
'                 WHEN c004 = ''MTR'' THEN 61',
'                 WHEN c004 = ''ROLL'' THEN 81',
'                 ELSE 0 ',
'            END AS uom_id,',
'            c007',
'            INTO v_qty, v_uom_id, v_item_id',
'     FROM apex_collections',
'    WHERE collection_name = ''INVOICE_A'';',
'',
'    UPDATE NIT004',
'      SET QTY = QTY - v_qty',
'      WHERE ITEM_ID = v_item_id',
'       AND UOM_ID = v_uom_id',
'       AND WAREHOUSE_ID = 1;',
'',
'    item_trans_pkg.log_item_transaction(v_item_id, 1, v_uom_id, ''CH '' || LPAD(:P138_INVOICE_NO, 6, ''0''), SYSDATE, ''O'', null, v_qty);',
'END;'))
,p_attribute_02=>'P138_INVOICE_NO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70342859754069547)
,p_event_id=>wwv_flow_imp.id(71719673448117917)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_name=>'Print Invoice'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'generateReport("WHOLESALE_INVOICE_PRINT_INVOICE", "pdf", { ',
'    fileName: "WHOLESALE_INVOICE_PRINT_INVOICE.pdf",',
'    mode : "print",',
'    parameters : {',
'        P_INVOICE_NO: $v("P138_INVOICE_NO").replace(/,/g, '''')',
'    }',
'});',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70343121397069550)
,p_event_id=>wwv_flow_imp.id(71719673448117917)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_name=>'Delay 0.5s'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(() => {',
'}, 2000);',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(82157810231837102)
,p_event_id=>wwv_flow_imp.id(71719673448117917)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P138_URL := apex_page.get_url(',
'       p_page   => 55',
'     );',
'END;'))
,p_attribute_03=>'P138_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(82157963276837103)
,p_event_id=>wwv_flow_imp.id(71719673448117917)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_name=>'Redirect'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P138_URL");',
'apex.navigation.redirect(url);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77864351783642542)
,p_name=>'Print N'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(71718273575117868)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71722054573117923)
,p_name=>'Set Values'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P138_CUSTOMER_DBA'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71722542354117925)
,p_event_id=>wwv_flow_imp.id(71722054573117923)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Set Point Person'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P138_POINT_PERSON'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'no_data_in_file EXCEPTION;',
'l_return_value  VARCHAR(40) := NULL;',
'',
'BEGIN',
'    BEGIN',
'',
'        IF LENGTH(:P138_CUSTOMER_DBA) > 0 THEN',
'',
'            SELECT NVL(npt009.CONTACT_PERSON, '''') INTO l_return_value',
'            FROM NPT009 npt009',
'            WHERE npt009.DBA = :P138_CUSTOMER_DBA;',
'',
'        END IF;',
'',
'        EXCEPTION',
'            WHEN no_data_in_file THEN',
'                l_return_value := '''';',
'            WHEN OTHERS THEN ',
'                l_return_value := l_return_value;',
'',
'    END;',
'',
'    RETURN l_return_value;',
'END;'))
,p_attribute_07=>'P138_CUSTOMER_DBA'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P138_CUSTOMER_DBA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71723070154117926)
,p_event_id=>wwv_flow_imp.id(71722054573117923)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'Set Tel No'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P138_TELEPHONE_NUMBER'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'no_data_in_file EXCEPTION;',
'l_return_value  VARCHAR(40) := NULL;',
'',
'BEGIN',
'    BEGIN',
'',
'        IF LENGTH(:P138_CUSTOMER_DBA) > 0 THEN',
'',
'            SELECT NVL(npt009.BILLING_CONTACTA, '''') INTO l_return_value',
'            FROM NPT009 npt009',
'            WHERE npt009.DBA = :P138_CUSTOMER_DBA;',
'',
'        END IF;',
'',
'        EXCEPTION',
'            WHEN no_data_in_file THEN',
'                l_return_value := '''';',
'            WHEN OTHERS THEN ',
'                l_return_value := l_return_value;',
'',
'    END;',
'',
'    RETURN l_return_value;',
'END;'))
,p_attribute_07=>'P138_CUSTOMER_DBA'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P138_CUSTOMER_DBA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71723500876117926)
,p_event_id=>wwv_flow_imp.id(71722054573117923)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'Set Fax No'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P138_FAX_NUMBER'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'no_data_in_file EXCEPTION;',
'l_return_value  VARCHAR(40) := NULL;',
'',
'BEGIN',
'    BEGIN',
'',
'        IF LENGTH(:P138_CUSTOMER_DBA) > 0 THEN',
'',
'            SELECT NVL(npt009.BILLING_FAX, '''') INTO l_return_value',
'            FROM NPT009 npt009',
'            WHERE npt009.DBA = :P138_CUSTOMER_DBA;',
'',
'        END IF;',
'',
'        EXCEPTION',
'            WHEN no_data_in_file THEN',
'                l_return_value := '''';',
'            WHEN OTHERS THEN ',
'                l_return_value := l_return_value;',
'',
'    END;',
'',
'    RETURN l_return_value;',
'END;'))
,p_attribute_07=>'P138_CUSTOMER_DBA'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P138_CUSTOMER_DBA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71724029839117926)
,p_event_id=>wwv_flow_imp.id(71722054573117923)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>'Set Email'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P138_EMAIL'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'no_data_in_file EXCEPTION;',
'l_return_value  VARCHAR(40) := NULL;',
'',
'BEGIN',
'    BEGIN',
'',
'        IF LENGTH(:P138_CUSTOMER_DBA) > 0 THEN',
'',
'            SELECT NVL(npt009.BILLING_EMAIL, '''') INTO l_return_value',
'            FROM NPT009 npt009',
'            WHERE npt009.DBA = :P138_CUSTOMER_DBA;',
'',
'        END IF;',
'',
'        EXCEPTION',
'            WHEN no_data_in_file THEN',
'                l_return_value := '''';',
'            WHEN OTHERS THEN ',
'                l_return_value := l_return_value;',
'',
'    END;',
'',
'    RETURN l_return_value;',
'END;'))
,p_attribute_07=>'P138_CUSTOMER_DBA'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P138_CUSTOMER_DBA'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71724477922117928)
,p_name=>'Y Delivery'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(71717890432117868)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71725947447117931)
,p_event_id=>wwv_flow_imp.id(71724477922117928)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_INVOICE_ID    NUMBER;',
'    V_CUSTOMER_ID   NUMBER;',
'    V_DISCOUNT_TYPE VARCHAR(10);',
'    V_DISCOUNT_AMT  NUMBER;',
'    V_REASON        VARCHAR(51);',
'BEGIN',
'    SELECT CUSTOMER_ID INTO V_CUSTOMER_ID',
'      FROM NPT009 ',
'     WHERE DBA = :P87_DBA;',
'',
'    SELECT INVOICE_ID',
'        INTO V_INVOICE_ID',
'        FROM NPT001',
'        WHERE INVOICE_ID = (SELECT MAX(INVOICE_ID)',
'                              FROM NPT001',
'                             WHERE TOTAL_AMOUNT IS NULL',
'                               AND USER_CREATED = v(''APP_USER''))',
'          AND USER_CREATED = v(''APP_USER'');',
'     ',
'    BEGIN',
'        SELECT c001, c002, n001  ',
'        INTO V_DISCOUNT_TYPE, V_REASON, V_DISCOUNT_AMT',
'        FROM APEX_COLLECTIONS',
'        WHERE COLLECTION_NAME = ''INVOICE_ADDITIONAL'';',
'        EXCEPTION WHEN NO_DATA_FOUND THEN',
'            V_DISCOUNT_TYPE := NULL; V_DISCOUNT_AMT := NULL; V_REASON := NULL;',
'    END;',
'',
'    UPDATE NPT001',
'      SET TOTAL_AMOUNT = :P138_TOTAL,',
'          SUB_TOTAL = :P87_SUB,',
'          STATUS = ''CREATED'',',
'          TOTAL_DISCOUNT = :P87_DISCOUNT,',
'          USER_CREATED = v(''APP_USER''),',
'          DATE_CREATED = SYSDATE,',
'          CUSTOMER_ID = V_CUSTOMER_ID,',
'          ADDITIONAL_DISCOUNT_TYPE = V_DISCOUNT_TYPE,',
'          ADDITIONAL_DISCOUNT_VALUE = v_DISCOUNT_AMT,',
'          ADDITIONAL_DISCOUNT_REASON = V_REASON,',
'          SPECIAL_INSTRUCTIONS = :P87_SPECIAL_INSTRUCTIONS,',
'          FOR_DELIVERY = ''Y''',
'      WHERE INVOICE_ID = V_INVOICE_ID;       ',
'    ',
'    FOR d IN (WITH COLLECTION_SUMS AS (',
'    SELECT ''INVOICE_A'' AS collection_name, SUM(n005 - (NVL(n004, 0) * n001)) AS TOTAL_EXTENDED_PRICE',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_A''',
' ',
'    UNION ALL',
' ',
'    SELECT ''INVOICE_B'' AS collection_name, SUM(n005 - (NVL(n004, 0) * n001))  AS TOTAL_EXTENDED_PRICE',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_B''',
' ',
'    UNION ALL',
' ',
'    SELECT ''INVOICE_C'' AS collection_name, SUM(n005 - (NVL(n004, 0) * n001))  AS TOTAL_EXTENDED_PRICE',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_C''',
' ',
'    UNION ALL',
' ',
'    SELECT ''INVOICE_D'' AS collection_name, SUM(n005 - (NVL(n004, 0) * n001))  AS TOTAL_EXTENDED_PRICE',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_D''',
'),',
'LOWEST_SUM AS (',
'    SELECT collection_name',
'    FROM COLLECTION_SUMS',
'    WHERE TOTAL_EXTENDED_PRICE = (SELECT MIN(TOTAL_EXTENDED_PRICE) FROM COLLECTION_SUMS)',
'    FETCH FIRST 1 ROW ONLY',
')',
'SELECT ',
'    c001 AS ITEM_NO, ',
'    c002 AS CO, ',
'    c003 AS ITEM_DESCRIPTION, ',
'    n001 AS QTY, ',
'    n002 AS REG_PRICE, ',
'    c004 AS UOM, ',
'    NVL(n004, 0) * n001 AS DISCOUNTED_PRICE,',
'    NVL(n003, 0) AS DISCOUNT_VALUE, ',
'    CASE ',
'        WHEN n003 <> 0 THEN ''S''',
'        ELSE ''N''',
'    END AS DT,',
'    CASE ',
'                    WHEN c004 = ''PCS'' THEN 1',
'                    WHEN c004 = ''PK'' THEN 2',
'                    WHEN c004 = ''BOX'' THEN 3',
'                    WHEN c004 = ''CRT'' THEN 4',
'                    WHEN c004 = ''MTR'' THEN 61',
'                    WHEN c004 = ''ROLL'' THEN 81',
'                    ELSE 0 ',
'               END AS uom_id,',
'    n002 - NVL(n004, 0) AS NET_PRICE,',
'    (n005 - NVL(n004, 0)) * n001 AS EXTENDED_PRICE,',
'    c006 AS BARCODE,',
'    c007 AS ITEM_ID',
'FROM apex_collections',
'WHERE collection_name IN (SELECT collection_name FROM LOWEST_SUM))',
'        LOOP',
'    INSERT INTO NPT002(',
'        QUANTITY, ',
'        USER_CREATED, ',
'        DATE_CREATED, ',
'        WAREHOUSE_ID, ',
'        ITEM_PRICE, ',
'        UOM_ID, ',
'        ITEM_NUM, ',
'        UOM_CODE, ',
'        BRAND_CODE, ',
'        ITEM_DESC, ',
'        DS, ',
'        DISCOUNTED_PRICE,',
'        DISCOUNT_VALUE,',
'        INVOICE_ID,',
'        ITEM_ID',
'    )',
'    VALUES (d.QTY, v(''APP_USER''), SYSDATE, 1, d.REG_PRICE, d.uom_id, d.ITEM_NO, d.UOM, d.CO, d.ITEM_DESCRIPTION, d.DT, NVL(d.DISCOUNTED_PRICE, 0), d.DISCOUNT_VALUE, V_INVOICE_ID, d.ITEM_ID);',
'   END LOOP;',
'END;'))
,p_attribute_02=>'P87_SUB,P87_DBA,P87_DISCOUNT,P138_TOTAL,P87_SPECIAL_INSTRUCTIONS'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71726486673117931)
,p_event_id=>wwv_flow_imp.id(71724477922117928)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'Update NIT004'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_qty NUMBER;',
'    v_item_id NUMBER;',
'    v_uom_id    NUMBER;',
'BEGIN',
'    SELECT n001,',
'            CASE WHEN c004 = ''PCS'' THEN 1',
'                 WHEN c004 = ''PK'' THEN 2',
'                 WHEN c004 = ''BOX'' THEN 3',
'                 WHEN c004 = ''CRT'' THEN 4',
'                 WHEN c004 = ''MTR'' THEN 61',
'                 WHEN c004 = ''ROLL'' THEN 81',
'                 ELSE 0 ',
'            END AS uom_id,',
'            c007',
'            INTO v_qty, v_uom_id, v_item_id',
'     FROM apex_collections',
'    WHERE collection_name = ''INVOICE_A'';',
'',
'    UPDATE NIT004',
'      SET QTY = QTY - v_qty',
'      WHERE ITEM_ID = v_item_id',
'       AND UOM_ID = v_uom_id',
'       AND WAREHOUSE_ID = 1;',
'',
'    item_trans_pkg.log_item_transaction(v_item_id, 1, v_uom_id, ''CH '' || LPAD(:P138_INVOICE_NO, 6, ''0''), SYSDATE, ''O'', null, v_qty);',
'END;'))
,p_attribute_02=>'P138_INVOICE_NO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70342616658069545)
,p_event_id=>wwv_flow_imp.id(71724477922117928)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_name=>'Print Invoice'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'generateReport("WHOLESALE_INVOICE_PRINT_INVOICE", "pdf", { ',
'    fileName: "WHOLESALE_INVOICE_PRINT_INVOICE.pdf",',
'    mode : "print",',
'    parameters : {',
'        P_INVOICE_NO: $v("P138_INVOICE_NO").replace(/,/g, '''')',
'    }',
'});',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70343063134069549)
,p_event_id=>wwv_flow_imp.id(71724477922117928)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_name=>'Delay 0.5s'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(() => {',
'}, 2000);',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77865177039642550)
,p_event_id=>wwv_flow_imp.id(71724477922117928)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P138_URL := apex_page.get_url(',
'       p_page   => 55',
'     );',
'END;'))
,p_attribute_03=>'P138_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(82157793804837101)
,p_event_id=>wwv_flow_imp.id(71724477922117928)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_name=>'Redirect'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P138_URL");',
'apex.navigation.redirect(url);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71727787130117934)
,p_name=>'Cancel'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(71717467243117867)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71728252392117934)
,p_event_id=>wwv_flow_imp.id(71727787130117934)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71726812891117932)
,p_name=>'Focus'
,p_event_sequence=>80
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71727353955117934)
,p_event_id=>wwv_flow_imp.id(71726812891117932)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(71718273575117868)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(71719242815117915)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>71719242815117915
);
wwv_flow_imp.component_end;
end;
/
