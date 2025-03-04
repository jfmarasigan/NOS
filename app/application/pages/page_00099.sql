prompt --application/pages/page_00099
begin
--   Manifest
--     PAGE: 00099
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
 p_id=>99
,p_name=>'Refund Add'
,p_alias=>'REFUND-ADD'
,p_page_mode=>'MODAL'
,p_step_title=>'Add Refund'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let lastSelected = null;',
'const p99KeyMap = {',
'',
'    enter: (v) => {',
'        $("#enter").trigger("click");',
'    }',
'}',
'',
'function mapP99Keys() {',
'    $(document).off(''keydown.p99keyevents'');',
'    $(document).on(''keydown.p99keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p99KeyMap[key]) {',
'            ev.preventDefault();',
'            p99KeyMap[key]();',
'        }',
'    });',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setInputFilter($("#P99_SEARCH_QUERY"), function(value) {  return /^\d*$/.test(value);}, "Only digits are allowed");',
'mapP99Keys();'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.input-size{',
'    font-size: 1.125rem;',
'}',
'',
'.ml{',
'    margin-left: 0.2rem;',
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
 p_id=>wwv_flow_imp.id(58655832055535204)
,p_button_sequence=>20
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
 p_id=>wwv_flow_imp.id(39834840607742339)
,p_name=>'P99_PREPARED_URL'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42053495853111120)
,p_name=>'P99_VALID'
,p_item_sequence=>40
,p_item_default=>'0'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51344817124242948)
,p_name=>'P99_SEARCH_QUERY'
,p_item_sequence=>10
,p_prompt=>'<span class="input-size">Invoice Number :</span>'
,p_pre_element_text=>'<span class="input-size">Invoice Number:   </span>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'input-size ml'
,p_field_template=>wwv_flow_imp.id(4381902469084273)
,p_item_template_options=>'#DEFAULT#:margin-left-sm'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39834068117742331)
,p_name=>'Focus'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39834196284742332)
,p_event_id=>wwv_flow_imp.id(39834068117742331)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P99_SEARCH_QUERY'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(58655929732535205)
,p_name=>'Enter'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(58655832055535204)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41685487122832148)
,p_event_id=>wwv_flow_imp.id(58655929732535205)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_refundable NUMBER := 0;',
'    l_check NUMBER;',
'BEGIN',
'    SELECT',
'        CASH_INVOICE_ID',
'    INTO',
'        l_check',
'    FROM',
'        NPT033',
'    WHERE',
'        CASH_INVOICE_ID = :P99_SEARCH_QUERY;',
'',
'    :P99_VALID := 0;',
'    IF l_check IS NOT NULL THEN',
'        DELETE FROM NPT035 WHERE REFUND_ID IS NULL AND USER_CREATED = :APP_USER;',
'        FOR i in (SELECT ITEM_INVOICE_ID, QUANTITY FROM NPT002 WHERE CASH_INVOICE_ID = :P99_SEARCH_QUERY) LOOP',
'            SELECT ',
'                SUM(REFUND_QUANTITY)',
'            INTO',
'                l_refundable',
'            FROM',
'                NPT035',
'            WHERE',
'                ITEM_INVOICE_ID = i.ITEM_INVOICE_ID;',
'',
'            IF l_refundable IS NULL THEN',
'                l_refundable := 0;',
'            END IF;',
'',
'            INSERT INTO NPT035 (ITEM_INVOICE_ID, REFUNDABLE_QUANTITY, USER_CREATED) ',
'            VALUES (i.ITEM_INVOICE_ID, i.QUANTITY - l_refundable, :APP_USER);',
'        END LOOP;',
'        :P99_VALID := 1;',
'    END IF;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        :P99_VALID := 0;',
'END;'))
,p_attribute_02=>'P99_SEARCH_QUERY,P99_VALID'
,p_attribute_03=>'P99_VALID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39834719959742338)
,p_event_id=>wwv_flow_imp.id(58655929732535205)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_invoice VARCHAR2(10);',
'BEGIN',
'    SELECT',
'        TO_CHAR(:P99_SEARCH_QUERY, ''000000'')',
'    INTO',
'        l_invoice',
'    FROM',
'        DUAL;',
'',
'    :P99_PREPARED_URL := apex_page.get_url(',
'       p_page   => 96,',
'       p_items  => ''P96_INVOICE_NUMBER,P96_PAGE_MODE,P96_INVOICE_DATE'',',
'       p_values => l_invoice || '',add,'' || SYSDATE',
'    );',
'END;'))
,p_attribute_02=>'P99_SEARCH_QUERY'
,p_attribute_03=>'P99_PREPARED_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39834997119742340)
,p_event_id=>wwv_flow_imp.id(58655929732535205)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'let url = $v("P99_PREPARED_URL");',
'apex.navigation.redirect(url);',
''))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P99_VALID'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49387903544289404)
,p_event_id=>wwv_flow_imp.id(58655929732535205)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P99_VALID'
,p_client_condition_expression=>'0'
);
wwv_flow_imp.component_end;
end;
/
