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
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let lastSelected = null;',
'const p36KeyMap = {',
'    enter: (v) => {',
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
'    if (value === "") return true; ',
'',
'    return /^\d*\.?\d{0,2}$/.test(value);',
'}, "Please enter in currency format");',
'',
'$("#P36_PAID").on("input", function() {',
'    let value = $(this).val();',
'',
'    value = value.replace(/[^0-9.]/g, "");',
'',
'    const parts = value.split(''.'');',
'    if (parts.length > 2) {',
'        value = parts[0] + ''.'' + parts.slice(1).join('''');',
'    }',
'',
'    if (parts.length > 1) {',
'        value = parts[0] + ''.'' + parts[1].slice(0, 2);',
'    }',
'',
'    $(this).val(value);',
'});'))
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
,p_dialog_width=>'350'
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23635739242246318)
,p_name=>'P36_PAID'
,p_item_sequence=>20
,p_prompt=>'<b>Amount Paid: </b>'
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
,p_prompt=>'<b>Unpaid Amount: </b>'
,p_format_mask=>'999G999G999G999G990D00'
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
,p_prompt=>'<b>Change: </b>'
,p_format_mask=>'999G999G999G999G990D00'
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
 p_id=>wwv_flow_imp.id(70339792559069516)
,p_event_id=>wwv_flow_imp.id(23636183575246322)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_name=>'Change'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P36_CHANGE'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'TO_CHAR(',
'    ROUND(TO_NUMBER(REPLACE(REPLACE(:P36_PAID, ''$'', ''''), '','', '''')), 2) - ',
'    ROUND(TO_NUMBER(REPLACE(REPLACE(:P36_UNPAID, ''$'', ''''), '','', '''')), 2), ',
'    ''FM999999990.00''',
')',
'',
'',
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
,p_event_sequence=>50
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
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(23636300121246324)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43696926440573545)
,p_event_id=>wwv_flow_imp.id(42942323639705411)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Validate'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let field1 = $v(''P36_PAID'').trim(); ',
'',
'let currencyRegex = /^\d{1,3}(,\d{3})*(\.\d{2})?$/;',
'',
'if (!currencyRegex.test(field1)) {  ',
'    apex.message.clearErrors(); ',
'    apex.message.showErrors([{',
'        type: ''error'',',
'        location: ''inline'', ',
'        pageItem: ''P36_PAID'', ',
'        message: ''Wrong currency format.''',
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
 p_id=>wwv_flow_imp.id(42942418511705412)
,p_event_id=>wwv_flow_imp.id(42942323639705411)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_paid NUMBER;',
'    v_unpaid NUMBER;',
'    v_change NUMBER;',
'    v_amount NUMBER;',
'    v_payment_method_id NUMBER;',
'    v_existing_id NUMBER := NULL;',
'    v_existing_n001 NUMBER := 0;',
'BEGIN',
'    v_paid := TO_NUMBER(REPLACE(REPLACE(:P36_PAID, ''$'', ''''), '','', ''''));',
'    v_unpaid := TO_NUMBER(REPLACE(REPLACE(:P36_UNPAID, ''$'', ''''), '','', ''''));',
'',
'    BEGIN',
'        SELECT seq_id, n001',
'        INTO v_existing_id, v_existing_n001',
'        FROM apex_collections',
'        WHERE collection_name = ''PAYMENT''',
'        AND c001 = ''Cash''',
'        FETCH FIRST 1 ROWS ONLY;',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'            v_existing_id := NULL;',
'            v_existing_n001 := 0;',
'    END;',
'',
'    IF v_existing_id IS NOT NULL THEN',
'        apex_collection.update_member(',
'            p_collection_name => ''PAYMENT'',',
'            p_seq => v_existing_id, ',
'            p_c001 => ''Cash'',',
'            p_n001 => TO_CHAR(ROUND(v_existing_n001 + v_paid, 2), ''FM999999990.00''),',
'            p_n002 => TO_CHAR(ROUND(v_unpaid, 2), ''FM999999990.00''),',
'            p_n003 => TO_CHAR(ROUND(TO_NUMBER(REPLACE(REPLACE(:P36_CHANGE, ''$'', ''''), '','', '''')), 2), ''FM999999990.00''),',
'            p_n004 => TO_CHAR(ROUND(TO_NUMBER(REPLACE(REPLACE(:P41_TOTAL, ''$'', ''''), '','', '''')), 2), ''FM999999990.00'')',
'        );',
'    ELSE',
'        apex_collection.add_member(',
'            p_collection_name => ''PAYMENT'',',
'            p_c001 => ''Cash'',',
'            p_n001 => TO_CHAR(ROUND(v_paid, 2), ''FM999999990.00''),',
'            p_n002 => TO_CHAR(ROUND(v_unpaid, 2), ''FM999999990.00''),',
'            p_n003 => TO_CHAR(ROUND(TO_NUMBER(REPLACE(REPLACE(:P36_CHANGE, ''$'', ''''), '','', '''')), 2), ''FM999999990.00''),',
'            p_n004 => TO_CHAR(ROUND(TO_NUMBER(REPLACE(REPLACE(:P41_TOTAL, ''$'', ''''), '','', '''')), 2), ''FM999999990.00'')',
'        );',
'    END IF;',
'',
'    IF v_paid >= v_unpaid THEN',
'        :P36_PREPARED_URL := apex_page.get_url(',
'            p_page        => 43,',
'            p_clear_cache => ''43''',
'        );',
'    END IF;',
'',
'     SELECT n001',
'      INTO v_amount',
'      FROM apex_collections',
'     WHERE collection_name = ''PAYMENT''',
'       AND c001 = ''Cash'';',
'',
'    SELECT payment_method_id ',
'      INTO v_payment_method_id',
'      FROM NPM005',
'     WHERE method_name = ''Cash'';',
'',
'    INSERT INTO NPT014 (amount, payment_method_id, user_created, date_created)',
'           VALUES(v_amount, v_payment_method_id, v(''APP_USER''), SYSDATE);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        DBMS_OUTPUT.PUT_LINE(''Error: '' || SQLERRM);',
'END;',
''))
,p_attribute_02=>'P36_PAID,P36_UNPAID,P36_CHANGE,P41_TOTAL'
,p_attribute_03=>'P36_PREPARED_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42942580433705413)
,p_event_id=>wwv_flow_imp.id(42942323639705411)
,p_event_result=>'TRUE'
,p_action_sequence=>40
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
,p_attribute_01=>'P36_PAID,P36_UNPAID,P36_CHANGE'
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
wwv_flow_imp.component_end;
end;
/
