prompt --application/pages/page_00105
begin
--   Manifest
--     PAGE: 00105
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
 p_id=>105
,p_name=>'Utilities'
,p_alias=>'UTILITIES1'
,p_step_title=>'Utilities'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#js/cmn#MIN#.js'
,p_javascript_code_onload=>'setTitle("Utilities");'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.btns {',
'    font-size: 1.125rem;',
'    color: white;',
'}',
'',
'.buttons-row {',
'    position: absolute;',
'    width: 98vw;',
'    bottom: 1.75rem;',
'}',
'',
'#esc {',
'    display: none;',
'}',
'.t-Header .t-Header-branding {',
'    background-color: white !important;',
'    color: rgb(30, 58, 138) !important;',
'}',
'',
'body {',
'    background-color: rgb(30, 58, 138);',
'}',
'',
'#module-and-type{',
'    background-color: white;',
'}',
'#module-and-type label, #module-and-type input {',
'    font-size: 1.125rem;',
'}'))
,p_step_template=>wwv_flow_imp.id(5671392681337017)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(30858901913955718)
,p_plug_name=>'Module and Type'
,p_region_name=>'module-and-type'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>20
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(30859232670955721)
,p_plug_name=>'Buttons'
,p_plug_display_sequence=>30
,p_plug_grid_row_css_classes=>'buttons-row'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(30859356891955722)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(30859232670955721)
,p_button_name=>'Proceed'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>F8</u> - Proceed'
,p_button_css_classes=>'btns'
,p_grid_new_row=>'Y'
,p_grid_column=>5
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30859013221955719)
,p_name=>'P105_MODULE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(30858901913955718)
,p_prompt=>'Module <span style="color:red">*</span>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'STATIC(,):ItemItemInventoryInventoryPurchase OrderPurchase OrderCustomerCustomerCollections and OutstandingCollections and OutstandingCashiering, Wholesale InvoicingCashiering, Wholesale InvoicingCashieringCashieringGift CertificateG'
||'ift CertificateAccounts PayableAccounts Payable'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_grid_column=>4
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30859193088955720)
,p_name=>'P105_TYPE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(30858901913955718)
,p_prompt=>'Type <span style="color:red">*</span>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'STATIC:Brand;Brand,SIC;SIC,Department;Department,Class;Class,UOM;UOM'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_grid_column=>4
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp.component_end;
end;
/
