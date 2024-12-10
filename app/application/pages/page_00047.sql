prompt --application/pages/page_00047
begin
--   Manifest
--     PAGE: 00047
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
 p_id=>47
,p_name=>'POS Cashiering - Blue GCert Payment'
,p_alias=>'POS-CASHIERING-BLUE-GCERT-PAYMENT'
,p_page_mode=>'MODAL'
,p_step_title=>'Gift Certificate (BLUE)'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let lastSelected = null;',
'const p47KeyMap = {',
'    enter: (v) => {',
'        $("#enter").trigger("click");',
'    },',
'',
'    escape: (v) => {',
'        $("#escape").trigger("click");',
'    }',
'',
'}',
'',
'function mapP47Keys() {',
'    $(document).off(''keydown.p47keyevents'');',
'    $(document).on(''keydown.p47keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p47KeyMap[key]) {',
'            ev.preventDefault();',
'            p47KeyMap[key]();',
'        }',
'    });',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP47Keys();',
'',
'$(''#P47_CODE'').focus();'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Dialog-body{',
'    label, input {',
'        font-size: 1.125rem;',
'    }',
'    padding-bottom: 0;',
'    padding-left: 0;',
'}',
'',
'.apex-item-display-only {',
'    font-size: 1.125rem;',
'    font-family: Arial;',
'}',
'',
'.hiddenbtn {',
'    display: none;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(23637726516246338)
,p_button_sequence=>60
,p_button_name=>'Enter'
,p_button_static_id=>'enter'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Enter'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'hiddenbtn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(27426123761078111)
,p_branch_name=>'Redirect to 2nd Payment'
,p_branch_action=>'f?p=&APP_ID.:92:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(23637726516246338)
,p_branch_sequence=>10
,p_branch_condition_type=>'EXISTS'
,p_branch_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT balance',
'  FROM NPT020',
' WHERE GIFT_CERTIFICATE_ID = :P47_CODE',
'   AND BALANCE < TO_NUMBER(REPLACE(REPLACE(:P47_AMOUNT, ''$'', ''''), '','', ''''))'))
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18712932765804242)
,p_name=>'P47_CODE'
,p_is_required=>true
,p_item_sequence=>50
,p_prompt=>'Number:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>12
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38713655240254517)
,p_name=>'P47_URL'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38713870372254519)
,p_name=>'P47_AMOUNT'
,p_item_sequence=>40
,p_prompt=>'Amount:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44275668469177740)
,p_name=>'P47_EXISTS'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(27426245107078112)
,p_validation_name=>'Validate Code'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_code NUMBER;',
'BEGIN',
'    SELECT gift_certificate_id INTO v_code',
'      FROM NPT020',
'     WHERE gift_certificate_id = :P47_CODE',
'       AND amount = balance;',
'    --  EXCEPTION WHEN NO_DATA_FOUND THEN ',
'    --  RAISE_APPLICATION_ERROR(-20001, ''Gift Code is not existing.'');',
'END;'))
,p_validation_type=>'PLSQL_ERROR'
,p_error_message=>'Gift Code is not existing.'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_imp.id(18712932765804242)
,p_error_display_location=>'INLINE_WITH_FIELD'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25489624945440402)
,p_name=>'Submit'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(23637726516246338)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44275519069177739)
,p_event_id=>wwv_flow_imp.id(25489624945440402)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Validate'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var field1 = $v(''P47_EXISTS''); ',
'if (field1 < 1 ) {',
'    apex.message.clearErrors(); ',
'    apex.message.showErrors([{',
'        type: ''error'',',
'        location: ''inline'', ',
'        pageItem: ''P47_CODE'', ',
'        message: ''Gift Code does not exist.''',
'    }]);',
'',
'    return false; ',
'} else {',
'    apex.message.clearErrors(); ',
'    return true; ',
'}',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40394376226268848)
,p_event_id=>wwv_flow_imp.id(25489624945440402)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'Deduct'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_balance NUMBER;',
'    v_amount  NUMBER;',
'BEGIN',
'    v_amount := TO_NUMBER(REPLACE(REPLACE(:P47_AMOUNT, ''$'', ''''), '','', ''''));',
'',
'    SELECT balance',
'      INTO v_balance',
'      FROM NPT020',
'     WHERE gift_certificate_id = :P47_CODE;',
'',
'    IF v_balance > v_amount THEN',
'        apex_collection.add_member(',
'            p_collection_name => ''PAYMENT'',',
'            p_c001            => ''Gift Certificate'',',
'            p_n001            => v_amount, ',
'            p_n002            => v_amount, ',
'            p_n003            => v_amount, ',
'            p_n004            => TO_NUMBER(REPLACE(REPLACE(:P41_TOTAL, ''$'', ''''), '','', ''''))',
'        ); ',
'',
'        UPDATE NPT020',
'        SET balance = balance - v_amount',
'        WHERE gift_certificate_id = :P47_CODE;',
'',
'        :P47_URL := apex_page.get_url(',
'            p_page        => 43,',
'            p_clear_cache => ''43''',
'        );',
'    ELSE',
'        apex_collection.add_member(',
'            p_collection_name => ''PAYMENT'',',
'            p_c001            => ''Gift Certificate'',',
'            p_n001            => v_balance ',
'        );',
'',
'        UPDATE NPT020',
'        SET balance = 0',
'        WHERE gift_certificate_id = :P47_CODE;',
'    END IF;',
'',
'END;'))
,p_attribute_02=>'P47_CODE,P47_AMOUNT,P41_TOTAL'
,p_attribute_03=>'P47_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42942254870705410)
,p_event_id=>wwv_flow_imp.id(25489624945440402)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'Redirect'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P47_URL");',
'apex.navigation.redirect(url);'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42943456963705422)
,p_event_id=>wwv_flow_imp.id(25489624945440402)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>'Close'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25490306922440409)
,p_name=>'Console Log'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25490489563440410)
,p_event_id=>wwv_flow_imp.id(25490306922440409)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P47_AMOUNT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38714342508254524)
,p_event_id=>wwv_flow_imp.id(25490306922440409)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var amount = $v(''P47_AMOUNT'');  ',
'console.log(''P47_AMOUNT:'', amount);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(38713977693254520)
,p_name=>'Set Value on Amount'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38714098141254521)
,p_event_id=>wwv_flow_imp.id(38713977693254520)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P47_AMOUNT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SUM(n005)',
'FROM apex_collections',
'WHERE collection_name = ''PURCHASE'''))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44275884212177742)
,p_name=>'Check if GCode Exists'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P47_CODE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keyup'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44275942265177743)
,p_event_id=>wwv_flow_imp.id(44275884212177742)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P47_EXISTS'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT count(balance)',
'      FROM NPT020',
'     WHERE gift_certificate_id = :P47_CODE',
'       AND balance = amount;'))
,p_attribute_07=>'P47_CODE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(38713487965254515)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add Collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    apex_collection.add_member(',
'                p_collection_name => ''PAYMENT'',',
'                p_c001 => ''Gift Certificate'',',
'                p_n001 => TO_CHAR(ROUND(TO_NUMBER(REPLACE(REPLACE(:P47_AMOUNT, ''$'', ''''), '','', '''')), 2), ''FM999999999.00'')',
'                );',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
,p_internal_uid=>38713487965254515
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(23637636871246337)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Reduce GC Amount'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_gc_amount NUMBER;',
'BEGIN',
'    SELECT gift_certificate_id INTO v_gc_amount FROM NPT020 WHERE gift_certificate_id = :P47_CODE;',
'',
'    IF v_gc_amount >= :P47_AMOUNT THEN',
'        UPDATE ernan_gcert',
'        SET gc_amount = gc_amount - TO_NUMBER(REPLACE(REPLACE(:P47_AMOUNT, ''$'', ''''), '','', ''''))',
'        WHERE gc_code = :P47_CODE;',
'        ',
'        COMMIT; ',
'       -- APEX_UTIL.REDIRECT_URL(''f?p=100:41:SESSION''); -- Replace with your actual APP_ID, PAGE_ID, and SESSION',
'    ELSE',
'        RAISE_APPLICATION_ERROR(-20001, ''Insufficient GC Amount'');',
'    END IF;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        RAISE_APPLICATION_ERROR(-20002, ''No data found for the given condition.'');',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
,p_internal_uid=>23637636871246337
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(23638107593246342)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add GCert Collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    apex_collection.add_member(',
'                p_collection_name => ''PAYMENT'',',
'                p_c001 => ''Gift Certificate'',',
'                p_n001 => TO_CHAR(ROUND(TO_NUMBER(REPLACE(REPLACE(:P47_AMOUNT, ''$'', ''''), '','', '''')), 2), ''FM999999999.00'')',
'                );',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
,p_internal_uid=>23638107593246342
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27426555982078115)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Reduce GC Amount fr Table'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'UPDATE ernan_gcert',
'        SET gc_amount = gc_amount - TO_NUMBER(REPLACE(REPLACE(:P47_AMOUNT, ''$'', ''''), '','', ''''))',
'        WHERE gc_code = :P47_CODE;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
,p_internal_uid=>27426555982078115
);
wwv_flow_imp.component_end;
end;
/
