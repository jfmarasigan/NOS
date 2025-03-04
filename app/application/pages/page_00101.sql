prompt --application/pages/page_00101
begin
--   Manifest
--     PAGE: 00101
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
 p_id=>101
,p_name=>'Add/Update New Shipment'
,p_alias=>'ADD-UPDATE-NEW-SHIPMENT'
,p_step_title=>'&P101_LABEL!HTML. New Shipment'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APP_FILES#js/jquery-ui.min.js',
'#APP_FILES#js/shipment-add-update.min.js'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'initialize();',
''))
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APP_FILES#css/cmn#MIN#.css',
'#APP_FILES#css/jquery-ui.min.css',
'#APP_FILES#css/jquery-ui.structure.min.css',
'#APP_FILES#css/jquery-ui.theme.min.css',
'#APP_FILES#css/shipment-add-update.min.css'))
,p_step_template=>wwv_flow_imp.id(5671392681337017)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15061919372627930)
,p_plug_name=>'Basic Information'
,p_region_name=>'basic-info'
,p_region_css_classes=>'p101-section'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody:margin-bottom-none'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>10
,p_plug_display_column=>2
,p_location=>null
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15062059775627931)
,p_plug_name=>'Vessel Information'
,p_region_name=>'vessel-info'
,p_region_css_classes=>'p101-section'
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody:margin-bottom-none'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>40
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15062136902627932)
,p_plug_name=>'Cost Information'
,p_region_name=>'cost-info'
,p_region_css_classes=>'p101-section'
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>50
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17923110332262908)
,p_plug_name=>'Basic Information'
,p_region_name=>'basic-info'
,p_region_css_classes=>'p101-section'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody:margin-bottom-none'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>30
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(17924124089262918)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_imp.id(17923110332262908)
,p_button_name=>'ADD_VENDOR'
,p_button_static_id=>'add-vendor-btn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'F8 - Add Another Vendor'
,p_warn_on_unsaved_changes=>null
,p_button_cattributes=>'tabindex="-1"'
,p_grid_new_row=>'Y'
,p_grid_column=>11
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(17926020669262937)
,p_branch_name=>'Redirect to shipment line items'
,p_branch_action=>'f?p=&APP_ID.:102:&SESSION.::&DEBUG.:102:P102_SHIPMENT_ID,P102_LABEL:&P101_SHIPMENT_ID.,&P101_LABEL.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'REQUEST_IN_CONDITION'
,p_branch_condition=>'SUBMIT'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(63180410253478103)
,p_branch_name=>'Redirect to Listing'
,p_branch_action=>'f?p=&APP_ID.:100:&SESSION.::&DEBUG.:100::'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'EXPRESSION'
,p_branch_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- redirect if add / update (shipment id) and if no access',
'(:P101_SHIPMENT_ID IS NULL and has_access(:APP_USER, 23, 81) != ''Y'') or',
'(:P101_SHIPMENT_ID IS NOT NULL and has_access(:APP_USER, 23, 82) != ''Y'')'))
,p_branch_condition_text=>'PLSQL'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15062270149627933)
,p_name=>'P101_SHIPMENT_ID'
,p_item_sequence=>60
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_item_comment=>'PK for this shipment record'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15062320146627934)
,p_name=>'P101_LABEL'
,p_item_sequence=>70
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_item_comment=>'Label identifying if current task is Add or Update'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15062510938627936)
,p_name=>'P101_VENDOR_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(15061919372627930)
,p_prompt=>'Vendor Name'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT UPPER(vendor_name) d, vendor_id r',
'  FROM nit006'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>8
,p_grid_label_column_span=>3
,p_grid_column_css_classes=>'p101-label-align'
,p_field_template=>wwv_flow_imp.id(15621067564319309)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_plugin_init_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    };',
'    options.defaultGridOptions = {',
'        resizeColumns: false,',
'        columnSort: false,',
'        pagination : {',
'            scroll : true,',
'            loadMore : false',
'        }   ',
'    };',
'    return options;',
'}'))
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT vendor_name d, vendor_id r',
'  FROM nit006'))
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15062638859627937)
,p_name=>'P101_SHIPMENT_NO1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(15061919372627930)
,p_prompt=>'Shipment Number'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_column=>9
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(15621067564319309)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15062701637627938)
,p_name=>'P101_SHIPMENT_NO2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(15061919372627930)
,p_prompt=>'Shipment Number'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_grid_column=>12
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(15621067564319309)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15062801080627939)
,p_name=>'P101_REF_PO_NO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(15061919372627930)
,p_prompt=>'Reference PO Number'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>6
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(15621067564319309)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15062906932627940)
,p_name=>'P101_VENDOR_INV_NO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(15061919372627930)
,p_prompt=>'Vendor Invoice No'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>8
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(15621067564319309)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15063020499627941)
,p_name=>'P101_LETTER_OF_CREDIT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(15061919372627930)
,p_prompt=>'Letter of Credit'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>6
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15063178565627942)
,p_name=>'P101_VESSEL_NAME_BL1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(15062059775627931)
,p_prompt=>'Vessel Name <span style="color:red;"> * </span> and B/L No'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_tag_css_classes=>'required enterable'
,p_colspan=>9
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15063226190627943)
,p_name=>'P101_VESSEL_NAME_BL2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(15062059775627931)
,p_prompt=>'and'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>18
,p_tag_css_classes=>'enterable'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_column=>10
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15063302434627944)
,p_name=>'P101_BARGE_BL1'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(15062059775627931)
,p_prompt=>'Barge and B/L No'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>40
,p_tag_css_classes=>'enterable'
,p_colspan=>9
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15063461484627945)
,p_name=>'P101_BARGE_BL2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(15062059775627931)
,p_prompt=>'and'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>18
,p_tag_css_classes=>'enterable'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_column=>10
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15063544890627946)
,p_name=>'P101_CONTAINER_TYPE_NO1'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(15062059775627931)
,p_prompt=>'Container Type/No.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4
,p_tag_css_classes=>'enterable'
,p_colspan=>4
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15063678772627947)
,p_name=>'P101_CONTAINER_TYPE_NO2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(15062059775627931)
,p_prompt=>'and'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>12
,p_tag_css_classes=>'enterable'
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_grid_column=>5
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15063792923627948)
,p_name=>'P101_ORIGIN'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(15062059775627931)
,p_prompt=>'Origin'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>10
,p_tag_css_classes=>'enterable'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_column=>10
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15063850869627949)
,p_name=>'P101_ETD'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(15062059775627931)
,p_prompt=>'ETD - ETA - ATA'
,p_placeholder=>'MM/DD/YYYY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>10
,p_tag_css_classes=>'required date-fields enterable'
,p_grid_row_css_classes=>'shipment-dates'
,p_colspan=>4
,p_grid_label_column_span=>2
,p_grid_column_css_classes=>'etd'
,p_field_template=>wwv_flow_imp.id(15621067564319309)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15063917851627950)
,p_name=>'P101_ETA'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(15062059775627931)
,p_prompt=>'ETA'
,p_placeholder=>'MM/DD/YYYY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>10
,p_tag_css_classes=>'required date-fields enterable'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>1
,p_grid_column_css_classes=>'eta'
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15653953307560901)
,p_name=>'P101_ATA'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(15062059775627931)
,p_prompt=>'ATA'
,p_placeholder=>'MM/DD/YYYY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>10
,p_tag_css_classes=>'required date-fields enterable'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>1
,p_grid_column_css_classes=>'ata'
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15654059894560902)
,p_name=>'P101_FREIGHT_COST'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(15062136902627932)
,p_prompt=>'Freight Cost'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_tag_css_classes=>'cost-info-field enterable'
,p_colspan=>4
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_03=>'right'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15654182951560903)
,p_name=>'P101_INSURANCE_COST'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(15062136902627932)
,p_prompt=>'Insurance Cost'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_tag_css_classes=>'cost-info-field enterable'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_03=>'right'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15654203181560904)
,p_name=>'P101_HANDLING_COST'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(15062136902627932)
,p_prompt=>'Handling Cost'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_tag_css_classes=>'cost-info-field enterable'
,p_colspan=>4
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_03=>'right'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15654322444560905)
,p_name=>'P101_DUTIES_AND_TAXES'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(15062136902627932)
,p_prompt=>'Duties And Taxes'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_tag_css_classes=>'cost-info-field enterable'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_03=>'right'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15654477271560906)
,p_name=>'P101_MISC_EXPENSES'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(15062136902627932)
,p_prompt=>'Misc. Expenses'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_tag_css_classes=>'cost-info-field enterable'
,p_colspan=>4
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_03=>'right'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15654506007560907)
,p_name=>'P101_VENDOR_CREDITS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(15062136902627932)
,p_prompt=>'Vendor Credits'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_tag_css_classes=>'cost-info-field enterable'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_03=>'right'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15655721924560919)
,p_name=>'P101_SRURL'
,p_item_sequence=>80
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_PAGE.GET_URL(',
'    p_page => 100,',
'    p_items => ''P100_SEARCH,P100_SORT,P100_SELECTED_ID,P100_SMSG'',',
'    p_values => :P101_QSEARCH || '','' || :P101_QSORT || '','' || ',
'                CASE WHEN :P101_LABEL = ''Add'' THEN :P101_SELECTED_ID ELSE :P101_SHIPMENT_ID END || '','',',
'    p_clear_cache => ''100''',
')'))
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_item_comment=>'URL for when returning to main shipment screen'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17923213153262909)
,p_name=>'P101_SHIPMENT_YR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(17923110332262908)
,p_prompt=>'Shipment Number'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>4
,p_tag_css_classes=>'shipment-no'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(15621067564319309)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'center'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17923304320262910)
,p_name=>'P101_SHIPMENT_NO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(17923110332262908)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>3
,p_tag_css_classes=>'u-textCenter shipment-no'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(15621067564319309)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17923511280262912)
,p_name=>'P101_VENDOR1'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(17923110332262908)
,p_item_default=>'Vendor 1'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'vendor-no'
,p_grid_row_css_classes=>'vendors-input'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(4382138690084278)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17923620518262913)
,p_name=>'P101_VENDOR_NAME1'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(17923110332262908)
,p_prompt=>'Vendor Name <span class="p101-label-req">*</span>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'required vendor-name'
,p_tag_attributes=>'vendor-seq="1"'
,p_begin_on_new_line=>'N'
,p_grid_column_css_classes=>'no-pad-start'
,p_field_template=>wwv_flow_imp.id(4383087695084279)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--indicatorAsterisk'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17923768847262914)
,p_name=>'P101_VENDOR_REF_PO1'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(17923110332262908)
,p_prompt=>'Reference PO Number'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'fs-1125 vendor-ref-po enterable'
,p_tag_attributes=>'vendor-seq="1"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(4383087695084279)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17923832489262915)
,p_name=>'P101_VENDOR_INV_NO1'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(17923110332262908)
,p_prompt=>'Vendor Invoice Number <span class="p101-label-req">*</span>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>60
,p_tag_css_classes=>'fs-1125 required vendor-inv-no enterable'
,p_tag_attributes=>'vendor-seq="1"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(4383087695084279)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17924721311262924)
,p_name=>'P101_VENDOR_ID1'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(17923110332262908)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17924888983262925)
,p_name=>'P101_VENDOR_REF_PO_ID1'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(17923110332262908)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17925637624262933)
,p_name=>'P101_SVP1'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(17923110332262908)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42427405280064044)
,p_name=>'P101_QSORT'
,p_item_sequence=>90
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_item_comment=>'URL for when returning to main shipment screen'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42427596117064045)
,p_name=>'P101_QSEARCH'
,p_item_sequence=>100
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_item_comment=>'URL for when returning to main shipment screen'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47038198822224210)
,p_name=>'P101_SELECTED_ID'
,p_item_sequence=>110
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_item_comment=>'URL for when returning to main shipment screen'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47038544726224214)
,p_name=>'P101_UCHANGE'
,p_item_sequence=>120
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
,p_item_comment=>'URL for when returning to main shipment screen'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(15062405570627935)
,p_computation_sequence=>10
,p_computation_item=>'P101_LABEL'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'CASE WHEN :P101_SHIPMENT_ID IS NULL THEN ''Add'' ELSE ''Update'' END'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(17924398200262920)
,p_name=>'On vendor name change'
,p_event_sequence=>10
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'$(".vendor-name input")'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17924429912262921)
,p_event_id=>wwv_flow_imp.id(17924398200262920)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'console.log("changed");',
'console.log(this.triggeringElement);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(17924506095262922)
,p_name=>'Add Vendor row'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(17924124089262918)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17924694057262923)
,p_event_id=>wwv_flow_imp.id(17924506095262922)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'addNewVendor();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(17925464103262931)
,p_name=>'Load Vendors for update'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17925511088262932)
,p_event_id=>wwv_flow_imp.id(17925464103262931)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v("P101_SHIPMENT_ID") !== "") {',
'    getVendors();',
'} else {',
'    $("#P101_VENDOR_NAME1").focus();',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27344632004391832)
,p_name=>'On enter press'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P101_VENDOR_CREDITS'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.key?.toLowerCase() === "enter" && !isFormSubmitted && $v("P101_LABEL") === "Add"'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27344770395391833)
,p_event_id=>wwv_flow_imp.id(27344632004391832)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'document.querySelector("#P101_VENDOR_CREDITS").disabled = true;',
'if (validateFields()) {',
'    isFormSubmitted = true;',
'    submitForm();',
'} else {',
'    document.querySelector("#P101_VENDOR_CREDITS").disabled = false;',
'    document.querySelector("#P101_VENDOR_CREDITS").focus();',
'    isFormSubmitted = false;',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(55223754916124201)
,p_name=>'On enter press update'
,p_event_sequence=>60
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'input'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.key?.toLowerCase() === "enter" && !isFormSubmitted && $v("P101_LABEL") === "Update"'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(55223837191124202)
,p_event_id=>wwv_flow_imp.id(55223754916124201)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'document.querySelector("#P101_VENDOR_CREDITS").disabled = true;',
'if (validateFields()) {',
'    isFormSubmitted = true;',
'    submitForm();',
'} else {',
'    document.querySelector("#P101_VENDOR_CREDITS").disabled = false;',
'    document.querySelector("#P101_VENDOR_CREDITS").focus();',
'    isFormSubmitted = false;',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(59426419383201102)
,p_name=>'Validate cost info field input'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P101_FREIGHT_COST,P101_INSURANCE_COST,P101_HANDLING_COST,P101_DUTIES_AND_TAXES,P101_VENDOR_CREDITS,P101_MISC_EXPENSES'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59426505117201103)
,p_event_id=>wwv_flow_imp.id(59426419383201102)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const thisElem = this.triggeringElement;',
'const value = thisElem.value;',
'',
'if (value !== "" && !/^(\d*\.?\d{1,2}|\d{1,3}(,\d{3})*(\.\d{1,2})?)$/.test(value)) {',
'    thisElem.setCustomValidity("Please enter a valid amount");',
'    thisElem.reportValidity();',
'} else {',
'    thisElem.setCustomValidity("");',
'    thisElem.value = formatAmount(value.replace(",", ""));',
'}'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(17922705977262904)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Initialize Form'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'    v_shipment_no           number;',
'begin',
'    if :P101_SHIPMENT_ID is not null then',
'        select substr(shipment_number, 0, 4), substr(shipment_number, 6, 3),',
'               vessel_name, vessel_bl_no, barge, barge_bl_no, ',
'               container_type, container_no, origin,',
'               TO_CHAR(eta, ''MM/DD/YYYY''), ',
'               TO_CHAR(etd, ''MM/DD/YYYY''),',
'               TO_CHAR(ata, ''MM/DD/YYYY'')',
'          into :P101_SHIPMENT_YR, :P101_SHIPMENT_NO,',
'               :P101_VESSEL_NAME_BL1, :P101_VESSEL_NAME_BL2, :P101_BARGE_BL1, :P101_BARGE_BL2,',
'               :P101_CONTAINER_TYPE_NO1, :P101_CONTAINER_TYPE_NO2, :P101_ORIGIN,',
'               :P101_ETA,',
'               :P101_ETD,',
'               :P101_ATA',
'          from nit016',
'         where shipment_id = :P101_SHIPMENT_ID;',
'',
'        select TO_CHAR(freight_cost, ''999,999,999.90''), ',
'               TO_CHAR(insurance_cost, ''999,999,999.90''), ',
'               TO_CHAR(handling_cost, ''999,999,999.90''),',
'               TO_CHAR(duties_and_taxes, ''999,999,999.90''), ',
'               TO_CHAR(misc_expenses, ''999,999,999.90''), ',
'               TO_CHAR(vendor_credits, ''999,999,999.90'')',
'          into :P101_FREIGHT_COST, :P101_INSURANCE_COST, :P101_HANDLING_COST,',
'               :P101_DUTIES_AND_TAXES, :P101_MISC_EXPENSES, :P101_VENDOR_CREDITS',
'          from nit017',
'         where shipment_id = :P101_SHIPMENT_ID; ',
'    else',
'        :P101_SHIPMENT_YR := EXTRACT(YEAR FROM SYSDATE);',
'',
'        select nvl(max(to_number(substr(shipment_number, 6, 3))), 0) + 1',
'          into v_shipment_no',
'          from nit016',
'         where to_number(substr(shipment_number, 0, 4)) = extract(year from sysdate);',
'',
'        :P101_SHIPMENT_NO := LPAD(v_shipment_no, 3, ''0'');',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>17922705977262904
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(17925748590262934)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Reset Selected PO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION (',
'    p_collection_name => ''VENDOR_POS''',
');'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>17925748590262934
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(17924982206262926)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SEARCH_VENDORS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_cursor        sys_refcursor;',
'    v_term          varchar2(300) := apex_application.g_x01;',
'begin',
'    OPEN l_cursor FOR ',
'        SELECT DISTINCT a.vendor_id "realValue", b.vendor_name "label", b.vendor_name "value"',
'          FROM nit012 a,',
'               nit006 b',
'         WHERE a.vendor_id = b.vendor_id',
'           AND UPPER(b.vendor_name) like UPPER(''%'' || v_term || ''%'')',
'         ORDER BY b.vendor_name ASC;',
'',
'    APEX_JSON.write(l_cursor);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>17924982206262926
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27346142211391847)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SEARCH_REF_POS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_cursor        sys_refcursor;',
'    v_term          varchar2(300) := apex_application.g_x01;',
'    v_vendor_id     nit012.vendor_id%TYPE := TO_NUMBER(apex_application.g_x02);',
'begin',
'    OPEN l_cursor FOR ',
'        SELECT a.po_id "realValue", a.po_id "label", a.po_id "value", a.etd_date etd, a.eta_date eta ',
'          FROM nit012 a               ',
'         WHERE UPPER(a.po_id) like UPPER(''%'' || v_term || ''%'')',
'           AND a.is_posted = ''N''',
'           AND a.vendor_id = v_vendor_id',
'         ORDER BY a.po_id ASC;',
'',
'    APEX_JSON.write(l_cursor);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>27346142211391847
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(17925339905262930)
,p_process_sequence=>30
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SET_SELECTED_VENDOR_POS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_json_clob     clob := apex_application.g_clob_01;',
'    l_json          json_object_t;',
'    lt_vendors      json_array_t;',
'    l_vendor        number;',
'begin',
'    l_json := json_object_t.parse(l_json_clob);',
'    lt_vendors := l_json.get_Array(''vendorPos'');',
'',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION (',
'        p_collection_name => ''VENDOR_POS''',
'    );',
'',
'    for idx in 0 .. lt_vendors.get_size - 1',
'    loop',
'        APEX_COLLECTION.ADD_MEMBER(',
'            p_collection_name => ''VENDOR_POS'',',
'            p_c001 => lt_vendors.get_number(idx), -- get PO num',
'            p_n001 => lt_vendors.get_number(idx)  -- get vendor id',
'        );',
'    end loop;',
'',
'    apex_json.open_object;',
'    apex_json.write(''message'', ''Success'');',
'    apex_json.close_object;',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>17925339905262930
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(32275762513470405)
,p_process_sequence=>40
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CHECK_PO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_po_id         nit015.po_id%TYPE := apex_application.g_x01;',
'    v_vendor_id     nit015.vendor_id%TYPE := apex_application.g_x02;',
'    v_valid         varchar2(1) := ''N'';',
'begin',
'    SELECT CASE WHEN EXISTS (SELECT null',
'                               FROM nit012 a',
'                              WHERE a.is_posted = ''N''',
'                                AND a.vendor_id = v_vendor_id',
'                                AND a.po_id = v_po_id)',
'                THEN ''Y''',
'                ELSE ''N''',
'                END',
'      INTO v_valid',
'      FROM dual;',
'',
'    apex_json.open_object;',
'    apex_json.write(''message'', ''Success'');',
'    apex_json.write(''isValid'', v_valid);',
'    apex_json.close_object;',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>32275762513470405
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(32275859577470406)
,p_process_sequence=>50
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CHECK_VENDOR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_vendor_id     nit015.vendor_id%TYPE := apex_application.g_x01;',
'    v_valid         varchar2(1) := ''N'';',
'begin',
'    SELECT CASE WHEN EXISTS (SELECT null',
'                               FROM nit012 a,',
'                                    nit006 b',
'                              WHERE a.vendor_id = b.vendor_id',
'                                AND a.vendor_id = v_vendor_id)',
'                THEN ''Y''',
'                ELSE ''N''',
'                END',
'      INTO v_valid',
'      FROM dual;',
'',
'    apex_json.open_object;',
'    apex_json.write(''message'', ''Success'');',
'    apex_json.write(''isValid'', v_valid);',
'    apex_json.close_object;',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>32275859577470406
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27346051282391846)
,p_process_sequence=>60
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SAVE_SHIPMENT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    s_json_clob             clob;',
'    v_shipment_id           nit016.shipment_id%TYPE;',
'    v_url                   varchar2(500);',
'begin',
'    --Get the clob passed in from the Ajax process',
'    s_json_clob := apex_application.g_clob_01;',
'    v_shipment_id := shipment_records_pkg.save_shipment(s_json_clob);',
'',
'    v_url := apex_page.get_url(',
'        p_page   => 102,',
'        p_items  => ''P102_SHIPMENT_ID,P102_LABEL,P102_QSEARCH,P102_QSORT,P102_UCHANGE'',',
'        p_values => v_shipment_id || '','' || :P101_LABEL || '','' || :P101_QSEARCH || '','' || :P101_QSORT || '','' || :P101_UCHANGE',
'    );',
'',
'    apex_json.open_object;',
'    apex_json.write(''message'', ''Success'');',
'    apex_json.write(''id'', v_shipment_id);',
'    apex_json.write(''u'', v_url);',
'    apex_json.close_object;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>27346051282391846
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31307207161578704)
,p_process_sequence=>70
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_VENDORS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_cursor        sys_refcursor;',
'    v_shipment_id   nit016.shipment_id%TYPE;',
'begin',
'    v_shipment_id := TO_NUMBER(apex_application.g_x01);',
'',
'    OPEN l_cursor FOR ',
'        SELECT svp_id "svp", vendor_id "vendorId", vendor_name "vendorName", ',
'               vendor_sequence "vendorSeq", po_id "vendorRefPo", invoices "invoices"',
'          FROM TABLE (shipment_records_pkg.get_shipment_vendor_basic_info(p_shipment_id => v_shipment_id));',
'',
'    APEX_JSON.write(l_cursor);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
,p_internal_uid=>31307207161578704
,p_process_comment=>'for loading vendors for update'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(32277844218470426)
,p_process_sequence=>80
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_VENDORS2'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_cursor        sys_refcursor;',
'    v_shipment_id   nit016.shipment_id%TYPE;',
'begin',
'    v_shipment_id := TO_NUMBER(apex_application.g_x01);',
'',
'    OPEN l_cursor FOR ',
'        select a.svp_id "svp", a.vendor_id "vendorId", b.vendor_name "vendorName", ',
'               a.vendor_sequence "vendorSeq", a.po_id "vendorRefPo",',
'               cursor(select x.svp_id "svp", x.invoice_id "invoiceId", y.document_number "docNo", ''U'' status',
'                        from nit035 x,',
'                             nit036 y',
'                       where x.invoice_id = y.invoice_id',
'                         and x.svp_id = a.svp_id) "invoices"',
'          from nit015 a,',
'               nit006 b',
'         where a.vendor_id = b.vendor_id',
'           and a.shipment_id = v_shipment_id',
'         order by a.vendor_sequence ASC;',
'',
'    APEX_JSON.open_object;',
'    APEX_JSON.write(''svp'', l_cursor);',
'    APEX_JSON.close_object;',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
,p_internal_uid=>32277844218470426
,p_process_comment=>'for loading vendors for update'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(32277937457470427)
,p_process_sequence=>90
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_VENDORS3'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_cursor        sys_refcursor;',
'    v_shipment_id   nit016.shipment_id%TYPE;',
'    l_json          clob;',
'begin',
'    v_shipment_id := TO_NUMBER(apex_application.g_x01);',
'',
'    select json_arrayagg(json_object (',
'                KEY ''svp'' VALUE a.svp_id,',
'                KEY ''vendorId'' VALUE a.vendor_id,',
'                KEY ''vendorName'' VALUE b.vendor_name,',
'                KEY ''vendorSeq'' VALUE a.vendor_sequence,',
'                KEY ''vendorRefPo'' VALUE a.po_id,',
'                KEY ''refInvs'' VALUE a.ref_invoices,',
'                KEY ''invoices'' VALUE (',
'                    select json_arrayagg(json_object(',
'                                KEY ''svp'' VALUE x.svp_id,',
'                                KEY ''invoiceId'' VALUE x.invoice_id,',
'                                KEY ''docNo'' VALUE y.document_number,',
'                                KEY ''status'' VALUE ''U''',
'                           ))',
'                      from nit035 x,',
'                           nit036 y',
'                     where x.invoice_id = y.invoice_id',
'                       and x.svp_id = a.svp_id',
'                )',
'           ))',
'      into l_json',
'      from nit015 a,',
'           nit006 b',
'     where a.vendor_id = b.vendor_id',
'       and a.shipment_id = v_shipment_id',
'     order by a.vendor_sequence ASC;',
'',
'    APEX_JSON.open_object;',
'    APEX_JSON.write(''svp'', l_json);',
'    APEX_JSON.close_object;',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>32277937457470427
,p_process_comment=>'for loading vendors for update'
);
wwv_flow_imp.component_end;
end;
/
