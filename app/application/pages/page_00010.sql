prompt --application/pages/page_00010
begin
--   Manifest
--     PAGE: 00010
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
 p_id=>10
,p_name=>'Add Item'
,p_alias=>'ADD-ITEM'
,p_step_title=>'Add Item'
,p_allow_duplicate_submissions=>'N'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APP_FILES#js/itemmasterfile-validations#MIN#.js',
'',
'#APP_FILES#js/cmn#MIN#.js'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let vendorCtr = 2;',
'',
'let cloneCtr = 1;',
'',
'const p10KeyMap = {',
'    escape : (v) => {',
'        $("#exit").click();',
'    },',
'    enter : (v) => {',
'        $("#submit").click();',
'    },',
'    f8 : (v) => {',
'        $("#clone").click();',
'    }',
'}',
'',
'',
'function mapP10Keys() {',
'    $(document).off(''keydown.p10keyevents'');',
'    $(document).on(''keydown.p10keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p10KeyMap[key]) {',
'            ev.preventDefault();',
'            p10KeyMap[key]();',
'        }',
'    });',
'}',
'',
'',
'// Variables for submission',
'let fieldsToValidate = [',
'    { id: ''P10_ITEM_NUM'', required: true, pattern: ''alphanumeric'' },         ',
'    { id: ''P10_ITEM_DESC'', required: true },                            ',
'    { id: ''P10_FULL_ITEM_DESC'', required: true },                       ',
'    { id: ''P10_BRAND_CODE'', required: true, pattern: ''alphabets''},  ',
'    { id: ''P10_MIN_STOCK_LVL'', required: true, pattern: ''numbers'' },    ',
'    { id: ''P10_MAX_STOCK_LVL'', required: true, pattern: ''numbers'' },    ',
'    { id: ''P10_HAS_SERIAL_NUMBER'', required: true, pattern: ''yesNo'' },                    ',
'    { id: ''P10_SIC_CODE'', required: true, pattern: ''alphabets''},',
'    { id: ''P10_DEPT_CODE'', required: true, pattern: ''alphanumeric''},',
'    { id: ''P10_CLASS_CODE'', required: true, pattern: ''alphabets''},    ',
'    { id: ''P10_UOM'', required: true },                                  ',
'    { id: ''P10_UPC'', required: false, pattern: ''alphanumeric'' },         ',
'    { id: ''P10_PRICE'', required: true, pattern: ''decimal'' },            ',
'    { id: ''P10_COSTING_PRICE'', required: true, pattern: ''decimal'' },            ',
'    { id: ''P10_QUANTITY'', required: true, pattern: ''numbers'' },',
'    { id: ''P10_UOM_MASTER'', required: true },                                  ',
'    { id: ''P10_UPC_MASTER'', required: false, pattern: ''alphanumeric'' },         ',
'    { id: ''P10_PRICE_MASTER'', required: true, pattern: ''decimal'' },            ',
'    { id: ''P10_QUANTITY_MASTER'', required: true, pattern: ''numbers'' }, ',
'    { id: ''P10_VENDOR_CODE1'', required: true, pattern: ''alphanumeric''},',
'    { id: ''P10_VENDOR_ITEM_NO1'', required: true, pattern: ''alphanumeric'' },',
'];',
'',
'let optionalFieldsGroup1 = [',
'    { id: ''P10_QUANTITY_IP1'', pattern: ''numbers'' },',
'    { id: ''P10_UOM_IP1'' },',
'    // { id: ''P10_UPC_IP1'', pattern: ''alphanumeric'' },',
'    { id: ''P10_PRICE_IP1'', pattern: ''decimal'' }',
'];',
'',
'let optionalFieldsGroup2 = [',
'    { id: ''P10_QUANTITY_IP2'', pattern: ''numbers'' },',
'    { id: ''P10_UOM_IP2'' },',
'    // { id: ''P10_UPC_IP2'', pattern: ''alphanumeric'' },',
'    { id: ''P10_PRICE_IP2'', pattern: ''decimal'' }',
'];',
'',
'',
'let vendorOptionalFieldsGroup = [',
'    { id: ''P10_VENDOR_CODE2'', pattern: ''alphanumeric'' },',
'    { id: ''P10_VENDOR_ITEM_NO2'', pattern: ''alphanumeric'' }',
'];',
'',
'',
'',
'const pagePrefix = "P10_";',
'',
'isUpdatePage = false;',
'',
'let upcFieldIDs = [',
'    pagePrefix + ''UPC'',',
'    pagePrefix + ''UPC_MASTER'',',
'    pagePrefix + ''UPC_IP1'',',
'    pagePrefix + ''UPC_IP2''',
'];',
'',
'let uomFieldIDs = [',
'    pagePrefix + ''UOM'',',
'    pagePrefix + ''UOM_MASTER'',',
'    pagePrefix + ''UOM_IP1'',',
'    pagePrefix + ''UOM_IP2''',
'];',
'',
'let fieldsForBlurValidation = [',
'    { id: ''P10_ITEM_NUM'', pattern: ''alphanumeric'' },         ',
'    { id: ''P10_ITEM_DESC'' },                            ',
'    { id: ''P10_FULL_ITEM_DESC'' },                       ',
'    { id: ''P10_BRAND_CODE'', pattern: ''alphabets''},  ',
'    { id: ''P10_MIN_STOCK_LVL'', pattern: ''numbers'' },    ',
'    { id: ''P10_MAX_STOCK_LVL'', pattern: ''numbers'' },    ',
'    { id: ''P10_HAS_SERIAL_NUMBER'', pattern: ''yesNo'' },                    ',
'    { id: ''P10_SIC_CODE'', pattern: ''alphabets''},',
'    { id: ''P10_DEPT_CODE'', pattern: ''alphanumeric''},',
'    { id: ''P10_CLASS_CODE'', pattern: ''alphabets''},    ',
'    { id: ''P10_UOM'' },                                  ',
'    { id: ''P10_UPC'', pattern: ''alphanumeric'' },         ',
'    { id: ''P10_PRICE'', pattern: ''decimal'' },            ',
'    { id: ''P10_QUANTITY'', pattern: ''numbers'' },',
'    { id: ''P10_UOM_MASTER'' },                                  ',
'    { id: ''P10_UPC_MASTER'', pattern: ''alphanumeric'' },         ',
'    { id: ''P10_PRICE_MASTER'', pattern: ''decimal'' },            ',
'    { id: ''P10_QUANTITY_MASTER'', pattern: ''numbers'' },',
'    { id: ''P10_QUANTITY_IP1'', pattern: ''numbers'' },',
'    { id: ''P10_UOM_IP1'' },',
'    { id: ''P10_UPC_IP1'', pattern: ''alphanumeric'' },',
'    { id: ''P10_PRICE_IP1'', pattern: ''decimal'' },',
'    { id: ''P10_QUANTITY_IP2'', pattern: ''numbers'' },',
'    { id: ''P10_UOM_IP2'' },',
'    { id: ''P10_UPC_IP2'', pattern: ''alphanumeric'' },',
'    { id: ''P10_PRICE_IP2'', pattern: ''decimal'' },',
'',
'    { id: ''P10_EXCISE_TAX_RATE'', pattern: ''decimal'' },',
'    { id: ''P10_SELLING_PRICE_FACTOR'', pattern: ''decimal'' },',
'];',
'',
'validateFieldsOnBlur(fieldsForBlurValidation);',
'',
'let fieldsGroupArray = [optionalFieldsGroup1, optionalFieldsGroup2, vendorOptionalFieldsGroup]',
'let vendorsGroupArray = [];',
'let vendorsLCFArray = [',
'    {id: ''P10_LANDED_COST_FACTOR1'', pattern: ''decimal''},',
'    {id: ''P10_LANDED_COST_FACTOR2'', pattern: ''decimal''},',
'];',
'',
'let exciseAndSelling = [',
'    {id: ''P10_EXCISE_TAX_RATE'', pattern: ''decimal''},',
'    {id: ''P10_SELLING_PRICE_FACTOR'', pattern: ''decimal''},',
'];',
'',
'$("#P10_COSTING_PRICE_MASTER, #P10_COSTING_PRICE_IP1, #P10_COSTING_PRICE_IP2").attr({',
'    readonly:"",',
'    tabindex:"-1"',
'})'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP10Keys();',
'',
'$x(''P10_ITEM_NUM'').focus();',
'',
'setTitle("Add Item")',
'',
'vendorCodeBlur($(''#P10_VENDOR_CODE1_input''), $(''#P10_VENDOR_ITEM_NO1''), $(''#P10_LANDED_COST_FACTOR1''));',
'',
'vendorCodeBlur($(''#P10_VENDOR_CODE2_input''), $(''#P10_VENDOR_ITEM_NO2''), $(''#P10_LANDED_COST_FACTOR2''));',
'',
'',
'/*',
'$("#P4100_FULL_ITEM_DESC_CONTAINER .t-Form-labelContainer").removeClass("col col-2");',
'$("#P4100_HAS_SERIAL_NUMBER_CONTAINER .t-Form-labelContainer").removeClass("col col-2");',
'$("div:has(#P4100_HAS_SERIAL_NUMBER_CONTAINER)").removeClass("col col-3");',
'$("div.t-Form-inputContainer:has(#P4100_HAS_SERIAL_NUMBER)").removeClass("col col-1");',
'',
'$("#P4100_MIN_STOCK_LVL_CONTAINER .t-Form-labelContainer").removeClass("col col-1");',
'$("div:has(#P4100_MIN_STOCK_LVL_CONTAINER)").removeClass("col col-2");',
'$("div.t-Form-inputContainer:has(#P4100_MIN_STOCK_LVL)").removeClass("col col-1");',
'',
'$("#P4100_MAX_STOCK_LVL_CONTAINER .t-Form-labelContainer").removeClass("col col-1");',
'$("div:has(#P4100_MAX_STOCK_LVL_CONTAINER)").removeClass("col col-2");',
'$("div.t-Form-inputContainer:has(#P4100_MAX_STOCK_LVL)").removeClass("col col-1");',
'*/'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'body {',
'    background-color: rgb(30, 58, 138);',
'}',
'',
'.t-Header .t-Header-branding {',
'    background-color: white !important;',
'    color: rgb(30, 58, 138) !important;',
'}',
'',
'.t-Form-labelContainer .t-Form-label::before {',
'    content: '''' !important; /* Remove the asterisk before the label */',
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
'',
'.hiddenbtn {',
'    display: none;',
'}',
'',
'',
'#NIT001-Form label, #NIT001-Form input, #NIT001-Form .apex-item-display-only{',
'    font-size: 1.125rem;',
'}',
'',
'#NIT002-Form label, #NIT002-Form input, #NIT002-Form .apex-item-display-only{',
'    font-size: 1.125rem;',
'}',
'',
'#NIT007-Form label, #NIT007-Form input, #NIT007-Form .apex-item-display-only{',
'    font-size: 1.125rem;',
'}',
'',
'.t-Form-labelContainer {',
'    white-space: nowrap;',
'    text-align: left;',
'}',
'',
'#P10_FULL_ITEM_DESC_CONTAINER .t-Form-labelContainer, #P10_HAS_SERIAL_NUMBER_CONTAINER .t-Form-labelContainer, #P10_SELLING_PRICE_FACTOR_CONTAINER .t-Form-labelContainer {',
'    white-space: normal;',
'    text-align: right;',
'}',
'',
'',
'',
'/*',
'#P10_HAS_SERIAL_NUMBER_CONTAINER .t-Form-labelContainer {',
'    white-space: nowrap;',
'    text-align: left;',
'}',
'',
'#P10_HAS_SERIAL_NUMBER_CONTAINER .t-Form-inputContainer {',
'    justify-content: flex-end;',
'}',
'*/',
'',
'#P10_MIN_STOCK_LVL_CONTAINER .t-Form-labelContainer, #P10_MAX_STOCK_LVL_CONTAINER .t-Form-labelContainer{',
'    white-space: nowrap;',
'    text-align: left;',
'    padding-left: 0;',
'}',
'',
'#P10_MIN_STOCK_LVL_CONTAINER .t-Form-inputContainer, #P10_MAX_STOCK_LVL_CONTAINER .t-Form-inputContainer{',
'    padding-right: 0;',
'}',
'',
'#P10_MIN_STOCK_LVL_CONTAINER .t-Form-itemWrapper, #P10_MAX_STOCK_LVL_CONTAINER .t-Form-itemWrapper {',
'    justify-content: flex-end;',
'}',
'',
'#P10_VENDOR_NAME1_CONTAINER .t-Form-inputContainer{',
'    padding: .5rem;',
'}',
'',
'#P10_VENDOR_NAME2_CONTAINER .t-Form-inputContainer{',
'    margin-top: .25rem;',
'}',
'',
'#P10_DEPT_NAME_CONTAINER .t-Form-inputContainer, #P10_SIC_NAME_CONTAINER .t-Form-inputContainer, #P10_CLASS_NAME_CONTAINER .t-Form-inputContainer{',
'    padding-left: 0;',
'}',
'',
'#P10_SMALLEST_UNIT_CONTAINER .t-Form-inputContainer{',
'    padding: .5rem;',
'',
'}',
'',
'#P10_PER_CONTAINER span {',
'    text-align: right;',
'}',
'',
'.t-Form-error div {',
'    font-weight: bold;',
'}',
'',
'.apex-item-text, .apex-item-text.apex-item-popup-lov {',
'    background-color: white;',
'}',
'',
'#P10_VENDOR_CODE1::after,',
'#P10_VENDOR_CODE2::after,',
'.code-after::after {',
'    content: '''';',
'    position: absolute;',
'    top: 50%;',
'    right: 15px;',
'    transform: translateY(-50%);',
'    width: 16px;',
'    height: 16px;',
'    background: url("#APP_FILES#img/down-arrow.png") no-repeat center;',
'    background-size: cover;',
'    pointer-events: none;',
'    z-index: 1;',
'}',
'',
'#P10_VENDOR_CODE1::after {',
'    top: 43% !important;',
'}',
'',
'#P10_VENDOR_CODE1_CONTAINER,',
'#P10_VENDOR_CODE2_CONTAINER,',
'.code-container {',
'    position: relative;',
'}'))
,p_step_template=>wwv_flow_imp.id(5671392681337017)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6540974689318319)
,p_plug_name=>'Header'
,p_title=>'Add Item'
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>20
,p_location=>null
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6541126116318321)
,p_plug_name=>'Add_Item_1'
,p_region_name=>'NIT007-Form'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody:margin-top-none'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>50
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6731900504879515)
,p_plug_name=>'Add_Item'
,p_region_name=>'NIT001-Form'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody:margin-bottom-sm'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>30
,p_query_type=>'TABLE'
,p_query_table=>'NIT001'
,p_include_rowid_column=>false
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7435939895428311)
,p_plug_name=>'Add_Item_UPC'
,p_region_name=>'NIT002-Form'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody:margin-top-none:margin-bottom-sm'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>40
,p_query_type=>'TABLE'
,p_query_table=>'NIT002'
,p_include_rowid_column=>false
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69542833603893537)
,p_button_sequence=>60
,p_button_name=>'Exit'
,p_button_static_id=>'exit'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Exit'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::P4_ITEM_NUM,P4_UPC,P4_ITEM_DESC,P4_PREVIOUS_SELECTED_ITEM_ID:&P10_SEARCH_ITEM_NO.,&P10_SEARCH_ITEM_UPC.,&P10_ITEM_DESC.,&P10_SELECTED_VAL.'
,p_button_css_classes=>'hiddenbtn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13875306824703628)
,p_button_sequence=>70
,p_button_name=>'SUBMIT'
,p_button_static_id=>'submit'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Submit'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'hiddenbtn'
,p_grid_new_row=>'Y'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9909102015576921)
,p_button_sequence=>140
,p_button_plug_id=>wwv_flow_imp.id(6541126116318321)
,p_button_name=>'Add_Supplier'
,p_button_static_id=>'clone'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'F8 - Add Another Supplier'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'has_access(:APP_USER, 1, 2) = ''Y'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'btnblue'
,p_grid_new_row=>'Y'
,p_grid_column_span=>2
,p_grid_column=>8
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(69543812510893547)
,p_branch_name=>'Go to Page 4'
,p_branch_action=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::P4_ADD_POPUP,P4_ITEM_NUM,P4_UPC,P4_ITEM_DESC:&P10_ITEM_NUM.,&P10_SEARCH_ITEM_NO.,&P10_SEARCH_ITEM_UPC.,&P10_SEARCH_ITEM_DESC.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6732261723879518)
,p_name=>'P10_BRAND_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(6731900504879515)
,p_item_source_plug_id=>wwv_flow_imp.id(6731900504879515)
,p_source=>'BRAND_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6732379001879519)
,p_name=>'P10_SIC_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(6731900504879515)
,p_item_source_plug_id=>wwv_flow_imp.id(6731900504879515)
,p_source=>'SIC_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6732434518879520)
,p_name=>'P10_DEPT_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(6731900504879515)
,p_item_source_plug_id=>wwv_flow_imp.id(6731900504879515)
,p_source=>'DEPT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6732579750879521)
,p_name=>'P10_CLASS_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(6731900504879515)
,p_item_source_plug_id=>wwv_flow_imp.id(6731900504879515)
,p_source=>'CLASS_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6732647498879522)
,p_name=>'P10_ITEM_DESC'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(6731900504879515)
,p_item_source_plug_id=>wwv_flow_imp.id(6731900504879515)
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
 p_id=>wwv_flow_imp.id(6732767327879523)
