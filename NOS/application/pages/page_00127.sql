prompt --application/pages/page_00127
begin
--   Manifest
--     PAGE: 00127
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
 p_id=>127
,p_name=>'Direct Credit Memo'
,p_alias=>'DIRECT-CREDIT-MEMO'
,p_page_mode=>'MODAL'
,p_step_title=>'Direct Credit Memo'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#js/cmn#MIN#.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let lastSelected = null;',
'const p127KeyMap = {',
'',
'    enter: (v) => {',
'        $("#enter").trigger("click");',
'    }',
'}',
'',
'function mapP127Keys() {',
'    $(document).off(''keydown.p127keyevents'');',
'    $(document).on(''keydown.p127keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p127KeyMap[key]) {',
'            ev.preventDefault();',
'            p127KeyMap[key]();',
'        }',
'    });',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP127Keys();',
'setInputFilter($("#P127_CM_AMOUNT"), function(value) {  return /^\d*$/.test(value);}, "Only digits are allowed");',
'',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.format-size{',
'    font-size: 1.125rem;',
'    font-family: Arial;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(46320634142497931)
,p_button_sequence=>80
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
 p_id=>wwv_flow_imp.id(46319005037497915)
,p_name=>'P127_CUSTOMER_DBA'
,p_item_sequence=>50
,p_prompt=>'<span class="format-size">Customer DBA<span style="color: red;">*</span>:</span>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'format-size'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46319132002497916)
,p_name=>'P127_CM_AMOUNT'
,p_item_sequence=>60
,p_prompt=>'<span class="format-size">CM Amount<span style="color: red;">*</span>:</span>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'format-size'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46319281835497917)
,p_name=>'P127_NOTE'
,p_item_sequence=>70
,p_prompt=>'<span class="format-size">Note:</span>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'format-size'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46319929510497924)
,p_name=>'P127_NEXT_ITEM'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46321365463497938)
,p_name=>'P127_VALID'
,p_item_sequence=>30
,p_item_default=>'0'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46321849636497943)
,p_name=>'P127_SUBMITTED'
,p_item_sequence=>40
,p_item_default=>'0'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(46319384083497918)
,p_name=>'Focus'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46319447517497919)
,p_event_id=>wwv_flow_imp.id(46319384083497918)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P127_CUSTOMER_DBA'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(46320032233497925)
,p_name=>'DBA Focus'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P127_CUSTOMER_DBA'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusin'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46320154463497926)
,p_event_id=>wwv_flow_imp.id(46320032233497925)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_name=>'Set next item'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P127_NEXT_ITEM'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'#P127_CM_AMOUNT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(46320230086497927)
,p_name=>'CM Amount Focus'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P127_CM_AMOUNT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusin'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46320375174497928)
,p_event_id=>wwv_flow_imp.id(46320230086497927)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Set next item'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P127_NEXT_ITEM'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'#P127_NOTE'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(46320418572497929)
,p_name=>'Reason Focus'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P127_NOTE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusin'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46321569360497940)
,p_event_id=>wwv_flow_imp.id(46320418572497929)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P127_NEXT_ITEM'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'#P127_CUSTOMER_DBA'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'$v("P127_CUSTOMER_DBA") == '''''
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46321663833497941)
,p_event_id=>wwv_flow_imp.id(46320418572497929)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P127_NEXT_ITEM'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'#P127_CM_AMOUNT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'$v("P127_CM_AMOUNT") == '''' && $v("P127_CUSTOMER_DBA") != '''''
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(46320768927497932)
,p_name=>'Enter'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(46320634142497931)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46321704674497942)
,p_event_id=>wwv_flow_imp.id(46320768927497932)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P127_VALID'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'0'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'$v("P127_CUSTOMER_DBA") == '''' || $v("P127_CM_AMOUNT") == '''''
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46320800987497933)
,p_event_id=>wwv_flow_imp.id(46320768927497932)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'Go next'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'jQuery($v("P127_NEXT_ITEM")).trigger("focus").select();',
''))
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'$v("P127_CUSTOMER_DBA") == '''' || $v("P127_CM_AMOUNT") == '''' || $v("P127_VALID") == 0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46320998291497934)
,p_event_id=>wwv_flow_imp.id(46320768927497932)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'Submit'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_customer_id NUMBER;',
'BEGIN',
'    SELECT',
'        CUSTOMER_ID',
'    INTO',
'        l_customer_id',
'    FROM',
'        NPT009',
'    WHERE',
'        lower(:P127_CUSTOMER_DBA) = lower(DBA);',
'',
'    IF l_customer_id IS NOT NULL THEN    ',
'        INSERT INTO NPT015(TOTAL_AMOUNT, CURRENT_BALANCE, USER_CREATED, DATE_CREATED, PAYMENT_METHOD_ID, POSTED_DATE, CUSTOMER_ID, REASON)',
'        VALUES(:P127_CM_AMOUNT, :P127_CM_AMOUNT, :APP_USER, SYSDATE(), 3, SYSDATE(), l_customer_id, :P127_NOTE);',
'        :P127_SUBMITTED := 1;',
'    END IF;',
'END;'))
,p_attribute_02=>'P127_CUSTOMER_DBA,P127_CM_AMOUNT,P127_NOTE'
,p_attribute_03=>'P127_SUBMITTED'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'!($v("P127_CUSTOMER_DBA") == '''' || $v("P127_CM_AMOUNT") == '''') && $v("P127_VALID") == 1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46321906991497944)
,p_event_id=>wwv_flow_imp.id(46320768927497932)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
,p_attribute_01=>'P127_SUBMITTED'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P127_SUBMITTED'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46321448531497939)
,p_event_id=>wwv_flow_imp.id(46320768927497932)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P127_VALID'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'1'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'$v("P127_CUSTOMER_DBA") != '''' && $v("P127_CM_AMOUNT") != '''''
);
wwv_flow_imp.component_end;
end;
/
