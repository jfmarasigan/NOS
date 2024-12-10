prompt --application/pages/page_00097
begin
--   Manifest
--     PAGE: 00097
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
 p_id=>97
,p_name=>'Refund Reason'
,p_alias=>'REFUND-REASON'
,p_page_mode=>'MODAL'
,p_step_title=>'Refund Reason'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let lastSelected = null;',
'const p97KeyMap = {',
'',
'    enter : (v) => {',
'        $.event.trigger("submit");',
'    }',
'',
'}',
'',
'function mapP97Keys() {',
'    $(document).off(''keydown.p97keyevents'');',
'    $(document).on(''keydown.p97keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p97KeyMap[key]) {',
'            ev.preventDefault();',
'            p97KeyMap[key]();',
'        }',
'    });',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTitle("Refund");',
'mapP97Keys();',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.format-size{',
'    color: white;',
'    font-size: 1.125rem;',
'}',
'',
'.format-size-black{',
'    font-size: 1.125rem;',
'}',
'',
'.t-Dialog{',
'    background-color: #056AC8!important; ',
'}',
'',
'.t-Dialog-body{',
'    padding-top: 0;',
'    padding-bottom: 0;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41682999780832123)
,p_name=>'P97_REFUND_REASON'
,p_item_sequence=>20
,p_prompt=>'Refund Reason'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>100
,p_cHeight=>5
,p_tag_css_classes=>'format-size-black'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4381902469084273)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41683019902832124)
,p_name=>'P97_CHAR_COUNT'
,p_item_sequence=>30
,p_item_default=>'0/100'
,p_prompt=>'Char Count'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'format-size'
,p_grid_column=>11
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4381902469084273)
,p_item_template_options=>'#DEFAULT#:margin-top-none:margin-bottom-none:t-Form-fieldContainer--normalDisplay'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18425904742367831)
,p_name=>'Submit reason'
,p_event_sequence=>10
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'submit'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41684042592832134)
,p_event_id=>wwv_flow_imp.id(18425904742367831)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
,p_attribute_01=>'P97_REFUND_REASON'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(41683151397832125)
,p_name=>'count char'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P97_REFUND_REASON'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'input'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41683220037832126)
,p_event_id=>wwv_flow_imp.id(41683151397832125)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.item("P97_CHAR_COUNT").setValue(this.browserEvent.target.textLength + ''/100'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(41683872710832132)
,p_name=>'Focus'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41683991955832133)
,p_event_id=>wwv_flow_imp.id(41683872710832132)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P97_REFUND_REASON'
);
wwv_flow_imp.component_end;
end;
/