,p_name=>'P10_ITEM_NUM'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(6731900504879515)
,p_item_source_plug_id=>wwv_flow_imp.id(6731900504879515)
,p_prompt=>'Item No<span style="color:red;">*</span>'
,p_source=>'ITEM_NUM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>10
,p_colspan=>4
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382365997084278)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--indicatorAsterisk'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
,p_attribute_06=>'UPPER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6732826990879524)
,p_name=>'P10_MIN_STOCK_LVL'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(6731900504879515)
,p_item_source_plug_id=>wwv_flow_imp.id(6731900504879515)
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
 p_id=>wwv_flow_imp.id(6732940368879525)
,p_name=>'P10_MAX_STOCK_LVL'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(6731900504879515)
,p_item_source_plug_id=>wwv_flow_imp.id(6731900504879515)
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
 p_id=>wwv_flow_imp.id(6733067207879526)
,p_name=>'P10_FULL_ITEM_DESC'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(6731900504879515)
,p_item_source_plug_id=>wwv_flow_imp.id(6731900504879515)
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
,p_item_css_classes=>'rightAlignLabel'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6733520138879531)
,p_name=>'P10_HAS_SERIAL_NUMBER'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(6731900504879515)
,p_item_source_plug_id=>wwv_flow_imp.id(6731900504879515)
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
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
,p_attribute_06=>'UPPER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6733612781879532)
,p_name=>'P10_EXCISE_TAX_RATE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(6541126116318321)
,p_item_source_plug_id=>wwv_flow_imp.id(6731900504879515)
,p_prompt=>'Excise Tax Rate'
,p_format_mask=>'999G999G999G999G990D00'
,p_source=>'EXCISE_TAX_RATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_cMaxlength=>8
,p_colspan=>2
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:margin-bottom-md'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6733789870879533)
,p_name=>'P10_SELLING_PRICE_FACTOR'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(6541126116318321)
,p_item_source_plug_id=>wwv_flow_imp.id(6731900504879515)
,p_prompt=>'Selling Price Factor'
,p_format_mask=>'999G999G999G999G990D00'
,p_source=>'SELLING_PRICE_FACTOR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_cMaxlength=>8
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:margin-bottom-md'
,p_is_persistent=>'N'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
,p_attribute_03=>'right'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6734068564879536)
,p_name=>'P10_BRAND_CODE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(6731900504879515)
,p_prompt=>'Brand Code<span style="color:red;">*</span>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select brand_code as d,',
'brand_code as r',
'from nim022'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select--'
,p_cSize=>10
,p_cMaxlength=>3
,p_colspan=>2
,p_grid_column=>1
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382365997084278)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--indicatorAsterisk'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6734186659879537)
,p_name=>'P10_BRAND_NAME'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(6731900504879515)
,p_prompt=>'Brand Name:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_column=>3
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:margin-left-none:t-Form-fieldContainer--normalDisplay'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6734550674879541)
,p_name=>'P10_SIC_CODE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(6731900504879515)
,p_prompt=>'SIC Code<span style="color:red;">*</span>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select sic_code as d,',
'sic_code as r',
'from nim023'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select--'
,p_cSize=>30
,p_cMaxlength=>3
,p_colspan=>2
,p_grid_column=>1
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382365997084278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6734666890879542)
,p_name=>'P10_SIC_NAME'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(6731900504879515)
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
 p_id=>wwv_flow_imp.id(6735097879879546)
