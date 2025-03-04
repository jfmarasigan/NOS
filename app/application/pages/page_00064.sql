prompt --application/pages/page_00064
begin
--   Manifest
--     PAGE: 00064
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
 p_id=>64
,p_name=>'POS Cashiering - Opening Balance'
,p_alias=>'POS-CASHIERING-OPENING-BALANCE'
,p_page_mode=>'MODAL'
,p_step_title=>'OPENING BALANCE'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let lastSelected = null;',
'',
'const p64KeyMap = {',
'    enter : (v) => {',
'        if (!$(''#opening-balance'').is('':visible'')) {',
'            $("#submit").trigger("click");',
'        } else {',
'            $("#insert").trigger("click");',
'        }',
'    },',
'',
'    escape: (v) => {',
'        $("#esc").trigger("click");',
'    },',
'',
'',
'}',
'',
'function mapP64Keys() {',
'    $(document).off(''keydown.p64keyevents'');',
'    $(document).on(''keydown.p64keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p64KeyMap[key]) {',
'            ev.preventDefault();',
'            p64KeyMap[key]();',
'        }',
'    });',
'}',
'',
'function customEvent(event, data){',
'    mapP64Keys();',
'}'))
,p_javascript_code_onload=>'mapP64Keys();'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Dialog-body{',
'    background-color: #056AC8;',
'    padding-top: 0;',
'    padding-bottom: 0;',
'}',
'.t-Dialog-body label{',
'    font-size: 1.125rem;',
'    background-color: #056AC8;',
'    color: white;',
'    font-weight: bold;',
'}',
'',
'.t-Dialog-body input{',
'    font-size: 1.125rem;',
'    background-color: #056AC8;',
'    color: black;',
'}',
'',
'.apex-item-display-only {',
'    font-size: 1.125rem;',
'    font-family: Arial;',
'    white-space: nowrap;',
'    font-weight: 100;',
'    color: white;',
'}',
'',
'.t-Form-label {',
'    line-height: 1.5rem;',
'    white-space: nowrap;',
'    color: white;',
'    font-size: 1.125rem;',
'}',
'',
'#opening-balance {',
'    font-size: 1.125rem;',
'    font-family: Arial;',
'    white-space: nowrap;',
'    font-weight: 100;',
'    color: white;',
'    background-color: #056AC8;',
'}',
'',
'.ui-dialog .ui-dialog-titlebar{',
'    background-color: #056AC8;',
'    color: white;',
'    font-size: 1.125rem;',
'    font-family: Arial;',
'    text-align: left;',
'    ',
'}',
'',
'.ui-button {',
'    display: none;',
'}',
'',
'.hiddenbtn {',
'    display: none;',
'}',
'',
'element.style {',
'    position: absolute;',
'    height: auto;',
'    width: 280px;',
'    top: 50%;',
'    left: 50%;',
'    max-width: 100%;',
'}'))
,p_step_template=>wwv_flow_imp.id(4218915405083976)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(43695475468573530)
,p_plug_name=>'Confirm Opening Balance'
,p_region_name=>'opening-balance'
,p_region_template_options=>'t-DialogRegion--noPadding:js-modal:js-draggable:js-dialog-nosize:t-Form--slimPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>150
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(43695648309573532)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(43695475468573530)
,p_button_name=>'Insert'
,p_button_static_id=>'insert'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Insert'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'hiddenbtn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(43695003542573526)
,p_button_sequence=>130
,p_button_name=>'Confirm'
,p_button_static_id=>'submit'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Confirm'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'hiddenbtn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18713008205804243)
,p_name=>'P64_001'
,p_item_sequence=>20
,p_prompt=>'0.01'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'oninput="this.value = this.value.replace(/[^0-9]/g, '''');"'
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'1'
,p_attribute_02=>'999999999'
,p_attribute_03=>'right'
,p_attribute_04=>'numeric'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18713156155804244)
,p_name=>'P64_1'
,p_item_sequence=>30
,p_prompt=>'1'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'oninput="this.value = this.value.replace(/[^0-9]/g, '''');"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'1'
,p_attribute_02=>'999999999'
,p_attribute_03=>'right'
,p_attribute_04=>'numeric'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18713255383804245)
,p_name=>'P64_50'
,p_item_sequence=>40
,p_prompt=>'50'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'oninput="this.value = this.value.replace(/[^0-9]/g, '''');"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'1'
,p_attribute_02=>'999999999'
,p_attribute_03=>'right'
,p_attribute_04=>'numeric'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18713398132804246)
,p_name=>'P64_005'
,p_item_sequence=>50
,p_prompt=>'0.05'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'oninput="this.value = this.value.replace(/[^0-9]/g, '''');"'
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'1'
,p_attribute_02=>'999999999'
,p_attribute_03=>'right'
,p_attribute_04=>'numeric'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18713447338804247)
,p_name=>'P64_5'
,p_item_sequence=>60
,p_prompt=>'5'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'oninput="this.value = this.value.replace(/[^0-9]/g, '''');"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'1'
,p_attribute_02=>'999999999'
,p_attribute_03=>'right'
,p_attribute_04=>'numeric'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18713592087804248)
,p_name=>'P64_100'
,p_item_sequence=>70
,p_prompt=>'100'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'oninput="this.value = this.value.replace(/[^0-9]/g, '''');"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'1'
,p_attribute_02=>'999999999'
,p_attribute_03=>'right'
,p_attribute_04=>'numeric'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18713658445804249)
,p_name=>'P64_010'
,p_item_sequence=>80
,p_prompt=>'0.10'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'oninput="this.value = this.value.replace(/[^0-9]/g, '''');"'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'1'
,p_attribute_02=>'999999999'
,p_attribute_03=>'right'
,p_attribute_04=>'numeric'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18713712349804250)
,p_name=>'P64_10'
,p_item_sequence=>90
,p_prompt=>'10'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'oninput="this.value = this.value.replace(/[^0-9]/g, '''');"'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'1'
,p_attribute_02=>'999999999'
,p_attribute_03=>'right'
,p_attribute_04=>'numeric'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19651873921695401)
,p_name=>'P64_025'
,p_item_sequence=>100
,p_prompt=>'0.25'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'oninput="this.value = this.value.replace(/[^0-9]/g, '''');"'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'1'
,p_attribute_02=>'999999999'
,p_attribute_03=>'right'
,p_attribute_04=>'numeric'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19651900076695402)
,p_name=>'P64_20'
,p_item_sequence=>110
,p_prompt=>'20'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'oninput="this.value = this.value.replace(/[^0-9]/g, '''');"'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'1'
,p_attribute_02=>'999999999'
,p_attribute_03=>'right'
,p_attribute_04=>'numeric'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19652263105695405)
,p_name=>'P64_TOTAL'
,p_item_sequence=>120
,p_prompt=>'Total:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43695581718573531)
,p_name=>'P64_BALANCE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(43695475468573530)
,p_prompt=>'Balance:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>7
,p_grid_column=>3
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42945832679705446)
,p_name=>'Set Total'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P64_001,P64_1,P64_50,P64_005,P64_5,P64_100,P64_010,P64_10,P64_025,P64_20'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keyup'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42945970628705447)
,p_event_id=>wwv_flow_imp.id(42945832679705446)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P64_TOTAL'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'TO_CHAR(',
'    NVL(:P64_001, 0) * 0.01 +',
'    NVL(:P64_1, 0) * 1 +',
'    NVL(:P64_50, 0) * 50 +',
'    NVL(:P64_005, 0) * 0.05 +',
'    NVL(:P64_5, 0) * 5 +',
'    NVL(:P64_100, 0) * 100 +',
'    NVL(:P64_010, 0) * 0.10 +',
'    NVL(:P64_10, 0) * 10 +',
'    NVL(:P64_025, 0) * 0.25 +',
'    NVL(:P64_20, 0) * 20,',
'    ''99990.00''',
')',
''))
,p_attribute_07=>'P64_001,P64_1,P64_50,P64_005,P64_5,P64_100,P64_010,P64_10,P64_025,P64_20'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(43696065296573536)
,p_name=>'Set Balance'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P64_001,P64_1,P64_50,P64_005,P64_5,P64_100,P64_010,P64_10,P64_025,P64_20'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keyup'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43696136323573537)
,p_event_id=>wwv_flow_imp.id(43696065296573536)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P64_BALANCE'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'TO_CHAR(',
'    NVL(:P64_001, 0) * 0.01 +',
'    NVL(:P64_1, 0) * 1 +',
'    NVL(:P64_50, 0) * 50 +',
'    NVL(:P64_005, 0) * 0.05 +',
'    NVL(:P64_5, 0) * 5 +',
'    NVL(:P64_100, 0) * 100 +',
'    NVL(:P64_010, 0) * 0.10 +',
'    NVL(:P64_10, 0) * 10 +',
'    NVL(:P64_025, 0) * 0.25 +',
'    NVL(:P64_20, 0) * 20,',
'    ''99990.00''',
')',
''))
,p_attribute_07=>'P64_001,P64_1,P64_50,P64_005,P64_5,P64_100,P64_010,P64_10,P64_025,P64_20'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43696217232573538)
,p_event_id=>wwv_flow_imp.id(43696065296573536)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(43695475468573530)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42946144844705449)
,p_name=>'Focus'
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42946299834705450)
,p_event_id=>wwv_flow_imp.id(42946144844705449)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P64_001'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(43695199922573527)
,p_name=>'Validate & Open Region'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(43695003542573526)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43695230877573528)
,p_event_id=>wwv_flow_imp.id(43695199922573527)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var field1 = $v(''P64_001'');',
'var field2 = $v(''P64_005'');',
'var field3 = $v(''P64_010'');',
'var field4 = $v(''P64_025'');',
'var field5 = $v(''P64_1'');',
'var field6 = $v(''P64_10'');',
'var field7 = $v(''P64_100'');',
'var field8 = $v(''P64_20'');',
'var field9 = $v(''P64_5'');',
'var field10 = $v(''P64_50'');',
'',
'if (field1.trim() === '''' && field2.trim() === '''' && field3.trim() === '''' &&',
'    field4.trim() === '''' && field5.trim() === '''' && field6.trim() === '''' &&',
'    field7.trim() === '''' && field8.trim() === '''' && field9.trim() === '''' &&',
'    field10.trim() === '''') {',
'    ',
'    apex.message.clearErrors(); ',
'    apex.message.showErrors([{',
'        type: ''error'',',
'        location: [''P64_001'', ''P64_005'', ''P64_010'', ''P64_025'', ''P64_1'', ''P64_10'', ''P64_100'', ''P64_20'', ''P64_5'', ''P64_50''],',
'        message: ''Please fill in at least one text field.''',
'    }]);',
'',
'    return false;',
'} else {',
'',
'    return true;',
'}',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43695389003573529)
,p_event_id=>wwv_flow_imp.id(43695199922573527)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(43695475468573530)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(43695768365573533)
,p_name=>'Insert'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(43695648309573532)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43695876305573534)
,p_event_id=>wwv_flow_imp.id(43695768365573533)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'INSERT INTO NPT024 (DENOMINATION_ID, QUANTITY, TOTAL_NUMBER, USER_CREATED, DATE_CREATED)',
'VALUES (1, NVL(:P64_001, 0), :P64_TOTAL, :app_user, SYSDATE);',
'',
'INSERT INTO NPT024 (DENOMINATION_ID, QUANTITY, TOTAL_NUMBER, USER_CREATED, DATE_CREATED)',
'VALUES (2, NVL(:P64_005, 0), :P64_TOTAL, :app_user, SYSDATE);',
'',
'INSERT INTO NPT024 (DENOMINATION_ID, QUANTITY, TOTAL_NUMBER, USER_CREATED, DATE_CREATED)',
'VALUES (3, NVL(:P64_010, 0), :P64_TOTAL, :app_user, SYSDATE);',
'',
'INSERT INTO NPT024 (DENOMINATION_ID, QUANTITY, TOTAL_NUMBER, USER_CREATED, DATE_CREATED)',
'VALUES (4, NVL(:P64_025, 0), :P64_TOTAL, :app_user, SYSDATE);',
'',
'INSERT INTO NPT024 (DENOMINATION_ID, QUANTITY, TOTAL_NUMBER, USER_CREATED, DATE_CREATED)',
'VALUES (5, NVL(:P64_1, 0), :P64_TOTAL, :app_user, SYSDATE);',
'',
'INSERT INTO NPT024 (DENOMINATION_ID, QUANTITY, TOTAL_NUMBER, USER_CREATED, DATE_CREATED)',
'VALUES (6, NVL(:P64_5, 0), :P64_TOTAL, :app_user, SYSDATE);',
'',
'INSERT INTO NPT024 (DENOMINATION_ID, QUANTITY, TOTAL_NUMBER, USER_CREATED, DATE_CREATED)',
'VALUES (7, NVL(:P64_10, 0), :P64_TOTAL, :app_user, SYSDATE);',
'',
'INSERT INTO NPT024 (DENOMINATION_ID, QUANTITY, TOTAL_NUMBER, USER_CREATED, DATE_CREATED)',
'VALUES (8, NVL(:P64_20, 0), :P64_TOTAL, :app_user, SYSDATE);',
'',
'INSERT INTO NPT024 (DENOMINATION_ID, QUANTITY, TOTAL_NUMBER, USER_CREATED, DATE_CREATED)',
'VALUES (9, NVL(:P64_50, 0), :P64_TOTAL, :app_user, SYSDATE);',
'',
'INSERT INTO NPT024 (DENOMINATION_ID, QUANTITY, TOTAL_NUMBER, USER_CREATED, DATE_CREATED)',
'VALUES (10, NVL(:P64_100, 0), :P64_TOTAL, :app_user, SYSDATE);',
'',
'',
'INSERT INTO NPT023 (OPENING_CASH_AMOUNT, USER_CREATED, DATE_CREATED)',
'VALUES (:P64_BALANCE, :app_user, SYSDATE);'))
,p_attribute_02=>'P64_BALANCE,P64_001,P64_1,P64_50,P64_005,P64_5,P64_100,P64_010,P64_10,P64_025,P64_20,P64_TOTAL'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43695967144573535)
,p_event_id=>wwv_flow_imp.id(43695768365573533)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp.component_end;
end;
/
