prompt --application/pages/page_00021
begin
--   Manifest
--     PAGE: 00021
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
 p_id=>21
,p_name=>'Update Item'
,p_alias=>'UPDATE-ITEM'
,p_step_title=>'Update Item'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APP_FILES#js/itemmasterfile-validations#MIN#.js',
'',
'#APP_FILES#js/cmn#MIN#.js'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let marker = 1;',
'let cloneCtr = 1;',
'',
'function addVendorCodeChangeListener(vendorCodeField, row) {',
'    vendorCodeField.on(''change'', function() {',
'        let vendorCode = $(this).val().toUpperCase(); ',
'        let vendorNameField = row.find("span[id*=''VENDOR_NAME_DISPLAY'']"); ',
'        ',
'        apex.server.process("GET_VENDOR_NAME", {',
'            x01: vendorCode ',
'        }, {',
'            dataType: ''text'' ',
'        }).done((vendorName) => {',
'            vendorNameField.text(vendorName);',
'        }).fail(() => {',
'            console.log("Error retrieving vendor name.");',
'        });',
'    });',
'}',
'',
'',
'const p21KeyMap = {',
'    escape : (v) => {',
'        $("#exit").click();',
'    },',
'    enter : (ev) => {',
'        let focusedElement = document.activeElement;',
'',
'        console.log(focusedElement);',
'',
'        if (!$(focusedElement).hasClass(''disableEnter'')){',
'        $("#submit").click();',
'        }',
'/*',
'        if ($(focusedElement).closest(''.a-PopupLOV-dialog'').length) {',
'            ev.preventDefault();',
'            return; ',
'        }',
'',
'        $("#submit").click();',
'*/',
'    },',
'    f8 : (v) => {',
'        $("#clone").click();',
'    }',
'}',
'',
'',
'function mapP21Keys() {',
'    $(document).off(''keydown.p21keyevents'');',
'    $(document).on(''keydown.p21keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p21KeyMap[key]) {',
'            ev.preventDefault();',
'            p21KeyMap[key]();',
'        }',
'    });',
'}',
'',
'',
'// Variables for submit',
'let fieldsToValidate = [',
'//    { id: ''P21_ITEM_NUM'', required: true, pattern: ''alphanumeric'' },         ',
'    { id: ''P21_ITEM_DESC'', required: true },                            ',
'    { id: ''P21_FULL_ITEM_DESC'', required: true },                       ',
'    { id: ''P21_BRAND_CODE'', required: true, pattern: ''alphabets''},  ',
'    { id: ''P21_MIN_STOCK_LVL'', required: true, pattern: ''numbers'' },    ',
'    { id: ''P21_MAX_STOCK_LVL'', required: true, pattern: ''numbers'' },    ',
'    { id: ''P21_HAS_SERIAL_NUMBER'', required: true },                    ',
'    { id: ''P21_SIC_CODE'', required: true, pattern: ''alphabets''},',
'    { id: ''P21_DEPT_CODE'', required: true, pattern: ''alphabets''},',
'    { id: ''P21_CLASS_CODE'', required: true, pattern: ''alphabets''},    ',
'    { id: ''P21_UOM_1'', required: true },                                  ',
'    { id: ''P21_UPC_1'', required: true, pattern: ''alphanumeric'' },         ',
'    { id: ''P21_PRICE_1'', required: true, pattern: ''decimal'' },            ',
'    { id: ''P21_QUANTITY_1'', required: true, pattern: ''numbers'' },',
'    { id: ''P21_UOM_2'', required: true },                                  ',
'    { id: ''P21_UPC_2'', required: true, pattern: ''alphanumeric'' },         ',
'    { id: ''P21_PRICE_2'', required: true, pattern: ''decimal'' },            ',
'    { id: ''P21_QUANTITY_2'', required: true, pattern: ''numbers'' }, ',
'    { id: ''P21_VENDOR_CODE'', required: true, pattern: ''alphabets''},',
'    { id: ''P21_ITEM_NUMBER'', required: true, pattern: ''alphanumeric'' },',
'];',
'',
'let optionalFieldsGroup1 = [',
'    { id: ''P21_QUANTITY_3'', pattern: ''numbers'' },',
'    { id: ''P21_UPC_3'', pattern: ''alphanumeric'' },',
'    { id: ''P21_PRICE_3'', pattern: ''decimal'' }',
'];',
'',
'let optionalFieldsGroup2 = [',
'    { id: ''P21_QUANTITY_4'', pattern: ''numbers'' },',
'    { id: ''P21_UPC_4'', pattern: ''alphanumeric'' },',
'    { id: ''P21_PRICE_4'', pattern: ''decimal'' }',
'];',
'',
'const pagePrefix = "P21_";',
'const isUpdatePage = true;',
'',
'',
'let upcFieldIDs = [',
'    pagePrefix + ''UPC_1'',',
'    pagePrefix + ''UPC_2'',',
'    pagePrefix + ''UPC_3'',',
'    pagePrefix + ''UPC_4''',
'];',
'',
'let uomFieldIDs = [',
'    pagePrefix + ''UOM_1'',',
'    pagePrefix + ''UOM_2'',',
'    pagePrefix + ''UOM_3'',',
'    pagePrefix + ''UOM_4''',
'];',
'',
'let fieldsForBlurValidation = [',
'    { id: ''P21_ITEM_NUM'', pattern: ''alphanumeric'' },         ',
'    { id: ''P21_ITEM_DESC'' },                            ',
'    { id: ''P21_FULL_ITEM_DESC'' },                       ',
'    { id: ''P21_BRAND_CODE'', pattern: ''alphabets''},  ',
'    { id: ''P21_MIN_STOCK_LVL'', pattern: ''numbers'' },    ',
'    { id: ''P21_MAX_STOCK_LVL'', pattern: ''numbers'' },    ',
'    { id: ''P21_HAS_SERIAL_NUMBER'', pattern: ''yesNo'' },                    ',
'    { id: ''P21_SIC_CODE'', pattern: ''alphabets''},',
'    { id: ''P21_DEPT_CODE'', pattern: ''alphabets''},',
'    { id: ''P21_CLASS_CODE'', pattern: ''alphabets''},    ',
'//    { id: ''P21_UOM_1'' },                                  ',
'    { id: ''P21_UPC_1'', pattern: ''alphanumeric'' },         ',
'    { id: ''P21_PRICE_1'', pattern: ''decimal'' },            ',
'    { id: ''P21_QUANTITY_1'', pattern: ''numbers'' },',
'//    { id: ''P21_UOM_2'', },                                  ',
'    { id: ''P21_UPC_2'', pattern: ''alphanumeric'' },         ',
'    { id: ''P21_PRICE_2'', pattern: ''decimal'' },            ',
'    { id: ''P21_QUANTITY_2'', pattern: ''numbers'' },',
'    { id: ''P21_QUANTITY_3'', pattern: ''numbers'' },',
'//    { id: ''P21_UOM_3'' },',
'    { id: ''P21_UPC_3'', pattern: ''alphanumeric'' },',
'    { id: ''P21_PRICE_3'', pattern: ''decimal'' },',
'    { id: ''P21_QUANTITY_4'', pattern: ''numbers'' },',
'//    { id: ''P21_UOM_4'' },',
'    { id: ''P21_UPC_4'', pattern: ''alphanumeric'' },',
'    { id: ''P21_PRICE_4'', pattern: ''decimal'' },',
'    { id: ''P21_EXCISE_TAX_RATE'', pattern: ''decimal''},',
'    { id: ''P21_SELLING_PRICE_FACTOR'', pattern: ''decimal''},',
'',
'];',
'',
'validateFieldsOnBlur(fieldsForBlurValidation);',
'',
'vendorsGroupArray = [];',
'vendorsLCFArray =[',
'    { id: ''P21_LANDED_COST_FACTOR'', pattern: ''decimal''},',
'];',
'',
'let exciseAndSelling = [',
'    {id: ''P21_EXCISE_TAX_RATE'', pattern: ''decimal''},',
'    {id: ''P21_SELLING_PRICE_FACTOR'', pattern: ''decimal''},',
'];',
''))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP21Keys();',
'',
'$x(''P21_ITEM_DESC'').focus();',
'',
'setTitle("Update Item")',
'',
'vendorCodeBlur($(''#P21_VENDOR_CODE_input''), $(''#P21_ITEM_NUMBER''), $(''#P21_LANDED_COST_FACTOR''));'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'body, #button-region {',
'    background-color: rgb(30, 58, 138);',
'}',
'',
'.t-Header .t-Header-branding {',
'    background-color: white !important;',
'    color: rgb(30, 58, 138) !important;',
'}',
'',
'',
'#update-form-1, #update-form-2, #update-form-3 {',
'    label, input, .apex-item-display-only {',
'        font-size: 1.125rem;',
'    }',
'}',
'',
'.t-Form-labelContainer .t-Form-label::before {',
'    content: '''' !important; /* Remove the asterisk before the label */',
'}',
'',
'.hiddenbtn {',
'    display: none;',
'}',
'',
'.btnblue {',
'    font-size: 1.125rem;',
'    color: white;',
'    background-color: #046BC8;',
'}',
'',
'.btn {',
'    font-size: 1.125rem;',
'    color: white;',
'}',
'',
'.t-Form-labelContainer {',
'    white-space: nowrap;',
'    text-align: left;',
'}',
'',
'#P21_FULL_ITEM_DESC_CONTAINER .t-Form-labelContainer ,#P21_HAS_SERIAL_NUMBER_CONTAINER .t-Form-labelContainer, #P21_SELLING_PRICE_FACTOR_CONTAINER .t-Form-labelContainer {',
'    white-space: normal;',
'    text-align: right;',
'}',
'',
'#P21_MIN_STOCK_LVL_CONTAINER .t-Form-labelContainer, #P21_MAX_STOCK_LVL_CONTAINER .t-Form-labelContainer {',
'    white-space: nowrap;',
'    text-align: left;',
'    padding-left: 0;',
'}',
'',
'',
'#P21_MIN_STOCK_LVL_CONTAINER .t-Form-inputContainer, #P21_MAX_STOCK_LVL_CONTAINER .t-Form-inputContainer{',
'    padding-right: 0;',
'}',
'',
'',
'#P21_MIN_STOCK_LVL_CONTAINER .t-Form-itemWrapper, #P21_MAX_STOCK_LVL_CONTAINER .t-Form-itemWrapper {',
'    justify-content: flex-end;',
'}',
'',
'#P21_VENDOR_NAME_CONTAINER .t-Form-inputContainer{',
'    padding: .5rem;',
'}',
'',
'',
'#P21_DEPT_NAME_CONTAINER .t-Form-inputContainer, #P21_SIC_NAME_CONTAINER .t-Form-inputContainer, #P21_CLASS_NAME_CONTAINER .t-Form-inputContainer{',
'    padding-left: 0;',
'}',
'',
''))
,p_step_template=>wwv_flow_imp.id(5671392681337017)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14947646863654198)
,p_plug_name=>'Header'
,p_title=>'Update Item'
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>20
,p_location=>null
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14947798290654200)
,p_plug_name=>'Update_Item_1'
,p_region_name=>'update-form-3'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody:margin-top-none:margin-bottom-sm'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>80
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11803052491825327)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(14947798290654200)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15138572679215394)
,p_plug_name=>'Update_Item'
,p_region_name=>'update-form-1'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody:margin-bottom-sm'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>30
,p_query_type=>'TABLE'
,p_query_table=>'NIT001'
,p_include_rowid_column=>false
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15842612069764190)
,p_plug_name=>'Update_Item_UPC'
,p_region_name=>'update-form-2'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody:margin-top-none:margin-bottom-sm'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>40
,p_query_type=>'TABLE'
,p_query_table=>'NIT002'
,p_include_rowid_column=>false
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12917187366686825)
,p_button_sequence=>90
,p_button_name=>'SUBMIT'
,p_button_static_id=>'submit'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Submit'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'hiddenbtn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12917581706686829)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(14947798290654200)
,p_button_name=>'ADD_VENDOR'
,p_button_static_id=>'clone'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'F8 - Add Another Supplier'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btnblue'
,p_grid_new_row=>'Y'
,p_grid_column_span=>2
,p_grid_column=>8
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12918192993686835)
,p_button_sequence=>100
,p_button_name=>'Exit'
,p_button_static_id=>'exit'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Esc - To Exit'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'hiddenbtn'
,p_grid_new_row=>'Y'
,p_grid_column_span=>2
,p_grid_column=>9
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11803115661825328)
,p_name=>'P21_VENDOR_CODE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(14947798290654200)
,p_prompt=>'Code'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>'SELECT NIT006.VENDOR_CODE FROM NIT006'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(4382138690084278)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'Y'
,p_attribute_05=>'7'
,p_attribute_09=>'1'
,p_attribute_10=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11803291005825329)
,p_name=>'P21_VENDOR_NAME'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(14947798290654200)
,p_prompt=>'Vendor Name'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(4382138690084278)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11803378717825330)
,p_name=>'P21_ITEM_NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(14947798290654200)
,p_prompt=>'Item No'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(4382138690084278)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11803482312825331)
,p_name=>'P21_LANDED_COST_FACTOR'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(14947798290654200)
,p_prompt=>'Landed Cost Factor'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>8
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(4382138690084278)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11803580725825332)
,p_name=>'P21_VENDOR_LABEL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(14947798290654200)
,p_item_default=>'Vendor 1'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_row_css_classes=>'vendors-update'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(4382138690084278)
,p_item_template_options=>'#DEFAULT#:margin-top-sm:t-Form-fieldContainer--normalDisplay'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12916554098686819)
,p_name=>'P21_SMALLEST_UNIT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(15842612069764190)
,p_item_default=>'Smallest Unit'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(4382138690084278)
,p_item_template_options=>'#DEFAULT#:margin-top-sm:t-Form-fieldContainer--normalDisplay'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12916614177686820)
,p_name=>'P21_MASTER_CASE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(15842612069764190)
,p_item_default=>'Master Case'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>1
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--normalDisplay'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12916719432686821)
,p_name=>'P21_INNER_PACK_1'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(15842612069764190)
,p_item_default=>'Inner Pack 1'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>1
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--normalDisplay'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12916826323686822)
,p_name=>'P21_INNER_PACK_2'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(15842612069764190)
,p_item_default=>'Inner Pack 2'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>1
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--normalDisplay'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15153522873215464)
,p_name=>'P21_BRAND_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(15138572679215394)
,p_item_source_plug_id=>wwv_flow_imp.id(15138572679215394)
,p_source=>'BRAND_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15153640151215465)
,p_name=>'P21_SIC_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(15138572679215394)
,p_item_source_plug_id=>wwv_flow_imp.id(15138572679215394)
,p_source=>'SIC_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15153695668215466)
,p_name=>'P21_DEPT_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(15138572679215394)
,p_item_source_plug_id=>wwv_flow_imp.id(15138572679215394)
,p_source=>'DEPT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15153840900215467)
,p_name=>'P21_CLASS_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(15138572679215394)
,p_item_source_plug_id=>wwv_flow_imp.id(15138572679215394)
,p_source=>'CLASS_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15153908648215468)
,p_name=>'P21_ITEM_DESC'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(15138572679215394)
,p_item_source_plug_id=>wwv_flow_imp.id(15138572679215394)
,p_prompt=>'Item Desc<span style="color:red;">*</span>'
,p_source=>'ITEM_DESC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>30
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382365997084278)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15154028477215469)
,p_name=>'P21_ITEM_NUM'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(15138572679215394)
,p_item_source_plug_id=>wwv_flow_imp.id(15138572679215394)
,p_prompt=>'Item No<span style="color:red;">*</span>'
,p_source=>'ITEM_NUM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>5
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382365997084278)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--indicatorAsterisk:t-Form-fieldContainer--postTextBlock'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15154088140215470)
,p_name=>'P21_MIN_STOCK_LVL'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(15138572679215394)
,p_item_source_plug_id=>wwv_flow_imp.id(15138572679215394)
,p_prompt=>'Min Stock Level<span style="color:red;">*</span>'
,p_source=>'MIN_STOCK_LVL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_cMaxlength=>4
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382365997084278)
,p_item_template_options=>'#DEFAULT#:margin-right-sm'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15154201518215471)
,p_name=>'P21_MAX_STOCK_LVL'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(15138572679215394)
,p_item_source_plug_id=>wwv_flow_imp.id(15138572679215394)
,p_prompt=>'Max Stock Level<span style="color:red;">*</span>'
,p_source=>'MAX_STOCK_LVL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_cMaxlength=>5
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382365997084278)
,p_item_template_options=>'#DEFAULT#:margin-left-sm'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15154328357215472)
,p_name=>'P21_FULL_ITEM_DESC'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(15138572679215394)
,p_item_source_plug_id=>wwv_flow_imp.id(15138572679215394)
,p_prompt=>'Full Item Desc<span style="color:red;">*</span>'
,p_source=>'FULL_ITEM_DESC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>100
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_grid_column=>5
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382365997084278)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15154781288215477)
,p_name=>'P21_HAS_SERIAL_NUMBER'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(15138572679215394)
,p_item_source_plug_id=>wwv_flow_imp.id(15138572679215394)
,p_prompt=>'Has serial num?<span style="color:red;">*</span>'
,p_source=>'HAS_SERIAL_NUMBER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>5
,p_cMaxlength=>1
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_column=>5
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382365997084278)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
,p_attribute_06=>'UPPER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15155329714215482)
,p_name=>'P21_BRAND_CODE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(15138572679215394)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select n22.brand_code ',
'from nit001 n1',
'join nim022 n22 ON n1.brand_id = n22.brand_id',
'where n1.item_id = :P21_ITEM_ID'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Brand Code<span style="color:red;">*</span>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select brand_code as d,',
'brand_code as r',
'from nim022'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-'
,p_cSize=>30
,p_tag_css_classes=>'disableEnter'
,p_colspan=>2
,p_grid_column=>1
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382365997084278)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--indicatorAsterisk'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15155447809215483)
,p_name=>'P21_BRAND_NAME'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(15138572679215394)
,p_prompt=>'Brand Name:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:margin-left-none:t-Form-fieldContainer--normalDisplay'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15155811824215487)
,p_name=>'P21_SIC_CODE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(15138572679215394)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select n23.sic_code ',
'from nit001 n1',
'join nim023 n23 ON n1.sic_id = n23.sic_id',
'where n1.item_id = :P21_ITEM_ID'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'SIC Code<span style="color:red;">*</span>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select sic_code as d,',
'sic_code as r',
'from nim023'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-'
,p_cSize=>30
,p_tag_css_classes=>'disableEnter'
,p_colspan=>2
,p_grid_column=>1
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382365997084278)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15155928040215488)
,p_name=>'P21_SIC_NAME'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(15138572679215394)
,p_prompt=>'SIC Name'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:margin-left-sm:t-Form-fieldContainer--normalDisplay'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15156359029215492)
,p_name=>'P21_DEPT_CODE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(15138572679215394)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select n24.dept_code ',
'from nit001 n1',
'join nim024 n24 ON n1.dept_id = n24.dept_id',
'where n1.item_id = :P21_ITEM_ID'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Dept Code<span style="color:red;">*</span>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DEPT_CODE as d,',
'dept_code as r',
'from nim024'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-'
,p_cSize=>30
,p_tag_css_classes=>'disableEnter'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382365997084278)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15156444850215493)
,p_name=>'P21_DEPT_NAME'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(15138572679215394)
,p_prompt=>'Dept Name'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:margin-left-sm:t-Form-fieldContainer--normalDisplay'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15164528165215494)
,p_name=>'P21_EXCISE_TAX_RATE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(14947798290654200)
,p_item_source_plug_id=>wwv_flow_imp.id(15138572679215394)
,p_prompt=>'Excise Tax Rate'
,p_format_mask=>'999G999G999G999G990D00'
,p_source=>'EXCISE_TAX_RATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>8
,p_colspan=>2
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15164705254215495)
,p_name=>'P21_SELLING_PRICE_FACTOR'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(14947798290654200)
,p_item_source_plug_id=>wwv_flow_imp.id(15138572679215394)
,p_prompt=>'Selling Price Factor'
,p_format_mask=>'999G999G999G999G990D00'
,p_source=>'SELLING_PRICE_FACTOR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>8
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15587562107140047)
,p_name=>'P21_CLASS_CODE'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(15138572679215394)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select n25.class_code ',
'from nit001 n1',
'join nim025 n25 ON n1.class_id = n25.class_id',
'where n1.item_id = :P21_ITEM_ID'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Class Code<span style="color:red;">*</span>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select class_code as d,',
'class_code as r',
'from nim025'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-'
,p_cSize=>30
,p_tag_css_classes=>'disableEnter'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382365997084278)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15587756866140048)
,p_name=>'P21_CLASS_NAME'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(15138572679215394)
,p_prompt=>'Class Name'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:margin-left-sm:t-Form-fieldContainer--normalDisplay'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15843862460764231)
,p_name=>'P21_UOM_ID_1'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(15842612069764190)
,p_item_source_plug_id=>wwv_flow_imp.id(15842612069764190)
,p_source=>'UOM_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15843935653764232)
,p_name=>'P21_UPC_1'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(15842612069764190)
,p_item_source_plug_id=>wwv_flow_imp.id(15842612069764190)
,p_prompt=>'UPC<span style="color:red;">*</span>'
,p_source=>'UPC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>14
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(4383087695084279)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15843974330764233)
,p_name=>'P21_PRICE_1'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(15842612069764190)
,p_item_source_plug_id=>wwv_flow_imp.id(15842612069764190)
,p_prompt=>'Price<span style="color:red;">*</span>'
,p_format_mask=>'999G999G999G999G990D00'
,p_source=>'PRICE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>8
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(4383087695084279)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15844543021764238)
,p_name=>'P21_QUANTITY_1'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(15842612069764190)
,p_item_source_plug_id=>wwv_flow_imp.id(15842612069764190)
,p_prompt=>'Qty<span style="color:red;">*</span>'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_source=>'QUANTITY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>3
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(4383087695084279)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15844714778764240)
,p_name=>'P21_UOM_1'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(15842612069764190)
,p_prompt=>'UOM <span style="color:red;">*</span>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'Select UOM_Code from nim026'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-'
,p_cSize=>10
,p_tag_css_classes=>'disableEnter'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(4383087695084279)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET_FILTER'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15845108925764244)
,p_name=>'P21_ITEM_ID_2'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(15842612069764190)
,p_item_source_plug_id=>wwv_flow_imp.id(15842612069764190)
,p_item_default=>'P21_ITEM_ID'
,p_item_default_type=>'ITEM'
,p_source=>'ITEM_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15846195169764255)
,p_name=>'P21_ITEM_ID_MASTER'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(15842612069764190)
,p_item_source_plug_id=>wwv_flow_imp.id(15842612069764190)
,p_source=>'ITEM_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15846320186764256)
,p_name=>'P21_UOM_ID_2'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(15842612069764190)
,p_item_source_plug_id=>wwv_flow_imp.id(15842612069764190)
,p_source=>'UOM_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15846408064764257)
,p_name=>'P21_QUANTITY_2'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(15842612069764190)
,p_item_source_plug_id=>wwv_flow_imp.id(15842612069764190)
,p_format_mask=>'999G999G999G999G999G999G990'
,p_source=>'QUANTITY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>3
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382365997084278)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15846467302764258)
,p_name=>'P21_UOM_2'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(15842612069764190)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT N26.UOM_CODE',
'FROM NIT002 N2',
'JOIN NIM026 N26 ON N2.UOM_ID = N26.UOM_ID',
'WHERE N2.ITEM_ID = :P21_ITEM_ID',
'AND "LEVEL" = 4'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Uom 2'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'Select UOM_CODE from NIM026'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-'
,p_cSize=>10
,p_tag_css_classes=>'disableEnter'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382365997084278)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET_FILTER'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15846582936764259)
,p_name=>'P21_UPC_2'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(15842612069764190)
,p_item_source_plug_id=>wwv_flow_imp.id(15842612069764190)
,p_prompt=>'Upc 2'
,p_source=>'UPC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>14
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382365997084278)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15846709221764260)
,p_name=>'P21_PRICE_2'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(15842612069764190)
,p_item_source_plug_id=>wwv_flow_imp.id(15842612069764190)
,p_prompt=>'Price 2'
,p_format_mask=>'999G999G999G999G990D00'
,p_source=>'PRICE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>8
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382365997084278)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15847018281764263)
,p_name=>'P21_ITEM_ID_IP1'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(15842612069764190)
,p_item_source_plug_id=>wwv_flow_imp.id(15842612069764190)
,p_source=>'ITEM_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15847155804764264)
,p_name=>'P21_UOM_ID_3'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(15842612069764190)
,p_item_source_plug_id=>wwv_flow_imp.id(15842612069764190)
,p_source=>'UOM_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15859049373764275)
,p_name=>'P21_ITEM_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(15138572679215394)
,p_item_source_plug_id=>wwv_flow_imp.id(15138572679215394)
,p_source=>'ITEM_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16593464202011815)
,p_name=>'P21_QUANTITY_3'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(15842612069764190)
,p_item_source_plug_id=>wwv_flow_imp.id(15842612069764190)
,p_prompt=>'Quantity 3'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_source=>'QUANTITY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>3
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382365997084278)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16593571417011816)
,p_name=>'P21_UOM_3'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(15842612069764190)
,p_item_default=>'NULL'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Uom 3'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select uom_code as d,',
'uom_code as r ',
'from nim026'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-'
,p_lov_null_value=>'NULL'
,p_cSize=>10
,p_tag_css_classes=>'disableEnter'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382365997084278)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16593677270011817)
,p_name=>'P21_UPC_3'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(15842612069764190)
,p_item_source_plug_id=>wwv_flow_imp.id(15842612069764190)
,p_prompt=>'Upc 3'
,p_source=>'UPC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>14
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16593831120011818)
,p_name=>'P21_PRICE_3'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(15842612069764190)
,p_item_source_plug_id=>wwv_flow_imp.id(15842612069764190)
,p_prompt=>'Price 3'
,p_format_mask=>'999G999G999G999G990D00'
,p_source=>'PRICE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>8
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16594100747011821)
,p_name=>'P21_ITEM_ID_IP2'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(15842612069764190)
,p_item_source_plug_id=>wwv_flow_imp.id(15842612069764190)
,p_source=>'ITEM_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16594192310011822)
,p_name=>'P21_UOM_ID_4'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(15842612069764190)
,p_item_source_plug_id=>wwv_flow_imp.id(15842612069764190)
,p_source=>'UOM_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16594325582011823)
,p_name=>'P21_QUANTITY_4'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(15842612069764190)
,p_item_source_plug_id=>wwv_flow_imp.id(15842612069764190)
,p_prompt=>'Quantity 4'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_source=>'QUANTITY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>3
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16594368411011824)
,p_name=>'P21_UOM_4'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(15842612069764190)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT N26.UOM_CODE',
'FROM NIT002 N2',
'JOIN NIM026 N26 ON N2.UOM_ID = N26.UOM_ID',
'WHERE N2.ITEM_ID = :P21_ITEM_ID',
'AND "LEVEL" = 3'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Uom 4'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select uom_code as d,',
'uom_code as r ',
'from nim026'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-'
,p_cSize=>10
,p_tag_css_classes=>'disableEnter'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16594501324011825)
,p_name=>'P21_UPC_4'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(15842612069764190)
,p_item_source_plug_id=>wwv_flow_imp.id(15842612069764190)
,p_prompt=>'Upc 4'
,p_source=>'UPC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>14
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16594578984011826)
,p_name=>'P21_PRICE_4'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(15842612069764190)
,p_item_source_plug_id=>wwv_flow_imp.id(15842612069764190)
,p_prompt=>'Price 4'
,p_format_mask=>'999G999G999G999G990D00'
,p_source=>'PRICE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>8
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16703213956522914)
,p_name=>'P21_PER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(15842612069764190)
,p_item_default=>'per'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(4382138690084278)
,p_item_template_options=>'#DEFAULT#:margin-top-md:margin-bottom-none:t-Form-fieldContainer--normalDisplay'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16703393610522915)
,p_name=>'P21_EA_PER'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(15842612069764190)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--normalDisplay'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16703497755522916)
,p_name=>'P21_EA_PER_1'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(15842612069764190)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--normalDisplay'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16703573818522917)
,p_name=>'P21_EA_PER_2'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(15842612069764190)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--normalDisplay'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19846853641977032)
,p_name=>'P21_VENDOR_SEQ'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(14947798290654200)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(8432857350335982)
,p_validation_name=>'Required Brand Code'
,p_validation_sequence=>10
,p_validation=>'P21_BRAND_CODE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Brand Code is required.',
''))
,p_associated_item=>wwv_flow_imp.id(15155329714215482)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(8433216880335982)
,p_validation_name=>'Required SIC Code'
,p_validation_sequence=>20
,p_validation=>'P21_SIC_CODE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'SIC Code is required.'
,p_associated_item=>wwv_flow_imp.id(15155811824215487)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(8433697312335984)
,p_validation_name=>'N or Y'
,p_validation_sequence=>30
,p_validation=>':P21_HAS_SERIAL_NUMBER IN (''N'', ''Y'')'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Has Serial Number? should be N or Y only'
,p_associated_item=>wwv_flow_imp.id(15154781288215477)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8438432932335990)
,p_name=>'Change_brand'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P21_BRAND_CODE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8438948432335990)
,p_event_id=>wwv_flow_imp.id(8438432932335990)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P21_BRAND_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'Select brand_id from nim022 where brand_code = :P21_BRAND_CODE'
,p_attribute_07=>'P21_BRAND_CODE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8439460770335992)
,p_event_id=>wwv_flow_imp.id(8438432932335990)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P21_BRAND_NAME'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'Select brand_name from nim022 where brand_code = :P21_BRAND_CODE'
,p_attribute_07=>'P21_BRAND_CODE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8437069560335989)
,p_name=>'Change_SIC'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P21_SIC_CODE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8437550565335990)
,p_event_id=>wwv_flow_imp.id(8437069560335989)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P21_SIC_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'select sic_id from nim023 where sic_code = :P21_SIC_CODE'
,p_attribute_07=>'P21_SIC_CODE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8438092758335990)
,p_event_id=>wwv_flow_imp.id(8437069560335989)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P21_SIC_NAME'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'select sic_name from nim023 where sic_code = :P21_SIC_CODE'
,p_attribute_07=>'P21_SIC_CODE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8439855978335992)
,p_name=>'Change_dept'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P21_DEPT_CODE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8440303021335992)
,p_event_id=>wwv_flow_imp.id(8439855978335992)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P21_DEPT_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'Select dept_id from nim024 where dept_code = :P21_DEPT_CODE'
,p_attribute_07=>'P21_DEPT_CODE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8440801665335993)
,p_event_id=>wwv_flow_imp.id(8439855978335992)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P21_DEPT_NAME'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'select dept_name from nim024 where dept_code = :P21_DEPT_CODE'
,p_attribute_07=>'P21_DEPT_CODE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8441211871335993)
,p_name=>'Change_class'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P21_CLASS_CODE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8441784617335993)
,p_event_id=>wwv_flow_imp.id(8441211871335993)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P21_CLASS_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'select class_id from nim025 where class_code = :P21_CLASS_CODE'
,p_attribute_07=>'P21_CLASS_CODE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8442246750335995)
,p_event_id=>wwv_flow_imp.id(8441211871335993)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P21_CLASS_NAME'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'select class_name from nim025 where class_code = :P21_CLASS_CODE'
,p_attribute_07=>'P21_CLASS_CODE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8442693811335995)
,p_name=>'Change UOM smallest'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P21_UOM_1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8443177737335995)
,p_event_id=>wwv_flow_imp.id(8442693811335995)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P21_UOM_ID_1'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'select uom_id from nim026 where uom_code = :P21_UOM_1'
,p_attribute_07=>'P21_UOM_1'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16706793118522949)
,p_event_id=>wwv_flow_imp.id(8442693811335995)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P21_EA_PER,P21_EA_PER_1,P21_EA_PER_2'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$v(''P21_UOM_1'') + '' per'''
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8434346069335985)
,p_name=>'change UOM Master'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P21_UOM_2'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8434889011335987)
,p_event_id=>wwv_flow_imp.id(8434346069335985)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P21_UOM_ID_2'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'select uom_id from nim026 where uom_code = :P21_UOM_2'
,p_attribute_07=>'P21_UOM_2'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8435211866335987)
,p_name=>'change UOM IP1'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P21_UOM_3'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8435753808335989)
,p_event_id=>wwv_flow_imp.id(8435211866335987)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P21_UOM_ID_3'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'select uom_id from nim026 where uom_code = :P21_UOM_3'
,p_attribute_07=>'P21_UOM_3'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8436165151335989)
,p_name=>'change UOM IP2'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P21_UOM_4'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8436693320335989)
,p_event_id=>wwv_flow_imp.id(8436165151335989)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P21_UOM_ID_4'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'select uom_id from nim026 where uom_code = :P21_UOM_4'
,p_attribute_07=>'P21_UOM_4'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12917804759686832)
,p_name=>'Retrieve NIT002 UOM'
,p_event_sequence=>90
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12917905102686833)
,p_event_id=>wwv_flow_imp.id(12917804759686832)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process("GET_NIT002_DATA", {',
'    pageItems: ["P21_ITEM_ID"]',
'}, {',
'    dataType: ''json''',
'})',
'.done((data) => {',
'    if (data.length > 0) {',
'',
'        let firstUOMCode = '''';',
'        ',
'        data.forEach((row, index) => {',
'            ',
'            ',
'            let upcField = $("#P21_UPC_" + (index + 1));',
'            let priceField = $("#P21_PRICE_" + (index + 1)).prop(''disabled'', true);',
'            let quantityField = $("#P21_QUANTITY_" + (index + 1));',
'            let uomField = $("#P21_UOM_" + (index + 1));',
'            let uomId = $("#P21_UOM_ID_" + (index + 1));',
'',
'            upcField.val(row.UPC);',
'            //priceField.val(row.PRICE).addClass("is-disabled apex_disabled");',
'            let price = parseFloat(row.PRICE);',
'            if (!isNaN(price)) {',
'                priceField.val(price.toFixed(2)).addClass("is-disabled apex_disabled");',
'            } else {',
'                priceField.val('''');',
'            }',
'',
'            quantityField.val(row.QUANTITY);',
'            uomId.val(row.UOM_ID)',
'            uomField.val(row.UOM_CODE); ',
'',
'        if (index === 0) {',
'            firstUOMCode = row.UOM_CODE;',
'        }',
'',
'        });',
'',
'        if (firstUOMCode) {',
'        $("#P21_EA_PER").text(firstUOMCode + " per");',
'        $("#P21_EA_PER_1").text(firstUOMCode + " per");',
'        $("#P21_EA_PER_2").text(firstUOMCode + " per");',
'        }',
'    }',
'',
'    trackInitialValues(pagePrefix, upcFieldIDs);',
'',
'    if ($("#P21_UPC_4").val().trim() === '''') {',
'    $("#P21_UOM_4").val('''');',
'    $("#P21_UOM_4_HIDDENVALUE").val('''');',
'    }',
'',
'    if ($("#P21_UPC_3").val().trim() === '''') {',
'    $("#P21_UOM_3").val('''');',
'    $("#P21_UOM_3_HIDDENVALUE").val('''');',
'    }',
'',
'});',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11802784131825324)
,p_name=>'Retrieve NIT007 Vendor'
,p_event_sequence=>100
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11802882698825325)
,p_event_id=>wwv_flow_imp.id(11802784131825324)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process("GET_DATA", {',
'    pageItems: ["P21_ITEM_ID"]',
'}, {',
'    dataType: ''json''',
'})',
'.done((data) => {',
'',
'    if (data.length > 0) {',
'',
'        $(''#P21_VENDOR_CODE'').val(data[0].VENDOR_CODE);',
'        $(''#P21_VENDOR_NAME_DISPLAY'').text(data[0].VENDOR_NAME);',
'        $(''#P21_ITEM_NUMBER'').val(data[0].ITEM_NUMBER);',
'',
'        let lcf = parseFloat(data[0].LANDED_COST_FACTOR);',
'        if (!isNaN(lcf)) {',
'            $(''#P21_LANDED_COST_FACTOR'').val(lcf.toFixed(2));',
'        } else {',
'            $(''#P21_LANDED_COST_FACTOR'').val('''');',
'        }',
'',
'        $(''#P21_VENDOR_LABEL_DISPLAY'').text(''Vendor 1'');',
'        $(''#P21_VENDOR_SEQ'').val(data[0].VENDOR_SEQUENCE);',
'',
'',
'/*',
'        original row',
'*/',
'',
'        data.slice(1).forEach((item, index) => {',
'            ',
'            marker++;',
'',
'            let vendorUpdateClone = $(".row.vendors-update").first().clone();',
'',
'            vendorUpdateClone.find("input, select, a-autocomplete, span.display_only.apex-item-display-only").each(function() {',
'                let currentId = $(this).attr(''id'');',
'                if (currentId) {',
'                    let newId = currentId + "_" + marker; ',
'                    $(this).attr(''id'', newId); ',
'',
'',
'                    if (newId.includes(''VENDOR_CODE'')) {',
'                        $(this).val(item.VENDOR_CODE);',
'                        addVendorCodeChangeListener($(this), vendorUpdateClone);',
'                    }',
'                    if (newId.includes(''VENDOR_NAME_DISPLAY'')) {',
'                        $(this).text(item.VENDOR_NAME)',
'                    }',
'                    if (newId.includes(''ITEM_NUMBER'')) {',
'                        $(this).val(item.ITEM_NUMBER);',
'                    }',
'                    if (newId.includes(''LANDED_COST_FACTOR'')) {',
'                        $(this).val(item.LANDED_COST_FACTOR);',
'                    }',
'                    if (newId.includes(''VENDOR_SEQ'')) {',
'                        $(this).val(item.VENDOR_SEQUENCE);',
'                    }',
'',
'                }',
'            });',
'',
'            vendorUpdateClone.find("span[id*=''VENDOR_LABEL_DISPLAY'']").text(`Vendor ${marker}`);',
'',
'            vendorUpdateClone.find("span[id*=''error_placeholder'']").each(function() {',
'            let currentErrorId = $(this).attr(''id'');',
'            let newErrorId = currentErrorId ? currentErrorId.replace(/(P21_\w+)(_error_placeholder)/, `$1_${marker}$2`) : currentErrorId;',
'            $(this).attr(''id'', newErrorId).removeClass(''u-visible'').addClass(''u-hidden'');',
'            });',
'',
'            vendorUpdateClone.insertAfter($(".row.vendors-update:last"));',
'',
'            let newVendorCodeField = vendorUpdateClone.find("input[id*=''VENDOR_CODE'']");',
'            addVendorCodeChangeListener(newVendorCodeField, vendorUpdateClone);',
'',
'            let newVendorField = vendorUpdateClone.find("input[id*=''VENDOR_CODE'']");',
'            let newVendorItemNo = vendorUpdateClone.find("input[id*=''ITEM_NUMBER'']");',
'            let newLandedCostFactor = vendorUpdateClone.find("input[id*=''LANDED_COST_FACTOR'']");',
'            vendorCodeBlur(newVendorField, newVendorItemNo, newLandedCostFactor);',
'',
'            let vendorCloneFieldsGroup = [',
'            { id: newVendorCodeField.attr(''id''), pattern: ''alphabets'' }, ',
'            { id: newVendorItemNo.attr(''id''), pattern: ''alphanumeric'' }',
'            ];',
'',
'            let vendorLCF = { id: newLandedCostFactor.attr(''id''), pattern: ''decimal''};',
'',
'            vendorsLCFArray.push(vendorLCF);',
'',
'            vendorsGroupArray.push(vendorCloneFieldsGroup);',
'',
'        });',
'    }',
'',
'});',
'',
'',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12917231755686826)
,p_name=>'Submit'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(12917187366686825)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12917380840686827)
,p_event_id=>wwv_flow_imp.id(12917231755686826)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.message.clearErrors();',
'',
'validateAllFields(pagePrefix, fieldsToValidate, upcFieldIDs, [optionalFieldsGroup1, optionalFieldsGroup2], vendorsGroupArray, vendorsLCFArray, isUpdatePage, uomFieldIDs, exciseAndSelling).then(isValid => {',
'    if (isValid) {',
'',
'    let vendorsData = [];',
'    $(".row.vendors-update").each(function() {',
'        let vendorObj = {',
'            "vendor_code": $(this).find("input[id*=''VENDOR_CODE'']").val(),',
'            "item_number": $(this).find("input[id*=''ITEM_NUMBER'']").val(),',
'            "landed_cost_factor": $(this).find("input[id*=''LANDED_COST_FACTOR'']").val(),',
'            "vendor_sequence": $(this).find("input[id*=''VENDOR_SEQ'']").val()',
'        };',
'        vendorsData.push(vendorObj);',
'    });',
'',
'',
'    let jsonObject = {',
'        "item_id": $("#P21_ITEM_ID").val(),',
'        "brand_id": $("#P21_BRAND_ID").val(),',
'        "sic_id": $("#P21_SIC_ID").val(),',
'        "dept_id": $("#P21_DEPT_ID").val(),',
'        "class_id": $("#P21_CLASS_ID").val(),',
'        "item_desc": $("#P21_ITEM_DESC").val(),',
'        "item_num": $("#P21_ITEM_NUM").val(),',
'        "min_stock_lvl": $("#P21_MIN_STOCK_LVL").val(),',
'        "max_stock_lvl": $("#P21_MAX_STOCK_LVL").val(),',
'        "full_item_desc": $("#P21_FULL_ITEM_DESC").val(),',
'        "has_serial_number": $("#P21_HAS_SERIAL_NUMBER").val(),',
'        "excise_tax_rate": $("#P21_EXCISE_TAX_RATE").val(),',
'        "selling_price_factor": $("#P21_SELLING_PRICE_FACTOR").val(),',
'        "uom_id_1": $("#P21_UOM_ID_1").val(),',
'        "upc_1": $("#P21_UPC_1").val(),',
'        "price_1": $("#P21_PRICE_1").val(),',
'        "quantity_1": $("#P21_QUANTITY_1").val(),',
'        "uom_id_master": $("#P21_UOM_ID_2").val(),',
'        "upc_master": $("#P21_UPC_2").val(),',
'        "price_master": $("#P21_PRICE_2").val(),',
'        "quantity_master": $("#P21_QUANTITY_2").val(),',
'        "uom_id_ip1": $("#P21_UOM_ID_3").val(),',
'        "upc_ip1": $("#P21_UPC_3").val(),',
'        "price_ip1": $("#P21_PRICE_3").val(),',
'        "quantity_ip1": $("#P21_QUANTITY_3").val(),',
'        "uom_id_ip2": $("#P21_UOM_ID_4").val(),',
'        "upc_ip2": $("#P21_UPC_4").val(),',
'        "price_ip2": $("#P21_PRICE_4").val(),',
'        "quantity_ip2": $("#P21_QUANTITY_4").val(),',
'        "vendor_data": vendorsData',
'    };',
'',
'    console.log(JSON.stringify(jsonObject))',
'    // if validation is ok, send data through ajax',
'    apex.server.process("SUBMIT_DATA", {',
'        p_clob_01: JSON.stringify(jsonObject)',
'',
'    },{',
'        dataType: ''json''',
'    }).done((data) => {',
'        ',
'        let appId = $v(''pFlowId'');',
'        let sessionId = $v(''pInstance''); ',
'',
'        apex.navigation.redirect(''f?p='' + appId + '':4:'' + sessionId);',
'',
'    }).fail((jqXHR, textStatus, errorThrown) => {',
'        console.log("Error")',
'        // do error handling',
'    }).always(() => {',
'        // do tasks which will happen regardless of success or fail',
'    });',
'',
'    } else {',
'',
'    }',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12917629116686830)
,p_name=>'Add Vendor'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(12917581706686829)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12917709640686831)
,p_event_id=>wwv_flow_imp.id(12917629116686830)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let vendorUpdateClone = $(".row.vendors-update").first().clone();',
'    ',
'    marker++;',
'',
'    vendorUpdateClone.find("input, select, a-autocomplete, span.display_only.apex-item-display-only").each(function() {',
'        let currentId = $(this).attr(''id'');',
'        if (currentId) {',
'            let newId = currentId + "_" + marker; ',
'            $(this).attr(''id'', newId); ',
'            ',
'            // Clear the values for the new row fields',
'            if (newId.includes(''VENDOR_CODE'') || newId.includes(''ITEM_NUMBER'') || newId.includes(''LANDED_COST_FACTOR'') || newId.includes(''VENDOR_SEQ'') ) {',
'                $(this).val('''');',
'                $(this).removeClass(''apex-page-item-error'')',
'            }',
'            if (newId.includes(''VENDOR_NAME'')) {',
'                $(this).text(''''); ',
'            }',
'        }',
'    });',
'',
'',
'    vendorUpdateClone.find("span[id*=''VENDOR_LABEL_DISPLAY'']").text(`Vendor ${marker}`);',
'',
'    vendorUpdateClone.find("span[id*=''error_placeholder'']").each(function() {',
'    let currentErrorId = $(this).attr(''id'');',
'    let newErrorId = currentErrorId ? currentErrorId.replace(/(P21_\w+)(_error_placeholder)/, `$1_${marker}$2`) : currentErrorId;',
'    $(this).attr(''id'', newErrorId).removeClass(''u-visible'').addClass(''u-hidden'');',
'    });',
'',
'',
'    vendorUpdateClone.insertAfter($(".row.vendors-update:last"));',
'',
'    vendorUpdateClone.find("input[id*=''VENDOR_CODE'']").focus();',
'',
'    let newVendorCodeField = vendorUpdateClone.find("input[id*=''VENDOR_CODE'']");',
'    addVendorCodeChangeListener(newVendorCodeField, vendorUpdateClone);',
'',
'    let newVendorField = vendorUpdateClone.find("input[id*=''VENDOR_CODE'']");',
'    let newVendorItemNo = vendorUpdateClone.find("input[id*=''ITEM_NUMBER'']");',
'    let newLandedCostFactor = vendorUpdateClone.find("input[id*=''LANDED_COST_FACTOR'']");',
'    vendorCodeBlur(newVendorField, newVendorItemNo, newLandedCostFactor);',
'',
'    let vendorCloneFieldsGroup = [',
'    { id: newVendorCodeField.attr(''id''), pattern: ''alphabets'' }, ',
'    { id: newVendorItemNo.attr(''id''), pattern: ''alphanumeric'' }',
'    ];',
'',
'    let vendorLCF = { id: newLandedCostFactor.attr(''id''), pattern: ''decimal''};',
'',
'    vendorsLCFArray.push(vendorLCF);',
'',
'    vendorsGroupArray.push(vendorCloneFieldsGroup);',
'    cloneCtr++;',
'',
'  '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11803625117825333)
,p_name=>'Change Vendor'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P21_VENDOR_CODE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11803757101825334)
,p_event_id=>wwv_flow_imp.id(11803625117825333)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P21_VENDOR_NAME'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'Select vendor_name from nit006 where vendor_code = :P21_VENDOR_CODE'
,p_attribute_07=>'P21_VENDOR_CODE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8433958081335984)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Process'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'UPDATE NIT001',
'SET ITEM_NUM = :P21_ITEM_NUM,',
'    ITEM_DESC = :P21_ITEM_DESC,',
'    FULL_ITEM_DESC = :P21_FULL_ITEM_DESC,',
'    BRAND_ID = :P21_BRAND_ID,',
'    SIC_ID = :P21_SIC_ID,',
'    DEPT_ID = :P21_DEPT_ID,',
'    CLASS_ID = :P21_CLASS_ID,',
'    HAS_SERIAL_NUMBER = :P21_HAS_SERIAL_NUMBER,',
'    MIN_STOCK_LVL = :P21_MIN_STOCK_LVL,',
'    MAX_STOCK_LVL = :P21_MAX_STOCK_LVL,',
'    EXCISE_TAX_RATE = :P21_EXCISE_TAX_RATE,',
'    SELLING_PRICE_FACTOR = :P21_SELLING_PRICE_FACTOR,',
'    UPDATE_USER = :APP_USER,',
'    UPDATE_DATE = SYSDATE',
'WHERE ITEM_ID = :P21_ITEM_ID;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
,p_internal_uid=>8433958081335984
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8430274596335960)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(15138572679215394)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Update Item'
,p_internal_uid=>8430274596335960
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8420539551335943)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(15842612069764190)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Update Item UPC'
,p_internal_uid=>8420539551335943
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11802914663825326)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_DATA'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_cursor sys_refcursor;',
'begin',
'',
'    OPEN l_cursor FOR ',
'    SELECT nit006.vendor_code, nit006.vendor_name, nit007.item_number, nit007.landed_cost_factor, nit007.vendor_sequence',
'    FROM nit007',
'    JOIN nit006 ON nit006.vendor_id = nit007.vendor_id',
'    WHERE nit007.item_id = :P21_ITEM_ID',
'    ORDER BY nit007.vendor_sequence;',
'',
'    APEX_JSON.write(l_cursor);',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>11802914663825326
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11803882131825335)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_VENDOR_NAME'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_x01 VARCHAR2(10);',
'    l_vendor_name  VARCHAR2(100);',
'BEGIN',
'',
'    l_x01 := apex_application.g_x01;',
'',
'    -- Retrieve vendor name from the table NIT006 based on vendor_code',
'    SELECT vendor_name',
'    INTO l_vendor_name',
'    FROM NIT006',
'    WHERE UPPER(vendor_code) = UPPER(l_x01);',
'',
'    -- Return the vendor name as a result to the client-side',
'    htp.p(l_vendor_name);',
'',
'EXCEPTION',
'    -- Handle case where no vendor is found',
'    WHEN NO_DATA_FOUND THEN',
'        htp.p('''');',
'    -- Handle other potential errors',
'    WHEN OTHERS THEN',
'        htp.p(''Error retrieving vendor name'');',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>11803882131825335
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12917438143686828)
,p_process_sequence=>30
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SUBMIT_DATA'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_json_clob CLOB;',
'    l_json json_object_t;',
'',
'    l_item_id nit001.item_id%TYPE;',
'    l_brand_id nit001.brand_id%type;',
'    l_sic_id nit001.sic_id%type;',
'    l_dept_id nit001.dept_id%type;',
'    l_class_id nit001.class_id%type;',
'    l_item_desc nit001.item_desc%type;',
'    l_item_num nit001.item_num%type;',
'    l_min_stock_lvl nit001.min_stock_lvl%type;',
'    l_max_stock_lvl nit001.max_stock_lvl%type;',
'    l_full_item_desc nit001.full_item_desc%type;',
'    l_has_serial_number nit001.has_serial_number%type;',
'    l_excise_tax_rate nit001.excise_tax_rate%type;',
'    l_selling_price_factor nit001.selling_price_factor%type;',
'    l_uom_id_1 nit002.uom_id%type;',
'    l_upc_1 nit002.upc%type;',
'    l_price_1 nit002.price%type;',
'    l_quantity_1 nit002.quantity%type;',
'    l_quantity_master nit002.quantity%type;',
'    l_quantity_ip1 nit002.quantity%type;',
'    l_quantity_ip2 nit002.quantity%type;',
'    l_uom_id_master nit002.uom_id%type;',
'    l_upc_master nit002.upc%type;',
'    l_price_master nit002.price%type;',
'    l_uom_id_ip1 nit002.uom_id%type;',
'    l_upc_ip1 nit002.upc%type;',
'    l_price_ip1 nit002.price%type;',
'    l_uom_id_ip2 nit002.uom_id%type;',
'    l_upc_ip2 nit002.upc%type;',
'    l_price_ip2 nit002.price%type;',
'    l_vendor_code nit006.vendor_code%type;',
'    l_vendor_id nit006.vendor_id%type;',
'    l_vendor_item_no nit007.item_number%type;',
'    l_landed_cost_factor nit007.landed_cost_factor%type;',
'    l_vendor_sequence nit007.vendor_sequence%type;',
'',
'    l_old_brand_id nit001.brand_id%type;',
'    l_old_sic_id nit001.sic_id%type;',
'    l_old_dept_id nit001.dept_id%type;',
'    l_old_class_id nit001.class_id%type;',
'    l_old_item_desc nit001.item_desc%type;',
'    l_old_item_num nit001.item_num%type;',
'    l_old_min_stock_lvl nit001.min_stock_lvl%type;',
'    l_old_max_stock_lvl nit001.max_stock_lvl%type;',
'    l_old_full_item_desc nit001.full_item_desc%type;',
'    l_old_has_serial_number nit001.has_serial_number%type;',
'    l_old_excise_tax_rate nit001.excise_tax_rate%type;',
'    l_old_selling_price_factor nit001.selling_price_factor%type;',
'',
'    l_old_brand_code nim022.brand_code%type;',
'    l_brand_code nim022.brand_code%type;',
'    l_old_sic_code nim023.sic_code%type;',
'    l_sic_code nim023.sic_code%type;',
'    l_old_dept_code nim024.dept_code%type;',
'    l_dept_code nim024.dept_code%type;',
'    l_old_class_code nim025.class_code%type;',
'    l_class_code nim025.class_code%type;',
'',
'    l_old_uom_id_1 nit002.uom_id%type; ',
'    l_old_upc_1 nit002.upc%type;',
'    l_old_quantity_1 nit002.quantity%type; ',
'    l_old_uom_code_1 nim026.uom_code%type;',
'    l_uom_code_1 nim026.uom_code%type;',
'',
'    l_old_uom_id_master nit002.uom_id%type; ',
'    l_old_upc_master nit002.upc%type;',
'    l_old_quantity_master nit002.quantity%type; ',
'    l_old_uom_code_master nim026.uom_code%type;',
'    l_uom_code_master nim026.uom_code%type;',
'',
'    l_old_uom_id_ip1 nit002.uom_id%type; ',
'    l_old_upc_ip1 nit002.upc%type;',
'    l_old_quantity_ip1 nit002.quantity%type; ',
'    l_old_uom_code_ip1 nim026.uom_code%type;',
'    l_uom_code_ip1 nim026.uom_code%type;',
'    v_exists_ip1 INTEGER;',
'',
'    l_old_uom_id_ip2 nit002.uom_id%type; ',
'    l_old_upc_ip2 nit002.upc%type;',
'    l_old_quantity_ip2 nit002.quantity%type; ',
'    l_old_uom_code_ip2 nim026.uom_code%type;',
'    l_uom_code_ip2 nim026.uom_code%type;',
'    v_exists_ip2 INTEGER;',
'',
'    l_old_vendor_id nit007.vendor_id%type;',
'    l_old_vendor_code nit006.vendor_code%type;',
'    l_old_vendor_item_no nit007.item_number%type;',
'    l_old_landed_cost_factor nit007.landed_cost_factor%type;',
'    l_old_vendor_sequence nit007.vendor_sequence%type;',
'    v_exists_vendor INTEGER;',
'',
'    l_existing_vendor_id nit007.vendor_id%type;',
'    v_exists_in_json INTEGER;',
'',
'BEGIN',
'',
'    l_json_clob := apex_application.g_clob_01;',
'',
'    l_json := json_object_t.parse(l_json_clob);',
'',
'    l_item_id := l_json.get_number(''item_id'');',
'    l_brand_id := l_json.get_number(''brand_id'');',
'    l_sic_id := l_json.get_number(''sic_id'');',
'    l_dept_id := l_json.get_number(''dept_id'');',
'    l_class_id := l_json.get_number(''class_id'');',
'    l_item_desc := l_json.get_string(''item_desc'');',
'    l_item_num := l_json.get_string(''item_num'');',
'    l_min_stock_lvl := l_json.get_number(''min_stock_lvl'');',
'    l_max_stock_lvl := l_json.get_number(''max_stock_lvl'');',
'    l_full_item_desc := l_json.get_string(''full_item_desc'');',
'    l_has_serial_number := l_json.get_string(''has_serial_number'');',
'    l_selling_price_factor := l_json.get_number(''selling_price_factor'');',
'    l_excise_tax_rate := l_json.get_number(''excise_tax_rate'');',
'    l_uom_id_1 := l_json.get_number(''uom_id_1'');',
'    l_upc_1 := l_json.get_string(''upc_1'');',
'    l_price_1 := l_json.get_number(''price_1'');',
'    l_quantity_1 := l_json.get_number(''quantity_1'');',
'    l_quantity_master := l_json.get_number(''quantity_master'');',
'    l_uom_id_master := l_json.get_number(''uom_id_master'');',
'    l_upc_master := l_json.get_string(''upc_master'');',
'    l_price_master := l_json.get_number(''price_master'');',
'    l_uom_id_ip1 := l_json.get_number(''uom_id_ip1'');',
'    l_upc_ip1 := l_json.get_string(''upc_ip1'');',
'    l_price_ip1 := l_json.get_number(''price_ip1'');',
'    l_quantity_ip1 := l_json.get_number(''quantity_ip1'');',
'    l_uom_id_ip2 := l_json.get_number(''uom_id_ip2'');',
'    l_upc_ip2 := l_json.get_string(''upc_ip2'');',
'    l_price_ip2 := l_json.get_number(''price_ip2'');',
'    l_quantity_ip2 := l_json.get_number(''quantity_ip2'');',
'',
'--NIT001',
'    SELECT item_desc, full_item_desc, brand_id, sic_id, dept_id, class_id, has_serial_number,',
'        min_stock_lvl, max_stock_lvl, excise_tax_rate, selling_price_factor',
'    INTO l_old_item_desc, l_old_full_item_desc, l_old_brand_id, l_old_sic_id, l_old_dept_id, l_old_class_id, l_old_has_serial_number,',
'        l_old_min_stock_lvl, l_old_max_stock_lvl, l_old_excise_tax_rate, l_old_selling_price_factor',
'    FROM NIT001',
'    WHERE item_id = l_item_id;',
'',
'    IF l_old_item_desc <> l_item_desc THEN',
'	    INSERT INTO NIT003 (item_id, changed_column_name, old_value, new_value, create_user, create_date)',
'        VALUES (l_item_id, ''ITEM DESC'', l_old_item_desc, l_item_desc, :APP_USER, SYSTIMESTAMP);',
'    END IF;',
'',
'    IF l_old_full_item_desc <> l_full_item_desc THEN',
'            INSERT INTO NIT003 (item_id, changed_column_name, old_value, new_value, create_user, create_date)',
'            VALUES (l_item_id, ''FULL ITEM DESC'', l_old_full_item_desc, l_full_item_desc, :APP_USER, SYSTIMESTAMP);',
'    END IF;',
'',
'    IF l_old_has_serial_number <> l_has_serial_number THEN',
'    	INSERT INTO NIT003 (item_id, changed_column_name, old_value, new_value, create_user, create_date)',
'            VALUES (l_item_id, ''HAS SERIAL NUM'', l_old_has_serial_number, l_has_serial_number, :APP_USER, SYSTIMESTAMP);',
'    END IF;',
'',
'    IF l_old_selling_price_factor <> l_selling_price_factor THEN',
'    	INSERT INTO NIT003 (item_id, changed_column_name, old_value, new_value, create_user, create_date)',
'            VALUES (l_item_id, ''SELLING PRICE FACTOR'', l_old_selling_price_factor, l_selling_price_factor, :APP_USER, SYSTIMESTAMP);',
'    END IF;',
'',
'    IF l_old_excise_tax_rate <> l_excise_tax_rate THEN',
'    	INSERT INTO NIT003 (item_id, changed_column_name, old_value, new_value, create_user, create_date)',
'            VALUES (l_item_id, ''EXCISE TAX RATE'', l_old_excise_tax_rate, l_excise_tax_rate, :APP_USER, SYSTIMESTAMP);',
'    END IF;',
'',
'    IF l_old_brand_id <> l_brand_id THEN',
'    	SELECT brand_code',
'    	INTO l_old_brand_code',
'    	FROM NIM022',
'    	WHERE brand_id = l_old_brand_id;',
'',
'    	SELECT brand_code',
'    	INTO l_brand_code',
'    	FROM NIM022',
'    	WHERE brand_id = l_brand_id;',
'    	',
'    	INSERT INTO NIT003 (item_id, changed_column_name, old_value, new_value, create_user, create_date)',
'            VALUES (l_item_id, ''BRAND CODE'', l_old_brand_code, l_brand_code, :APP_USER, SYSTIMESTAMP);',
'    END IF;',
'',
'    IF l_old_sic_id <> l_sic_id THEN',
'    	SELECT sic_code',
'    	INTO l_old_sic_code',
'    	FROM NIM023',
'    	WHERE sic_id = l_old_sic_id;',
'',
'    	SELECT sic_code',
'    	INTO l_sic_code',
'    	FROM NIM023',
'    	WHERE sic_id = l_sic_id;',
'    	',
'    	INSERT INTO NIT003 (item_id, changed_column_name, old_value, new_value, create_user, create_date)',
'            VALUES (l_item_id, ''SIC CODE'', l_old_sic_code, l_sic_code, :APP_USER, SYSTIMESTAMP);',
'    END IF;',
'',
'    IF l_old_dept_id <> l_dept_id THEN',
'    	SELECT dept_code',
'    	INTO l_old_dept_code',
'    	FROM NIM024',
'    	WHERE dept_id = l_old_dept_id;',
'',
'    	SELECT dept_code',
'    	INTO l_dept_code',
'    	FROM NIM024',
'    	WHERE dept_id = l_dept_id;',
'    	',
'    	INSERT INTO NIT003 (item_id, changed_column_name, old_value, new_value, create_user, create_date)',
'            VALUES (l_item_id, ''DEPT CODE'', l_old_dept_code, l_dept_code, :APP_USER, SYSTIMESTAMP);',
'    END IF;',
'',
'    IF l_old_class_id <> l_class_id THEN',
'    	SELECT class_code',
'    	INTO l_old_class_code',
'    	FROM NIM025',
'    	WHERE class_id = l_old_class_id;',
'',
'    	SELECT class_code',
'    	INTO l_class_code',
'    	FROM NIM025',
'    	WHERE class_id = l_class_id;',
'    	',
'    	INSERT INTO NIT003 (item_id, changed_column_name, old_value, new_value, create_user, create_date)',
'            VALUES (l_item_id, ''CLASS CODE'', l_old_class_code, l_class_code, :APP_USER, SYSTIMESTAMP);',
'    END IF;',
'',
'    UPDATE NIT001',
'    SET item_desc = l_item_desc,',
'        full_item_desc = l_full_item_desc,',
'        brand_id = l_brand_id,',
'        sic_id = l_sic_id,',
'        dept_id = l_dept_id,',
'        class_id = l_class_id,',
'        has_serial_number = l_has_serial_number,',
'        min_stock_lvl = l_min_stock_lvl,',
'        max_stock_lvl = l_max_stock_lvl,',
'        excise_tax_rate = l_excise_tax_rate,',
'        selling_price_factor = l_selling_price_factor,',
'        update_user = :APP_USER,',
'        update_date = SYSDATE',
'    WHERE item_id = l_item_id;',
'',
'--NIT002',
'--smallest',
'    SELECT uom_id, upc, quantity',
'    INTO l_old_uom_id_1, l_old_upc_1, l_old_quantity_1',
'    FROM NIT002',
'    WHERE item_id = l_item_id',
'    AND "LEVEL" = 1;',
'',
'    IF l_old_uom_id_1 <> l_uom_id_1 THEN',
'    	SELECT uom_code',
'    	INTO l_old_uom_code_1',
'    	FROM NIM026',
'    	WHERE uom_id = l_old_uom_id_1;',
'',
'    	SELECT uom_code',
'    	INTO l_uom_code_1',
'    	FROM NIM026',
'    	WHERE uom_id = l_uom_id_1;',
'    	',
'    	INSERT INTO NIT003 (item_id, changed_column_name, old_value, new_value, create_user, create_date)',
'        VALUES (l_item_id, ''UOM'', l_old_uom_code_1, l_uom_code_1, :APP_USER, SYSTIMESTAMP);',
'    END IF;',
'',
'    IF l_old_upc_1 <> l_upc_1 THEN',
'	    INSERT INTO NIT003 (item_id, changed_column_name, old_value, new_value, create_user, create_date)',
'        VALUES (l_item_id, ''UPC'', l_old_upc_1, l_upc_1, :APP_USER, SYSTIMESTAMP);',
'    END IF; ',
'',
'    IF l_old_quantity_1 <> l_quantity_1 THEN',
'	    INSERT INTO NIT003 (item_id, changed_column_name, old_value, new_value, create_user, create_date)',
'        VALUES (l_item_id, ''QUANTITY'', l_old_quantity_1, l_quantity_1, :APP_USER, SYSTIMESTAMP);',
'    END IF; ',
'',
'    UPDATE NIT002',
'    SET UOM_ID = l_uom_id_1,',
'        UPC = l_upc_1,',
'        QUANTITY = l_quantity_1,',
'        UPDATE_USER = :app_user,',
'        UPDATE_DATE = SYSDATE',
'    WHERE item_id = l_item_id',
'    AND "LEVEL" = 1;',
'',
'    SELECT uom_id, upc, quantity',
'    INTO l_old_uom_id_master, l_old_upc_master, l_old_quantity_master',
'    FROM NIT002',
'    WHERE item_id = l_item_id',
'    AND "LEVEL" = 4;',
'',
'--master',
' IF l_old_uom_id_master <> l_uom_id_master THEN',
'    	SELECT uom_code',
'    	INTO l_old_uom_code_master',
'    	FROM NIM026',
'    	WHERE uom_id = l_old_uom_id_master;',
'',
'    	SELECT uom_code',
'    	INTO l_uom_code_master',
'    	FROM NIM026',
'    	WHERE uom_id = l_uom_id_master;',
'    	',
'    	INSERT INTO NIT003 (item_id, changed_column_name, old_value, new_value, create_user, create_date)',
'        VALUES (l_item_id, ''UOM'', l_old_uom_code_master, l_uom_code_master, :APP_USER, SYSTIMESTAMP);',
'    END IF;',
'',
'',
'    IF l_old_upc_master <> l_upc_master THEN',
'	    INSERT INTO NIT003 (item_id, changed_column_name, old_value, new_value, create_user, create_date)',
'        VALUES (l_item_id, ''UPC'', l_old_upc_master, l_upc_master, :APP_USER, SYSTIMESTAMP);',
'    END IF; ',
'',
'   IF l_old_quantity_master <> l_quantity_master THEN',
'	    INSERT INTO NIT003 (item_id, changed_column_name, old_value, new_value, create_user, create_date)',
'        VALUES (l_item_id, ''QUANTITY'', l_old_quantity_master, l_quantity_master, :APP_USER, SYSTIMESTAMP);',
'    END IF; ',
'',
'    UPDATE NIT002',
'    SET UOM_ID = l_uom_id_master,',
'        UPC = l_upc_master,',
'        QUANTITY = l_quantity_master,',
'        UPDATE_USER = :app_user,',
'        UPDATE_DATE = SYSDATE',
'    WHERE item_id = l_item_id',
'    AND "LEVEL" = 4;',
'',
'--ip1',
'IF l_uom_id_ip1 IS NOT NULL AND l_upc_ip1 IS NOT NULL THEN',
'',
'	    SELECT COUNT(*)',
'        INTO v_exists_ip1',
'        FROM NIT002',
'        WHERE item_id = l_item_id',
'        AND "LEVEL" = 2;',
'',
'    IF v_exists_ip1 > 0 THEN',
'',
'		    SELECT uom_id, upc, quantity',
'    		INTO l_old_uom_id_ip1, l_old_upc_ip1, l_old_quantity_ip1',
'    		FROM NIT002',
'    		WHERE item_id = l_item_id',
'    		AND "LEVEL" = 2;',
'/*',
'        IF l_uom_id_ip1 IS NULL OR l_upc_ip1 IS NULL OR l_price_ip1 IS NULL OR l_quantity_ip1 IS NULL THEN',
'            DELETE FROM NIT002',
'            WHERE item_id = l_item_id',
'            AND "LEVEL" = 2;',
'',
'            INSERT INTO NIT003 (item_id, changed_column_name, old_value, new_value, create_user, create_date)',
'            VALUES (l_item_id, ''Inner Pack 1'', ''Existing values'', ''Deleted'', :APP_USER, SYSTIMESTAMP);',
'',
'        ELSE',
'*/',
'',
'    		IF l_old_uom_id_ip1 <> l_uom_id_ip1 THEN',
'        		SELECT uom_code',
'        		INTO l_old_uom_code_ip1',
'        		FROM NIM026',
'        		WHERE uom_id = l_old_uom_id_ip1;',
'',
'        		SELECT uom_code',
'        		INTO l_uom_code_ip1',
'        		FROM NIM026',
'        		WHERE uom_id = l_uom_id_ip1;',
'        	',
'        		INSERT INTO NIT003 (item_id, changed_column_name, old_value, new_value, create_user, create_date)',
'                	VALUES (l_item_id, ''UOM'', l_old_uom_code_ip1, l_uom_code_ip1, :APP_USER, SYSTIMESTAMP);',
'        	END IF;',
'',
'        	IF l_old_upc_ip1 <> l_upc_ip1 THEN',
'    	    	INSERT INTO NIT003 (item_id, changed_column_name, old_value, new_value, create_user, create_date)',
'            	VALUES (l_item_id, ''UPC'', l_old_upc_ip1, l_upc_ip1, :APP_USER, SYSTIMESTAMP);',
'        	END IF; ',
'    	',
'       		IF l_old_quantity_ip1 <> l_quantity_ip1 THEN',
'    	    	INSERT INTO NIT003 (item_id, changed_column_name, old_value, new_value, create_user, create_date)',
'            	VALUES (l_item_id, ''QUANTITY'', l_old_quantity_ip1, l_quantity_ip1, :APP_USER, SYSTIMESTAMP);',
'        	END IF; ',
'    	',
'                UPDATE NIT002',
'                SET UOM_ID = l_uom_id_ip1,',
'                    UPC = l_upc_ip1,',
'                    QUANTITY = l_quantity_ip1,',
'                    UPDATE_USER = :app_user,',
'                    UPDATE_DATE = SYSDATE',
'                WHERE item_id = l_item_id',
'                AND "LEVEL" = 2;',
'--    	END IF;',
'	    ELSE',
'',
'        	SELECT uom_code',
'        	INTO l_uom_code_ip1',
'        	FROM NIM026',
'        	WHERE uom_id = l_uom_id_ip1;',
'',
'            INSERT INTO NIT002 (item_id, UOM_ID, UPC, PRICE, QUANTITY, "LEVEL", CREATE_USER, CREATE_DATE, UPDATE_USER, UPDATE_DATE)',
'            VALUES (l_item_id, l_uom_id_ip1, l_upc_ip1, l_price_ip1, l_quantity_ip1, 2, :app_user, SYSDATE, :app_user, SYSDATE);',
'',
'            INSERT INTO NIT003 (item_id, changed_column_name, old_value, new_value, create_user, create_date)',
'            VALUES (l_item_id, ''UOM'', ''-'', l_uom_code_ip1, :APP_USER, SYSTIMESTAMP);',
'',
'    	    INSERT INTO NIT003 (item_id, changed_column_name, old_value, new_value, create_user, create_date)',
'            VALUES (l_item_id, ''UPC'', ''-'', l_upc_ip1, :APP_USER, SYSTIMESTAMP);',
'    	',
'    	    INSERT INTO NIT003 (item_id, changed_column_name, old_value, new_value, create_user, create_date)',
'            VALUES (l_item_id, ''QUANTITY'', ''-'', l_quantity_ip1, :APP_USER, SYSTIMESTAMP);',
'',
'            INSERT INTO NIT003 (item_id, changed_column_name, old_value, new_value, create_user, create_date)',
'            VALUES (l_item_id, ''PRICE'', ''-'', l_price_ip1, :APP_USER, SYSTIMESTAMP);',
'',
'',
'    END IF;',
'END IF;',
'',
'    -- ip2',
'IF l_uom_id_ip2 IS NOT NULL AND l_upc_ip2 IS NOT NULL THEN',
'',
'	    SELECT COUNT(*)',
'        INTO v_exists_ip2',
'        FROM NIT002',
'        WHERE item_id = l_item_id',
'        AND "LEVEL" = 3;',
'',
'    IF v_exists_ip2 > 0 THEN',
'',
'		SELECT uom_id, upc, quantity',
'    		INTO l_old_uom_id_ip2, l_old_upc_ip2, l_old_quantity_ip2',
'    		FROM NIT002',
'    		WHERE item_id = l_item_id',
'    		AND "LEVEL" = 3;',
'    /*',
'        IF l_uom_id_ip2 IS NULL OR l_upc_ip2 IS NULL OR l_quantity_ip2 IS NULL THEN',
'            DELETE FROM NIT002',
'            WHERE item_id = l_item_id',
'            AND "LEVEL" = 3;',
'',
'            INSERT INTO NIT003 (item_id, changed_column_name, old_value, new_value, create_user, create_date)',
'            VALUES (l_item_id, ''Inner Pack 2'', ''Existing values'', ''Deleted'', :APP_USER, SYSTIMESTAMP);',
'',
'        ELSE',
'    */',
'    		IF l_old_uom_id_ip2 <> l_uom_id_ip2 THEN',
'        		SELECT uom_code',
'        		INTO l_old_uom_code_ip2',
'        		FROM NIM026',
'        		WHERE uom_id = l_old_uom_id_ip2;',
'',
'        		SELECT uom_code',
'        		INTO l_uom_code_ip2',
'        		FROM NIM026',
'        		WHERE uom_id = l_uom_id_ip2;',
'        	',
'        		INSERT INTO NIT003 (item_id, changed_column_name, old_value, new_value, create_user, create_date)',
'                VALUES (l_item_id, ''UOM'', l_old_uom_code_ip2, l_uom_code_ip2, :APP_USER, SYSTIMESTAMP);',
'        	END IF;',
'',
'        	IF l_old_upc_ip2 <> l_upc_ip2 THEN',
'    	    	INSERT INTO NIT003 (item_id, changed_column_name, old_value, new_value, create_user, create_date)',
'            	VALUES (l_item_id, ''UPC'', l_old_upc_ip2, l_upc_ip2, :APP_USER, SYSTIMESTAMP);',
'        	END IF; ',
'    	',
'       		IF l_old_quantity_ip2 <> l_quantity_ip2 THEN',
'    	    	INSERT INTO NIT003 (item_id, changed_column_name, old_value, new_value, create_user, create_date)',
'            	VALUES (l_item_id, ''QUANTITY'', l_old_quantity_ip2, l_quantity_ip2, :APP_USER, SYSTIMESTAMP);',
'        	END IF; ',
'    	',
'                UPDATE NIT002',
'                SET UOM_ID = l_uom_id_ip2,',
'                    UPC = l_upc_ip2,',
'                    QUANTITY = l_quantity_ip2,',
'                    UPDATE_USER = :app_user,',
'                    UPDATE_DATE = SYSDATE',
'                WHERE item_id = l_item_id',
'                AND "LEVEL" = 3;',
'--        END IF;',
'	ELSE',
'',
'            SELECT uom_code',
'        	INTO l_uom_code_ip2',
'        	FROM NIM026',
'        	WHERE uom_id = l_uom_id_ip1;',
'',
'            INSERT INTO NIT002 (item_id, UOM_ID, UPC, PRICE, QUANTITY, "LEVEL", CREATE_USER, CREATE_DATE, UPDATE_USER, UPDATE_DATE)',
'            VALUES (l_item_id, l_uom_id_ip2, l_upc_ip2, l_price_ip2, l_quantity_ip2, 3, :app_user, SYSDATE, :app_user, SYSDATE);',
'',
'            INSERT INTO NIT003 (item_id, changed_column_name, old_value, new_value, create_user, create_date)',
'            VALUES (l_item_id, ''UOM'', ''-'', l_uom_code_ip2, :APP_USER, SYSTIMESTAMP);',
'',
'    	    INSERT INTO NIT003 (item_id, changed_column_name, old_value, new_value, create_user, create_date)',
'            VALUES (l_item_id, ''UPC'', ''-'', l_upc_ip2, :APP_USER, SYSTIMESTAMP);',
'    	',
'    	    INSERT INTO NIT003 (item_id, changed_column_name, old_value, new_value, create_user, create_date)',
'            VALUES (l_item_id, ''QUANTITY'', ''-'', l_quantity_ip2, :APP_USER, SYSTIMESTAMP);',
'',
'            INSERT INTO NIT003 (item_id, changed_column_name, old_value, new_value, create_user, create_date)',
'            VALUES (l_item_id, ''PRICE'', ''-'', l_price_ip2, :APP_USER, SYSTIMESTAMP);',
'',
'',
'    END IF;',
'END IF;',
'',
'    -- Handle vendor data',
'    FOR rec IN (',
'        SELECT *',
'        FROM JSON_TABLE(',
'            l_json_clob, ''$.vendor_data[*]''',
'            COLUMNS (',
'                vendor_code VARCHAR2(50) PATH ''$.vendor_code'',',
'                vendor_item_no VARCHAR2(50) PATH ''$.item_number'',',
'                landed_cost_factor NUMBER PATH ''$.landed_cost_factor'',',
'                vendor_sequence NUMBER PATH ''$.vendor_sequence''',
'            )',
'        )',
'    ) LOOP',
'        l_vendor_code := rec.vendor_code;',
'        l_vendor_item_no := rec.vendor_item_no;',
'        l_landed_cost_factor := rec.landed_cost_factor;',
'        l_vendor_sequence := rec.vendor_sequence;',
'',
'        -- Retrieve vendor_id from NIT006',
'        IF l_vendor_code IS NOT NULL THEN',
'            SELECT vendor_id',
'            INTO l_vendor_id',
'            FROM NIT006',
'            WHERE vendor_code = l_vendor_code;',
'        END IF;',
'',
'        SELECT COUNT(*)',
'        INTO v_exists_vendor',
'        FROM NIT007',
'        WHERE item_id = l_item_id',
'        AND vendor_sequence = l_vendor_sequence;',
'',
'',
'        IF v_exists_vendor > 0 THEN',
'',
'            SELECT vendor_id, ITEM_NUMBER, landed_cost_factor',
'            INTO l_old_vendor_id, l_old_vendor_item_no, l_old_landed_cost_factor',
'            FROM NIT007',
'            WHERE item_id = l_item_id',
'            AND vendor_sequence = l_vendor_sequence;',
'          ',
'            SELECT vendor_code',
'            INTO l_old_vendor_code',
'            FROM NIT006',
'            WHERE vendor_id = l_old_vendor_id;',
'',
'            IF l_vendor_code IS NOT NULL AND l_vendor_item_no IS NOT NULL THEN',
'',
'                IF l_old_vendor_id <> l_vendor_id THEN',
'                    INSERT INTO NIT003 (item_id, changed_column_name, old_value, new_value, create_user, create_date)',
'                	VALUES (l_item_id, ''VENDOR CODE'', l_old_vendor_code, l_vendor_code, :APP_USER, SYSTIMESTAMP);',
'        		END IF;',
'',
'                IF l_old_vendor_item_no <> l_vendor_item_no THEN',
'        	    	INSERT INTO NIT003 (item_id, changed_column_name, old_value, new_value, create_user, create_date)',
'                	VALUES (l_item_id, ''VENDOR ITEM NO'', l_old_vendor_item_no, l_vendor_item_no, :APP_USER, SYSTIMESTAMP);',
'        		END IF; ',
'',
'                IF NVL(l_old_landed_cost_factor, 0) <> NVL(l_landed_cost_factor, 0) THEN',
'        	    	INSERT INTO NIT003 (item_id, changed_column_name, old_value, new_value, create_user, create_date)',
'                	VALUES (l_item_id, ''LANDED COST FACTOR'', NVL(l_old_landed_cost_factor, 0), l_landed_cost_factor, :APP_USER, SYSTIMESTAMP);',
'        		END IF; ',
'',
'                UPDATE NIT007',
'                SET VENDOR_ID = l_vendor_id,',
'                    ITEM_NUMBER = l_vendor_item_no,',
'                    LANDED_COST_FACTOR = l_landed_cost_factor,',
'                    UPDATE_USER = :app_user,',
'                    UPDATE_DATE = SYSDATE',
'                WHERE item_id = l_item_id',
'                AND vendor_sequence = l_vendor_sequence;',
'/*',
'            ELSE',
'                DELETE FROM NIT007',
'                WHERE item_id = l_item_id',
'                AND vendor_sequence = l_vendor_sequence;',
'                ',
'                INSERT INTO NIT003 (item_id, changed_column_name, old_value, new_value, create_user, create_date)',
'                VALUES (l_item_id, ''VENDOR CODE'', l_old_vendor_code, ''DELETED'', :APP_USER, SYSTIMESTAMP);',
'*/',
'            END IF;',
'',
'        ELSE',
'            INSERT INTO NIT007 (item_id, vendor_id, ITEM_NUMBER, LANDED_COST_FACTOR, CREATE_USER, CREATE_DATE, UPDATE_USER, UPDATE_DATE, VENDOR_SEQUENCE)',
'            VALUES (l_item_id, l_vendor_id, l_vendor_item_no, l_landed_cost_factor, :app_user, SYSDATE, :app_user, SYSDATE, (SELECT NVL(MAX(vendor_sequence), 0) + 1 FROM NIT007 WHERE item_id = l_item_id) );',
'        END IF;',
'',
'    END LOOP;',
'',
'    apex_util.set_session_state(''SUCCESS_MSG'', ''Item updated successfully'');',
'',
'    apex_json.open_object;',
'    apex_json.write(''message'', ''Success'');',
'    apex_json.close_object;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        apex_json.open_object;',
'        apex_json.write(''message'', ''Error: '' || SQLERRM);',
'        apex_json.close_object;',
'        RAISE;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>12917438143686828
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12918008062686834)
,p_process_sequence=>40
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_NIT002_DATA'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_item_id NUMBER := :P21_ITEM_ID;',
'    l_uom_code NIM026.UOM_CODE%TYPE;',
'BEGIN',
'    -- Retrieve data from NIT002 based on ITEM_ID and order by custom levels 1, 4, 2, 3',
'    apex_json.open_array;',
'',
'    FOR rec IN (SELECT upc, price, quantity, "LEVEL", uom_id ',
'                FROM nit002 ',
'                WHERE item_id = l_item_id',
'                ORDER BY CASE ',
'                            WHEN "LEVEL" = 1 THEN 1',
'                            WHEN "LEVEL" = 4 THEN 2',
'                            WHEN "LEVEL" = 2 THEN 3',
'                            WHEN "LEVEL" = 3 THEN 4',
'                         END) LOOP',
'',
'        apex_json.open_object;',
'        apex_json.write(''UPC'', rec.upc);',
'        apex_json.write(''PRICE'', rec.price);',
'        apex_json.write(''QUANTITY'', rec.quantity);',
'        apex_json.write(''UOM_ID'', rec.uom_id);',
'        ',
'        -- Retrieve the UOM_CODE based on the UOM_ID from NIM026',
'        SELECT uom_code INTO l_uom_code FROM nim026 WHERE uom_id = rec.uom_id;',
'        apex_json.write(''UOM_CODE'', l_uom_code);',
'',
'        apex_json.close_object;',
'    END LOOP;',
'',
'    apex_json.close_array;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>12918008062686834
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(16702880172522910)
,p_process_sequence=>50
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CHECK_UPC_PROCESS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_upc VARCHAR2(50) := apex_application.g_x01;',
'    l_count NUMBER;',
'BEGIN',
'    -- Check if UPC exists in the NIT002 table',
'    SELECT COUNT(*)',
'    INTO l_count',
'    FROM NIT002',
'    WHERE UPPER(upc) = UPPER(l_upc);',
'',
'    -- Return JSON response',
'    apex_json.open_object;',
'    IF l_count > 0 THEN',
'        apex_json.write(''upc_exists'', true);',
'    ELSE',
'        apex_json.write(''upc_exists'', false);',
'    END IF;',
'    apex_json.close_object;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>16702880172522910
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(16702948328522911)
,p_process_sequence=>60
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CHECK_ITEM_UNIQUE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_count NUMBER;',
'    l_item_num VARCHAR2(50) := apex_application.g_x01;',
'    l_item_desc VARCHAR2(50) := apex_application.g_x02;',
'BEGIN',
'    SELECT COUNT(*)',
'    INTO l_count',
'    FROM NIT001',
'    WHERE UPPER(item_num) = UPPER(l_item_num)',
'    AND UPPER(item_desc) = UPPER(l_item_desc);',
'',
'',
'    IF l_count > 0 THEN',
'',
'        apex_json.open_object;',
'        apex_json.write(''success'', false);',
'        apex_json.close_object;',
'    ELSE',
'',
'        apex_json.open_object;',
'        apex_json.write(''success'', true);',
'        apex_json.close_object;',
'    END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'',
'        apex_json.open_object;',
'        apex_json.write(''success'', false);',
'        apex_json.write(''error_message'', SQLERRM);',
'        apex_json.close_object;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>16702948328522911
);
wwv_flow_imp.component_end;
end;
/