,p_name=>'P10_DEPT_CODE'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(6731900504879515)
,p_prompt=>'Dept Code<span style="color:red;">*</span>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DEPT_CODE as d,',
'dept_code as r',
'from nim024'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select--'
,p_cSize=>30
,p_cMaxlength=>1
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382365997084278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6735183700879547)
,p_name=>'P10_DEPT_NAME'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(6731900504879515)
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
 p_id=>wwv_flow_imp.id(7166300957804101)
,p_name=>'P10_CLASS_CODE'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(6731900504879515)
,p_prompt=>'Class Code<span style="color:red;">*</span>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select class_code as d,',
'class_code as r',
'from nim025'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select--'
,p_cSize=>30
,p_cMaxlength=>10
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382365997084278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7166495716804102)
,p_name=>'P10_CLASS_NAME'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(6731900504879515)
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
 p_id=>wwv_flow_imp.id(7436599795428317)
,p_name=>'P10_UOM_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(7435939895428311)
,p_item_source_plug_id=>wwv_flow_imp.id(7435939895428311)
,p_source=>'UOM_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7436672988428318)
,p_name=>'P10_UPC'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(7435939895428311)
,p_item_source_plug_id=>wwv_flow_imp.id(7435939895428311)
,p_prompt=>'UPC'
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
 p_id=>wwv_flow_imp.id(7436711665428319)
,p_name=>'P10_PRICE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(7435939895428311)
,p_item_source_plug_id=>wwv_flow_imp.id(7435939895428311)
,p_prompt=>'Selling Price<span style="color:red;">*</span>'
,p_format_mask=>'999G999G999G999G990D00'
,p_source=>'PRICE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>20
,p_cMaxlength=>8
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(4383087695084279)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7437280356428324)
,p_name=>'P10_QUANTITY'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(7435939895428311)
,p_item_source_plug_id=>wwv_flow_imp.id(7435939895428311)
,p_prompt=>'Qty<span style="color:red;">*</span>'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_source=>'QUANTITY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_cMaxlength=>3
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(4383087695084279)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'1'
,p_attribute_03=>'right'
,p_attribute_04=>'numeric'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7437452113428326)
,p_name=>'P10_UOM'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(7435939895428311)
,p_prompt=>'UOM<span style="color:red;">*</span>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select UOM_Code as d,',
'uom_code as r from nim026'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select--'
,p_cSize=>10
,p_cMaxlength=>4
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(4383087695084279)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7437788224428329)
,p_name=>'P10_ITEM_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(6731900504879515)
,p_item_source_plug_id=>wwv_flow_imp.id(6731900504879515)
,p_source=>'ITEM_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7437846260428330)
,p_name=>'P10_ITEM_ID_2'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7435939895428311)
,p_item_source_plug_id=>wwv_flow_imp.id(7435939895428311)
,p_source=>'ITEM_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7438932504428341)
,p_name=>'P10_ITEM_ID_MASTER'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(7435939895428311)
,p_item_source_plug_id=>wwv_flow_imp.id(7435939895428311)
,p_source=>'ITEM_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7439057521428342)
,p_name=>'P10_UOM_ID_MASTER'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(7435939895428311)
,p_item_source_plug_id=>wwv_flow_imp.id(7435939895428311)
,p_source=>'UOM_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7439145399428343)
,p_name=>'P10_QUANTITY_MASTER'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(7435939895428311)
,p_item_source_plug_id=>wwv_flow_imp.id(7435939895428311)
,p_format_mask=>'999G999G999G999G999G999G990'
,p_source=>'QUANTITY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_cMaxlength=>3
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382365997084278)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7439204637428344)
,p_name=>'P10_UOM_MASTER'
,p_is_required=>true
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(7435939895428311)
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select uom_code as d,',
'uom_code as r from nim026'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select--'
,p_cSize=>10
,p_cMaxlength=>4
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382365997084278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7439320271428345)
,p_name=>'P10_UPC_MASTER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(7435939895428311)
,p_item_source_plug_id=>wwv_flow_imp.id(7435939895428311)
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
 p_id=>wwv_flow_imp.id(7439446556428346)
,p_name=>'P10_PRICE_MASTER'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(7435939895428311)
,p_item_source_plug_id=>wwv_flow_imp.id(7435939895428311)
,p_format_mask=>'999G999G999G999G990D00MI'
,p_source=>'PRICE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>20
,p_cMaxlength=>8
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382365997084278)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7439755616428349)
,p_name=>'P10_ITEM_ID_IP1'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(7435939895428311)
,p_item_source_plug_id=>wwv_flow_imp.id(7435939895428311)
,p_source=>'ITEM_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7439893139428350)
,p_name=>'P10_UOM_ID_IP1'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(7435939895428311)
,p_item_source_plug_id=>wwv_flow_imp.id(7435939895428311)
,p_source=>'UOM_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8186201536675901)
,p_name=>'P10_QUANTITY_IP1'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(7435939895428311)
,p_item_source_plug_id=>wwv_flow_imp.id(7435939895428311)
,p_format_mask=>'999G999G999G999G999G999G990'
,p_source=>'QUANTITY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_cMaxlength=>3
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8186308751675902)
,p_name=>'P10_UOM_IP1'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(7435939895428311)
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select uom_code as d,',
'uom_code as r ',
'from nim026'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select--'
,p_cSize=>10
,p_cMaxlength=>4
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8186414604675903)
,p_name=>'P10_UPC_IP1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(7435939895428311)
,p_item_source_plug_id=>wwv_flow_imp.id(7435939895428311)
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
 p_id=>wwv_flow_imp.id(8186568454675904)
