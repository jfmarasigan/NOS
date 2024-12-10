prompt --application/pages/page_00098
begin
--   Manifest
--     PAGE: 00098
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
 p_id=>98
,p_name=>'Refund Search'
,p_alias=>'REFUND-SEARCH'
,p_page_mode=>'MODAL'
,p_step_title=>'Search for Invoice Number'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setInputFilter($("#P98_SEARCH_QUERY"), function(value) {  return /^\d*$/.test(value);}, "Only digits are allowed");',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.input-size{',
'    font-size: 1.125rem;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'500'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25371746262301941)
,p_name=>'P98_SEARCH_QUERY'
,p_item_sequence=>10
,p_prompt=>'<span class="input-size">Search:</span>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'input-size'
,p_colspan=>8
,p_grid_column=>3
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4381902469084273)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39832931181742320)
,p_name=>'P98_PREPARED_URL'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39832567904742316)
,p_name=>'Focus'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39832694874742317)
,p_event_id=>wwv_flow_imp.id(39832567904742316)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P98_SEARCH_QUERY'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39833823625742329)
,p_name=>'Change'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P98_SEARCH_QUERY'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39833983538742330)
,p_event_id=>wwv_flow_imp.id(39833823625742329)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
,p_attribute_01=>'P98_SEARCH_QUERY'
);
wwv_flow_imp.component_end;
end;
/
