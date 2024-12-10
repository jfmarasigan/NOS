prompt --application/pages/page_00036
begin
--   Manifest
--     PAGE: 00036
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
 p_id=>36
,p_name=>'POS Cashiering - Cash Payment'
,p_alias=>'POS-CASHIERING-CASH-PAYMENT'
,p_page_mode=>'MODAL'
,p_step_title=>'Cash'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let lastSelected = null;',
'const p36KeyMap = {',
'    enter: (v) => {',
'        console.log("to-top");',
'        $("#enter-cash").trigger("click");',
'    }',
'',
'}',
'',
'function mapP36Keys() {',
'    $(document).off(''keydown.p36keyevents'');',
'    $(document).on(''keydown.p36keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p36KeyMap[key]) {',
'            ev.preventDefault();',
'            p36KeyMap[key]();',
'        }',
'    });',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP36Keys();',
'',
'setInputFilter($("#P36_PAID"), function(value) {  ',
'    // Allow empty input',
'    if (value === "") return true; ',
'',
'    // Regex to match the format (digits with optional decimal)',
'    return /^\d*\.?\d{0,2}$/.test(value);',
'}, "Please enter in currency format");',
'',
'$("#P36_PAID").on("input", function() {',
'    let value = $(this).val();',
'',
'    // Remove non-digit characters except for the decimal point',
'    value = value.replace(/[^0-9.]/g, "");',
'',
'    // Ensure only one decimal point is allowed',
'    const parts = value.split(''.'');',
'    if (parts.length > 2) {',
'        value = parts[0] + ''.'' + parts.slice(1).join('''');',
'    }',
'',
'    // Limit to two decimal places',
'    if (parts.length > 1) {',
'        value = parts[0] + ''.'' + parts[1].slice(0, 2);',
'    }',
'',
'    // Set the formatted value back to the input',
'    $(this).val(value);',
'});'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Dialog-body{',
'    label, input {',
'        font-size: 1.125rem;',
'    }',
'    padding-bottom: 0;',
'    padding-left: 0;',
'}',
'',
'.hiddenbtn {',
'    display: none;',
'}',
'',
'.t-Button-label{',
'    font-size: 1rem;',
'    font-family: Arial;',
'    text-align: left;',
'}',
'',
'.apex-item-display-only {',
'    font-size: 1.125rem;',
'    font-family: Arial;',
'}'))
,p_step_template=>wwv_flow_imp.id(4218915405083976)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(23636300121246324)
,p_button_sequence=>40
,p_button_name=>'Submit'
,p_button_static_id=>'enter-cash'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'hiddenbtn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(40392519611268830)
,p_button_sequence=>50
,p_button_name=>'Cancel'
,p_button_static_id=>'cancel'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'hiddenbtn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(27425299897078102)
,p_branch_name=>'Rediret to Payment Summary'
,p_branch_action=>'f?p=&APP_ID.:43:&SESSION.::&DEBUG.:CR,36,41,43::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23635739242246318)
,p_name=>'P36_PAID'
,p_item_sequence=>20
,p_prompt=>'<b> Paid Amount: </b>'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>11
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_03=>'right'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23635846206246319)
,p_name=>'P36_UNPAID'
,p_item_sequence=>20
,p_prompt=>'<b> Unpaid Amount: </b>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23636088866246321)
,p_name=>'P36_CHANGE'
,p_item_sequence=>30
,p_prompt=>'<b> Change: </b>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38715890204254539)
,p_name=>'P36_PREPARED_URL'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(27425302352078103)
,p_validation_name=>'Validate'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_paid NUMBER;',
'    v_unpaid NUMBER;',
'BEGIN',
'    v_paid := TO_CHAR(:P36_PAID, ''FM9990.00'' );',
'    v_unpaid := TO_CHAR(:P36_UNPAID, ''FM9990.00'' );',
'',
'    IF v_paid < v_unpaid THEN',
'        RAISE_APPLICATION_ERROR(-20001, ''Paid Amount must be greater than or equal to Unpaid Amount.'');',
'    ELSIF v_paid IS NULL THEN',
'        RAISE_APPLICATION_ERROR(-20001, ''Paid Amount must be greater than or equal to Unpaid Amount.'');',
'    END IF;',
'',
'END;'))
,p_validation_type=>'PLSQL_ERROR'
,p_error_message=>'Paid Amount must be greater than or equal to Unpaid Amount.'
,p_always_execute=>'Y'
,p_when_button_pressed=>wwv_flow_imp.id(23636300121246324)
,p_associated_item=>wwv_flow_imp.id(23635739242246318)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(21024061834805125)
,p_name=>'Clear'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21024124713805126)
,p_event_id=>wwv_flow_imp.id(21024061834805125)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P36_PAID'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(23636183575246322)
,p_name=>'Compute Change'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P36_PAID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keyup'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23636209881246323)
,p_event_id=>wwv_flow_imp.id(23636183575246322)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P36_CHANGE'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'TO_CHAR(TO_NUMBER(REPLACE(REPLACE(:P36_PAID, ''$'', ''''), '','', '''')) - TO_NUMBER(REPLACE(REPLACE(:P36_UNPAID, ''$'', ''''), '','', '''')), ''FM9990.00'')',
''))
,p_attribute_07=>'P36_PAID,P36_UNPAID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18709147362804204)
,p_name=>'Focus'
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23636764825246328)
,p_event_id=>wwv_flow_imp.id(18709147362804204)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P36_PAID'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(40392631851268831)
,p_name=>'Cancel'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(40392519611268830)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40392715989268832)
,p_event_id=>wwv_flow_imp.id(40392631851268831)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42942323639705411)
,p_name=>'Redirect to Summary'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(23636300121246324)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42942418511705412)
,p_event_id=>wwv_flow_imp.id(42942323639705411)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_paid NUMBER;',
'    v_unpaid NUMBER;',
'BEGIN',
'    v_paid := TO_NUMBER(REPLACE(REPLACE(:P36_PAID, ''$'', ''''), '','', ''''));',
'    v_unpaid := TO_NUMBER(REPLACE(REPLACE(:P36_UNPAID, ''$'', ''''), '','', ''''));',
'',
'    IF v_paid >= v_unpaid THEN',
'       apex_collection.add_member(',
'                p_collection_name => ''PAYMENT'',',
'                p_c001 => ''Cash'',',
'                p_n001 => TO_CHAR(ROUND(TO_NUMBER(REPLACE(REPLACE(:P36_PAID, ''$'', ''''), '','', '''')), 2), ''FM999999999.00''),',
'                p_n002 => TO_CHAR(ROUND(TO_NUMBER(REPLACE(REPLACE(:P36_UNPAID, ''$'', ''''), '','', '''')), 2), ''FM999999999.00''),',
'                p_n003 => TO_CHAR(ROUND(TO_NUMBER(REPLACE(REPLACE(:P36_CHANGE, ''$'', ''''), '','', '''')), 2), ''FM999999999.00''),',
'                p_n004 => TO_CHAR(ROUND(TO_NUMBER(REPLACE(REPLACE(:P41_TOTAL, ''$'', ''''), '','', '''')), 2), ''FM999999999.00'')',
'        ); ',
'',
'        :P36_PREPARED_URL := apex_page.get_url(',
'            p_page        => 43,',
'            p_clear_cache => ''43''',
'        );',
' ',
'    END IF;',
'',
'END;'))
,p_attribute_02=>'P36_PAID,P36_UNPAID,P36_CHANGE,P41_TOTAL'
,p_attribute_03=>'P36_PREPARED_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43696926440573545)
,p_event_id=>wwv_flow_imp.id(42942323639705411)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'Validate'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var field1 = parseFloat($v(''P36_PAID'')) || 0; // Convert to number and default to 0 if empty',
'var field2 = parseFloat($v(''P36_UNPAID'')) || 0; // Convert to number and default to 0 if empty',
'',
'if (field1 < field2) {',
'    apex.message.clearErrors(); ',
'    apex.message.showErrors([{',
'        type: ''error'',',
'        location: ''inline'', // Correct location type',
'        pageItem: ''P36_PAID'', // Reference the correct page item',
'        message: ''Paid Amount is not enough.''',
'    }]);',
'',
'    return false; // Prevent further action if validation fails',
'} else {',
'    apex.message.clearErrors(); // Clear errors if the validation passes',
'    return true; // Allow further action',
'}',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42942580433705413)
,p_event_id=>wwv_flow_imp.id(42942323639705411)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'Redirect URL'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P36_PREPARED_URL");',
'apex.navigation.redirect(url);'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42942682789705414)
,p_event_id=>wwv_flow_imp.id(42942323639705411)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(25494294994440448)
,p_process_sequence=>10
,p_process_point=>'AFTER_BOX_BODY'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Validate'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_paid NUMBER;',
'    v_unpaid NUMBER;',
'BEGIN',
'    v_paid := TO_NUMBER(REPLACE(REPLACE(:P36_PAID, ''$'', ''''), '','', ''''));',
'    v_unpaid := TO_NUMBER(REPLACE(REPLACE(:P36_UNPAID, ''$'', ''''), '','', ''''));',
'',
'    IF v_paid < v_unpaid THEN',
'        RAISE_APPLICATION_ERROR(-20001, ''Paid Amount must be greater than or equal to Unpaid Amount.'');',
'    END IF;',
'',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>25494294994440448
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27425430489078104)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add Collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    apex_collection.add_member(',
'                p_collection_name => ''PAYMENT'',',
'                p_c001 => ''Cash'',',
'                p_n001 => TO_CHAR(ROUND(TO_NUMBER(REPLACE(REPLACE(:P36_PAID, ''$'', ''''), '','', '''')), 2), ''FM999999999.00''),',
'                p_n002 => TO_CHAR(ROUND(TO_NUMBER(REPLACE(REPLACE(:P36_UNPAID, ''$'', ''''), '','', '''')), 2), ''FM999999999.00''),',
'                p_n003 => TO_CHAR(ROUND(TO_NUMBER(REPLACE(REPLACE(:P36_CHANGE, ''$'', ''''), '','', '''')), 2), ''FM999999999.00''),',
'                p_n004 => TO_CHAR(ROUND(TO_NUMBER(REPLACE(REPLACE(:P41_TOTAL, ''$'', ''''), '','', '''')), 2), ''FM999999999.00'')',
'                );',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
,p_internal_uid=>27425430489078104
);
wwv_flow_imp.component_end;
end;
/
