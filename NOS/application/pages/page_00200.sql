prompt --application/pages/page_00200
begin
--   Manifest
--     PAGE: 00200
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
 p_id=>200
,p_name=>'Invoice History Submenu'
,p_alias=>'INVOICE-HISTORY-SUBMENU'
,p_step_title=>'Invoice History Submenu'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#js/inv-hist-menu#MIN#.js'
,p_javascript_code_onload=>'mapKeys();'
,p_css_file_urls=>'#APP_FILES#css/menu#MIN#.css'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#menu-btns .row:nth-child(even) {',
'    height: 1rem',
'}'))
,p_step_template=>wwv_flow_imp.id(5671392681337017)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(42044690926140909)
,p_plug_name=>'Header'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="title-header">',
'Invoice History',
'</div>'))
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(42044739645140910)
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
 p_id=>wwv_flow_imp.id(83634761430705601)
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
 p_id=>wwv_flow_imp.id(24678985985705378)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(42044739645140910)
,p_button_name=>'INVOICE_HIST'
,p_button_static_id=>'inv-hist'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--noUI:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>I</u> - Invoice History'
,p_button_redirect_url=>'f?p=&APP_ID.:201:&SESSION.::&DEBUG.:201::'
,p_grid_new_row=>'Y'
,p_grid_column_span=>4
,p_grid_column=>5
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(24679796361705381)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(42044739645140910)
,p_button_name=>'INVOICE_HIST_ITEM'
,p_button_static_id=>'inv-hist-item'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--noUI:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>K</u> - Invoice History per Item'
,p_button_redirect_url=>'f?p=&APP_ID.:202:&SESSION.::&DEBUG.:202::'
,p_grid_new_row=>'Y'
,p_grid_column_span=>4
,p_grid_column=>5
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(24679335263705379)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(42044739645140910)
,p_button_name=>'INV_REPORTS'
,p_button_static_id=>'transfer-records'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--noUI:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>R</u> - Reports'
,p_button_redirect_url=>'f?p=&APP_ID.:50:&SESSION.::&DEBUG.:50:P50_PREVIOUS:300'
,p_grid_new_row=>'Y'
,p_grid_column_span=>4
,p_grid_column=>5
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(24680132429705381)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_imp.id(42044739645140910)
,p_button_name=>'EXIT'
,p_button_static_id=>'exit'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--noUI:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>Esc</u> - To Exit'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'Y'
,p_grid_column_span=>4
,p_grid_column=>5
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40337955058266330)
,p_name=>'P200_MURL'
,p_item_sequence=>40
,p_item_default=>'APEX_PAGE.GET_URL(p_page => 1)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44076189763240422)
,p_name=>'P200_PLACEHOLDER1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(42044739645140910)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_css_classes=>'placeholder'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44076324296240423)
,p_name=>'P200_PLACEHOLDER2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(42044739645140910)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_css_classes=>'placeholder'
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