,p_name=>'P10_PRICE_IP1'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(7435939895428311)
,p_item_source_plug_id=>wwv_flow_imp.id(7435939895428311)
,p_format_mask=>'999G999G999G999G990D00'
,p_source=>'PRICE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>20
,p_cMaxlength=>8
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8186838081675907)
,p_name=>'P10_ITEM_ID_IP2'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(7435939895428311)
,p_item_source_plug_id=>wwv_flow_imp.id(7435939895428311)
,p_source=>'ITEM_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8186929644675908)
,p_name=>'P10_UOM_ID_IP2'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(7435939895428311)
,p_item_source_plug_id=>wwv_flow_imp.id(7435939895428311)
,p_source=>'UOM_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8187062916675909)
,p_name=>'P10_QUANTITY_IP2'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_imp.id(7435939895428311)
,p_item_source_plug_id=>wwv_flow_imp.id(7435939895428311)
,p_format_mask=>'999G999G999G999G999G999G990'
,p_source=>'QUANTITY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_cMaxlength=>3
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8187105745675910)
,p_name=>'P10_UOM_IP2'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_imp.id(7435939895428311)
,p_item_default=>'NULL'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select uom_code as d,',
'uom_code as r ',
'from nim026'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select--'
,p_cSize=>10
,p_cMaxlength=>4
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8187238658675911)
,p_name=>'P10_UPC_IP2'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_imp.id(7435939895428311)
,p_item_source_plug_id=>wwv_flow_imp.id(7435939895428311)
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
 p_id=>wwv_flow_imp.id(8187316318675912)
,p_name=>'P10_PRICE_IP2'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_imp.id(7435939895428311)
,p_item_source_plug_id=>wwv_flow_imp.id(7435939895428311)
,p_format_mask=>'999G999G999G999G990D00'
,p_source=>'PRICE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>20
,p_cMaxlength=>8
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9908791843576917)
,p_name=>'P10_VENDOR_CODE1'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(6541126116318321)
,p_prompt=>'Code<span style="color:red;">*</span>'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT vendor_code as d',
'FROM nit006'))
,p_cSize=>10
,p_cMaxlength=>3
,p_tag_css_classes=>'code-input required'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_grid_column=>2
,p_field_template=>wwv_flow_imp.id(4383087695084279)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'Y'
,p_attribute_05=>'7'
,p_attribute_09=>'0'
,p_attribute_10=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9908867021576918)
,p_name=>'P10_VENDOR_NAME1'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(6541126116318321)
,p_prompt=>'Vendor Name <span style="color:red;"> * </span>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(4382138690084278)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9908900351576919)
,p_name=>'P10_VENDOR_ITEM_NO1'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(6541126116318321)
,p_prompt=>'Vendor Item No<span style="color:red;">*</span>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>15
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(4383087695084279)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9909048944576920)
,p_name=>'P10_LANDED_COST_FACTOR1'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(6541126116318321)
,p_prompt=>'Landed Cost Factor'
,p_format_mask=>'990D00'
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
 p_id=>wwv_flow_imp.id(9909480721576924)
,p_name=>'P10_VENDOR_CODE2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(6541126116318321)
,p_item_default=>'NULL'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Vendor Code2'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT vendor_code as d',
'FROM nit006',
''))
,p_cSize=>10
,p_cMaxlength=>3
,p_tag_css_classes=>'code-input required'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_grid_column=>2
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'Y'
,p_attribute_05=>'7'
,p_attribute_09=>'0'
,p_attribute_10=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9909550850576925)
,p_name=>'P10_VENDOR_NAME2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(6541126116318321)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9909678526576926)
,p_name=>'P10_VENDOR_ITEM_NO2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(6541126116318321)
,p_prompt=>'Vendor Item No2'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>15
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9909711584576927)
,p_name=>'P10_LANDED_COST_FACTOR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(6541126116318321)
,p_prompt=>'Landed Cost Factor2'
,p_format_mask=>'990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>8
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10831525894640005)
,p_name=>'P10_VENDOR_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(6541126116318321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11804368074825340)
,p_name=>'P10_SMALLEST_UNIT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(7435939895428311)
,p_item_default=>'Smallest Unit<span style="color:red;">*</span>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(4382138690084278)
,p_item_template_options=>'#DEFAULT#:margin-top-none:t-Form-fieldContainer--normalDisplay'
,p_attribute_01=>'N'
,p_attribute_05=>'HTML'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11804487364825341)
,p_name=>'P10_MASTERCASE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(7435939895428311)
,p_item_default=>'Mastercase<span style="color:red;">*</span>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>1
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--normalDisplay'
,p_attribute_01=>'N'
,p_attribute_05=>'HTML'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11804702061825344)
,p_name=>'P10_INNER_PACK_1'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(7435939895428311)
,p_item_default=>'Inner Pack 1'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>1
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--normalDisplay'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11804813638825345)
,p_name=>'P10_INNER_PACK_2'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(7435939895428311)
,p_item_default=>'Inner Pack 2'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>1
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--normalDisplay'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12916920706686823)
,p_name=>'P10_VENDOR_LABEL1'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(6541126116318321)
,p_item_default=>'Vendor 1'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(4382138690084278)
,p_item_template_options=>'#DEFAULT#:margin-top-sm:t-Form-fieldContainer--normalDisplay'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12917093112686824)
,p_name=>'P10_VENDOR_LABEL2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(6541126116318321)
,p_item_default=>'Vendor 2'
,p_prompt=>'Vendor Label2'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_row_css_classes=>'vendors-input'
,p_colspan=>1
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--normalDisplay'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16702495721522906)
,p_name=>'P10_PER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(7435939895428311)
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
 p_id=>wwv_flow_imp.id(16702567684522907)
,p_name=>'P10_EA_PER'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(7435939895428311)
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
 p_id=>wwv_flow_imp.id(16702618448522908)
,p_name=>'P10_EA_PER_1'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(7435939895428311)
,p_item_default=>'ea per'
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
 p_id=>wwv_flow_imp.id(16702793627522909)
,p_name=>'P10_EA_PER_2'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_imp.id(7435939895428311)
,p_item_default=>'ea per'
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
 p_id=>wwv_flow_imp.id(52038759985047002)
