prompt --application/pages/page_00088
begin
--   Manifest
--     PAGE: 00088
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
 p_id=>88
,p_name=>'Create Invoice - With Quotation'
,p_alias=>'CREATE-INVOICE-WITH-QUOTATION'
,p_page_mode=>'MODAL'
,p_step_title=>'Search'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#js/cmn#MIN#.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p88KeyMap = {',
'    enter : (v) => {',
'        $("#enter").click();',
'    }',
'',
'}',
'',
'function mapP88Keys() {',
'    $(document).off(''keydown.p88keyevents'');',
'    $(document).on(''keydown.p88keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p88KeyMap[key]) {',
'            ev.preventDefault();',
'            p88KeyMap[key]();',
'        }',
'    });',
'}',
'',
'function customEvent(event, data){',
'    mapP88Keys();',
'}'))
,p_javascript_code_onload=>'mapP88Keys();'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Dialog-body{',
'    background-color: white;',
'}',
'.t-Dialog-body label,',
'.t-Dialog-body input{',
'    font-size: 1.125rem;',
'    text-align: left;',
'}',
'.t-Region-body{',
'   padding-bottom: 0;',
'   padding-left: 0;',
'}',
'',
'.hiddenbtn {',
'    display: none;',
'}',
'',
't-Form-label {',
'    white-space: nowrap;',
'    text-align: start;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'600'
,p_dialog_max_width=>'600'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(30807326224808234)
,p_button_sequence=>30
,p_button_name=>'Submit'
,p_button_static_id=>'enter'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Submit'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'hiddenbtn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30807086131808231)
,p_name=>'P88_QUOTATION_NUMBER'
,p_item_sequence=>10
,p_prompt=>'Quotation Number:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>12
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--postTextBlock'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30808082355808241)
,p_name=>'P88_URL'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30807862418808239)
,p_name=>'Submit'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(30807326224808234)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30807992730808240)
,p_event_id=>wwv_flow_imp.id(30807862418808239)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P88_URL := apex_page.get_url(',
'       p_page   => 81,',
'       p_items  => ''P81_QUOTATION_NUMBER'',',
'       p_values => :P88_QUOTATION_NUMBER',
'     );',
'END;'))
,p_attribute_02=>'P88_QUOTATION_NUMBER'
,p_attribute_03=>'P88_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30808157536808242)
,p_event_id=>wwv_flow_imp.id(30807862418808239)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P88_URL");',
'apex.navigation.redirect(url);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(34401282710626207)
,p_name=>'Focus'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34401319515626208)
,p_event_id=>wwv_flow_imp.id(34401282710626207)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_name=>'Set Focus'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P88_QUOTATION_NUMBER'
);
wwv_flow_imp.component_end;
end;
/
