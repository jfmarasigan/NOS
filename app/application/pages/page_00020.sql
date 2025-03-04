prompt --application/pages/page_00020
begin
--   Manifest
--     PAGE: 00020
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
 p_id=>20
,p_name=>'Inquire Item'
,p_alias=>'INQUIRE-ITEM'
,p_page_mode=>'MODAL'
,p_step_title=>'Item Details'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function mapP20Keys(){',
'    $(document).on(''keydown.p20keyevents'', (ev) => {',
'',
'        const excludedKeys = [',
'            "PageUp", ',
'            "PageDown",  ',
'            "ArrowUp", ',
'            "ArrowDown"',
'        ];',
'        if (!excludedKeys.includes(ev.key)) {',
'            apex.navigation.dialog.close(true);',
'            $(document).off(''keydown.p20keyevents'');',
'        }',
'',
'    });',
'}',
''))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP20Keys();',
'$x(''P20_ITEM_NUM_DISPLAY'').focus();'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'body {',
'    background-color: #056AC8;;',
'}',
'',
'.render-container {',
'    display: flex;',
'    flex-wrap: wrap;',
'    font-size: 1.125rem;',
'}',
'',
'.upcLabel, .quantityLabel, .priceLabel, .uomLabel, .labelLabel, .pertagLabel {',
'    display: flex;',
'    justify-content: center;',
'    align-items: center;',
'    margin-bottom: 0.5rem;',
'}',
'',
'.upc, .upcLabel {',
'    width: 16%;',
'}',
'',
'.pertag, .pertagLabel {',
'    width: 12%;',
'',
'}',
'',
'.quantity, .quantityLabel {',
'    width: 13%;',
'}',
'',
'.price, .priceLabel {',
'    width: 15%;',
'}',
'',
'.uom, .uomLabel {',
'    width: 8%;',
'}',
'',
'.label, .labelLabel {',
'    width: 21%;',
'    font-weight: bold;',
'}',
'',
'.label {',
'    margin-bottom: 0.3rem;',
'    align-items: center;',
'}',
'',
'.pertag, .quantity{',
'    display: flex;',
'    justify-content: flex-end;',
'    padding-right: .6rem;',
'    align-items: center;',
'    margin-bottom: 0.3rem;',
'}',
'',
'.quantity {',
'    justify-content: center !important;',
'}',
'',
'.price {',
'    display: flex;',
'    justify-content: end;',
'    /* align-items: center; */',
'    margin-bottom: 0.3rem;',
'    padding-right: 1.3rem;',
'}',
'',
'.upc {',
'    display: flex;',
'    justify-content: center;',
'    align-items: center;',
'    margin-bottom: 0.3rem;',
'}',
'',
'.uom {',
'    padding-left: 1rem;',
'    margin-bottom: 0.3rem;',
'}',
'',
'/* vendor */',
'',
'.vendor-container {',
'    display: flex;',
'    flex-wrap: wrap;',
'    font-size: 1.125rem;',
'}',
'',
'.vendorLabelLabel {',
'    display: flex;',
'    justify-content: flex-start;',
'    align-items: center;',
'    width: 24%;',
'    margin-bottom: 0.5rem;',
'    font-weight: bold;',
'}',
'',
'.vendorCodeLabel {',
'    display: flex;',
'    justify-content: center;',
'    align-items: center;',
'    width: 8%;',
'    margin-bottom: 0.5rem;',
'}',
'',
'.vendorNameLabel {',
'    display: flex;',
'    justify-content: center;',
'    align-items: center;',
'    width: 28%;',
'    margin-bottom: 0.5rem;',
'    text-align: center !important;',
'',
'}',
'',
'.itemNumberLabel {',
'    display: flex;',
'    justify-content: center;',
'    align-items: center;',
'    width: 20%;',
'    margin-bottom: 0.5rem;',
'}',
'',
'.lcfLabel {',
'    width: 20%;',
'    margin-bottom: 0.5rem;',
'    text-align: right;',
'}',
'',
'',
'.vendorLabel {',
'    display: flex;',
'    justify-content: flex-start;',
'    align-items: center;',
'    width: 24%;',
'    margin-bottom: 0.5rem;',
'    font-weight: bold;',
'}',
'',
'.vendorCode {',
'    display: flex;',
'    justify-content: center;',
'    align-items: center;',
'    width: 8%;',
'    margin-bottom: 0.5rem;',
'}',
'',
'.vendorName{',
'    display: flex;',
'    justify-content: start;',
'    /* align-items: center; */',
'    width: 28%;',
'    margin-bottom: 0.5rem;',
'    /* text-align: center !important; */',
'',
'}',
'',
'.itemNumber {',
'    display: flex;',
'    justify-content: center;',
'    align-items: center;',
'    width: 20%;',
'    margin-bottom: 0.5rem;',
'}',
'',
'.lcf {',
'    width: 20%;',
'    margin-bottom: 0.5rem;',
'    display: flex;',
'    justify-content: center;',
'    /* align-items: center; */',
'}',
'',
'',
'/* .t-Dialog-body{',
'    label, input, .apex-item-display-only {',
'        font-size: 1.125rem;',
'    }',
'    .apex-item-display-only {',
'        margin-left: 0.5rem;',
'    }',
'    label {',
'        font-weight: bold;',
'    }',
'    background-color: #056AC8;',
'    padding-top: 0;',
'} */',
'',
'.t-Dialog-body {',
'    background-color: #056AC8;',
'    padding-top: 0;',
'}',
'',
'.t-Dialog-body label, .t-Dialog-body input, .t-Dialog-body .apex-item-display-only {',
'    font-size: 1.125rem;',
'} ',
'',
'.t-Dialog-body .apex-item-display-only {',
'    margin-left: 0.5rem;',
'}',
'',
'.t-Dialog-body label {',
'    font-weight: bold;',
'}',
'',
'.t-Region-body{',
'    padding: 0.4;',
'}',
'',
'.t-Form-labelContainer{',
'   white-space: nowrap;',
'   text-align: left;',
'}',
'',
'',
'.white-text {',
'    color: white;',
'    font-size: 1rem;',
'}',
'',
'',
'.label, .vendorLabel {',
'    text-align: left !important;',
'    justify-content: flex-start !important;',
'}',
'',
'#P20_ITEM_NUM_DISPLAY:focus {',
'    outline: none;',
'}',
'',
''))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'60rem'
,p_dialog_attributes=>'close: function() { customEvent(''customDialogClose'', {modalPageId: ''MODAL_CLOSE_FIXED''});} '
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9120278105604140)
,p_plug_name=>'Item Info'
,p_region_name=>'iteminfo-container'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'NIT001'
,p_include_rowid_column=>false
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9909837777576928)
,p_plug_name=>'Item UOM Info'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>20
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="render-container">',
'    <div class="labelLabel"> </div>',
'    <div class="quantityLabel"><strong>Qty</strong></div>',
'    <div class="pertagLabel"> </div>',
'    <div class="uomLabel"><strong>UOM</strong></div>',
'    <div class="upcLabel"><strong>UPC</strong></div>',
'    <div class="priceLabel"><strong>Costing Price</strong></div>',
'    <div class="priceLabel"><strong>Selling Price</strong></div>',
'</div>',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12918764971686841)
,p_plug_name=>'Vendor Info'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody:margin-bottom-none'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>30
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="vendor-container">',
'    <div class="vendorLabelLabel"> </div>',
'    <div class="vendorCodeLabel"><strong>Code</strong></div>',
'    <div class="vendorNameLabel"><strong>Vendor Name</strong></div>',
'    <div class="itemNumberLabel"><strong>Item No</strong></div>',
'    <div class="lcfLabel"><strong>Landed Cost Factor</strong></div>',
'</div>',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12916153640686815)
,p_plug_name=>'Last fields'
,p_parent_plug_id=>wwv_flow_imp.id(12918764971686841)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody:t-Form--leftLabels:margin-top-md:margin-bottom-none'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11805162837825348)
,p_button_sequence=>50
,p_button_name=>'Exit'
,p_button_static_id=>'exit'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Press any key to exit'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'white-text'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9120489551604142)
,p_name=>'P20_ITEM_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9120278105604140)
,p_item_source_plug_id=>wwv_flow_imp.id(9120278105604140)
,p_source=>'ITEM_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9120535290604143)
,p_name=>'P20_BRAND_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(9120278105604140)
,p_item_source_plug_id=>wwv_flow_imp.id(9120278105604140)
,p_source=>'BRAND_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9120656362604144)
,p_name=>'P20_SIC_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(9120278105604140)
,p_item_source_plug_id=>wwv_flow_imp.id(9120278105604140)
,p_source=>'SIC_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9120724079604145)
,p_name=>'P20_DEPT_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(9120278105604140)
,p_item_source_plug_id=>wwv_flow_imp.id(9120278105604140)
,p_source=>'DEPT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9120871224604146)
,p_name=>'P20_CLASS_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(9120278105604140)
,p_item_source_plug_id=>wwv_flow_imp.id(9120278105604140)
,p_source=>'CLASS_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9120901878604147)
,p_name=>'P20_ITEM_DESC'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(9120278105604140)
,p_item_source_plug_id=>wwv_flow_imp.id(9120278105604140)
,p_prompt=>'Item Description:'
,p_source=>'ITEM_DESC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--normalDisplay'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9121015122604148)
,p_name=>'P20_ITEM_NUM'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(9120278105604140)
,p_item_source_plug_id=>wwv_flow_imp.id(9120278105604140)
,p_prompt=>'Item Number:'
,p_source=>'ITEM_NUM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'tabindex="1"'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--normalDisplay'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9121146934604149)
,p_name=>'P20_MIN_STOCK_LVL'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(9120278105604140)
,p_item_source_plug_id=>wwv_flow_imp.id(9120278105604140)
,p_prompt=>'Min Stock Level:'
,p_source=>'MIN_STOCK_LVL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--normalDisplay'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9121202606604150)
,p_name=>'P20_MAX_STOCK_LVL'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(9120278105604140)
,p_item_source_plug_id=>wwv_flow_imp.id(9120278105604140)
,p_prompt=>'Max Stock Level:'
,p_source=>'MAX_STOCK_LVL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--normalDisplay'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9907104366576901)
,p_name=>'P20_FULL_ITEM_DESC'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(9120278105604140)
,p_item_source_plug_id=>wwv_flow_imp.id(9120278105604140)
,p_prompt=>'Full Item Description:'
,p_source=>'FULL_ITEM_DESC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--normalDisplay'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9907631909576906)
,p_name=>'P20_HAS_SERIAL_NUMBER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(9120278105604140)
,p_item_source_plug_id=>wwv_flow_imp.id(9120278105604140)
,p_prompt=>'Has Serial Number:'
,p_source=>'HAS_SERIAL_NUMBER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--normalDisplay'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9907703397576907)
,p_name=>'P20_EXCISE_TAX_RATE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(12916153640686815)
,p_item_source_plug_id=>wwv_flow_imp.id(9120278105604140)
,p_prompt=>'Excise Tax Rate:'
,p_source=>'EXCISE_TAX_RATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--normalDisplay'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9907867409576908)
,p_name=>'P20_SELLING_PRICE_FACTOR'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(12916153640686815)
,p_item_source_plug_id=>wwv_flow_imp.id(9120278105604140)
,p_prompt=>'Selling Price Factor:'
,p_source=>'SELLING_PRICE_FACTOR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--normalDisplay'
,p_is_persistent=>'N'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9907939164576909)
,p_name=>'P20_BRAND_CODE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(9120278105604140)
,p_item_default=>'Select brand_code from nim022 where brand_id = :P20_BRAND_ID'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Brand Code:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--normalDisplay'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9908027641576910)
,p_name=>'P20_BRAND_NAME'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(9120278105604140)
,p_item_default=>'Select brand_name from nim022 where brand_code = :P20_BRAND_CODE'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Brand Name:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--normalDisplay'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9908141827576911)
,p_name=>'P20_SIC_CODE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(9120278105604140)
,p_item_default=>'select sic_code from nim023 where sic_id = :P20_SIC_ID'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'SIC Code:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>4
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--normalDisplay'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9908216040576912)
,p_name=>'P20_DEPT_CODE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(9120278105604140)
,p_item_default=>'select dept_code from nim024 where dept_id = :P20_DEPT_ID'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Dept Code:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_column=>6
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--normalDisplay'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9908307093576913)
,p_name=>'P20_CLASS_CODE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(9120278105604140)
,p_item_default=>'select class_code from nim025 where class_id = :P20_CLASS_ID'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Class Code:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_column=>10
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--normalDisplay'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9910095452576930)
,p_name=>'Retrieve NIT002'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9910110571576931)
,p_event_id=>wwv_flow_imp.id(9910095452576930)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process("GET_NIT002_DATA", {',
'    pageItems : ["P20_ITEM_ID"]',
'}, {',
'    dataType: ''json''',
'})',
'.done((data) => {',
'',
'        const labels = [',
'        "Smallest Unit:",',
'        "Mastercase:",',
'        "Inner Pack 1:",',
'        "Inner Pack 2:"',
'    ];',
'',
'    let firstUOMCode = data.length > 0 ? data[0].UOM_CODE : "ea";',
'',
'        const pers = [',
'            `per`,               // Use "per" for the first item',
'        `${firstUOMCode} per`, // Use "first UOM_CODE per" for the second',
'        `${firstUOMCode} per`, // Use "first UOM_CODE per" for the third',
'        `${firstUOMCode} per` ',
'        ]',
'',
'    data.forEach((item, index) => {',
'',
'        let label = labels[index] || "Inner pack";',
'        let per = pers[index] || "ea per";',
'        let formattedPrice = parseFloat(item.PRICE).toFixed(2);',
'        let formattedCost = item.COST ? parseFloat(item.COST).toFixed(2) : 0;',
'        let itemUpc = item.UPC ? item.UPC : "";',
'',
'        $(".render-container").append(`<div class="label">${label}</div>`);',
'        $(".render-container").append(`<div class="quantity"><span class="qtySpan">${item.QUANTITY}</span></div>`);',
'        $(".render-container").append(`<div class="pertag"><span class="perSpan">${per}</span></div>`);',
'        $(".render-container").append(`<div class="uom"><span class="uomSpan">${item.UOM_CODE}</span></div>`);',
'        $(".render-container").append(`<div class="upc"><span class="upcSpan">${itemUpc}</span></div>`);',
'        $(".render-container").append(`<div class="price"><span class="dollar-sign"></span><span class="priceSpan">${formattedCost}</span></div>`);',
'        $(".render-container").append(`<div class="price"><span class="dollar-sign"></span><span class="priceSpan">${formattedPrice}</span></div>`);',
'    })',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12919076795686844)
,p_name=>'Retrieve NIT006'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12919154471686845)
,p_event_id=>wwv_flow_imp.id(12919076795686844)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process("GET_NIT007_DATA", {',
'    pageItems : ["P20_ITEM_ID"]',
'}, {',
'    dataType: ''json''',
'})',
'.done((data) => {',
'',
'    console.log(data);',
'    ',
'    const vendorLabel = "Vendor";',
'',
'    data.forEach((item, index) => {',
'        let label = vendorLabel + " " + (index + 1) + ":";',
'',
'        let landedCostFactor = item.LANDED_COST_FACTOR ? parseFloat(item.LANDED_COST_FACTOR).toFixed(2) : 0;',
'        ',
'        $(".vendor-container").append(`<div class="vendorLabel">${label}</div>`);',
'        $(".vendor-container").append(`<div class="vendorCode"><span class="vCodeSpan">${item.VENDOR_CODE}</span></div>`);',
'        $(".vendor-container").append(`<div class="vendorName"><span class="vNameSpan">${item.VENDOR_NAME}</span></div>`);',
'        $(".vendor-container").append(`<div class="itemNumber"><span class="vItemNumSpan">${item.ITEM_NUMBER}</span></div>`);',
'        $(".vendor-container").append(`<div class="lcf"><span class="dollar-sign"></span><span class="lcfSpan">${landedCostFactor}</span></div>`);',
'    })',
'',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11805200735825349)
,p_name=>'Click Exit'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11805162837825348)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11805331521825350)
,p_event_id=>wwv_flow_imp.id(11805200735825349)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9120392826604141)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(9120278105604140)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Inquire Item'
,p_internal_uid=>9120392826604141
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9909940081576929)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_NIT002_DATA'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_cursor sys_refcursor;',
'begin',
'',
'    OPEN l_cursor FOR ',
'    SELECT nit002.uom_id, nit002.quantity, nit002.upc, nit002.price, nit002.cost, nim026.uom_code',
'    FROM nit002',
'    JOIN nim026 ON nit002.uom_id = nim026.uom_id',
'    WHERE nit002.item_id = :P20_ITEM_ID',
'    ORDER BY ',
'        CASE nit002."LEVEL"',
'            WHEN 1 THEN 1',
'            WHEN 4 THEN 2',
'            WHEN 2 THEN 3',
'            WHEN 3 THEN 4',
'            ELSE 5',
'        END;  ',
'    APEX_JSON.write(l_cursor);',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>9909940081576929
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12918652614686840)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_NIT007_DATA'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_cursor sys_refcursor;',
'begin',
'',
'    OPEN l_cursor FOR ',
'    SELECT ',
'        nit006.vendor_code,',
'        nit006.vendor_name,',
'        nit006.vendor_id,',
'        nit007.item_number,',
'        nit007.landed_cost_factor,',
'        nit007.vendor_sequence',
'        -- ,',
'        -- TO_CHAR(nit007.create_date, ''yyyy-mm-dd HH:mm:ss'')',
'    FROM ',
'        NIT006 nit006',
'    JOIN ',
'        NIT007 nit007 ON nit006.vendor_id = nit007.vendor_id',
'    WHERE ',
'        nit007.item_id = :P20_item_id',
'    ORDER BY nit007.vendor_sequence;',
'    APEX_JSON.write(l_cursor);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>12918652614686840
);
wwv_flow_imp.component_end;
end;
/
