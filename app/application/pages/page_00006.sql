prompt --application/pages/page_00006
begin
--   Manifest
--     PAGE: 00006
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
 p_id=>6
,p_name=>'Add Vendor'
,p_alias=>'ADD-VENDOR'
,p_step_title=>'Add/Update  Vendor'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#js/cmn#MIN#.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p6KeyMapUpdate = {',
'    escape : (v) => {',
'        $("#to-page5").trigger("click");',
'    },',
'    enter : (v) => {',
'        $("#enter").trigger("click");',
'    }',
'}',
'',
'function mapP6KeysUpdate() {',
'    $(document).off(''keydown.p5keyevents'');',
'    $(document).on(''keydown.p5keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p6KeyMapUpdate[key]) {',
'            ev.preventDefault();',
'            p6KeyMapUpdate[key]();',
'        }',
'    });',
'}',
'',
'const p6KeyMap = {',
'    escape : (v) => {',
'        $("#to-page5").trigger("click");',
'    }',
'}',
'',
'function mapP6Keys() {',
'    $(document).off(''keydown.p5keyevents'');',
'    $(document).on(''keydown.p5keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p6KeyMap[key]) {',
'            ev.preventDefault();',
'            p6KeyMap[key]();',
'        }',
'    });',
'}',
'',
'// $("#P6_PHONE_NUMBER, #P6_FAX_NUMBER")',
'//     .keypress(function(e){',
'//         if(',
'//             e.key == "1" || e.key == "2" ||',
'//             e.key == "3" || e.key == "4" ||',
'//             e.key == "5" || e.key == "6" ||',
'//             e.key == "7" || e.key == "8" ||',
'//             e.key == "9" || e.key == "0" ||',
'//             e.key == "-" || e.key == "+"',
'//         ){',
'//             return true;',
'//         } else {',
'//             return false;',
'//         }',
'// });',
'',
'$("#P6_VENDOR_CODE").on("focus", function () {',
'   $(this).select();',
'});'))
,p_javascript_code_onload=>'$x(''P6_VENDOR_CODE'').focus();'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Header .t-Header-branding {',
'    background-color: white !important;',
'    color: rgb(30, 58, 138) !important;',
'}',
'',
'body {',
'    background-color: rgb(30, 58, 138);',
'}',
'',
'#vendor-form{',
'    background-color: rgb(30, 58, 138);',
'}',
'',
'#main-details, #billing-address, #shipping-address {',
'    background-color: white;',
'}',
'#main-details label, #billing-address label, #shipping-address label,',
'#main-details input, #billing-address input, #shipping-address input {',
'    font-size: 1.125rem;',
'}',
'',
'input#P6_PHONE_NUMBER, input#P6_ZIPCODE, input#P6_ZIPCODE_1 {',
'    text-align: right;',
'}',
'',
'.sub-header {',
'    margin: 0;',
'    font-size: 1.5rem;',
'    font-weight: 500;',
'}',
'',
'#to-page5, #enter {',
'    display: none;',
'}',
'',
'.t-Form-labelContainer .t-Form-label::before {',
'    content: '''' !important;',
'}',
'',
'.t-Form-error, .a-Form-error{',
'    font-weight: bold;',
'}',
'',
'.text_field {',
'    background-color: white;',
'}'))
,p_step_template=>wwv_flow_imp.id(5671392681337017)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6094144472115764)
,p_plug_name=>'Add New Vendor'
,p_region_name=>'vendor-form'
,p_plug_display_sequence=>50
,p_query_type=>'TABLE'
,p_query_table=>'NIT006'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6044470541733020)
,p_plug_name=>'Billing Address'
,p_region_name=>'billing-address'
,p_parent_plug_id=>wwv_flow_imp.id(6094144472115764)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>140
,p_query_type=>'TABLE'
,p_query_table=>'NIT009'
,p_include_rowid_column=>false
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6045093175733026)
,p_plug_name=>'Billing Header'
,p_parent_plug_id=>wwv_flow_imp.id(6044470541733020)
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h3 class="sub-header">',
'    Billing Address',
'    <span style="color:red">*</span>',
'</h3>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6047442005733050)
,p_plug_name=>'Shipping Address'
,p_region_name=>'shipping-address'
,p_parent_plug_id=>wwv_flow_imp.id(6094144472115764)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>160
,p_query_type=>'TABLE'
,p_query_table=>'NIT009'
,p_include_rowid_column=>false
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6476221494850401)
,p_plug_name=>'Shipping Header'
,p_parent_plug_id=>wwv_flow_imp.id(6047442005733050)
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h3 class="sub-header">',
'    Shipping Address',
'    <span style="color:red">*</span>',
'</h3>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18080797994113212)
,p_plug_name=>'Main Details'
,p_region_name=>'main-details'
,p_parent_plug_id=>wwv_flow_imp.id(6094144472115764)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>10
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(58834511915496504)
,p_plug_name=>'Col1'
,p_parent_plug_id=>wwv_flow_imp.id(18080797994113212)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>4
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(58834654380496505)
,p_plug_name=>'Col2'
,p_parent_plug_id=>wwv_flow_imp.id(18080797994113212)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>4
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(58834764915496506)
,p_plug_name=>'Col3'
,p_parent_plug_id=>wwv_flow_imp.id(18080797994113212)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>4
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7711191504207204)
,p_plug_name=>'Button'
,p_plug_display_sequence=>60
,p_plug_grid_column_span=>10
,p_plug_display_column=>2
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7711236360207205)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(7711191504207204)
,p_button_name=>'To_Exit'
,p_button_static_id=>'to-page5'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>Esc</u> - To Exit'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::P5_SEARCH_CODE,P5_SEARCH_NAME,P5_SELECTED_VAL_PREV:&P6_SEARCH_CODE_PREV.,&P6_SEARCH_NAME_PREV.,&P6_SELECTED_VAL_PREV.'
,p_button_css_classes=>'btns'
,p_grid_new_row=>'Y'
,p_grid_column_span=>3
,p_grid_column=>10
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(52042052621047035)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(7711191504207204)
,p_button_name=>'Enter'
,p_button_static_id=>'enter'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'-'
,p_button_condition=>'P6_VENDOR_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_row=>'Y'
,p_grid_column_span=>3
,p_grid_column=>10
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(48020805967143030)
,p_branch_name=>'Go To Page 5 Add'
,p_branch_action=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::P5_ADD_POPUP,P5_SEARCH_CODE,P5_SEARCH_NAME:&P6_VENDOR_CODE.,&P6_SEARCH_CODE_PREV.,&P6_SEARCH_NAME_PREV.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'ITEM_IS_NULL'
,p_branch_condition=>'P6_VENDOR_ID'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(6104632251115793)
,p_branch_name=>'Go To Page 5 Update'
,p_branch_action=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::P5_UPDATE_POPUP,P5_SEARCH_CODE,P5_SEARCH_NAME,P5_SELECTED_VAL_PREV:&P6_VENDOR_CODE.,&P6_SEARCH_CODE_PREV.,&P6_SEARCH_NAME_PREV.,&P6_SELECTED_VAL_PREV.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>20
,p_branch_condition_type=>'ITEM_IS_NOT_NULL'
,p_branch_condition=>'P6_VENDOR_ID'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6044553723733021)
,p_name=>'P6_STREET'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(6044470541733020)
,p_item_source_plug_id=>wwv_flow_imp.id(6044470541733020)
,p_prompt=>'Street <span style="color:red">*</span>'
,p_source=>'STREET'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_colspan=>8
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6044697073733022)
,p_name=>'P6_STATE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(6044470541733020)
,p_item_source_plug_id=>wwv_flow_imp.id(6044470541733020)
,p_prompt=>'State <span style="color:red">*</span>'
,p_source=>'STATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>20
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6044794484733023)
,p_name=>'P6_ZIPCODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(6044470541733020)
,p_item_source_plug_id=>wwv_flow_imp.id(6044470541733020)
,p_prompt=>'ZipCode <span style="color:red">*</span>'
,p_source=>'ZIPCODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>5
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6044898791733024)
,p_name=>'P6_CITY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(6044470541733020)
,p_item_source_plug_id=>wwv_flow_imp.id(6044470541733020)
,p_prompt=>'City <span style="color:red">*</span>'
,p_source=>'CITY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6044969971733025)
,p_name=>'P6_COUNTRY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(6044470541733020)
,p_item_source_plug_id=>wwv_flow_imp.id(6044470541733020)
,p_prompt=>'Country <span style="color:red">*</span>'
,p_source=>'COUNTRY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6045187305733027)
,p_name=>'P6_STREET_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(6047442005733050)
,p_item_source_plug_id=>wwv_flow_imp.id(6047442005733050)
,p_prompt=>'Street <span style="color:red">*</span>'
,p_source=>'STREET'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_cMaxlength=>50
,p_colspan=>8
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6045227113733028)
,p_name=>'P6_STATE_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(6047442005733050)
,p_item_source_plug_id=>wwv_flow_imp.id(6047442005733050)
,p_prompt=>'State <span style="color:red">*</span>'
,p_source=>'STATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>20
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6045350211733029)
,p_name=>'P6_ZIPCODE_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(6047442005733050)
,p_item_source_plug_id=>wwv_flow_imp.id(6047442005733050)
,p_prompt=>'ZipCode <span style="color:red">*</span>'
,p_source=>'ZIPCODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>5
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6045493416733030)
,p_name=>'P6_CITY_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(6047442005733050)
,p_item_source_plug_id=>wwv_flow_imp.id(6047442005733050)
,p_prompt=>'City <span style="color:red">*</span>'
,p_source=>'CITY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6045695477733032)
,p_name=>'P6_COUNTRY_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(6047442005733050)
,p_item_source_plug_id=>wwv_flow_imp.id(6047442005733050)
,p_prompt=>'Country <span style="color:red">*</span>'
,p_source=>'COUNTRY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6094594440115767)
,p_name=>'P6_VENDOR_CODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(58834511915496504)
,p_item_source_plug_id=>wwv_flow_imp.id(6094144472115764)
,p_prompt=>'Vendor Code <span style="color:red">*</span>'
,p_source=>'VENDOR_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>3
,p_colspan=>6
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
,p_attribute_06=>'UPPER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6094988156115773)
,p_name=>'P6_VENDOR_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(58834654380496505)
,p_item_source_plug_id=>wwv_flow_imp.id(6094144472115764)
,p_prompt=>'Vendor Name <span style="color:red">*</span>'
,p_source=>'VENDOR_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6095351815115776)
,p_name=>'P6_CONTACT_PERSON'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(58834764915496506)
,p_item_source_plug_id=>wwv_flow_imp.id(6094144472115764)
,p_prompt=>'Contact Person <span style="color:red">*</span>'
,p_source=>'CONTACT_PERSON'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6095758071115778)
,p_name=>'P6_PHONE_NUMBER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(58834511915496504)
,p_item_source_plug_id=>wwv_flow_imp.id(6094144472115764)
,p_prompt=>'Phone Number <span style="color:red">*</span>'
,p_source=>'PHONE_NUMBER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6096132786115779)
,p_name=>'P6_PAYMENT_TERM'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(58834511915496504)
,p_item_source_plug_id=>wwv_flow_imp.id(6094144472115764)
,p_prompt=>'Payment Term <span style="color:red">*</span>'
,p_source=>'PAYMENT_TERM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>10
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6098198495115782)
,p_name=>'P6_EMAIL_ADDRESS1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(58834511915496504)
,p_item_source_plug_id=>wwv_flow_imp.id(6094144472115764)
,p_prompt=>'Email Address 1 <span style="color:red">*</span>'
,p_source=>'EMAIL_ADDRESS1'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6098558197115784)
,p_name=>'P6_EMAIL_ADDRESS2'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(58834654380496505)
,p_item_source_plug_id=>wwv_flow_imp.id(6094144472115764)
,p_prompt=>'Email Address 2'
,p_source=>'EMAIL_ADDRESS2'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6098955051115784)
,p_name=>'P6_VENDOR_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(58834654380496505)
,p_item_source_plug_id=>wwv_flow_imp.id(6094144472115764)
,p_prompt=>'Vendor Type <span style="color:red">*</span>'
,p_source=>'VENDOR_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>1
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
,p_attribute_06=>'UPPER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6477545410850414)
,p_name=>'P6_VENDOR_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(6094144472115764)
,p_item_source_plug_id=>wwv_flow_imp.id(6094144472115764)
,p_source=>'VENDOR_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6477628388850415)
,p_name=>'P6_VENDOR_CODE_INITIAL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(6094144472115764)
,p_item_source_plug_id=>wwv_flow_imp.id(6094144472115764)
,p_source=>'VENDOR_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6477876687850417)
,p_name=>'P6_VENDOR_ID_BILLING'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(6044470541733020)
,p_item_source_plug_id=>wwv_flow_imp.id(6044470541733020)
,p_source=>'VENDOR_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6477932699850418)
,p_name=>'P6_ADDRESS_TYPE_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(6044470541733020)
,p_item_source_plug_id=>wwv_flow_imp.id(6044470541733020)
,p_source=>'ADDRESS_TYPE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6479096713850429)
,p_name=>'P6_VENDOR_ID_SHIPPING_1'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(6047442005733050)
,p_item_source_plug_id=>wwv_flow_imp.id(6047442005733050)
,p_source=>'VENDOR_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6479127989850430)
,p_name=>'P6_ADDRESS_TYPE_ID_1'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(6047442005733050)
,p_item_source_plug_id=>wwv_flow_imp.id(6047442005733050)
,p_source=>'ADDRESS_TYPE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39841975746908915)
,p_name=>'P6_FAX_NUMBER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(58834654380496505)
,p_item_source_plug_id=>wwv_flow_imp.id(6094144472115764)
,p_prompt=>'Fax Number'
,p_source=>'FAX_NUMBER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>20
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48019635662143018)
,p_name=>'P6_SELECTED_VAL_PREV'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48019741554143019)
,p_name=>'P6_SEARCH_CODE_PREV'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48019886577143020)
,p_name=>'P6_SEARCH_NAME_PREV'
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65479996993001906)
,p_name=>'P6_ACCOUNT_NUMBER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(58834764915496506)
,p_item_source_plug_id=>wwv_flow_imp.id(6094144472115764)
,p_prompt=>'Account Number <span style="color:red">*</span>'
,p_source=>'ACCOUNT_NUMBER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>15
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65480041406001907)
,p_name=>'P6_SPACE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(58834764915496506)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65480111030001908)
,p_name=>'P6_SPACE_1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(58834764915496506)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:margin-bottom-md'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(6476463414850403)
,p_validation_name=>'Valid Vendor Type'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1 ',
'FROM DUAL',
'WHERE   :P6_VENDOR_TYPE = ''R'' OR',
'        :P6_VENDOR_TYPE = ''S'' OR',
'        :P6_VENDOR_TYPE = ''r'' OR',
'        :P6_VENDOR_TYPE = ''s'''))
,p_validation_type=>'EXISTS'
,p_error_message=>'Vendor type should either be ''R'' or ''S''.'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_imp.id(6098955051115784)
,p_error_display_location=>'INLINE_WITH_FIELD'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(6476566252850404)
,p_validation_name=>'Valid Email Address1'
,p_validation_sequence=>20
,p_validation=>'P6_EMAIL_ADDRESS1'
,p_validation2=>unistr('^[a-zA-Z0-9_.\00B1]+@[a-zA-Z0-9-]+\005C.[a-zA-Z0-9-.]+$')
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>'Email must be Valid Ex. Example@email.com'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_imp.id(6098198495115782)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(6476737567850406)
,p_validation_name=>'Valid Email Address2'
,p_validation_sequence=>30
,p_validation=>'P6_EMAIL_ADDRESS2'
,p_validation2=>unistr('^[a-zA-Z0-9_.\00B1]+@[a-zA-Z0-9-]+\005C.[a-zA-Z0-9-.]+$')
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>'Email must be Valid Ex. Example@email.com'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_imp.id(6098558197115784)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(6477465382850413)
,p_validation_name=>'Unique Vendor Code Add'
,p_validation_sequence=>40
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM NIT006',
'WHERE VENDOR_CODE = :P6_VENDOR_CODE'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'Vendor Code already exists.'
,p_always_execute=>'Y'
,p_validation_condition=>'P6_VENDOR_ID'
,p_validation_condition_type=>'ITEM_IS_NULL'
,p_associated_item=>wwv_flow_imp.id(6094594440115767)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(6480320931850442)
,p_validation_name=>'Unique Vendor Code Update'
,p_validation_sequence=>50
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_vendor_code_existing NUMBER;',
'BEGIN',
'    IF :P6_VENDOR_CODE_INITIAL = :P6_VENDOR_CODE THEN',
'        RETURN TRUE;',
'    END IF;',
'    SELECT DISTINCT COUNT(1)',
'        INTO l_vendor_code_existing',
'        FROM NIT006',
'        WHERE VENDOR_CODE = :P6_VENDOR_CODE AND VENDOR_CODE != :P6_VENDOR_CODE_INITIAL;',
'    IF l_vendor_code_existing <=0 THEN',
'        RETURN TRUE;',
'    ELSE',
'        RETURN FALSE;',
'    END IF;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Vendor Code already exists.'
,p_always_execute=>'Y'
,p_validation_condition=>'P6_VENDOR_ID'
,p_validation_condition_type=>'ITEM_IS_NOT_NULL'
,p_associated_item=>wwv_flow_imp.id(6094594440115767)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(7713879645207231)
,p_validation_name=>'Empty Vendor ID'
,p_validation_sequence=>60
,p_validation=>'P6_VENDOR_CODE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Must have some value.'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_imp.id(6094594440115767)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(7714348865207236)
,p_validation_name=>'Empty Vendor Name'
,p_validation_sequence=>70
,p_validation=>'P6_VENDOR_NAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Must have some value.'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_imp.id(6094988156115773)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(7714507348207238)
,p_validation_name=>'Empty Contact Person'
,p_validation_sequence=>80
,p_validation=>'P6_CONTACT_PERSON'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Must have some value.'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_imp.id(6095351815115776)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(7714665319207239)
,p_validation_name=>'Empty Phone Number'
,p_validation_sequence=>90
,p_validation=>'P6_PHONE_NUMBER'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Must have some value.'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_imp.id(6095758071115778)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(7714720579207240)
,p_validation_name=>'Empty Email Address 1'
,p_validation_sequence=>100
,p_validation=>'P6_EMAIL_ADDRESS1'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Must have some value.'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_imp.id(6098198495115782)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(7714831697207241)
,p_validation_name=>'Empty Payment Term'
,p_validation_sequence=>110
,p_validation=>'P6_PAYMENT_TERM'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Must have some value.'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_imp.id(6096132786115779)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(7714942347207242)
,p_validation_name=>'Empty Vendor Type'
,p_validation_sequence=>120
,p_validation=>'P6_VENDOR_TYPE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Must have some value.'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_imp.id(6098955051115784)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(7715007701207243)
,p_validation_name=>'Empty Billing Street'
,p_validation_sequence=>130
,p_validation=>'P6_STREET'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Must have some value.'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_imp.id(6044553723733021)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(7715123365207244)
,p_validation_name=>'Empty Billing State'
,p_validation_sequence=>140
,p_validation=>'P6_STATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Must have some value.'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_imp.id(6044697073733022)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(7715241162207245)
,p_validation_name=>'Empty Billing Zipcode'
,p_validation_sequence=>150
,p_validation=>'P6_ZIPCODE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Must have some value.'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_imp.id(6044794484733023)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(7715326264207246)
,p_validation_name=>'Empty Billing City'
,p_validation_sequence=>160
,p_validation=>'P6_CITY'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Must have some value.'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_imp.id(6044898791733024)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(7715428983207247)
,p_validation_name=>'Empty Billing Country'
,p_validation_sequence=>170
,p_validation=>'P6_COUNTRY'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Must have some value.'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_imp.id(6044969971733025)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(7715517292207248)
,p_validation_name=>'Empty Shipping Street'
,p_validation_sequence=>180
,p_validation=>'P6_STREET_1'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Must have some value.'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_imp.id(6045187305733027)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(7715636514207249)
,p_validation_name=>'Empty Shipping State'
,p_validation_sequence=>190
,p_validation=>'P6_STATE_1'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Must have some value.'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_imp.id(6045227113733028)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(7715758418207250)
,p_validation_name=>'Empty Shipping Zipcode'
,p_validation_sequence=>200
,p_validation=>'P6_ZIPCODE_1'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Must have some value.'
,p_associated_item=>wwv_flow_imp.id(6045350211733029)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(8966771708281301)
,p_validation_name=>'Empty Shipping City'
,p_validation_sequence=>210
,p_validation=>'P6_CITY_1'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Must have some value.'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_imp.id(6045493416733030)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(8966808330281302)
,p_validation_name=>'Empty Shipping Country'
,p_validation_sequence=>220
,p_validation=>'P6_COUNTRY_1'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Must have some value.'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_imp.id(6045695477733032)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(65480283867001909)
,p_validation_name=>'Empty Account Number'
,p_validation_sequence=>230
,p_validation=>'P6_ACCOUNT_NUMBER'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Must have some value.'
,p_associated_item=>wwv_flow_imp.id(65479996993001906)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18081607619113221)
,p_name=>'Add'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'ITEM_IS_NULL'
,p_display_when_cond=>'P6_VENDOR_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18081762381113222)
,p_event_id=>wwv_flow_imp.id(18081607619113221)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP6Keys();',
'setTitle("Add New Vendor");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18081827582113223)
,p_name=>'Update'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P6_VENDOR_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18081985264113224)
,p_event_id=>wwv_flow_imp.id(18081827582113223)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP6KeysUpdate();',
'setTitle("Update Vendor");'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6105519823115798)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Process form Add Vendor'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_vendor_id NIT006.VENDOR_ID%type;',
'BEGIN',
'    INSERT INTO NIT006(   ',
'            VENDOR_CODE,',
'            VENDOR_NAME, ',
'            CONTACT_PERSON,',
'            PHONE_NUMBER,',
'            FAX_NUMBER,',
'            EMAIL_ADDRESS1, ',
'            EMAIL_ADDRESS2, ',
'            PAYMENT_TERM, ',
'            VENDOR_TYPE,',
'            ACCOUNT_NUMBER,',
'            CREATE_USER, ',
'            CREATE_DATE',
'        )',
'        VALUES (',
'            :P6_VENDOR_CODE, ',
'            :P6_VENDOR_NAME, ',
'            :P6_CONTACT_PERSON, ',
'            :P6_PHONE_NUMBER,',
'            :P6_FAX_NUMBER,',
'            :P6_EMAIL_ADDRESS1, ',
'            :P6_EMAIL_ADDRESS2, ',
'            :P6_PAYMENT_TERM, ',
'            :P6_VENDOR_TYPE, ',
'            :P6_ACCOUNT_NUMBER,',
'            v(''APP_USER''),',
'            SYSDATE',
'        )',
'        RETURNING VENDOR_ID INTO l_vendor_id;',
'    ',
'    INSERT INTO NIT009(',
'            VENDOR_ID,',
'            ADDRESS_TYPE_ID,',
'            STREET,',
'            CITY,',
'            STATE,',
'            ZIPCODE,',
'            COUNTRY,',
'            CREATE_USER,',
'            CREATE_DATE',
'        )',
'        VALUES(',
'            l_vendor_id,',
'            1,',
'            :P6_STREET,',
'            :P6_CITY,',
'            :P6_STATE,',
'            :P6_ZIPCODE,',
'            :P6_COUNTRY,',
'            v(''APP_USER''),',
'            SYSDATE',
'        );',
'',
'    INSERT INTO NIT009(',
'            VENDOR_ID,',
'            ADDRESS_TYPE_ID,',
'            STREET,',
'            CITY,',
'            STATE,',
'            ZIPCODE,',
'            COUNTRY,',
'            CREATE_USER,',
'            CREATE_DATE',
'        )',
'        VALUES(',
'            l_vendor_id,',
'            2,',
'            :P6_STREET_1,',
'            :P6_CITY_1,',
'            :P6_STATE_1,',
'            :P6_ZIPCODE_1,',
'            :P6_COUNTRY_1,',
'            v(''APP_USER''),',
'            SYSDATE',
'        );',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Something went wrong, please try again.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P6_VENDOR_ID'
,p_process_when_type=>'ITEM_IS_NULL'
,p_process_success_message=>'Vendor Added Successfully.'
,p_internal_uid=>6105519823115798
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6476923429850408)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Process form Update Vendor'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'BEGIN',
'UPDATE NIT006',
'    SET VENDOR_CODE = :P6_VENDOR_CODE,',
'        VENDOR_NAME = :P6_VENDOR_NAME,',
'        CONTACT_PERSON = :P6_CONTACT_PERSON,',
'        PHONE_NUMBER = :P6_PHONE_NUMBER,',
'        FAX_NUMBER = :P6_FAX_NUMBER,',
'        EMAIL_ADDRESS1 = :P6_EMAIL_ADDRESS1,',
'        EMAIL_ADDRESS2 = :P6_EMAIL_ADDRESS2,',
'        PAYMENT_TERM = :P6_PAYMENT_TERM,',
'        VENDOR_TYPE = UPPER(:P6_VENDOR_TYPE),',
'        ACCOUNT_NUMBER = :P6_ACCOUNT_NUMBER,',
'        UPDATE_USER = v(''APP_USER''),',
'        UPDATE_DATE = SYSDATE',
'    WHERE VENDOR_ID = :P6_VENDOR_ID;',
'UPDATE NIT009',
'    SET',
'        STREET = :P6_STREET,',
'        CITY = :P6_CITY,',
'        STATE = :P6_STATE,',
'        ZIPCODE = :P6_ZIPCODE,',
'        COUNTRY = :P6_COUNTRY,',
'        UPDATE_USER = v(''APP_USER''),',
'        UPDATE_DATE = SYSDATE',
'    WHERE   VENDOR_ID = :P6_VENDOR_ID AND',
'            ADDRESS_TYPE_ID = 1;',
'UPDATE NIT009',
'    SET',
'        STREET = :P6_STREET_1,',
'        CITY = :P6_CITY_1,',
'        STATE = :P6_STATE_1,',
'        ZIPCODE = :P6_ZIPCODE_1,',
'        COUNTRY = :P6_COUNTRY_1,',
'        UPDATE_USER = v(''APP_USER''),',
'        UPDATE_DATE = SYSDATE',
'    WHERE   VENDOR_ID = :P6_VENDOR_ID AND',
'            ADDRESS_TYPE_ID = 2;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Something went wrong, please try again.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P6_VENDOR_ID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_process_success_message=>'Vendor Updated Successfully'
,p_internal_uid=>6476923429850408
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6105179143115798)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(6094144472115764)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Add Vendor'
,p_internal_uid=>6105179143115798
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6477791633850416)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(6044470541733020)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Billing Address'
,p_internal_uid=>6477791633850416
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6478907753850428)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(6047442005733050)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Shipping Address'
,p_internal_uid=>6478907753850428
);
wwv_flow_imp.component_end;
end;
/
