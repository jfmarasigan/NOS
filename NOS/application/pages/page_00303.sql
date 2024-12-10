prompt --application/pages/page_00303
begin
--   Manifest
--     PAGE: 00303
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
 p_id=>303
,p_name=>'Accounts Payable Submenu'
,p_alias=>'ACCOUNTS-PAYABLE'
,p_step_title=>'Accounts Payable'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#js/acc-payable-menu#MIN#.js'
,p_javascript_code_onload=>'mapKeys();'
,p_css_file_urls=>'#APP_FILES#css/menu#MIN#.css'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#menu-btns .row {',
'    margin-block-end: 2rem;',
'}'))
,p_step_template=>wwv_flow_imp.id(5671392681337017)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(57282213452327573)
,p_plug_name=>'Header'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="title-header">',
'Accounts Payable',
'</div>'))
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(57282262171327574)
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
 p_id=>wwv_flow_imp.id(58957806970001566)
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
 p_id=>wwv_flow_imp.id(13312212654345262)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(57282262171327574)
,p_button_name=>'PAYABLE_ENTRY_UPDATE'
,p_button_static_id=>'payable-entry-update'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--noUI:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>P</u> - Payable Entry&sol;Update'
,p_button_execute_validations=>'N'
,p_grid_new_row=>'Y'
,p_grid_column_span=>4
,p_grid_column=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13312658163345262)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(57282262171327574)
,p_button_name=>'BOH_CHECKS_ENTRY_UPDATE'
,p_button_static_id=>'boh-checks-entry-update'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--noUI:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>C</u> - BOH Checks Entry&sol;Update'
,p_grid_new_row=>'N'
,p_grid_column_span=>4
,p_grid_column=>8
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12165229524578309)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(57282262171327574)
,p_button_name=>'FHB_CHECKS_ENTRY_UPDATE'
,p_button_static_id=>'fhb-checks-entry-update'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--noUI:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>H</u> - FHB Checks Entry&sol;Update'
,p_grid_new_row=>'Y'
,p_grid_column_span=>4
,p_grid_column=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12165074434578307)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(57282262171327574)
,p_button_name=>'INQUIRE_PAYMENTS'
,p_button_static_id=>'inquire-payments'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--noUI:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>A</u> - Inquire on Payments'
,p_grid_new_row=>'N'
,p_grid_column_span=>4
,p_grid_column=>8
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12164832882578305)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(57282262171327574)
,p_button_name=>'MC_CORP_PAYMENT_ENTRY_UPDATE'
,p_button_static_id=>'mc-corp-payment-entry-update'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--noUI:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>K</u> - MC Mastercard CORP Payment Entry/Update'
,p_grid_new_row=>'Y'
,p_grid_column_span=>4
,p_grid_column=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12165306084578310)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(57282262171327574)
,p_button_name=>'MP_AYS_PAYMENT_ENTRY_UPDATE'
,p_button_static_id=>'mp-ays-payment-entry-update'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--noUI:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>I</u> - MP Mastercard AYS Payment Entry/Update'
,p_grid_new_row=>'Y'
,p_grid_column_span=>4
,p_grid_column=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13313077072345264)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(57282262171327574)
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
 p_id=>wwv_flow_imp.id(15655583253560917)
,p_name=>'P303_MURL'
,p_item_sequence=>40
,p_item_default=>'APEX_PAGE.GET_URL(p_page => 1)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp.component_end;
end;
/