,p_name=>'P10_COSTING_PRICE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(7435939895428311)
,p_item_source_plug_id=>wwv_flow_imp.id(7435939895428311)
,p_prompt=>'Costing Price<span style="color:red;">*</span>'
,p_format_mask=>'999G999G999G999G990D00'
,p_source=>'COST'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>20
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(4383087695084279)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52038890494047003)
,p_name=>'P10_COSTING_PRICE_MASTER'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(7435939895428311)
,p_item_source_plug_id=>wwv_flow_imp.id(7435939895428311)
,p_prompt=>'Costing Price Master'
,p_format_mask=>'999G999G999G999G990D00MI'
,p_source=>'COST'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>20
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382365997084278)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52038963083047004)
,p_name=>'P10_COSTING_PRICE_IP1'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(7435939895428311)
,p_item_source_plug_id=>wwv_flow_imp.id(7435939895428311)
,p_prompt=>'Costing Price Ip1'
,p_format_mask=>'999G999G999G999G990D00'
,p_source=>'COST'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>20
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52039028240047005)
,p_name=>'P10_COSTING_PRICE_IP2'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_imp.id(7435939895428311)
,p_item_source_plug_id=>wwv_flow_imp.id(7435939895428311)
,p_prompt=>'Costing Price Ip2'
,p_format_mask=>'999G999G999G999G990D00'
,p_source=>'COST'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>20
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58625276374200703)
,p_name=>'P10_SEARCH_ITEM_NO'
,p_item_sequence=>90
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58625330399200704)
,p_name=>'P10_SEARCH_ITEM_UPC'
,p_item_sequence=>100
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58625437433200705)
,p_name=>'P10_SEARCH_ITEM_DESC'
,p_item_sequence=>110
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69543262236893541)
,p_name=>'P10_SELECTED_VAL'
,p_item_sequence=>120
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(7438560863428337)
,p_validation_name=>'Required Brand Code'
,p_validation_sequence=>10
,p_validation=>'P10_BRAND_CODE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Brand Code is required.',
''))
,p_associated_item=>wwv_flow_imp.id(6734068564879536)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(7438620393428338)
,p_validation_name=>'Required SIC Code'
,p_validation_sequence=>20
,p_validation=>'P10_SIC_CODE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'SIC Code is required.'
,p_associated_item=>wwv_flow_imp.id(6734550674879541)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(11804082538825337)
,p_validation_name=>'Required Dept_Code'
,p_validation_sequence=>30
,p_validation=>'P10_DEPT_CODE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Dept Code is required.'
,p_associated_item=>wwv_flow_imp.id(6735097879879546)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(11804196169825338)
,p_validation_name=>'Required Class_Code'
,p_validation_sequence=>40
,p_validation=>'P10_CLASS_CODE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Dept Code is required.'
,p_associated_item=>wwv_flow_imp.id(7166300957804101)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(7438822811428340)
,p_validation_name=>'N or Y'
,p_validation_sequence=>50
,p_validation=>':P10_HAS_SERIAL_NUMBER IN (''N'', ''Y'')'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Has Serial Number? should be N or Y only'
,p_associated_item=>wwv_flow_imp.id(6733520138879531)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6734201799879538)
,p_name=>'Change_brand'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10_BRAND_CODE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6734396225879539)
,p_event_id=>wwv_flow_imp.id(6734201799879538)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P10_BRAND_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'Select brand_id from nim022 where brand_code = :P10_BRAND_CODE'
,p_attribute_07=>'P10_BRAND_CODE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6734485072879540)
,p_event_id=>wwv_flow_imp.id(6734201799879538)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P10_BRAND_NAME'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'Select brand_name from nim022 where brand_code = :P10_BRAND_CODE'
,p_attribute_07=>'P10_BRAND_CODE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6734779813879543)
,p_name=>'Change_SIC'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10_SIC_CODE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6734843592879544)
,p_event_id=>wwv_flow_imp.id(6734779813879543)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P10_SIC_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'select sic_id from nim023 where sic_code = :P10_SIC_CODE'
,p_attribute_07=>'P10_SIC_CODE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6734984795879545)
,p_event_id=>wwv_flow_imp.id(6734779813879543)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P10_SIC_NAME'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'select sic_name from nim023 where sic_code = :P10_SIC_CODE'
,p_attribute_07=>'P10_SIC_CODE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6735202623879548)
,p_name=>'Change_dept'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10_DEPT_CODE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6735302677879549)
,p_event_id=>wwv_flow_imp.id(6735202623879548)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P10_DEPT_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'Select dept_id from nim024 where dept_code = :P10_DEPT_CODE'
,p_attribute_07=>'P10_DEPT_CODE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6735487286879550)
,p_event_id=>wwv_flow_imp.id(6735202623879548)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P10_DEPT_NAME'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'select dept_name from nim024 where dept_code = :P10_DEPT_CODE'
,p_attribute_07=>'P10_DEPT_NAME'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7166596766804103)
,p_name=>'Change_class'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10_CLASS_CODE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7166678610804104)
,p_event_id=>wwv_flow_imp.id(7166596766804103)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P10_CLASS_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'select class_id from nim025 where class_code = :P10_CLASS_CODE'
,p_attribute_07=>'P10_CLASS_CODE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7166766411804105)
,p_event_id=>wwv_flow_imp.id(7166596766804103)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P10_CLASS_NAME'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'select class_name from nim025 where class_code = :P10_CLASS_CODE'
,p_attribute_07=>'P10_CLASS_CODE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7437521136428327)
,p_name=>'Change UOM smallest'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10_UOM'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7437689270428328)
,p_event_id=>wwv_flow_imp.id(7437521136428327)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P10_UOM_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'select uom_id from nim026 where uom_code = :P10_UOM'
,p_attribute_07=>'P10_UOM'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16706507510522947)
,p_event_id=>wwv_flow_imp.id(7437521136428327)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P10_EA_PER,P10_EA_PER_1,P10_EA_PER_2'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$v(''P10_UOM'') + '' per'''
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7439560645428347)
,p_name=>'change UOM Master'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10_UOM_MASTER'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7439652674428348)
,p_event_id=>wwv_flow_imp.id(7439560645428347)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P10_UOM_ID_MASTER'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'select uom_id from nim026 where uom_code = :P10_UOM_MASTER'
,p_attribute_07=>'P10_UOM_MASTER'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8186667105675905)
,p_name=>'change UOM IP1'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10_UOM_IP1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8186791910675906)
,p_event_id=>wwv_flow_imp.id(8186667105675905)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P10_UOM_ID_IP1'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'select uom_id from nim026 where uom_code = :P10_UOM_IP1'
,p_attribute_07=>'P10_UOM_IP1'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8187492575675913)
,p_name=>'change UOM IP2'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10_UOM_IP2'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8187520066675914)
,p_event_id=>wwv_flow_imp.id(8187492575675913)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P10_UOM_ID_IP2'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'select uom_id from nim026 where uom_code = :P10_UOM_IP2'
,p_attribute_07=>'P10_UOM_IP2'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9909287711576922)
,p_name=>'Clone'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(9909102015576921)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9909310444576923)
,p_event_id=>wwv_flow_imp.id(9909287711576922)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'vendorCtr++;',
'',
'let vendorInputClone = $(".row.vendors-input:first").clone();',
'',
'vendorInputClone.find("input, a-autocomplete, span.display_only.apex-item-display-only").each(function() {',
'    let currentId = $(this).attr(''id'');',
'',
'    let newId = currentId ? currentId.substring(0, currentId.length - 1) + vendorCtr : currentId;',
'    //let newId = currentId ? currentId.replace(/(P10_)(\w+)(\d+)/, `$1$2${vendorCtr}`) : currentId;',
'',
'    $(this).attr(''id'', newId); ',
'',
'    if (newId) {',
'        if (newId.includes(''VENDOR_CODE'') || newId.includes(''VENDOR_ITEM_NO'') || newId.includes(''LANDED_COST_FACTOR'')) {',
'            $(this).val('''');',
'            $(this).removeClass(''apex-page-item-error'');',
'        }',
'        if (newId.includes(''VENDOR_NAME'')) {',
'            $(this).text(''''); ',
'        }',
'        if (newId.includes("VENDOR_CODE")) {',
'            let containerId = newId.replace("VENDOR_CODE", "VENDOR_CODE2_CONTAINER");',
'            $("#" + containerId).addClass("code-container");',
'            $(this).addClass("code");',
'            $(this).parent().addClass("code-after");',
'        }',
'    }',
'});',
'',
'',
'vendorInputClone.find("span[id*=''VENDOR_LABEL2_DISP'']").text(`Vendor ${vendorCtr}`);',
'',
'vendorInputClone.find("span[id*=''error_placeholder'']").each(function() {',
'    let currentErrorId = $(this).attr(''id'');',
'    let newErrorId = currentErrorId ? currentErrorId.replace(/(P10_)(\w+)(\d+)/, `$1$2${vendorCtr}`) : currentErrorId;',
'    $(this).attr(''id'', newErrorId).removeClass(''u-visible'').addClass(''u-hidden'');',
'});',
'',
'',
'vendorInputClone.insertAfter($(".row.vendors-input:last"));',
'',
'let vendorInputs = $("input[id*=''VENDOR''][id*=''" + vendorCtr + "'']");',
'vendorInputs.each(function() {',
'    let inputId = $(this).attr(''id'');',
'    apex.message.clearErrors(inputId);',
'});',
'',
'vendorInputClone.find("input[id*=''VENDOR_CODE'']").focus();',
'',
'let newVendorCodeField = vendorInputClone.find("input[id*=''VENDOR_CODE'']");',
'let newVendorItemNo = vendorInputClone.find("input[id*=''VENDOR_ITEM_NO'']");',
'let newLandedCostFactor = vendorInputClone.find("input[id*=''LANDED_COST_FACTOR'']");',
'vendorCodeBlur(newVendorCodeField, newVendorItemNo, newLandedCostFactor);',
'',
'let vendorCloneFieldsGroup = [',
'    { id: newVendorCodeField.attr(''id''), pattern: ''alphanumeric'' }, ',
'    { id: newVendorItemNo.attr(''id''), pattern: ''alphanumeric'' }',
'];',
'',
'let vendorLCF =  { id: newLandedCostFactor.attr(''id''), pattern: ''decimal''};',
'',
'vendorsLCFArray.push(vendorLCF);',
'vendorsGroupArray.push(vendorCloneFieldsGroup);',
'cloneCtr++;',
'',
'',
'vendorInputClone.find("input[id*=''VENDOR_CODE'']").on(''change'', function() {',
'    let vendorCode = $(this).val().toUpperCase(); ',
'    let vendorNameField = vendorInputClone.find("span[id*=''VENDOR_NAME2_DISP'']");',
'',
'    apex.server.process("GET_VENDOR_NAME", {',
'        x01: vendorCode ',
'    }, {',
'        dataType: ''text'' ',
'    }).done((vendorName) => {',
'',
'        vendorNameField.text(vendorName);',
'    }).fail(() => {',
'',
'        console.log("Error retrieving vendor name.");',
'    });',
'',
'});',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9910285030576932)
,p_name=>'Last field Enter'
,p_event_sequence=>100
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(6541126116318321)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.key?.toLowerCase() === ''enter'''
,p_bind_type=>'bind'
,p_execution_type=>'THROTTLE'
,p_execution_time=>600
,p_execution_immediate=>true
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9910342315576933)
,p_event_id=>wwv_flow_imp.id(9910285030576932)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.message.clearErrors();',
'',
'validateAllFields(pagePrefix, fieldsToValidate, upcFieldIDs, fieldsGroupArray, vendorsGroupArray, vendorsLCFArray, isUpdatePage, uomFieldIDs, exciseAndSelling).then(isValid => {',
'    if (isValid) {',
'        let data = [];',
'',
'        data.push({',
'            vendor_code: $("#P10_VENDOR_CODE1").val(),',
'            vendor_item_no: $("#P10_VENDOR_ITEM_NO1").val(),',
'            landed_cost_factor: $("#P10_LANDED_COST_FACTOR1").val()',
'        });        ',
'',
'        $(".row.vendors-input").each(function() {',
'            let row = $(this);',
'            let vendorData = {',
'                vendor_code: row.find("input[id*=''VENDOR_CODE'']").val(),',
'                vendor_item_no: row.find("input[id*=''VENDOR_ITEM_NO'']").val(),',
'                landed_cost_factor: row.find("input[id*=''LANDED_COST_FACTOR'']").val()',
'            };',
'',
'            if (vendorData.vendor_code || vendorData.vendor_item_no || vendorData.landed_cost_factor) {',
'                data.push(vendorData);',
'            }',
'        });',
'',
'        let jsonObject = {"brand_id": $("#P10_BRAND_ID").val(),',
'            "sic_id": $("#P10_SIC_ID").val(),',
'            "dept_id": $("#P10_DEPT_ID").val(),',
'            "class_id": $("#P10_CLASS_ID").val(),',
'            "item_desc": $("#P10_ITEM_DESC").val(),',
'            "item_num": $("#P10_ITEM_NUM").val(),',
'            "min_stock_lvl": $("#P10_MIN_STOCK_LVL").val(),',
'            "max_stock_lvl": $("#P10_MAX_STOCK_LVL").val(),',
'            "full_item_desc": $("#P10_FULL_ITEM_DESC").val(),',
'            "has_serial_number": $("#P10_HAS_SERIAL_NUMBER").val(),',
'            "excise_tax_rate": $("#P10_EXCISE_TAX_RATE").val(),',
'            // "selling_price_factor": $("#P10_SELLING_PRICE_FACTOR").val(),',
'            "uom_id": $("#P10_UOM_ID").val(),',
'            "upc": $("#P10_UPC").val(),',
'            "costing_price": $("#P10_COSTING_PRICE").val().replace(/,/g, ''''),',
'            "price": $("#P10_PRICE").val().replace(/,/g, ''''),',
'            "quantity": $("#P10_QUANTITY").val(),',
'            "uom_id_master": $("#P10_UOM_ID_MASTER").val(),',
'            "upc_master": $("#P10_UPC_MASTER").val(),',
'            "costing_price_master": $("#P10_COSTING_PRICE_MASTER").val().replace(/,/g, ''''),',
'            "price_master": $("#P10_PRICE_MASTER").val().replace(/,/g, ''''),',
'            "quantity_master": $("#P10_QUANTITY_MASTER").val(),',
'            "uom_id_ip1": $("#P10_UOM_ID_IP1").val(),',
'            "upc_ip1": $("#P10_UPC_IP1").val(),',
'            "costing_price_ip1": $("#P10_COSTING_PRICE_IP1").val().replace(/,/g, ''''),',
'            "price_ip1": $("#P10_PRICE_IP1").val().replace(/,/g, ''''),',
'            "quantity_ip1": $("#P10_QUANTITY_IP1").val(),',
'            "uom_id_ip2": $("#P10_UOM_ID_IP2").val(),',
'            "upc_ip2": $("#P10_UPC_IP2").val(),',
'            "costing_price_ip2": $("#P10_COSTING_PRICE_IP2").val().replace(/,/g, ''''),',
'            "price_ip2": $("#P10_PRICE_IP2").val().replace(/,/g, ''''),',
'            "quantity_ip2": $("#P10_QUANTITY_IP2").val(),',
'            "vendor_data": data',
'        };',
'',
'        apex.server.process("SUBMIT_AJAX", {',
'            p_clob_01: JSON.stringify(jsonObject)',
'        },{',
'            dataType: ''json''',
'        }).done((data) => {',
'            apex.submit(''submit'');',
'            // let appId = $v(''pFlowId'');',
'            // let sessionId = $v(''pInstance''); ',
'            // apex.navigation.redirect(''f?p='' + appId + '':4:'' + sessionId);',
'        }).fail((jqXHR, textStatus, errorThrown) => {',
'            console.log("Error");',
'        });',
'    }',
'});',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10834497912640034)
,p_name=>'Change Vendor'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10_VENDOR_CODE2'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10834572768640035)
,p_event_id=>wwv_flow_imp.id(10834497912640034)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P10_VENDOR_NAME2'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'Select vendor_name from nit006 where vendor_code = :P10_VENDOR_CODE2'
,p_attribute_07=>'P10_VENDOR_CODE2'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11802552785825322)
,p_name=>'Change Vendor1'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10_VENDOR_CODE1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11802631074825323)
,p_event_id=>wwv_flow_imp.id(11802552785825322)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P10_VENDOR_NAME1'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'Select vendor_name from nit006 where vendor_code = :P10_VENDOR_CODE1'
,p_attribute_07=>'P10_VENDOR_CODE1'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13875451033703629)
,p_name=>'Enter'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(13875306824703628)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13875571392703630)
,p_event_id=>wwv_flow_imp.id(13875451033703629)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.message.clearErrors();',
'',
'validateAllFields(pagePrefix, fieldsToValidate, [optionalFieldsGroup1, optionalFieldsGroup2]).then(isValid => {',
'    if (isValid) {',
'        let data = [];',
'',
'data.push({',
'    vendor_code: $("#P10_VENDOR_CODE1").val(),',
'    vendor_item_no: $("#P10_VENDOR_ITEM_NO1").val(),',
'    landed_cost_factor: $("#P10_LANDED_COST_FACTOR1").val()',
'});',
'',
'$(".row.vendors-input").each(function() {',
'    let row = $(this);',
'    let vendorData = {',
'        vendor_code: row.find("input[id*=''VENDOR_CODE'']").val(),',
'        vendor_item_no: row.find("input[id*=''VENDOR_ITEM_NO'']").val(),',
'        landed_cost_factor: row.find("input[id*=''LANDED_COST_FACTOR'']").val()',
'        };',
'',
'',
'    if (vendorData.vendor_code || vendorData.vendor_item_no || vendorData.landed_cost_factor) {',
'        data.push(vendorData);',
'    }',
'});',
'',
'',
'let jsonObject = {"brand_id": $("#P10_BRAND_ID").val(),',
'    "sic_id": $("#P10_SIC_ID").val(),',
'    "dept_id": $("#P10_DEPT_ID").val(),',
'    "class_id": $("#P10_CLASS_ID").val(),',
'    "item_desc": $("#P10_ITEM_DESC").val(),',
'    "item_num": $("#P10_ITEM_NUM").val(),',
'    "min_stock_lvl": $("#P10_MIN_STOCK_LVL").val(),',
'    "max_stock_lvl": $("#P10_MAX_STOCK_LVL").val(),',
'    "full_item_desc": $("#P10_FULL_ITEM_DESC").val(),',
'    "has_serial_number": $("#P10_HAS_SERIAL_NUMBER").val(),',
'    "excise_tax_rate": $("#P10_EXCISE_TAX_RATE").val(),',
'    // "selling_price_factor": $("#P10_SELLING_PRICE_FACTOR").val(),',
'    "uom_id": $("#P10_UOM_ID").val(),',
'    "upc": $("#P10_UPC").val(),',
'    "price": $("#P10_PRICE").val(),',
'    "costing_price": $("#P10_COSTING_PRICE").val(),',
'    "quantity": $("#P10_QUANTITY").val(),',
'    "uom_id_master": $("#P10_UOM_ID_MASTER").val(),',
'    "upc_master": $("#P10_UPC_MASTER").val(),',
'    "price_master": $("#P10_PRICE_MASTER").val(),',
'    "costing_price_master": $("#P10_COSTING_PRICE_MASTER").val(),',
'    "quantity_master": $("#P10_QUANTITY_MASTER").val(),',
'    "uom_id_ip1": $("#P10_UOM_ID_IP1").val(),',
'    "upc_ip1": $("#P10_UPC_IP1").val(),',
'    "price_ip1": $("#P10_PRICE_IP1").val(),',
'    "costing_price_ip1": $("#P10_COSTING_PRICE_IP1").val(),',
'    "quantity_ip1": $("#P10_QUANTITY_IP1").val(),',
'    "uom_id_ip2": $("#P10_UOM_ID_IP2").val(),',
'    "upc_ip2": $("#P10_UPC_IP2").val(),',
'    "price_ip2": $("#P10_PRICE_IP2").val(),',
'    "costing_price_ip2": $("#P10_COSTING_PRICE_IP2").val(),',
'    "quantity_ip2": $("#P10_QUANTITY_IP2").val(),',
'    "vendor_data": data',
'};',
'',
'apex.server.process("SUBMIT_AJAX", {',
'    p_clob_01: JSON.stringify(jsonObject)',
'',
'},{',
'    dataType: ''json''',
'}).done((data) => {',
'    let appId = $v(''pFlowId'');',
'    let sessionId = $v(''pInstance''); ',
'    apex.navigation.redirect(''f?p='' + appId + '':4:'' + sessionId);',
'}).fail((jqXHR, textStatus, errorThrown) => {',
'    console.log("Error")',
'}).always(() => {',
'});',
'    } else {',
'    }',
'});',
'',
'',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13876591917703640)
,p_name=>'Create Vendor Collection '
,p_event_sequence=>140
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13876677517703641)
,p_event_id=>wwv_flow_imp.id(13876591917703640)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF APEX_COLLECTION.COLLECTION_EXISTS(p_collection_name => ''VENDOR_CODES'') THEN',
'        APEX_COLLECTION.TRUNCATE_COLLECTION(p_collection_name => ''VENDOR_CODES'');',
'    ELSE',
'       APEX_COLLECTION.CREATE_COLLECTION(p_collection_name => ''VENDOR_CODES'');',
'    END IF;',
'END;',
''))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16706009354522942)
,p_name=>'New'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10_VENDOR_CODE2'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16706155945522943)
,p_event_id=>wwv_flow_imp.id(16706009354522942)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'validateVendorCodes();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(52039111911047006)
,p_name=>'Change Costing Master Price'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10_QUANTITY_MASTER'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52039284584047007)
,p_event_id=>wwv_flow_imp.id(52039111911047006)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P10_COSTING_PRICE_MASTER'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT :P10_QUANTITY_MASTER * :P10_COSTING_PRICE',
'FROM DUAL'))
,p_attribute_07=>'P10_QUANTITY_MASTER,P10_COSTING_PRICE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(52039364492047008)
,p_name=>'Change Costing Price IP1'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10_QUANTITY_IP1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52039431281047009)
,p_event_id=>wwv_flow_imp.id(52039364492047008)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P10_COSTING_PRICE_IP1'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT :P10_QUANTITY_IP1 * :P10_COSTING_PRICE',
'FROM DUAL'))
,p_attribute_07=>'P10_QUANTITY_IP1,P10_COSTING_PRICE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(52039520774047010)
,p_name=>'Change Costing Price IP2'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10_QUANTITY_IP2'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52039699972047011)
,p_event_id=>wwv_flow_imp.id(52039520774047010)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P10_COSTING_PRICE_IP2'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT :P10_QUANTITY_IP2 * :P10_COSTING_PRICE',
'FROM DUAL'))
,p_attribute_07=>'P10_QUANTITY_IP2,P10_COSTING_PRICE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(52039756896047012)
,p_name=>'Change Costing Prices'
,p_event_sequence=>190
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10_COSTING_PRICE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52039845118047013)
,p_event_id=>wwv_flow_imp.id(52039756896047012)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P10_COSTING_PRICE_MASTER'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT :P10_QUANTITY_MASTER * :P10_COSTING_PRICE',
'FROM DUAL'))
,p_attribute_07=>'P10_QUANTITY_MASTER,P10_COSTING_PRICE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52039926588047014)
,p_event_id=>wwv_flow_imp.id(52039756896047012)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P10_COSTING_PRICE_IP1'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT :P10_QUANTITY_IP1 * :P10_COSTING_PRICE',
'FROM DUAL'))
,p_attribute_07=>'10_COSTING_PRICE,P10_QUANTITY_IP1'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52040019114047015)
,p_event_id=>wwv_flow_imp.id(52039756896047012)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P10_COSTING_PRICE_IP2'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT :P10_QUANTITY_IP2 * :P10_COSTING_PRICE',
'FROM DUAL'))
,p_attribute_07=>'10_COSTING_PRICE,P10_QUANTITY_IP2'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7436147112428313)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Old Process'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    new_item_id NIT001.item_id%TYPE;',
'',
'BEGIN',
'',
'    INSERT INTO NIT001 (brand_id, sic_id, dept_id, class_id, item_desc, item_num, min_stock_lvl, max_stock_lvl, full_item_desc, ',
'    create_user, create_date, update_user, update_date, has_serial_number, excise_tax_rate, selling_price_factor)',
'    VALUES (:P10_BRAND_ID, :P10_SIC_ID, :P10_DEPT_ID, :P10_CLASS_ID, :P10_ITEM_DESC, :P10_ITEM_NUM, :P10_MIN_STOCK_LVL, :P10_MAX_STOCK_LVL, :P10_FULL_ITEM_DESC,',
'    :app_user, SYSDATE, :app_user, SYSDATE, :P10_HAS_SERIAL_NUMBER, :P10_EXCISE_TAX_RATE, :P10_SELLING_PRICE_FACTOR)',
'    RETURNING item_id INTO new_item_id;',
'',
'    INSERT INTO NIT002 (item_id, uom_id, upc, price, create_user, create_date, update_user, update_date, quantity, "LEVEL")',
'    VALUES (new_item_id, :P10_UOM_ID, :P10_UPC, :P10_PRICE, :app_user, SYSDATE, :app_user, SYSDATE, :P10_QUANTITY, 1);',
'',
'    INSERT INTO NIT002 (item_id, uom_id, upc, price, create_user, create_date, update_user, update_date, quantity, "LEVEL")',
'    VALUES (new_item_id, :P10_UOM_ID_MASTER, :P10_UPC_MASTER, :P10_PRICE_MASTER, :app_user, SYSDATE, :app_user, SYSDATE, :P10_QUANTITY_MASTER, 4);',
'',
'    IF :P10_QUANTITY_IP1 IS NOT NULL AND :P10_UOM_IP1 IS NOT NULL AND :P10_UPC_IP1 IS NOT NULL AND :P10_PRICE_IP1 IS NOT NULL THEN',
'        INSERT INTO NIT002 (item_id, uom_id, upc, price, create_user, create_date, update_user, update_date, quantity, "LEVEL")',
'        VALUES (new_item_id, :P10_UOM_ID_IP1, :P10_UPC_IP1, :P10_PRICE_IP1, :app_user, SYSDATE, :app_user, SYSDATE, :P10_QUANTITY_IP1, 2);',
'    END IF;',
'',
'     IF :P10_QUANTITY_IP2 IS NOT NULL AND :P10_UOM_IP2 IS NOT NULL AND :P10_UPC_IP2 IS NOT NULL AND :P10_PRICE_IP2 IS NOT NULL THEN',
'        INSERT INTO NIT002 (item_id, uom_id, upc, price, create_user, create_date, update_user, update_date, quantity, "LEVEL")',
'        VALUES (new_item_id, :P10_UOM_ID_IP2, :P10_UPC_IP2, :P10_PRICE_IP2, :app_user, SYSDATE, :app_user, SYSDATE, :P10_QUANTITY_IP2, 3);',
'    END IF;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
,p_internal_uid=>7436147112428313
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11804214935825339)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Session'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
,p_internal_uid=>11804214935825339
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6732016198879516)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(6731900504879515)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Add Item'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
,p_internal_uid=>6732016198879516
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7436310590428315)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(7435939895428311)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Add Item UPC'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
,p_internal_uid=>7436310590428315
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9910436035576934)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SUBMIT_AJAX'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_json_clob CLOB;',
'    l_json json_object_t;',
'    new_item_id NIT001.item_id%TYPE;',
'',
'    -- Variables for each item',
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
'    -- l_selling_price_factor nit001.selling_price_factor%type;',
'    l_uom_id nit002.uom_id%type;',
'    l_upc nit002.upc%type;',
'    l_price nit002.price%type;',
'    l_costing_price nit002.cost%type;',
'    l_quantity nit002.quantity%type;',
'    l_quantity_master nit002.quantity%type;',
'    l_quantity_ip1 nit002.quantity%type;',
'    l_quantity_ip2 nit002.quantity%type;',
'    l_uom_id_master nit002.uom_id%type;',
'    l_upc_master nit002.upc%type;',
'    l_price_master nit002.price%type;',
'    l_costing_price_master nit002.cost%type;',
'    l_uom_id_ip1 nit002.uom_id%type;',
'    l_upc_ip1 nit002.upc%type;',
'    l_price_ip1 nit002.price%type;',
'    l_costing_price_ip1 nit002.cost%type;',
'    l_uom_id_ip2 nit002.uom_id%type;',
'    l_upc_ip2 nit002.upc%type;',
'    l_price_ip2 nit002.price%type;',
'    l_costing_price_ip2 nit002.cost%type;',
'    l_vendor_code nit006.vendor_code%type;',
'    l_vendor_id nit006.vendor_id%type;',
'    l_vendor_item_no nit007.item_number%type;',
'    l_landed_cost_factor nit007.landed_cost_factor%type;',
'',
'',
'BEGIN',
'',
'    -- Retrieve JSON data from p_clob_01',
'    l_json_clob := apex_application.g_clob_01;',
'',
'    -- Parse JSON data',
'    l_json := json_object_t.parse(l_json_clob);',
'',
'    -- Retrieve values from JSON',
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
'    -- l_selling_price_factor := l_json.get_number(''selling_price_factor'');',
'    l_excise_tax_rate := l_json.get_number(''excise_tax_rate'');',
'    l_uom_id := l_json.get_number(''uom_id'');',
'    l_upc := l_json.get_string(''upc'');',
'    l_price := l_json.get_number(''price'');',
'    l_costing_price := l_json.get_number(''costing_price'');',
'    l_quantity := l_json.get_number(''quantity'');',
'    l_quantity_master := l_json.get_number(''quantity_master'');',
'    l_uom_id_master := l_json.get_number(''uom_id_master'');',
'    l_upc_master := l_json.get_string(''upc_master'');',
'    l_price_master := l_json.get_number(''price_master'');',
'    l_costing_price_master := l_json.get_number(''costing_price_master'');',
'    l_uom_id_ip1 := l_json.get_number(''uom_id_ip1'');',
'    l_upc_ip1 := l_json.get_string(''upc_ip1'');',
'    l_price_ip1 := l_json.get_number(''price_ip1'');',
'    l_costing_price_ip1 := l_json.get_number(''costing_price_ip1'');',
'    l_quantity_ip1 := l_json.get_number(''quantity_ip1'');',
'    l_uom_id_ip2 := l_json.get_number(''uom_id_ip2'');',
'    l_upc_ip2 := l_json.get_string(''upc_ip2'');',
'    l_price_ip2 := l_json.get_number(''price_ip2'');',
'    l_costing_price_ip2 := l_json.get_number(''costing_price_ip2'');',
'    l_quantity_ip2 := l_json.get_number(''quantity_ip2'');',
'   ',
'',
'    -- Insert into NIT001',
'    INSERT INTO NIT001 (',
'        brand_id, sic_id, dept_id, class_id, item_desc, item_num, min_stock_lvl, max_stock_lvl, full_item_desc,',
'        create_user, create_date, update_user, update_date, has_serial_number, excise_tax_rate',
'    )',
'    VALUES (',
'        l_brand_id, l_sic_id, l_dept_id, l_class_id, l_item_desc, l_item_num, l_min_stock_lvl, l_max_stock_lvl, l_full_item_desc,',
'        :app_user, SYSDATE, :app_user, SYSDATE,',
'        l_has_serial_number, l_excise_tax_rate',
'    )',
'    RETURNING item_id INTO new_item_id;',
'',
'    -- Insert into NIT002',
'    INSERT INTO NIT002 (',
'        item_id, uom_id, upc, price, cost, create_user, create_date, update_user, update_date, quantity, "LEVEL"',
'    )',
'    VALUES (',
'        new_item_id, l_uom_id, l_upc, l_price, l_costing_price, :app_user, SYSDATE, :app_user, SYSDATE, l_quantity, 1',
'    );',
'',
'    -- Insert mastercase record into NIT002',
'    INSERT INTO NIT002 (',
'        item_id, uom_id, upc, price, cost, create_user, create_date, update_user, update_date, quantity, "LEVEL"',
'    )',
'    VALUES (',
'        new_item_id, l_uom_id_master, l_upc_master, l_price_master, l_costing_price_master, :app_user, SYSDATE, :app_user, SYSDATE, l_quantity_master, 4',
'    );',
'',
'    -- Insert inner packs into NIT002',
'    IF l_uom_id_ip1 IS NOT NULL AND l_quantity_ip1 IS NOT NULL THEN',
'        INSERT INTO NIT002 (',
'            item_id, uom_id, upc, price, cost, create_user, create_date, update_user, update_date, quantity, "LEVEL"',
'        )',
'        VALUES (',
'            new_item_id, l_uom_id_ip1, l_upc_ip1, l_price_ip1, l_costing_price_ip1, :app_user, SYSDATE, :app_user, SYSDATE, l_quantity_ip1, 2',
'        );',
'    END IF;',
'',
'    IF l_uom_id_ip2 IS NOT NULL AND l_quantity_ip2 IS NOT NULL THEN',
'        INSERT INTO NIT002 (',
'            item_id, uom_id, upc, price, cost, create_user, create_date, update_user, update_date, quantity, "LEVEL"',
'        )',
'        VALUES (',
'            new_item_id, l_uom_id_ip2, l_upc_ip2, l_price_ip2, l_costing_price_ip2, :app_user, SYSDATE, :app_user, SYSDATE, l_quantity_ip2, 3',
'        );',
'    END IF;',
'',
'    -- Handle vendor data',
'    FOR rec IN (',
'        SELECT *',
'        FROM JSON_TABLE(',
'            l_json_clob, ''$.vendor_data[*]''',
'            COLUMNS (',
'                vendor_code VARCHAR2(50) PATH ''$.vendor_code'',',
'                vendor_item_no VARCHAR2(50) PATH ''$.vendor_item_no'',',
'                landed_cost_factor NUMBER(5,2) PATH ''$.landed_cost_factor''',
'            )',
'        )',
'    ) LOOP',
'        l_vendor_code := rec.vendor_code;',
'        l_vendor_item_no := rec.vendor_item_no;',
'        l_landed_cost_factor := rec.landed_cost_factor;',
'',
'    IF l_vendor_code IS NOT NULL AND l_vendor_item_no IS NOT NULL THEN',
'        -- Retrieve vendor_id from NIT006',
'        SELECT vendor_id',
'        INTO l_vendor_id',
'        FROM NIT006',
'        WHERE vendor_code = l_vendor_code;',
'',
'        -- Insert into NIT007',
'        INSERT INTO NIT007 (',
'            item_id, vendor_id, item_number, landed_cost_factor, create_user, create_date, update_user, update_date, vendor_sequence',
'        )',
'        VALUES (',
'            new_item_id, l_vendor_id, l_vendor_item_no, l_landed_cost_factor, :app_user, SYSDATE, :app_user, SYSDATE, (SELECT NVL(MAX(vendor_sequence), 0) + 1 FROM NIT007 WHERE item_id = new_item_id)',
'        );',
'    END IF;',
'    END LOOP;',
'',
'    -- Return success message',
'    apex_util.set_session_state(''SUCCESS_MSG'', ''Item added successfully'');',
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
,p_internal_uid=>9910436035576934
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11804929960825346)
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
'    SELECT vendor_name',
'    INTO l_vendor_name',
'    FROM NIT006',
'    WHERE UPPER(vendor_code) = UPPER(l_x01);',
'',
'',
'    htp.p(l_vendor_name);',
'',
'EXCEPTION',
'',
'    WHEN NO_DATA_FOUND THEN',
'        htp.p('''');',
'',
'    WHEN OTHERS THEN',
'        htp.p(''Error retrieving vendor name'');',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>11804929960825346
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13875014279703625)
,p_process_sequence=>30
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
,p_internal_uid=>13875014279703625
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13876476261703639)
,p_process_sequence=>40
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ADD_VENDOR_TO_COLLECTION'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'    l_x01 VARCHAR2(10);',
'',
'BEGIN',
'    l_x01 := apex_application.g_x01;',
'',
'            APEX_COLLECTION.ADD_MEMBER(',
'                p_collection_name => ''VENDOR_CODES'',',
'                p_c001 => l_x01',
'            );',
'',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>13876476261703639
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13876315576703638)
,p_process_sequence=>50
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'REMOVE_VENDOR_FROM_COLLECTION'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_seq_id NUMBER;',
'    l_x01 VARCHAR2(10);',
'',
'BEGIN',
'',
'    l_x01 := apex_application.g_x01;',
'',
'    SELECT SEQ_ID ',
'    INTO l_seq_id',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''VENDOR_CODES''',
'    AND C001 = l_x01;',
'',
'    APEX_COLLECTION.DELETE_MEMBER(',
'        p_collection_name => ''VENDOR_CODES'',',
'        p_seq => l_seq_id',
'    );',
'',
'    IF SQL%ROWCOUNT = 0 THEN',
'        RAISE_APPLICATION_ERROR(-20001, ''No vendor code found to remove: '' || l_x01);',
'    END IF;',
'',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>13876315576703638
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(16702351620522905)
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
'    WHERE UPPER(item_num) = UPPER(l_item_num);',
'    -- AND UPPER(item_desc) = UPPER(l_item_desc);',
'',
' -- If the count is greater than 0, it means the combination exists',
'    IF l_count > 0 THEN',
'        -- Return success as false',
'        apex_json.open_object;',
'        apex_json.write(''success'', false);',
'        apex_json.close_object;',
'    ELSE',
'        -- Return success as true',
'        apex_json.open_object;',
'        apex_json.write(''success'', true);',
'        apex_json.close_object;',
'    END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        -- Handle any unexpected errors',
'        apex_json.open_object;',
'        apex_json.write(''success'', false);',
'        apex_json.write(''error_message'', SQLERRM);',
'        apex_json.close_object;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>16702351620522905
);
wwv_flow_imp.component_end;
end;
/
