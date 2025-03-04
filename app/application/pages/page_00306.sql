prompt --application/pages/page_00306
begin
--   Manifest
--     PAGE: 00306
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
 p_id=>306
,p_name=>'Collection and Outstanding'
,p_alias=>'COLLECTION-AND-OUTSTANDING'
,p_step_title=>'Collection and Outstanding'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#js/coll-and-outs-menu#MIN#.js'
,p_javascript_code_onload=>'mapKeys();'
,p_css_file_urls=>'#APP_FILES#css/menu#MIN#.css'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.menu-instruction {',
'    margin-block-start: 4rem;',
'}'))
,p_step_template=>wwv_flow_imp.id(5671392681337017)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(43979677378929649)
,p_plug_name=>'Header'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="title-header">',
'Collection and Outstanding',
'</div>'))
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(43979726097929650)
,p_plug_name=>'Buttons'
,p_region_name=>'menu-btns'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>10
,p_plug_display_column=>2
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(90833811273078252)
,p_plug_name=>'Footer'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--textContent:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>30
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="menu-instruction">',
'Press the underlined letter to proceed',
'</div>'))
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31878625871078856)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(43979726097929650)
,p_button_name=>'COLL_ENTRY_UPDATE'
,p_button_static_id=>'coll-entry-update'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--noUI:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>C</u> - Collections Entry and Update'
,p_button_redirect_url=>'f?p=&APP_ID.:75:&SESSION.::&DEBUG.:15::'
,p_button_condition=>'has_access(:APP_USER, 10, 190) = ''Y'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_grid_new_row=>'Y'
,p_grid_row_css_classes=>'menu-row'
,p_grid_column_span=>4
,p_grid_column=>5
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31879483893078856)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(43979726097929650)
,p_button_name=>'VIEW_PAY_MAP'
,p_button_static_id=>'view-pay-map'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--noUI:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>P</u> - View Payments Map'
,p_button_redirect_url=>'f?p=&APP_ID.:150:&SESSION.::&DEBUG.:::'
,p_button_condition=>'has_access(:APP_USER, 142, 191) = ''Y'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_grid_new_row=>'Y'
,p_grid_row_css_classes=>'menu-row'
,p_grid_column_span=>4
,p_grid_column=>5
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31880219015078857)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(43979726097929650)
,p_button_name=>'VIEW_STATE_ACCT'
,p_button_static_id=>'view-state-acct'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--noUI:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>S</u> - View Statement of Account'
,p_button_redirect_url=>'f?p=&APP_ID.:320:&SESSION.::&DEBUG.:320::'
,p_button_condition=>'has_access(:APP_USER, 14, 63) = ''Y'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_grid_new_row=>'Y'
,p_grid_row_css_classes=>'menu-row'
,p_grid_column_span=>4
,p_grid_column=>5
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31308278839578714)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(43979726097929650)
,p_button_name=>'REPORTS'
,p_button_static_id=>'reports'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--noUI:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>R</u> - Reports'
,p_button_redirect_url=>'f?p=&APP_ID.:147:&SESSION.::&DEBUG.:147::'
,p_grid_new_row=>'Y'
,p_grid_row_css_classes=>'menu-row'
,p_grid_column_span=>4
,p_grid_column=>5
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31308105371578713)
,p_name=>'P306_PLACEHOLDER3'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(43979726097929650)
,p_prompt=>'Placeholder2'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47536777549639771)
,p_name=>'P306_MURL'
,p_item_sequence=>30
,p_item_default=>'APEX_PAGE.GET_URL(p_page => 1)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51275220139613894)
,p_name=>'P306_PLACEHOLDER1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(43979726097929650)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51275301299613895)
,p_name=>'P306_PLACEHOLDER2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(43979726097929650)
,p_prompt=>'Placeholder2'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
,p_ai_enabled=>false
);
wwv_flow_imp.component_end;
end;
/
