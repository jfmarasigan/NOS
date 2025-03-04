prompt --application/pages/page_00007
begin
--   Manifest
--     PAGE: 00007
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
 p_id=>7
,p_name=>'Inquire Vendor Details'
,p_alias=>'INQUIRE-VENDOR-DETAILS'
,p_page_mode=>'MODAL'
,p_step_title=>'Vendor Details'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function mapP7Keys(){',
'    $(document).on(''keydown.p7keyevents'', (ev) => {',
'        apex.navigation.dialog.close(true);',
'        $(document).off(''keydown.p7keyevents'');',
'    });',
'}',
''))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP7Keys();',
'$(".ui-dialog-titlebar-close").hide();'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#vendor-detail {',
'    background-color: white;',
'}',
'#vendor-detail label,',
'#vendor-detail .display_only {',
'    font-size: 1.125rem;',
'}',
'.t-Form-fieldContainer{',
'    display: flex;',
'    flex-direction: row;',
'    gap: 1.125rem;',
'    align-items: baseline;',
'}',
'#vendor-detail.t-Form-labelContainer{',
'    width: 10rem;',
'}',
'',
'.t-Dialog-body{',
'    background-color: #056AC8;',
'    padding-top: 0;',
'    padding-bottom: 0;',
'}',
'#foot{',
'    background-color: #056AC8;',
'    border: 0;',
'}',
'',
'.t-Form-labelContainer:has(> label) {',
'    text-align: start;    ',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'750'
,p_dialog_attributes=>'close: function() { customEvent(''customDialogClose'', {modalPageId: ''MODAL_CLOSE_FIXED''});} '
,p_dialog_css_classes=>'no-bg font-1rem inv-qby-w'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6689621790653714)
,p_plug_name=>'Vendor Details'
,p_region_name=>'vendor-detail'
,p_region_css_classes=>'details'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4265387714084060)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    V.VENDOR_ID,',
'    V.VENDOR_CODE,',
'    V.VENDOR_NAME,',
'    V.VENDOR_TYPE,',
'    V.CONTACT_PERSON,',
'    V.PHONE_NUMBER,',
'    V.FAX_NUMBER,',
'    V.EMAIL_ADDRESS1,',
'    V.PAYMENT_TERM,',
'    V.ACCOUNT_NUMBER,',
'    B.STREET || '', '' || B.CITY || '', '' || B.STATE || '', '' || B.ZIPCODE || '', '' || B.COUNTRY AS BILLING_ADDRESS,',
'    S.STREET || '', '' || S.CITY || '', '' || S.STATE || '', '' || S.ZIPCODE || '', '' || S.COUNTRY AS SHIPPING_ADDRESS',
'FROM NIT006 V, NIT009 B, NIT009 S',
'WHERE   V.VENDOR_ID = :P7_VENDOR_ID AND',
'        V.VENDOR_ID = B.VENDOR_ID AND ',
'        B.ADDRESS_TYPE_ID = 1 AND',
'        S.ADDRESS_TYPE_ID = 2 AND',
'        V.VENDOR_ID = S.VENDOR_ID'))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6693147861653749)
,p_plug_name=>'Footer'
,p_region_name=>'foot'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody:margin-top-none:margin-bottom-none'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>30
,p_location=>null
,p_plug_source=>'<h4 style="margin:0.4rem;text-align:center;color:white;font-size:1.125rem">Press any key to Exit</h3>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6689941564653717)
,p_name=>'P7_VENDOR_CODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(6689621790653714)
,p_item_source_plug_id=>wwv_flow_imp.id(6689621790653714)
,p_prompt=>'Vendor Code:'
,p_source=>'VENDOR_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--normalDisplay:#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6690002838653718)
,p_name=>'P7_VENDOR_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(6689621790653714)
,p_item_source_plug_id=>wwv_flow_imp.id(6689621790653714)
,p_prompt=>'Vendor Name:'
,p_source=>'VENDOR_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_css_classes=>'inquire-text'
,p_item_template_options=>'t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--normalDisplay:#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6690121305653719)
,p_name=>'P7_VENDOR_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(6689621790653714)
,p_item_source_plug_id=>wwv_flow_imp.id(6689621790653714)
,p_prompt=>'Vendor Type:'
,p_source=>'VENDOR_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_css_classes=>'inquire-text'
,p_item_template_options=>'t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--normalDisplay:#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6690272671653720)
,p_name=>'P7_CONTACT_PERSON'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(6689621790653714)
,p_item_source_plug_id=>wwv_flow_imp.id(6689621790653714)
,p_prompt=>'Contact Person:'
,p_source=>'CONTACT_PERSON'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_css_classes=>'inquire-text'
,p_item_template_options=>'t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--normalDisplay'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6690367887653721)
,p_name=>'P7_PHONE_NUMBER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(6689621790653714)
,p_item_source_plug_id=>wwv_flow_imp.id(6689621790653714)
,p_prompt=>'Phone Number:'
,p_source=>'PHONE_NUMBER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_css_classes=>'inquire-text'
,p_item_template_options=>'t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--normalDisplay:#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6690431457653722)
,p_name=>'P7_EMAIL_ADDRESS1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(6689621790653714)
,p_item_source_plug_id=>wwv_flow_imp.id(6689621790653714)
,p_prompt=>'Email Address:'
,p_source=>'EMAIL_ADDRESS1'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_css_classes=>'inquire-text'
,p_item_template_options=>'t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--normalDisplay:#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6690537537653723)
,p_name=>'P7_PAYMENT_TERM'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(6689621790653714)
,p_item_source_plug_id=>wwv_flow_imp.id(6689621790653714)
,p_prompt=>'Payment Term:'
,p_source=>'PAYMENT_TERM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_css_classes=>'inquire-text'
,p_item_template_options=>'t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--normalDisplay:#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6690622415653724)
,p_name=>'P7_BILLING_ADDRESS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(6689621790653714)
,p_item_source_plug_id=>wwv_flow_imp.id(6689621790653714)
,p_prompt=>'Billing Address:'
,p_source=>'BILLING_ADDRESS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_css_classes=>'inquire-text'
,p_item_template_options=>'t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--normalDisplay:#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6690715166653725)
,p_name=>'P7_SHIPPING_ADDRESS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(6689621790653714)
,p_item_source_plug_id=>wwv_flow_imp.id(6689621790653714)
,p_prompt=>'Shipping Address:'
,p_source=>'SHIPPING_ADDRESS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_css_classes=>'inquire-text'
,p_item_template_options=>'t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--normalDisplay:#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6693090252653748)
,p_name=>'P7_VENDOR_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(6689621790653714)
,p_item_source_plug_id=>wwv_flow_imp.id(6689621790653714)
,p_source=>'VENDOR_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39842126370908917)
,p_name=>'P7_FAX_NUMBER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(6689621790653714)
,p_item_source_plug_id=>wwv_flow_imp.id(6689621790653714)
,p_prompt=>'Fax Number:'
,p_source=>'FAX_NUMBER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_css_classes=>'inquire-text'
,p_item_template_options=>'t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--normalDisplay:#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65480334860001910)
,p_name=>'P7_ACCOUNT_NUMBER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(6689621790653714)
,p_item_source_plug_id=>wwv_flow_imp.id(6689621790653714)
,p_prompt=>'Account Number:'
,p_source=>'ACCOUNT_NUMBER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_css_classes=>'inquire-text'
,p_item_template_options=>'t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--normalDisplay:#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6689807310653716)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(6689621790653714)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Inquire Vendor Details'
,p_internal_uid=>6689807310653716
);
wwv_flow_imp.component_end;
end;
/
