prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
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
 p_id=>1
,p_name=>'Main Menu'
,p_alias=>'HOME'
,p_step_title=>'Home'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#js/main-menu#MIN#.js'
,p_javascript_code_onload=>'mapKeys();'
,p_css_file_urls=>'#APP_FILES#css/menu#MIN#.css'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Header .t-Header-branding {',
'    background-color: white !important;',
'    color: rgb(30, 58, 138) !important;',
'}',
' ',
'body {',
'    background-color: rgb(30, 58, 138);',
'}',
'',
'.main-menu-header {',
'    margin-top: none;',
'    margin-block-start: 2rem;',
'}',
'',
'.menu-instruction {',
'    margin-block-start: 3rem;',
'}',
'',
'#menu-btns .row:nth-child(even) {',
'    height: 1rem',
'}'))
,p_step_template=>wwv_flow_imp.id(5671392681337017)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5662407718316303)
,p_plug_name=>'Header'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!-- <div class="title-header main-menu-header">',
'Main Menu',
'</div> -->'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5662537095316304)
,p_plug_name=>'Buttons'
,p_region_name=>'menu-btns'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>10
,p_plug_display_column=>2
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19393928923535031)
,p_plug_name=>'Footer'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--textContent:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>30
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="menu-instruction">',
'Press the underlined letter to proceed',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26628200609248039)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5662537095316304)
,p_button_name=>'ORDER_ENTRY_INVOICING'
,p_button_static_id=>'order-entry-inv'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--noUI:t-Button--stretch:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>O</u> - Order Entry & Invoicing'
,p_button_redirect_url=>'f?p=&APP_ID.:305:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'Y'
,p_grid_column_span=>4
,p_grid_column=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5662771705316306)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(5662537095316304)
,p_button_name=>'PUR_TRANSACTIONS'
,p_button_static_id=>'pur-trans'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--noUI:t-Button--stretch:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>P</u> - Purchasing Transactions'
,p_button_redirect_url=>'f?p=&APP_ID.:302:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'N'
,p_grid_column_span=>4
,p_grid_column=>9
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31307766345578709)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(5662537095316304)
,p_button_name=>'GIFT_CERT_TRANSACTIONS'
,p_button_static_id=>'gc-trans'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--noUI:t-Button--stretch:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>G</u> - Gift Certificate Transactions'
,p_button_redirect_url=>'f?p=&APP_ID.:304:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'Y'
,p_grid_column_span=>4
,p_grid_column=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5662936635316308)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(5662537095316304)
,p_button_name=>'SHIP_TRANSACTIONS'
,p_button_static_id=>'ship-trans'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--noUI:t-Button--stretch:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>S</u> - Shipment Transactions'
,p_button_redirect_url=>'f?p=&APP_ID.:301:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'N'
,p_grid_column_span=>4
,p_grid_column=>9
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31307821245578710)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(5662537095316304)
,p_button_name=>'COLL_AND_OUTSTANDING'
,p_button_static_id=>'coll-outs'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--noUI:t-Button--stretch:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>C</u> - Collections &amp; Outstanding'
,p_button_redirect_url=>'f?p=&APP_ID.:306:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'Y'
,p_grid_column_span=>4
,p_grid_column=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5663399315316312)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(5662537095316304)
,p_button_name=>'ACCOUNTS_PAYABLE'
,p_button_static_id=>'acc-payable'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--noUI:t-Button--stretch:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>A</u> - Accounts Payable'
,p_button_redirect_url=>'f?p=&APP_ID.:303:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'N'
,p_grid_column_span=>4
,p_grid_column=>9
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5662847037316307)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(5662537095316304)
,p_button_name=>'INV_TRANSACTIONS'
,p_button_static_id=>'inv-trans'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--noUI:t-Button--stretch:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>V</u> - Inventory Transactions'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'Y'
,p_grid_column_span=>4
,p_grid_column=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5662610710316305)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(5662537095316304)
,p_button_name=>'MASTERFILE'
,p_button_static_id=>'masterfile'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--noUI:t-Button--stretch:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>M</u> - Masterfile Maintenance'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'N'
,p_grid_column_span=>4
,p_grid_column=>9
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5663198121316310)
,p_button_sequence=>140
,p_button_plug_id=>wwv_flow_imp.id(5662537095316304)
,p_button_name=>'WH_TRANSACTIONS'
,p_button_static_id=>'wh-trans'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--noUI:t-Button--stretch:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>W</u> - Warehouse Transactions'
,p_button_redirect_url=>'f?p=&APP_ID.:300:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'Y'
,p_grid_column_span=>4
,p_grid_column=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5663000717316309)
,p_button_sequence=>150
,p_button_plug_id=>wwv_flow_imp.id(5662537095316304)
,p_button_name=>'UTILITIES'
,p_button_static_id=>'settings'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--noUI:t-Button--stretch:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>U</u> - Utilities'
,p_button_redirect_url=>'f?p=&APP_ID.:222:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'N'
,p_grid_column_span=>4
,p_grid_column=>9
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5663289919316311)
,p_button_sequence=>160
,p_button_plug_id=>wwv_flow_imp.id(5662537095316304)
,p_button_name=>'REPORTS'
,p_button_static_id=>'reports'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--noUI:t-Button--stretch:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>R</u> - Reports'
,p_button_execute_validations=>'N'
,p_grid_new_row=>'Y'
,p_grid_column_span=>4
,p_grid_column=>2
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5663618433316315)
,p_button_sequence=>170
,p_button_plug_id=>wwv_flow_imp.id(5662537095316304)
,p_button_name=>'EXIT'
,p_button_static_id=>'exit'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--noUI:t-Button--stretch:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>Esc</u> - To Exit'
,p_button_redirect_url=>'&LOGOUT_URL.'
,p_button_execute_validations=>'N'
,p_grid_new_row=>'N'
,p_grid_column_span=>4
,p_grid_column=>9
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(5663554523316314)
,p_branch_name=>'Redirect to POS'
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'EXISTS'
,p_branch_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT null',
'  FROM NPM009',
' WHERE user_name = ''POS_USER'';'))
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(47183443699422141)
,p_branch_name=>'Redirect to Change Password'
,p_branch_action=>'f?p=&APP_ID.:221:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>20
,p_branch_condition_type=>'EXISTS'
,p_branch_condition=>'SELECT 1 FROM NPM009 WHERE USER_NAME = v(''APP_USER'') AND IS_PASSWORD_TEMPORARY = ''Y'''
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15654789205560909)
,p_name=>'LURL'
,p_item_sequence=>50
,p_item_default=>'&LOGOUT_URL.'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19393191484535023)
,p_name=>'P1_PLACEHOLDER1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(5662537095316304)
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
 p_id=>wwv_flow_imp.id(19393212886535024)
,p_name=>'P1_HEADER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5662407718316303)
,p_item_default=>'Main Menu'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>4
,p_grid_column=>5
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_css_classes=>'p-header'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19393489566535026)
,p_name=>'P1_PLACEHOLDER2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(5662537095316304)
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
 p_id=>wwv_flow_imp.id(19393594995535027)
,p_name=>'P1_PLACEHOLDER3'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(5662537095316304)
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
 p_id=>wwv_flow_imp.id(26628190761248038)
,p_name=>'P1_PLACEHOLDER4'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(5662537095316304)
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
 p_id=>wwv_flow_imp.id(39669868011745226)
,p_name=>'P_TEST111'
,p_item_sequence=>60
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
