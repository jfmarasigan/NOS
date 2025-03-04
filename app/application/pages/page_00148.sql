prompt --application/pages/page_00148
begin
--   Manifest
--     PAGE: 00148
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
 p_id=>148
,p_name=>'Collection and Outstanding Reports Popup'
,p_alias=>'COLLECTION-AND-OUTSTANDING-REPORTS-POPUP'
,p_page_mode=>'MODAL'
,p_step_title=>'Search Legal Name'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.format-size{',
'    font-size: 1.125rem;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'300'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35461330681234045)
,p_name=>'P148_LEGAL_NAME'
,p_item_sequence=>30
,p_prompt=>'Legal Name'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>'SELECT LEGAL_NAME FROM NPT009'
,p_cSize=>30
,p_tag_css_classes=>'format-size'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4381902469084273)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'Y'
,p_attribute_05=>'7'
,p_attribute_09=>'1'
,p_attribute_10=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(35461403557234046)
,p_name=>'Focus to Text'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(35461502667234047)
,p_event_id=>wwv_flow_imp.id(35461403557234046)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P148_LEGAL_NAME'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(35461620720234048)
,p_name=>'Validate Name'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P148_LEGAL_NAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(35461787720234049)
,p_event_id=>wwv_flow_imp.id(35461620720234048)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
,p_attribute_01=>'P148_LEGAL_NAME'
);
wwv_flow_imp.component_end;
end;
/
