prompt --application/pages/page_00000
begin
--   Manifest
--     PAGE: 00000
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
 p_id=>0
,p_name=>'Global Page'
,p_step_title=>'Global Page'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_page_component_map=>'14'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(35156960103966941)
,p_plug_name=>'GPopup'
,p_region_css_classes=>'g-popup-box'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(4239308569084015)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_04'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="g-popup-div">',
'    <div class="g-popup-icon"></div>',
'    <div class="g-popup"></div>',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27343807462391824)
,p_name=>'P_APP_ENV'
,p_item_sequence=>10
,p_item_default=>'&APP_ENV.'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5662226707316301)
,p_name=>'Set Time and Date to Nav Bar'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5662372503316302)
,p_event_id=>wwv_flow_imp.id(5662226707316301)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'setTimeToNavBar();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(36009524736231043)
,p_name=>'Open g-popup'
,p_event_sequence=>20
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'OPEN_GPOPUP'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(36009927050231060)
,p_event_id=>wwv_flow_imp.id(36009524736231043)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(35156960103966941)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(36010338015232459)
,p_name=>'Close g-popup'
,p_event_sequence=>30
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'CLOSE_GPOPUP'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(36010728126232459)
,p_event_id=>wwv_flow_imp.id(36010338015232459)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(35156960103966941)
);
wwv_flow_imp.component_end;
end;
/
