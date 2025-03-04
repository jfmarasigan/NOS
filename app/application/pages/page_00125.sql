prompt --application/pages/page_00125
begin
--   Manifest
--     PAGE: 00125
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
 p_id=>125
,p_name=>'Add Refund CM'
,p_alias=>'CREDIT-MEMO-ADD-REFUND'
,p_page_mode=>'MODAL'
,p_step_title=>'Add Return'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let lastSelected = null;',
'const p125KeyMap = {',
'',
'    enter: (v) => {',
'        $("#enter").trigger("click");',
'    }',
'}',
'',
'function mapP125Keys() {',
'    $(document).off(''keydown.p125keyevents'');',
'    $(document).on(''keydown.p125keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p125KeyMap[key]) {',
'            ev.preventDefault();',
'            p125KeyMap[key]();',
'        }',
'    });',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setInputFilter($("#P125_SEARCH_QUERY"), function(value) {  return /^\d*$/.test(value);}, "Only digits are allowed");',
'mapP125Keys()'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.format-size{',
'    font-size: 1.125rem;',
'    font-family: Arial;',
'}',
'',
'#enter{',
'    display: none;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'500'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(58656189188535207)
,p_button_sequence=>50
,p_button_name=>'Enter'
,p_button_static_id=>'enter'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Enter'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46317751861497902)
,p_name=>'P125_SEARCH_QUERY'
,p_item_sequence=>20
,p_pre_element_text=>'<span class="format-size">Invoice Number:   </span>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'format-size'
,p_field_template=>wwv_flow_imp.id(4381902469084273)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46317818097497903)
,p_name=>'P125_PREPARED_URL'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46317925329497904)
,p_name=>'P125_VALID'
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33211101790998133)
,p_name=>'Set Focus'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46318613838497911)
,p_event_id=>wwv_flow_imp.id(33211101790998133)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P125_SEARCH_QUERY'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(58656274822535208)
,p_name=>'Enter'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(58656189188535207)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46318172547497906)
,p_event_id=>wwv_flow_imp.id(58656274822535208)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_invoice VARCHAR2(10);',
'BEGIN',
'    SELECT',
'        TO_CHAR(:P125_SEARCH_QUERY, ''000000'')',
'    INTO',
'        l_invoice',
'    FROM',
'        DUAL;',
'',
'    :P125_PREPARED_URL := apex_page.get_url(',
'       p_page   => 122,',
'       p_items  => ''P122_INVOICE_NUMBER,P122_PAGE_MODE,P122_INVOICE_DATE'',',
'       p_values => l_invoice || '',add,'' || SYSDATE',
'    );',
'END;'))
,p_attribute_02=>'P125_SEARCH_QUERY'
,p_attribute_03=>'P125_PREPARED_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46318285354497907)
,p_event_id=>wwv_flow_imp.id(58656274822535208)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_returnable NUMBER := 0;',
'    l_check NUMBER;',
'    l_create_check NUMBER;',
'BEGIN',
'    SELECT',
'        INVOICE_ID',
'    INTO',
'        l_check',
'    FROM',
'        NPT001',
'    WHERE',
'        INVOICE_ID = :P125_SEARCH_QUERY;',
'',
'    SELECT ',
'        MAX(npt15.RETURN_ID)',
'    INTO',
'        l_create_check',
'    FROM ',
'        NPT002 npt2, ',
'        NPT015 npt15, ',
'        NPT037 npt37, ',
'        NPM017 npm17',
'    WHERE npt15.CM_STATUS_ID = npm17.CM_STATUS_ID AND',
'          npt2.ITEM_INVOICE_ID = npt37.ITEM_INVOICE_ID AND',
'          npt37.RETURN_ID = npt15.RETURN_ID AND',
'          npm17.CM_STATUS_NAME = ''CREATED'' AND',
'          npt2.INVOICE_ID = 9;',
'',
'    :P125_VALID := 0;',
'    IF l_check IS NOT NULL THEN',
'        DELETE FROM NPT037 WHERE RETURN_ID IS NULL AND USER_CREATED = :APP_USER;',
'        FOR i in (SELECT ITEM_INVOICE_ID, QUANTITY FROM NPT002 WHERE INVOICE_ID = :P125_SEARCH_QUERY) LOOP',
'            SELECT ',
'                SUM(RETURN_QUANTITY)',
'            INTO',
'                l_returnable',
'            FROM',
'                NPT037',
'            WHERE',
'                ITEM_INVOICE_ID = i.ITEM_INVOICE_ID;',
'',
'            IF l_returnable IS NULL THEN',
'                l_returnable := 0;',
'            END IF;',
'',
'            INSERT INTO NPT037 (ITEM_INVOICE_ID, RETURNABLE_QUANTITY, USER_CREATED) ',
'            VALUES (i.ITEM_INVOICE_ID, i.QUANTITY - l_returnable, :APP_USER);',
'        END LOOP;',
'        :P125_VALID := 1;',
'    END IF;',
'',
'    IF l_create_check IS NOT NULL THEN',
'        :P125_VALID := 2;',
'    END IF;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        :P125_VALID := 0;',
'END;'))
,p_attribute_02=>'P125_SEARCH_QUERY,P125_VALID'
,p_attribute_03=>'P125_VALID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46318378565497908)
,p_event_id=>wwv_flow_imp.id(58656274822535208)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P125_PREPARED_URL");',
'apex.navigation.redirect(url);'))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P125_VALID'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49390148496289426)
,p_event_id=>wwv_flow_imp.id(58656274822535208)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
,p_attribute_01=>'P125_VALID'
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'$v("P125_VALID") == 0 || $v("P125_VALID") == 2'
);
wwv_flow_imp.component_end;
end;
/
