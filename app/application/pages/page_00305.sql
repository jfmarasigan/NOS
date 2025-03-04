prompt --application/pages/page_00305
begin
--   Manifest
--     PAGE: 00305
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
 p_id=>305
,p_name=>'Order Entry and Invoicing'
,p_alias=>'ORDER-ENTRY-AND-INVOICING'
,p_step_title=>'Order Entry and Invoicing'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#js/order-entry-invoice#MIN#.js'
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
'    margin-block-start: 2.5rem;',
'}',
'',
'#menu-btns .row:nth-child(even) {',
'    height: 1.1rem',
'}',
'',
'.h2rem {',
'    height: 2rem;',
'}'))
,p_step_template=>wwv_flow_imp.id(5671392681337017)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(37507405730229229)
,p_plug_name=>'Header'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!-- <div class="title-header main-menu-header">',
'Order Entry &amp; Invoicing',
'</div> -->'))
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(37507535107229230)
,p_plug_name=>'Buttons'
,p_region_name=>'menu-btns'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
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
 p_id=>wwv_flow_imp.id(51238926935447957)
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
 p_id=>wwv_flow_imp.id(31850241185912981)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(37507535107229230)
,p_button_name=>'CASH_INVOICING'
,p_button_static_id=>'cash-invoicing'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--noUI:t-Button--stretch:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>C</u> - Cash Invoicing'
,p_button_redirect_url=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.:35::'
,p_grid_new_row=>'Y'
,p_grid_column_span=>4
,p_grid_column=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31847017603912976)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(37507535107229230)
,p_button_name=>'REFUND'
,p_button_static_id=>'refund'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--noUI:t-Button--stretch:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>X</u> - Refund'
,p_button_redirect_url=>'f?p=&APP_ID.:95:&SESSION.::&DEBUG.:95::'
,p_grid_new_row=>'N'
,p_grid_column_span=>4
,p_grid_column=>8
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31850671835912981)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(37507535107229230)
,p_button_name=>'CHARGE_COD_INVOICING'
,p_button_static_id=>'charge-cod-invoicing'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--noUI:t-Button--stretch:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>H</u> - Charge&#47;CoD Invoicing'
,p_button_redirect_url=>'f?p=&APP_ID.:55:&SESSION.::&DEBUG.:55::'
,p_grid_new_row=>'Y'
,p_grid_column_span=>4
,p_grid_column=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31847800893912978)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(37507535107229230)
,p_button_name=>'CREDIT_MEMO_CREATE_UPDATE'
,p_button_static_id=>'credit-memo'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--noUI:t-Button--stretch:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>M</u> - Credit Memo Create&#47;Update'
,p_button_redirect_url=>'f?p=&APP_ID.:124:&SESSION.::&DEBUG.:124:P124_PREVIOUS:305'
,p_grid_new_row=>'N'
,p_grid_column_span=>4
,p_grid_column=>8
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31851052986912981)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(37507535107229230)
,p_button_name=>'QUOTE_ENTRY_UPDATE'
,p_button_static_id=>'quote-entry-update'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--noUI:t-Button--stretch:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>Q</u> - Quote Entry&#47;Update'
,p_button_redirect_url=>'f?p=&APP_ID.:86:&SESSION.::&DEBUG.:86::'
,p_grid_new_row=>'Y'
,p_grid_column_span=>4
,p_grid_column=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31849411324912979)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(37507535107229230)
,p_button_name=>'CUSTOMER_ITEM_PURCHASE_HIST'
,p_button_static_id=>'pur-hist'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--noUI:t-Button--stretch:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>P</u> - Customer Item Purchase History'
,p_button_redirect_url=>'f?p=&APP_ID.:83:&SESSION.::&DEBUG.:::'
,p_button_condition=>'has_access(:APP_USER, 161, 201) = ''Y'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_grid_new_row=>'N'
,p_grid_column_span=>4
,p_grid_column=>8
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31847482567912978)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(37507535107229230)
,p_button_name=>'RESERVATIONS_ENTRY_UPDATE'
,p_button_static_id=>'reservations'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--noUI:t-Button--stretch:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>R</u> - Reservations Entry&#47;Update'
,p_button_redirect_url=>'f?p=&APP_ID.:370:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'Y'
,p_grid_column_span=>4
,p_grid_column=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31846677107912976)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_imp.id(37507535107229230)
,p_button_name=>'INQUIRE_VIEW_INV_DETAILS'
,p_button_static_id=>'inq-inv-dets'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--noUI:t-Button--stretch:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>D</u> - Inquire&#47;View Invoice Details'
,p_button_redirect_url=>'f?p=&APP_ID.:79:&SESSION.::&DEBUG.:79::'
,p_grid_new_row=>'N'
,p_grid_column_span=>4
,p_grid_column=>8
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(82158180878837105)
,p_button_sequence=>150
,p_button_plug_id=>wwv_flow_imp.id(37507535107229230)
,p_button_name=>'CLOSING_BALANCE'
,p_button_static_id=>'closing-balance'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--noUI:t-Button--stretch:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>F</u> - Closing Balance'
,p_button_redirect_url=>'f?p=&APP_ID.:65:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'Y'
,p_grid_column_span=>4
,p_grid_column=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31848201027912978)
,p_button_sequence=>160
,p_button_plug_id=>wwv_flow_imp.id(37507535107229230)
,p_button_name=>'INQ_VIEW_SUMM_INV'
,p_button_static_id=>'inq-sum-inv'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--noUI:t-Button--stretch:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>S</u> - Inquire&#47;View Summary of Invoices'
,p_button_redirect_url=>'f?p=&APP_ID.:78:&SESSION.::&DEBUG.:::'
,p_button_condition=>'has_access(:APP_USER, 9, 109) = ''Y'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_grid_new_row=>'N'
,p_grid_column_span=>4
,p_grid_column=>8
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(31853188219912998)
,p_branch_name=>'Redirect to POS'
,p_branch_action=>'f?p=&APP_ID.:305:&SESSION.::&DEBUG.:::'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'EXISTS'
,p_branch_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT null',
'  FROM NPM009',
' WHERE user_name = ''POS_USER'';'))
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47507540342473902)
,p_name=>'P305_MURL'
,p_item_sequence=>50
,p_item_default=>'APEX_PAGE.GET_URL(p_page => 1)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51239133139447995)
,p_name=>'P305_HEADER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(37507405730229229)
,p_item_default=>'Order Entry & Invoicing'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'h2rem'
,p_colspan=>6
,p_grid_column=>4
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_css_classes=>'p-header'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51244622189448005)
,p_name=>'P305_PLACEHOLDER1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(37507535107229230)
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
 p_id=>wwv_flow_imp.id(51244920271448008)
,p_name=>'P305_PLACEHOLDER2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(37507535107229230)
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51245025700448009)
,p_name=>'P305_PLACEHOLDER3'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(37507535107229230)
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
 p_id=>wwv_flow_imp.id(58479621466161020)
,p_name=>'P305_PLACEHOLDER4'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(37507535107229230)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp.component_end;
end;
/
