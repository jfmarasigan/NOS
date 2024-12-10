prompt --application/pages/page_00061
begin
--   Manifest
--     PAGE: 00061
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
 p_id=>61
,p_name=>'POS Cashiering - Credit Memo Payment'
,p_alias=>'POS-CASHIERING-CREDIT-MEMO-PAYMENT'
,p_page_mode=>'MODAL'
,p_step_title=>'Credit Memo'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let lastSelected = null;',
'const p61KeyMap = {',
'    enter: (v) => {',
'        $("#enter").trigger("click");',
'    },',
'    escape: (v) => {',
'        console.log("to bottom");',
'        $("#cancel").trigger("click");',
'    }',
'}',
'',
'function mapP61Keys() {',
'    $(document).off(''keydown.p61keyevents'');',
'    $(document).on(''keydown.p61keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p61KeyMap[key]) {',
'            ev.preventDefault();',
'            p61KeyMap[key]();',
'        }',
'    });',
'}'))
,p_javascript_code_onload=>'mapP61Keys();'
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
 p_id=>wwv_flow_imp.id(44521796068129204)
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
 p_id=>wwv_flow_imp.id(44522080046129207)
,p_name=>'P61_EXISTS'
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44522419364129211)
,p_name=>'P61_URL'
,p_item_sequence=>60
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44522567053129212)
,p_name=>'P61_AMOUNT'
,p_item_sequence=>20
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
 p_id=>wwv_flow_imp.id(57446101340361488)
,p_name=>'P61_CODE'
,p_item_sequence=>30
,p_prompt=>'Code:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44521814846129205)
,p_name=>'Submit'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(44521796068129204)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44521946153129206)
,p_event_id=>wwv_flow_imp.id(44521814846129205)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Validate'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var field1 = $v(''P61_EXISTS''); ',
'if (field1 < 1 ) {',
'    apex.message.clearErrors(); ',
'    apex.message.showErrors([{',
'        type: ''error'',',
'        location: ''inline'', ',
'        pageItem: ''P61_CODE'', ',
'        message: ''Credit Memo does not exist.''',
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
 p_id=>wwv_flow_imp.id(44522302079129210)
,p_event_id=>wwv_flow_imp.id(44521814846129205)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'Deduct'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_balance NUMBER;',
'    v_amount  NUMBER;',
'BEGIN',
'    v_amount := TO_NUMBER(REPLACE(REPLACE(:P61_AMOUNT, ''$'', ''''), '','', ''''));',
'',
'    SELECT current_balance',
'      INTO v_balance',
'      FROM NPT015',
'     WHERE credit_memo_id = :P61_CODE;',
'',
'    IF v_balance > v_amount THEN',
'        apex_collection.add_member(',
'            p_collection_name => ''PAYMENT'',',
'            p_c001            => ''Credit Memo'',',
'            p_n001            => v_amount, ',
'            p_n002            => v_amount, ',
'            p_n003            => v_amount, ',
'            p_n004            => TO_NUMBER(REPLACE(REPLACE(:P41_TOTAL, ''$'', ''''), '','', '''')) ',
'        ); ',
'',
'        UPDATE NPT015',
'        SET current_balance = current_balance - v_amount',
'        WHERE credit_memo_id = :P61_CODE;',
'',
'        -- Redirect URL',
'        :P61_URL := apex_page.get_url(',
'            p_page        => 43,',
'            p_clear_cache => ''43''',
'        );',
'    ELSE',
'        -- Add collection member with remaining balance',
'        apex_collection.add_member(',
'            p_collection_name => ''PAYMENT'',',
'            p_c001            => ''Credit Memo'',',
'            p_n001            => v_balance -- Numeric value',
'        );',
'',
'        -- Set balance to zero',
'        UPDATE NPT015',
'        SET current_balance = 0',
'        WHERE credit_memo_id = :P61_CODE;',
'    END IF;',
'',
'END;'))
,p_attribute_02=>'P61_CODE,P61_AMOUNT,P41_TOTAL'
,p_attribute_03=>'P61_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44522645187129213)
,p_event_id=>wwv_flow_imp.id(44521814846129205)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>'Redirect'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P61_URL");',
'apex.navigation.redirect(url);'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44522783659129214)
,p_event_id=>wwv_flow_imp.id(44521814846129205)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44522151552129208)
,p_name=>'Check if Memo Exists'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P61_CODE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keyup'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44522260469129209)
,p_event_id=>wwv_flow_imp.id(44522151552129208)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P61_EXISTS'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT count(current_balance)',
'      FROM NPT015',
'     WHERE credit_memo_id = :P61_CODE',
'       AND current_balance != 0;'))
,p_attribute_07=>'P61_CODE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp.component_end;
end;
/
