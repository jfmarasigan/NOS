prompt --application/pages/page_00062
begin
--   Manifest
--     PAGE: 00062
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
 p_id=>62
,p_name=>'POS Cashiering - Company Check Payment'
,p_alias=>'POS-CASHIERING-COMPANY-CHECK-PAYMENT'
,p_page_mode=>'MODAL'
,p_step_title=>'POS Cashiering - Company Check Payment'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let lastSelected = null;',
'const p62KeyMap = {',
'    home: (v) => {',
'        console.log("to-top");',
'        $("#to-top").trigger("click");',
'    },',
'    end: (v) => {',
'        console.log("to bottom");',
'        $("#to-bottom").trigger("click");',
'    }',
'}',
'',
'function mapP62Keys() {',
'    $(document).off(''keydown.p62keyevents'');',
'    $(document).on(''keydown.p62keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p62KeyMap[key]) {',
'            ev.preventDefault();',
'            p62KeyMap[key]();',
'        }',
'    });',
'}'))
,p_javascript_code_onload=>'mapP62Keys();'
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
 p_id=>wwv_flow_imp.id(44523304058129220)
,p_button_sequence=>60
,p_button_name=>'Enter'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Enter'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44523113611129218)
,p_name=>'P62_EXISTS'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44523285272129219)
,p_name=>'P62_URL'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76815269259661425)
,p_name=>'P62_AMOUNT'
,p_is_required=>true
,p_item_sequence=>40
,p_prompt=>'Amount:'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>12
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_03=>'right'
,p_attribute_04=>'numeric'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76815434818661427)
,p_name=>'P62_CHECK'
,p_is_required=>true
,p_item_sequence=>50
,p_prompt=>'Check #:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>12
,p_tag_attributes=>'oninput="this.value = this.value.replace(/[^0-9]/g, '''');"'
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44523729961129224)
,p_name=>'Click Enter'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(44523304058129220)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44523880523129225)
,p_event_id=>wwv_flow_imp.id(44523729961129224)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Validate'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var amount = $v(''P62_AMOUNT''); ',
'var regex = /^\d{1,9}(\.\d{2})?$/; ',
'',
'if (!regex.test(amount)) {',
'    apex.message.clearErrors(); ',
'    apex.message.showErrors([',
'        {',
'            type: ''error'',',
'            location: ''inline'',',
'            pageItem: ''P62_AMOUNT'', ',
'            message: ''Amount must be numeric''',
'        }',
'    ]);',
'',
'    return false;',
'} else {',
'    apex.message.clearErrors(); ',
'    return true;',
'}',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44524036987129227)
,p_event_id=>wwv_flow_imp.id(44523729961129224)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'Insert into Table'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_unpaid NUMBER;',
'    v_amount  NUMBER;',
'BEGIN',
'    v_amount := TO_NUMBER(REPLACE(REPLACE(:P62_AMOUNT, ''$'', ''''), '','', ''''));',
'    v_unpaid := TO_NUMBER(REPLACE(REPLACE(:P41_TOTAL, ''$'', ''''), '','', ''''));',
'',
'    IF v_amount >= v_unpaid THEN',
'        apex_collection.add_member(',
'            p_collection_name => ''PAYMENT'',',
'            p_c001            => ''Company Check'',',
'            p_n001            => v_amount, ',
'            p_n002            => v_amount, ',
'            p_n003            => v_amount, ',
'            p_n004            => TO_NUMBER(REPLACE(REPLACE(:P41_TOTAL, ''$'', ''''), '','', '''')) ',
'        ); ',
'',
'        INSERT INTO NPT014 ',
'                     (PAYMENT_METHOD_ID, AMOUNT, USER_CREATED, DATE_CREATED)',
'              VALUES (2, v_amount, :apex_user, SYSDATE);',
'',
'        :P62_URL := apex_page.get_url(',
'            p_page        => 43,',
'            p_clear_cache => ''43''',
'        );',
'    ELSE',
'        apex_collection.add_member(',
'            p_collection_name => ''PAYMENT'',',
'            p_c001            => ''Company Check'',',
'            p_n001            => v_amount ',
'        );',
'',
'        INSERT INTO NPT014 ',
'                     (PAYMENT_METHOD_ID, AMOUNT, USER_CREATED, DATE_CREATED)',
'              VALUES (2, v_amount, :apex_user, SYSDATE);',
'    END IF;',
'',
'END;',
'',
'',
''))
,p_attribute_02=>'P62_AMOUNT,P41_TOTAL'
,p_attribute_03=>'P62_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44524154535129228)
,p_event_id=>wwv_flow_imp.id(44523729961129224)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'Redirect'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P62_URL");',
'apex.navigation.redirect(url);'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44524253891129229)
,p_event_id=>wwv_flow_imp.id(44523729961129224)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp.component_end;
end;
/
