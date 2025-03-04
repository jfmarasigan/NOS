prompt --application/pages/page_00049
begin
--   Manifest
--     PAGE: 00049
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
 p_id=>49
,p_name=>'POS Cashiering - Yellow GCert Payment'
,p_alias=>'POS-CASHIERING-YELLOW-GCERT-PAYMENT'
,p_page_mode=>'MODAL'
,p_step_title=>'Gift Certificate (YELLOW)'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let lastSelected = null;',
'const p49KeyMap = {',
'    enter: (v) => {',
'        $("#submit").trigger("click");',
'    },',
'',
'    escape: (v) => {',
'        $("#escape").trigger("click");',
'    }',
'',
'}',
'',
'function mapP49Keys() {',
'    $(document).off(''keydown.p49keyevents'');',
'    $(document).on(''keydown.p49keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p49KeyMap[key]) {',
'            ev.preventDefault();',
'            p49KeyMap[key]();',
'        }',
'    });',
'}'))
,p_javascript_code_onload=>'mapP49Keys();'
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
'}',
'',
'.t-Form-inputContainer .t-Form-error, .t-Form-inputContainer .t-Form-error div {',
'    color: #FFD700;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'350'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(44272879664177712)
,p_button_sequence=>60
,p_button_name=>'Submit'
,p_button_static_id=>'submit'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Submit'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'hiddenbtn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38078488687075511)
,p_name=>'P49_AMOUNT'
,p_item_sequence=>40
,p_prompt=>'Amount:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38078654246075513)
,p_name=>'P49_CODE'
,p_item_sequence=>50
,p_prompt=>'Code:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44273104043177715)
,p_name=>'P49_URL'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44276194177177745)
,p_name=>'P49_EXISTS'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44272975904177713)
,p_name=>'Click Submit'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(44272879664177712)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44523971456129226)
,p_event_id=>wwv_flow_imp.id(44272975904177713)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Validate'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var field1 = $v(''P49_EXISTS''); ',
'if (field1 < 1 ) {',
'    apex.message.clearErrors(); ',
'    apex.message.showErrors([{',
'        type: ''error'',',
'        location: ''inline'', ',
'        pageItem: ''P49_CODE'', ',
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
 p_id=>wwv_flow_imp.id(44273025281177714)
,p_event_id=>wwv_flow_imp.id(44272975904177713)
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
'    v_amount := TO_NUMBER(REPLACE(REPLACE(:P49_AMOUNT, ''$'', ''''), '','', ''''));',
'',
'    SELECT balance',
'      INTO v_balance',
'      FROM NPT020',
'     WHERE gift_certificate_id = :P49_CODE;',
'',
'    IF v_balance >= v_amount THEN',
'        apex_collection.add_member(',
'            p_collection_name => ''PAYMENT'',',
'            p_c001            => ''Gift Certificate BLUE ('' || :P49_CODE || '')'',',
'            p_n001            => v_amount, ',
'            p_n002            => v_amount, ',
'            p_n003            => v_amount, ',
'            p_n004            => TO_CHAR(TO_NUMBER(REPLACE(REPLACE(:P41_TOTAL, ''$'', ''''), '','', '''')), ''FM999999990.00'')',
'        ); ',
'',
'        UPDATE NPT020',
'        SET balance = balance - v_amount,',
'            gc_status_id = (SELECT gc_status_id FROM NPM014',
'                            WHERE gc_status_name = ''Redeemed'')',
'        WHERE gift_certificate_id = :P49_CODE;',
'',
'        :P49_URL := apex_page.get_url(',
'            p_page        => 43,',
'            p_clear_cache => ''43''',
'        );',
'    ELSE',
'        apex_collection.add_member(',
'            p_collection_name => ''PAYMENT'',',
'            p_c001            => ''Gift Certificate BLUE ('' || :P49_CODE || '')'',',
'            p_n001            => v_balance ',
'        );',
'',
'        UPDATE NPT020',
'        SET balance = 0,',
'            gc_status_id = 3',
'      WHERE gift_certificate_id = :P49_CODE;',
'    END IF;',
'',
'END;'))
,p_attribute_02=>'P49_AMOUNT,P49_CODE,P41_TOTAL'
,p_attribute_03=>'P49_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44273241377177716)
,p_event_id=>wwv_flow_imp.id(44272975904177713)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>'Redirect'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P49_URL");',
'apex.navigation.redirect(url);'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44273322645177717)
,p_event_id=>wwv_flow_imp.id(44272975904177713)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44276225657177746)
,p_name=>'Check if GCert Exists'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P49_CODE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keyup'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44276379923177747)
,p_event_id=>wwv_flow_imp.id(44276225657177746)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P49_EXISTS'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT count(balance)',
'FROM NPT020 a, NPM014 b',
'WHERE a.balance = a.amount',
'  AND  a.gc_status_id = b.gc_status_id',
'  AND a.gift_certificate_id = :P49_CODE',
'  AND b.gc_status_name <> ''Redeemed''',
'  AND a.expiry_date >= TRUNC(SYSDATE);',
''))
,p_attribute_07=>'P49_CODE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp.component_end;
end;
/
