prompt --application/pages/page_00045
begin
--   Manifest
--     PAGE: 00045
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
 p_id=>45
,p_name=>'POS Cashiering - Credit Card Payment'
,p_alias=>'POS-CASHIERING-CREDIT-CARD-PAYMENT'
,p_page_mode=>'MODAL'
,p_step_title=>'Credit Card'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let lastSelected = null;',
'const p45KeyMap = {',
'    enter: (v) => {',
'        $("#enter-card").trigger("click");',
'    }',
'}',
'',
'function mapP45Keys() {',
'    $(document).off(''keydown.p45keyevents'');',
'    $(document).on(''keydown.p45keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p45KeyMap[key]) {',
'            ev.preventDefault();',
'            p45KeyMap[key]();',
'        }',
'    });',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP45Keys();',
'',
'setInputFilter($("#P45_AMOUNT_PAID"), function(value) {  ',
'    if (value === "") return true; ',
'',
'    return /^\d*\.?\d{0,2}$/.test(value);',
'}, "Please enter in currency format");'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Dialog-body {',
'    background-color: #056AC8;',
'    color: white;',
'}',
'',
'.t-Dialog-body label, .t-Dialog-body input {',
'    font-size: 1.125rem;',
'}',
'',
'.apex-item-display-only {',
'    font-size: 1.125rem;',
'    font-family: Arial;',
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
'.t-Form-fieldContainer.rel-col, .t-Form-fieldContainer.rel-col .t-Form-label {',
'    flex-direction: row !important;',
'    color: white;',
'}',
'',
'.t-Form-fieldContainer .t-Form-labelContainer {',
'    padding-block-end: var(--ut-field-padding-y, .5rem) !important;',
'}',
'',
'.t-Form-fieldContainer .t-Form-inputContainer {',
'    padding-block-start: var(--ut-field-padding-y, .5rem) !important;',
'    justify-content: end;',
'}'))
,p_step_template=>wwv_flow_imp.id(4218915405083976)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'380'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(40389954814268804)
,p_button_sequence=>120
,p_button_name=>'Submit'
,p_button_static_id=>'enter-card'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Submit'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'hiddenbtn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(40390235455268807)
,p_branch_name=>'Redirect to Summary'
,p_branch_action=>'f?p=&APP_ID.:43:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18712514303804238)
,p_name=>'P45_AMOUNT_PAID'
,p_item_sequence=>40
,p_prompt=>'Paid Amount:'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>12
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_03=>'right'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18712610341804239)
,p_name=>'P45_LAST4'
,p_is_required=>true
,p_item_sequence=>60
,p_prompt=>'Last 4-digit:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>4
,p_cMaxlength=>4
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35548144444882712)
,p_name=>'P45_AUTH_CODE'
,p_item_sequence=>80
,p_prompt=>'Auth Code:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>12
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35548288343882713)
,p_name=>'P45_CARD_TYPE'
,p_item_sequence=>100
,p_prompt=>'Card Type:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>12
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35548317565882714)
,p_name=>'P45_CARD_ISSUER'
,p_item_sequence=>110
,p_prompt=>'Card Issuer:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>12
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44521582337129202)
,p_name=>'P45_URL'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(72266208519359943)
,p_name=>'P45_UNPAID_AMOUNT'
,p_item_sequence=>50
,p_prompt=>'Unpaid Amount:'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(72266514094359946)
,p_name=>'P45_CHANGE'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77860320133642502)
,p_name=>'P45_APPROVAL'
,p_is_required=>true
,p_item_sequence=>90
,p_prompt=>'Approval Code:'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>4
,p_cMaxlength=>4
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(40390002552268805)
,p_name=>'Console Log'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40390103762268806)
,p_event_id=>wwv_flow_imp.id(40390002552268805)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var amount = $v(''P45_AMOUNT'');',
'',
'console.log("=====================" + amount);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44276530191177749)
,p_name=>'Validate then Insert'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(40389954814268804)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44521435926129201)
,p_event_id=>wwv_flow_imp.id(44276530191177749)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'Validate'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let field1 = $v(''P45_LAST4'');',
'',
'if (!/^\d+$/.test(field1)) {  ',
'    apex.message.clearErrors(); ',
'    apex.message.showErrors([{',
'        type: ''error'',',
'        location: ''inline'', ',
'        pageItem: ''P45_LAST4'', ',
'        message: ''Numbers only.''',
'    }]);',
'    ',
'    return false; ',
'} else {',
'    apex.message.clearErrors(); ',
'    return true;',
'}',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44276625847177750)
,p_event_id=>wwv_flow_imp.id(44276530191177749)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_paid NUMBER;',
'    v_unpaid NUMBER;',
'    v_existing_id NUMBER := NULL;',
'    v_existing_n001 NUMBER := 0;  ',
'BEGIN',
'    v_paid := TO_NUMBER(REPLACE(REPLACE(:P45_AMOUNT_PAID, ''$'', ''''), '','', ''''));',
'    v_unpaid := TO_NUMBER(REPLACE(REPLACE(:P45_UNPAID_AMOUNT, ''$'', ''''), '','', ''''));',
'',
'    BEGIN',
'        SELECT seq_id, NVL(n001, 0)  ',
'        INTO v_existing_id, v_existing_n001',
'        FROM apex_collections',
'        WHERE collection_name = ''PAYMENT''',
'        AND c001 = ''Credit Card ('' || :P45_LAST4 || '')''',
'        FETCH FIRST 1 ROWS ONLY;',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'            v_existing_id := NULL;',
'            v_existing_n001 := 0;',
'    END;',
'',
'    IF v_paid >= v_unpaid THEN',
'        :P45_URL := apex_page.get_url(',
'            p_page        => 43,',
'            p_clear_cache => ''43''',
'        );',
'    END IF;',
'',
'    IF v_existing_id IS NOT NULL THEN',
'        apex_collection.update_member(',
'            p_collection_name => ''PAYMENT'',',
'            p_seq => v_existing_id, ',
'            p_c001 => ''Credit Card ('' || :P45_LAST4 || '')'',',
'            p_n001 => ROUND(v_existing_n001 + v_paid, 2), ',
'            p_n002 => ROUND(v_unpaid, 2),',
'            p_n003 => ROUND(TO_NUMBER(REPLACE(REPLACE(:P45_CHANGE, ''$'', ''''), '','', '''')), 2),',
'            p_n004 => ROUND(TO_NUMBER(REPLACE(REPLACE(:P41_TOTAL, ''$'', ''''), '','', '''')), 2)',
'        );',
'    ELSE',
'        apex_collection.add_member(',
'            p_collection_name => ''PAYMENT'',',
'            p_c001 => ''Credit Card ('' || :P45_LAST4 || '')'',',
'            p_n001 => ROUND(v_paid, 2),',
'            p_n002 => ROUND(v_unpaid, 2),',
'            p_n003 => ROUND(TO_NUMBER(REPLACE(REPLACE(:P45_CHANGE, ''$'', ''''), '','', '''')), 2),',
'            p_n004 => ROUND(TO_NUMBER(REPLACE(REPLACE(:P41_TOTAL, ''$'', ''''), '','', '''')), 2)',
'        );',
'    END IF;',
'END;',
''))
,p_attribute_02=>'P45_AMOUNT_PAID,P45_LAST4,P45_AUTH_CODE,P45_CARD_TYPE,P45_CARD_ISSUER,P45_CHANGE,P41_TOTAL,P45_UNPAID_AMOUNT'
,p_attribute_03=>'P45_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72266756195359948)
,p_event_id=>wwv_flow_imp.id(44276530191177749)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_name=>'Insert'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'INSERT INTO NPT034 (amount, last_4_digits, auth_code, card_type, card_issuer, user_created, date_created)',
'VALUES (:P45_AMOUNT_PAID, :P45_LAST4, :P45_AUTH_CODE, :P45_CARD_TYPE, :P45_CARD_ISSUER, v(''APP_USER''), SYSDATE);'))
,p_attribute_02=>'P45_AMOUNT_PAID,P45_LAST4,P45_AUTH_CODE,P45_CARD_TYPE,P45_CARD_ISSUER,P45_CHANGE,P41_TOTAL,P45_UNPAID_AMOUNT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72266696557359947)
,p_event_id=>wwv_flow_imp.id(44276530191177749)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P45_URL");',
'apex.navigation.redirect(url);'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44521652519129203)
,p_event_id=>wwv_flow_imp.id(44276530191177749)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(72266310701359944)
,p_name=>'Compute Change'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P45_AMOUNT_PAID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keyup'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72266457071359945)
,p_event_id=>wwv_flow_imp.id(72266310701359944)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_name=>'Change'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P45_CHANGE'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'TO_CHAR(TO_NUMBER(REPLACE(REPLACE(:P45_AMOUNT_PAID, ''$'', ''''), '','', '''')) - TO_NUMBER(REPLACE(REPLACE(:P45_UNPAID_AMOUNT, ''$'', ''''), '','', '''')), ''FM999G999G999G990D00'')',
''))
,p_attribute_07=>'P45_AMOUNT_PAID,P45_UNPAID_AMOUNT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(40390373514268808)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert into Table'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   INSERT INTO NPT034 (amount, last_4_digits, auth_code, card_type, card_issuer, user_created, date_created)',
'   VALUES (:P45_AMOUNT, :P45_LAST4, :P45_AUTH_CODE, :P45_CARD_TYPE, :P45_CARD_ISSUER, :APP_USER, SYSDATE);',
'',
'   COMMIT;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
,p_internal_uid=>40390373514268808
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(40390638141268811)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add Collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    apex_collection.add_member(',
'                p_collection_name => ''PAYMENT'',',
'                p_c001 => ''Credit Card'',',
'                p_n001 => TO_CHAR(ROUND(TO_NUMBER(REPLACE(REPLACE(:P45_AMOUNT, ''$'', ''''), '','', '''')), 2), ''FM999999999.00''),',
'                p_n002 => TO_CHAR(ROUND(TO_NUMBER(REPLACE(REPLACE(:P45_UNPAID, ''$'', ''''), '','', '''')), 2), ''FM999999999.00''),',
'                p_n003 => TO_CHAR(ROUND(TO_NUMBER(REPLACE(REPLACE(0, ''$'', ''''), '','', '''')), 2), ''FM999999999.00''),',
'                p_n004 => TO_CHAR(ROUND(TO_NUMBER(REPLACE(REPLACE(:P41_TOTAL, ''$'', ''''), '','', '''')), 2), ''FM999999999.00'')',
'                );',
'END;',
'',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
,p_internal_uid=>40390638141268811
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(44276435365177748)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
,p_internal_uid=>44276435365177748
);
wwv_flow_imp.component_end;
end;
/
