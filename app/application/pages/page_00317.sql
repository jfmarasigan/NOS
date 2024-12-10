prompt --application/pages/page_00317
begin
--   Manifest
--     PAGE: 00317
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
 p_id=>317
,p_name=>'Update Gift Certificate'
,p_alias=>'UPDATE-GIFT-CERTIFICATE'
,p_step_title=>'Update Gift Certificate'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#js/gift-certificate-validations#MIN#.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p6KeyMap = {',
'    p : (v) => {',
'        $("#p").trigger("click");',
'    },',
'    escape : (v) => {',
'        $("#exit").trigger("click");',
'    },',
'}',
'',
'function mapP6Keys() {',
'    $(document).off(''keydown.p6keyevents'');',
'    $(document).on(''keydown.p6keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        var activeElement = document.activeElement;',
'        // check if key is P and check if focus is not in any fields for text',
'        if (key === "p" || key === "P") {',
'            if (p6KeyMap[key] && activeElement.tagName !== "INPUT"',
'                ) {',
'                ev.preventDefault();',
'                p6KeyMap[key]();',
'            }',
'        } else {',
'            if (p6KeyMap[key]) {',
'                ev.preventDefault();',
'                p6KeyMap[key]();',
'            }',
'        }',
'    });',
'}',
'',
'function customEvent(event, data){',
'    mapP6Keys();',
'}',
'',
'// array id, min length, max length',
'alphanumericValidation([''#P317_GC_TYPE''], 0, 3);',
'alphanumericValidation1([''#P317_DESCRIPTION_1''], 0, null);',
'',
'// array id, min whole num, max whole num, min decimal, max decimal',
'customNumberDecimalValidation([''#P317_AMOUNT''], 0, null, 1, 2);',
'',
'',
'var checkDateFormat = [''#P317_ISSUE_DATE'', ''#P317_EXPIRY_DATE'']',
'',
'// check date format mm/dd/yyyy',
'dateValidation(checkDateFormat)'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP6Keys();',
'setTitle("Gift Certificate Update");',
'$x(''P317_AMOUNT'').focus();',
'',
'',
'// Amount validation',
'setInputFilter($("#P317_AMOUNT"), function(value) {',
'    return /^\d*(\.\d{0,2})?$/.test(value); // numbers with 2 decimals only',
'}, "Whole numbers and two decimal numbers only.");',
'',
'',
'// Type validation',
'setInputFilter($("#P317_GC_TYPE"), function(value) {',
'    return /^[A-Za-z0-9]{0,3}$/.test(value);',
'}, "Numbers and Letters only.");',
'',
'',
'// Description 1 to event validation',
'setInputFilter($("#P317_DESCRIPTION_1"), function(value) {',
'    return /^[A-Za-z0-9\s]{0,}$/.test(value);',
'}, "Numbers and Letters only.");',
'',
'setInputFilter($("#P317_DESCRIPTION_2"), function(value) {',
'    return /^[A-Za-z0-9\s]{0,}$/.test(value);',
'}, "Numbers and Letters only.");',
'',
'setInputFilter($("#P317_THIS_ENTITLES"), function(value) {',
'    return /^[A-Za-z0-9\s]{0,}$/.test(value);',
'}, "Numbers and Letters only.");',
'',
'setInputFilter($("#P317_REMARKS"), function(value) {',
'    return /^[A-Za-z0-9\s]{0,}$/.test(value);',
'}, "Numbers and Letters only.");',
'',
'setInputFilter($("#P317_BEST_WISHES"), function(value) {',
'    return /^[A-Za-z0-9\s]{0,}$/.test(value);',
'}, "Numbers and Letters only.");',
'',
'setInputFilter($("#P317_RECIPIENT"), function(value) {',
'    return /^[A-Za-z0-9\s]{0,}$/.test(value);',
'}, "Numbers and Letters only.");',
'',
'setInputFilter($("#P317_EVENT"), function(value) {',
'    return /^[A-Za-z0-9\s]{0,}$/.test(value);',
'}, "Numbers and Letters only.");'))
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
'.t-Region {',
'    border-radius: 0.2rem;',
'}',
'',
'.t-Region-body {',
'    padding-block-end: 0;',
'    padding-block-start: 0;',
'}',
'',
'.t-Form-label {',
'    font-size: 1.125rem;',
'}',
'',
'.t-Form-labelContainer .t-Form-label::before {',
'    content: '''' !important; /* Remove the asterisk before the label */',
'}',
'',
'.t-Form-itemWrapper > input {',
'    font-size: 1.125rem;',
'    height: 2rem;',
'}',
'',
'#P317_GC_TYPE, #P317_ISSUE_DATE, #P317_EXPIRY_DATE, #P317_INVOICE_TYPE {',
'    text-align: center;',
'}',
'',
'.text-white {',
'    color: white;',
'}',
'',
'.label-font-size {',
'    font-size: 1.125rem;',
'}',
'',
'.text-bold {',
'    font-weight: 600;',
'}',
'',
'.col-5>.rel-col .col-2 {',
'    flex-basis: 33.333333%;',
'    max-width: 33.333333%;',
'}',
'',
'.col-12>.rel-col .col-2 {',
'    flex-basis: 14%;',
'    max-width: 14%;',
'}',
'',
'.btns {',
'    font-size: 1.125rem;',
'    color: white;',
'}',
'',
'.text-left {',
'    text-align: left;',
'}',
'',
'.mt-3 {',
'    margin-top: 3rem;',
'}',
'',
'.ms-1 {',
'    margin-left: .5rem;',
'}',
'',
'.hide {',
'    display: none;',
'}',
'',
'/* View height dependent table and buttons - START */',
'.buttons-row {',
'    position: absolute;',
'    width: 98vw;',
'    bottom: 1.75rem;',
'}',
'/* END */',
'',
'/* css for modal 313 start */',
'.ui-dialog-titlebar {',
'    display: none !important;',
'}',
'',
'.ui-dialog.pr-li {',
'   left: 80% !important;',
'}',
'',
'.ui-dialog.inv-bby-w {',
'    left: 78% !important;',
'}',
'',
'.ui-dialog.ship-his {',
'    left: 50% !important;',
'}',
'',
'.ui-dialog.pur-order,',
'.ui-dialog.inc-ship {',
'    left: 45% !important;',
'}',
'',
'.ui-dialog.res {',
'    left: 32% !important;',
'}',
'',
'.ui-widget-overlay.ui-front {',
'    background-color: transparent !important;',
'    opacity: 0 !important;',
'}',
'/* modal 313 end */',
'',
'.t-Form-labelContainer:has(#P317_INVOICE_TYPE_LABEL),',
'.t-Form-labelContainer:has(#P317_INVOICE_ID_LABEL) {',
'    max-width: 40% !important;',
'}',
'',
'.show {',
'    display: block !important;',
'}'))
,p_step_template=>wwv_flow_imp.id(5671392681337017)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(46925993088720850)
,p_plug_name=>'Update Gift Certificate'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>90
,p_plug_grid_row_css_classes=>'buttons-row'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    NULL AS "GC_NO",',
'    NULL AS "AMOUNT",',
'    NULL AS "GC_TYPE",',
'    NULL AS "DATE_ISSUED",',
'    NULL AS "EXPIRY_DATE",',
'    NULL AS "DESCRIPTION_1",',
'    NULL AS "DESCRIPTION_2",',
'    NULL AS "THIS_ENTITLES",',
'    NULL AS "REMARKS",',
'    NULL AS "BEST_WISHES",',
'    NULL AS "RECIPIENT",',
'    NULL AS "EVENT"',
'FROM ',
'    DUAL',
'',
'',
'-- SELECT',
'--     GIFT_CERTIFICATE_ID AS "GC_NUM",',
'--     AMOUNT AS "AMOUNT",',
'--     GC_TYPE_ID AS "GC_TYPE",',
'--     ISSUE_DATE AS "DATE_ISSUED",',
'--     EXPIRY_DATE AS "EXPIRY_DATE",',
'--     DESCRIPTION_1 AS "DESCRIPTION_1",',
'--     DESCRIPTION_2 AS "DESCRIPTION_2",',
'--     THIS_ENTITLES AS "THIS_ENTITLES",',
'--     REMARKS AS "REMARKS",',
'--     BEST_WISHES AS "BEST_WISHES",',
'--     RECIPIENT AS "RECIPIENT",',
'--     EVENT AS "EVENT"',
'-- FROM ',
'--     NPT020',
'--     WHERE GIFT_CERTIFICATE_ID = :P317_GC_NO;'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(46305477522256636)
,p_plug_name=>'2nd Section'
,p_parent_plug_id=>wwv_flow_imp.id(46925993088720850)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--hiddenOverflow:t-Form--leftLabels'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>30
,p_plug_grid_column_span=>8
,p_plug_display_column=>3
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(46305573872256637)
,p_plug_name=>'3rd Section'
,p_parent_plug_id=>wwv_flow_imp.id(46925993088720850)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--hiddenOverflow:t-Form--leftLabels'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>50
,p_plug_grid_column_span=>8
,p_plug_display_column=>3
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(46305780776256639)
,p_plug_name=>'Buttons'
,p_parent_plug_id=>wwv_flow_imp.id(46925993088720850)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27687383979993162)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(46305780776256639)
,p_button_name=>'Print_Gift_Certificate'
,p_button_static_id=>'p'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>P</u> - Print Gift Certificate'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_column_css_classes=>'ms-1 mt-3'
,p_grid_new_row=>'Y'
,p_grid_column_span=>2
,p_grid_column=>8
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27686982220993160)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(46305780776256639)
,p_button_name=>'Back'
,p_button_static_id=>'exit'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Back - Esc'
,p_button_redirect_url=>'f?p=&APP_ID.:310:&SESSION.::&DEBUG.:::'
,p_grid_column_css_classes=>'hide'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(27688942665993184)
,p_branch_action=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30148241866825013)
,p_name=>'P317_GC_NO'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30475395759245208)
,p_name=>'P317_GC_NUM'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(46305477522256636)
,p_item_source_plug_id=>wwv_flow_imp.id(46925993088720850)
,p_source=>'GC_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30475859058245213)
,p_name=>'P317_THIS_ENTITLES'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(46305573872256637)
,p_item_source_plug_id=>wwv_flow_imp.id(46925993088720850)
,p_prompt=>'This Entitles'
,p_source=>'REMARKS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>95
,p_cMaxlength=>100
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_css_classes=>'text-bold'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large:margin-left-md'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30477301727245228)
,p_name=>'P317_REQUIRED_CHECKER'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30477793075245232)
,p_name=>'P317_REDIRECT_TO_URL'
,p_item_sequence=>50
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34716122844647721)
,p_name=>'P317_DATE_CHECKER'
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37008124878700418)
,p_name=>'P317_SELECTED_GC_STATUS'
,p_item_sequence=>60
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45466416632718732)
,p_name=>'P317_INVOICE_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(46305477522256636)
,p_item_source_plug_id=>wwv_flow_imp.id(46925993088720850)
,p_prompt=>'Invoice Type<span id="invoice-type" style="color:red;">*</span>'
,p_source=>'GC_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'STATIC:Cash;Cash,Charge/COD;Charge/COD'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382365997084278)
,p_item_css_classes=>'text-bold'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45466527247718733)
,p_name=>'P317_INVOICE_ID'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(46305477522256636)
,p_item_source_plug_id=>wwv_flow_imp.id(46925993088720850)
,p_prompt=>'Invoice ID<span id="invoice-id" style="color:red;">*</span>'
,p_source=>'AMOUNT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>100
,p_cMaxlength=>9
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382365997084278)
,p_item_css_classes=>'text-bold'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_03=>'center'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45468009954718748)
,p_name=>'P317_INVOICE_CHECKER'
,p_item_sequence=>70
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45468150521718749)
,p_name=>'P317_INVOICE_REQUIRED'
,p_item_sequence=>80
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46309224180256687)
,p_name=>'P317_GC_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(46305477522256636)
,p_item_source_plug_id=>wwv_flow_imp.id(46925993088720850)
,p_prompt=>'Type<span style="color:red;">*</span>'
,p_source=>'GC_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'SELECT GC_TYPE_CODE FROM NPM013'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>3
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382365997084278)
,p_item_css_classes=>'text-bold'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46309326831256688)
,p_name=>'P317_ISSUE_DATE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(46305477522256636)
,p_item_source_plug_id=>wwv_flow_imp.id(46925993088720850)
,p_prompt=>'Issue Date<span style="color:red;">*</span>'
,p_source=>'DATE_ISSUED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>100
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_field_template=>wwv_flow_imp.id(4382365997084278)
,p_item_css_classes=>'text-bold'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large:margin-left-sm'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46312278431256698)
,p_name=>'P317_BEST_WISHES'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(46305573872256637)
,p_item_source_plug_id=>wwv_flow_imp.id(46925993088720850)
,p_prompt=>'Best Wishes'
,p_source=>'BEST_WISHES'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>95
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_css_classes=>'text-bold'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large:margin-left-md'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46932092113720928)
,p_name=>'P317_AMOUNT'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(46305477522256636)
,p_item_source_plug_id=>wwv_flow_imp.id(46925993088720850)
,p_prompt=>'Amount<span style="color:red;">*</span>'
,p_source=>'AMOUNT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>100
,p_colspan=>3
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382365997084278)
,p_item_css_classes=>'text-bold'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_03=>'center'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46933334193720930)
,p_name=>'P317_EXPIRY_DATE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(46305477522256636)
,p_item_source_plug_id=>wwv_flow_imp.id(46925993088720850)
,p_prompt=>'Expiry Date<span style="color:red;">*</span>'
,p_source=>'EXPIRY_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_field_template=>wwv_flow_imp.id(4382365997084278)
,p_item_css_classes=>'text-bold'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large:margin-left-sm'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46936555357720939)
,p_name=>'P317_DESCRIPTION_1'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(46305573872256637)
,p_item_source_plug_id=>wwv_flow_imp.id(46925993088720850)
,p_prompt=>'Description 1<span style="color:red;">*</span>'
,p_source=>'DESCRIPTION_1'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>95
,p_cMaxlength=>150
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_css_classes=>'text-bold'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large:margin-left-md'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46936964753720939)
,p_name=>'P317_DESCRIPTION_2'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(46305573872256637)
,p_item_source_plug_id=>wwv_flow_imp.id(46925993088720850)
,p_prompt=>'Description 2'
,p_source=>'DESCRIPTION_2'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>95
,p_cMaxlength=>150
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_css_classes=>'text-bold'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large:margin-left-md'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46937733981720941)
,p_name=>'P317_REMARKS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(46305573872256637)
,p_item_source_plug_id=>wwv_flow_imp.id(46925993088720850)
,p_prompt=>'Remarks'
,p_source=>'REMARKS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>95
,p_cMaxlength=>100
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_css_classes=>'text-bold'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large:margin-left-md'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53996311338209672)
,p_name=>'P317_EVENT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(46305573872256637)
,p_item_source_plug_id=>wwv_flow_imp.id(46925993088720850)
,p_prompt=>'Event'
,p_source=>'BEST_WISHES'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>95
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_css_classes=>'text-bold'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large:margin-left-md'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53996437144209673)
,p_name=>'P317_RECIPIENT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(46305573872256637)
,p_item_source_plug_id=>wwv_flow_imp.id(46925993088720850)
,p_prompt=>'Recipient'
,p_source=>'BEST_WISHES'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>95
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_css_classes=>'text-bold'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large:margin-top-md:margin-left-md'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27687946080993179)
,p_name=>'Enter to submit'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P317_EVENT'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.key?.toLowerCase() === ''enter'''
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27688488230993182)
,p_event_id=>wwv_flow_imp.id(27687946080993179)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Check required fields'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P317_REQUIRED_CHECKER'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.message.clearErrors();',
'',
'// Check if required fields have values',
'if ($(''#P312_INVOICE_REQUIRED'').val() === ''Y'') {',
'    var requiredField = [',
'                        ''#P317_AMOUNT'',',
'                        ''#P317_ISSUE_DATE'',',
'                        ''#P317_GC_TYPE'',',
'                        ''#P317_EXPIRY_DATE'',',
'                        ''#P317_DESCRIPTION_1''',
'                        ]',
'} else {',
'    var requiredField = [',
'                        ''#P317_AMOUNT'',',
'                        ''#P317_ISSUE_DATE'',',
'                        ''#P317_GC_TYPE'',',
'                        ''#P317_EXPIRY_DATE'',',
'                        ''#P317_DESCRIPTION_1'',',
'                        ''#P317_INVOICE_TYPE'',',
'                        ''#P317_INVOICE_ID''',
'                        ]',
'}',
'',
'var checkRequiredFields = requiredValidation(requiredField);',
'',
'// assign value to hidden item',
'document.getElementById(''P317_REQUIRED_CHECKER'').value=checkRequiredFields;'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30477448468245229)
,p_event_id=>wwv_flow_imp.id(27687946080993179)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'Update gc'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'cash_invoice_id NUMBER;',
'invoice_id NUMBER;',
'BEGIN',
'',
'',
'    raise_application_error(-20001, :P317_INVOICE_TYPE);',
'',
'    raise_application_error(-20001, :P317_INVOICE_ID);',
' ',
'    IF :P317_INVOICE_TYPE = ''Cash'' THEN',
'',
'        cash_invoice_id := :P317_INVOICE_ID;',
'        invoice_id := null;',
'',
'    ELSIF :P317_INVOICE_TYPE = ''Charge/COD'' THEN',
'',
'        cash_invoice_id := null;',
'        invoice_id := :P317_INVOICE_ID;',
'',
'    END IF;',
'',
'    UPDATE NPT020',
'        SET GC_TYPE_ID = (SELECT GC_TYPE_ID FROM NPM013 WHERE GC_TYPE_CODE = :P317_GC_TYPE),',
'            AMOUNT = :P317_AMOUNT,',
'            ISSUE_DATE = :P317_ISSUE_DATE,',
'            EXPIRY_DATE = :P317_EXPIRY_DATE,',
'            DESCRIPTION_1 = :P317_DESCRIPTION_1,',
'            DESCRIPTION_2 = :P317_DESCRIPTION_2,',
'            THIS_ENTITLES = :P317_THIS_ENTITLES,',
'            REMARKS = :P317_REMARKS,',
'            BEST_WISHES = :P317_BEST_WISHES,',
'            RECIPIENT = :P317_RECIPIENT,',
'            EVENT = :P317_EVENT,',
'            INVOICE_ID = invoice_id, ',
'            CASH_INVOICE_ID = cash_invoice_id,',
'            USER_UPDATE = :app_user, ',
'            DATE_UPDATED = SYSDATE',
'        WHERE GIFT_CERTIFICATE_ID = :P317_GC_NO;',
'    ',
'    :P317_REDIRECT_TO_URL := apex_page.get_url(',
'       p_page   => 310',
'    --    ,',
'    --    p_items  => ''P18_PO_NO,P18_VENDOR_ID,P18_FROM'',',
'    --    p_values => :P46_CHILD_NO || '','' || :P46_VENDOR_ID_C || '','' || :P46_FROM',
'    );',
'',
'END;',
''))
,p_attribute_02=>'P317_AMOUNT,P317_GC_TYPE,P317_ISSUE_DATE,P317_EXPIRY_DATE,P317_DESCRIPTION_1,P317_DESCRIPTION_2,P317_THIS_ENTITLES,P317_REMARKS,P317_BEST_WISHES,P317_RECIPIENT,P317_EVENT,P317_INVOICE_TYPE,P317_INVOICE_ID'
,p_attribute_03=>'P317_REDIRECT_TO_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'$("#P317_REQUIRED_CHECKER").val() === ''true'''
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34716426817647724)
,p_event_id=>wwv_flow_imp.id(27687946080993179)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.message.showPageSuccess( "Updated gift certificate" );',
'setTimeout(function() {',
'    $(''.t-Button--closeAlert'').click();',
'}, 3000);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30147669429825007)
,p_name=>'Get GC No'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30147988032825010)
,p_event_id=>wwv_flow_imp.id(30147669429825007)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_name=>'Set Amount'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P317_AMOUNT'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT AMOUNT INTO :P317_AMOUNT',
'    FROM NPT020',
'    WHERE GIFT_CERTIFICATE_ID = :P317_GC_NO;',
'    RETURN :P317_AMOUNT;',
'END;'))
,p_attribute_07=>'P310_GC_NO'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P317_GC_NO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30476394102245218)
,p_event_id=>wwv_flow_imp.id(30147669429825007)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_name=>'Set Issue Date'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P317_ISSUE_DATE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT',
'        --    GC_TYPE_ID INTO :P317_GC_TYPE, ',
'           ISSUE_DATE INTO :P317_ISSUE_DATE',
'        --    EXPIRY_DATE INTO :P317_EXPIRY_DATE,',
'        --    DESCRIPTION_1 INTO :P317_DESCRIPTION_1,',
'        --    DESCRIPTION_2 INTO :P317_DESCRIPTION_2,',
'        --    THIS_ENTITLES INTO :P317_THIS_ENTITLES,',
'        --    REMARKS INTO :P317_REMARKS,',
'        --    BEST_WISHES INTO :P317_BEST_WISHES,',
'        --    RECIPIENT INTO :P317_RECIPIENT,',
'        --    EVENT INTO :P317_EVENT',
'    FROM NPT020',
'    WHERE GIFT_CERTIFICATE_ID = :P317_GC_NO;',
'    RETURN :P317_ISSUE_DATE;',
'END;'))
,p_attribute_07=>'P317_GC_NO'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P317_GC_NO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45468290986718750)
,p_event_id=>wwv_flow_imp.id(30147669429825007)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_name=>'Set Invoice Type'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P317_INVOICE_TYPE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'invoice_type VARCHAR(20);',
'type_cash VARCHAR(20);',
'type_cod VARCHAR(20);',
'',
'BEGIN',
'    ',
'    SELECT CASH_INVOICE_ID INTO type_cash',
'    FROM NPT020',
'    WHERE GIFT_CERTIFICATE_ID = :P317_GC_NO;',
'',
'',
'    SELECT INVOICE_ID INTO type_cod',
'    FROM NPT020',
'    WHERE GIFT_CERTIFICATE_ID = :P317_GC_NO;',
'',
'',
'    IF type_cash > 0 AND (type_cod IS NULL OR type_cod = 0) THEN',
'        RETURN ''Cash'';',
'    ELSIF type_cod > 0 THEN',
'        RETURN ''Charge/COD'';',
'    ELSE',
'        RETURN NULL;',
'    END IF;',
'END;'))
,p_attribute_07=>'P317_GC_NO'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P317_GC_NO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30476474442245219)
,p_event_id=>wwv_flow_imp.id(30147669429825007)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_name=>'Set GC Type'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P317_GC_TYPE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT npm013.GC_TYPE_CODE INTO :P317_GC_TYPE',
'    FROM NPM013 npm013',
'    WHERE npm013.GC_TYPE_ID = (SELECT npt020.GC_TYPE_ID',
'                        FROM NPT020 npt020',
'                        WHERE npt020.GIFT_CERTIFICATE_ID = :P317_GC_NO);',
'    RETURN :P317_GC_TYPE;',
'END;'))
,p_attribute_07=>'P317_GC_NO'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P317_GC_NO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30476521197245220)
,p_event_id=>wwv_flow_imp.id(30147669429825007)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_name=>'Set Expiry Date'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P317_EXPIRY_DATE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT',
'           EXPIRY_DATE INTO :P317_EXPIRY_DATE',
'    FROM NPT020',
'    WHERE GIFT_CERTIFICATE_ID = :P317_GC_NO;',
'    RETURN :P317_EXPIRY_DATE;',
'END;'))
,p_attribute_07=>'P317_GC_NO'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P317_GC_NO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46457586236673101)
,p_event_id=>wwv_flow_imp.id(30147669429825007)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'Y'
,p_name=>'Set Invoice ID'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P317_INVOICE_ID'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'invoice_type VARCHAR(20);',
'type_cash VARCHAR(20);',
'type_cod VARCHAR(20);',
'',
'BEGIN',
'    SELECT INVOICE_ID INTO type_cash',
'    FROM NPT020',
'    WHERE GIFT_CERTIFICATE_ID = :P317_GC_NO;',
'    ',
'    SELECT CASH_INVOICE_ID INTO type_cod',
'    FROM NPT020',
'    WHERE GIFT_CERTIFICATE_ID = :P317_GC_NO;',
'',
'    IF type_cash > 0 AND (type_cod IS NULL OR type_cod = 0) THEN',
'        RETURN type_cash;',
'    ELSIF type_cod > 0 THEN',
'        RETURN type_cod;',
'    ELSE',
'        RETURN NULL;',
'    END IF;',
'END;'))
,p_attribute_07=>'P317_GC_NO'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P317_GC_NO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30476645607245221)
,p_event_id=>wwv_flow_imp.id(30147669429825007)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'Y'
,p_name=>'SetDescription 1'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P317_DESCRIPTION_1'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT',
'           DESCRIPTION_1 INTO :P317_DESCRIPTION_1',
'    FROM NPT020',
'    WHERE GIFT_CERTIFICATE_ID = :P317_GC_NO;',
'    RETURN :P317_DESCRIPTION_1;',
'END;'))
,p_attribute_07=>'P317_GC_NO'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P317_GC_NO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30476762818245222)
,p_event_id=>wwv_flow_imp.id(30147669429825007)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'Y'
,p_name=>'Set Description 2'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P317_DESCRIPTION_2'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT',
'           DESCRIPTION_2 INTO :P317_DESCRIPTION_2',
'    FROM NPT020',
'    WHERE GIFT_CERTIFICATE_ID = :P317_GC_NO;',
'    RETURN :P317_DESCRIPTION_2;',
'END;'))
,p_attribute_07=>'P317_GC_NO'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P317_GC_NO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30477052844245225)
,p_event_id=>wwv_flow_imp.id(30147669429825007)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'Y'
,p_name=>'Set Entitles'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P317_THIS_ENTITLES'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT',
'           THIS_ENTITLES INTO :P317_THIS_ENTITLES',
'    FROM NPT020',
'    WHERE GIFT_CERTIFICATE_ID = :P317_GC_NO;',
'    RETURN :P317_THIS_ENTITLES;',
'END;'))
,p_attribute_07=>'P317_GC_NO'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P317_GC_NO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30476940543245224)
,p_event_id=>wwv_flow_imp.id(30147669429825007)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'Y'
,p_name=>'Set Remarks'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P317_REMARKS'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT',
'           REMARKS INTO :P317_REMARKS',
'    FROM NPT020',
'    WHERE GIFT_CERTIFICATE_ID = :P317_GC_NO;',
'    RETURN :P317_REMARKS;',
'END;'))
,p_attribute_07=>'P317_GC_NO'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P317_GC_NO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30477196180245226)
,p_event_id=>wwv_flow_imp.id(30147669429825007)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'Y'
,p_name=>'Set Best Wishes'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P317_BEST_WISHES'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT',
'           BEST_WISHES INTO :P317_BEST_WISHES',
'    FROM NPT020',
'    WHERE GIFT_CERTIFICATE_ID = :P317_GC_NO;',
'    RETURN :P317_BEST_WISHES;',
'END;'))
,p_attribute_07=>'P317_GC_NO'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P317_GC_NO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30476845484245223)
,p_event_id=>wwv_flow_imp.id(30147669429825007)
,p_event_result=>'TRUE'
,p_action_sequence=>140
,p_execute_on_page_init=>'Y'
,p_name=>'Set Recipient'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P317_RECIPIENT'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT',
'           RECIPIENT INTO :P317_RECIPIENT',
'    FROM NPT020',
'    WHERE GIFT_CERTIFICATE_ID = :P317_GC_NO;',
'    RETURN :P317_RECIPIENT;',
'END;'))
,p_attribute_07=>'P317_GC_NO'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P317_GC_NO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30477266251245227)
,p_event_id=>wwv_flow_imp.id(30147669429825007)
,p_event_result=>'TRUE'
,p_action_sequence=>150
,p_execute_on_page_init=>'Y'
,p_name=>'Set Event'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P317_EVENT'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT',
'           EVENT INTO :P317_EVENT',
'    FROM NPT020',
'    WHERE GIFT_CERTIFICATE_ID = :P317_GC_NO;',
'    RETURN :P317_EVENT;',
'END;'))
,p_attribute_07=>'P317_GC_NO'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P317_GC_NO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37008244206700419)
,p_event_id=>wwv_flow_imp.id(30147669429825007)
,p_event_result=>'TRUE'
,p_action_sequence=>160
,p_execute_on_page_init=>'Y'
,p_name=>'Set Status'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P317_SELECTED_GC_STATUS'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'l_return_value  VARCHAR(1) := NULL;',
'',
'BEGIN',
'',
'    IF LENGTH(:P317_GC_NO) > 0 THEN',
'    ',
'        SELECT GC_STATUS_ID INTO l_return_value',
'        FROM NPT020',
'        WHERE GIFT_CERTIFICATE_ID = :P317_GC_NO;',
'',
'    END IF;',
'',
'    RETURN l_return_value;',
'',
'END;'))
,p_attribute_07=>'P317_GC_NO'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P317_GC_NO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46457669095673102)
,p_event_id=>wwv_flow_imp.id(30147669429825007)
,p_event_result=>'TRUE'
,p_action_sequence=>170
,p_execute_on_page_init=>'Y'
,p_name=>'Set INVOICE REQUIRED'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P317_INVOICE_REQUIRED'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT DONATION INTO :P317_INVOICE_REQUIRED',
'    FROM NPM013 ',
'    WHERE GC_TYPE_CODE = :P317_GC_TYPE;',
'',
'    RETURN :P317_INVOICE_REQUIRED;',
'END;'))
,p_attribute_07=>'P317_GC_TYPE'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P317_GC_NO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30475930727245214)
,p_name=>'Compute Expiry Date'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P317_ISSUE_DATE,P317_GC_TYPE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34716034346647720)
,p_event_id=>wwv_flow_imp.id(30475930727245214)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var isValid = false;',
'var count = 0;',
'',
'',
'var date_regex = /^(0?[1-9]|1[012])[- \/.](0?[1-9]|[12][0-9]|3[01])[- \/.](19|20)\d\d$/;',
'var date_regex_1 = /^(0?[1-9]|1[012])[- \/.](0?[1-9]|[12][0-9]|2[09])[- \/.](19|20)\d\d$/;',
'var date_regex_2 = /^(0?[1-9]|1[012])[- \/.](0?[1-9]|[12][0-8]|2[08])[- \/.](19|20)\d\d$/;',
'',
'if ($(''#P317_ISSUE_DATE'').val().substring(0,3) === "02/" || $(''#P317_ISSUE_DATE'').val().substring(0,2) === "2/") {',
'    var year = '''';',
'    if ($(''#P317_ISSUE_DATE'').val().length === 10) {',
'        year = $(''#P317_ISSUE_DATE'').val().substring(6, 10);',
'    } else {',
'        year = $(''#P317_ISSUE_DATE'').val().substring(5, 9);',
'    }',
'    if (((year % 4 == 0) && (year % 100 != 0)) || (year % 400 == 0)) {',
'        if (date_regex_1.test($(''#P317_ISSUE_DATE'').val()) || $(''#P317_ISSUE_DATE'').val().trim().length === 0) {',
'        } else {',
'            count = count + 1;',
'        }',
'    } else {',
'        if (date_regex_2.test($(''#P317_ISSUE_DATE'').val()) || $(''#P317_ISSUE_DATE'').val().trim().length === 0) {',
'            $(''#P317_ISSUE_DATE'' + ''_error_placeholder'').html('''');',
'        } else {',
'            count = count + 1;',
'        }',
'    }',
'} else {',
'    if (date_regex.test($(''#P317_ISSUE_DATE'').val()) || $(''#P317_ISSUE_DATE'').val().trim().length === 0) {',
'    } else {',
'        count = count + 1;',
'    }',
'}',
'',
'if (count > 0) {',
'    isValid = true;',
'} else {',
'    isValid = false;',
'}',
'',
'',
'document.getElementById(''P317_DATE_CHECKER'').value=isValid;'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30476012543245215)
,p_event_id=>wwv_flow_imp.id(30475930727245214)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P317_EXPIRY_DATE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'l_return_value  DATE := NULL;',
'',
'BEGIN',
'',
'    IF LENGTH(:P317_ISSUE_DATE) > 0 AND LENGTH(:P317_GC_TYPE) > 0 THEN',
'',
'        SELECT (EXPIRY_DAYS + TO_DATE(:P317_ISSUE_DATE)) INTO l_return_value',
'',
'        FROM NPM013',
'',
'        WHERE GC_TYPE_CODE = :P317_GC_TYPE;',
'',
'    END IF;',
'',
'RETURN l_return_value;',
'',
'END;'))
,p_attribute_07=>'P317_ISSUE_DATE,P317_GC_TYPE'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// console.log("hihihihi")',
'// console.log($("#P317_DATE_CHECKER").val())',
'$("#P317_DATE_CHECKER").val() === ''false'''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30476189298245216)
,p_event_id=>wwv_flow_imp.id(30475930727245214)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P317_EXPIRY_DATE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37007943871700416)
,p_name=>'Open copies popup'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27687383979993162)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37008008456700417)
,p_event_id=>wwv_flow_imp.id(37007943871700416)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P317_REDIRECT_TO_URL := apex_page.get_url(',
'       p_page   => 313,',
'       p_items  => ''P313_SELECTED_GC_NO'',',
'       p_values => :P317_GC_NO',
'     );',
'END;'))
,p_attribute_02=>'P317_GC_NO'
,p_attribute_03=>'P317_REDIRECT_TO_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'$("#P317_SELECTED_GC_STATUS").val() !== "4" && $("#P317_SELECTED_GC_STATUS").val() !== "5"'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37008301699700420)
,p_event_id=>wwv_flow_imp.id(37007943871700416)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P317_REDIRECT_TO_URL");',
'apex.navigation.redirect(url);'))
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'$("#P317_SELECTED_GC_STATUS").val() !== "4" && $("#P317_SELECTED_GC_STATUS").val() !== "5"'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(46443637125424346)
,p_name=>'Clear invoice id'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P317_INVOICE_TYPE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46444018481424354)
,p_event_id=>wwv_flow_imp.id(46443637125424346)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P317_INVOICE_ID'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(46444985895430929)
,p_name=>'Check if Invoice exists'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P317_INVOICE_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46445362553430931)
,p_event_id=>wwv_flow_imp.id(46444985895430929)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P317_INVOICE_CHECKER'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'BEGIN',
'',
'    -- check if CASH or Charge/COD',
'    IF :P317_INVOICE_TYPE = ''Cash'' THEN',
'',
'        SELECT COUNT(*) INTO :P317_INVOICE_CHECKER',
'        FROM NPT033 npt033',
'        WHERE npt033.CASH_INVOICE_ID = :P317_INVOICE_ID;',
'',
'    ELSIF :P317_INVOICE_TYPE = ''Charge/COD'' THEN',
'',
'        SELECT COUNT(*) INTO :P317_INVOICE_CHECKER',
'        FROM NPT001 npt001',
'        WHERE npt001.INVOICE_ID = :P317_INVOICE_ID;',
'',
'    END IF;',
'',
'    RETURN :P317_INVOICE_CHECKER;',
'',
'END;'))
,p_attribute_07=>'P317_INVOICE_ID,P317_INVOICE_TYPE'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46445800192430932)
,p_event_id=>wwv_flow_imp.id(46444985895430929)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P317_INVOICE_ID'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($(''#P317_INVOICE_REQUIRED'').val() === ''N'') {',
'    if ($(''#P317_INVOICE_CHECKER'').val() == null) {',
'        $(''#P317_INVOICE_TYPE'').focus();',
'        $(''#P317_INVOICE_ID'' + ''_error_placeholder'').html(''<span>Please select invoice type.</span>'');',
'        $(''#P317_INVOICE_ID'' + ''_error_placeholder'').addClass("show");',
'    } else if ($(''#P317_INVOICE_CHECKER'').val() == 0) {',
'        $(''#P317_INVOICE_ID'').focus();',
'        $(''#P317_INVOICE_ID'' + ''_error_placeholder'').html(''<span>Invalid invoice.</span>'');',
'        $(''#P317_INVOICE_ID'' + ''_error_placeholder'').addClass("show");',
'    } else {',
'        $(''#P317_INVOICE_ID'' + ''_error_placeholder'').html('''');',
'    }',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(46462694086697468)
,p_name=>'Check if invoice is required'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P317_GC_TYPE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46463058035697470)
,p_event_id=>wwv_flow_imp.id(46462694086697468)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P317_INVOICE_REQUIRED'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'l_return_value  VARCHAR(1) := NULL;',
'',
'BEGIN',
'',
'    IF LENGTH(:P317_GC_TYPE) > 0 THEN',
'',
'        SELECT DONATION INTO l_return_value',
'        FROM NPM013 ',
'        WHERE GC_TYPE_CODE = :P317_GC_TYPE;',
'',
'    END IF;',
'',
'RETURN l_return_value;',
'',
'END;'))
,p_attribute_07=>'P317_GC_TYPE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46463544971697471)
,p_event_id=>wwv_flow_imp.id(46462694086697468)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($(''#P317_INVOICE_REQUIRED'').val() === ''Y'') {',
'    document.getElementById(''invoice-type'').style.display = ''none'';',
'    document.getElementById(''invoice-id'').style.display = ''none'';',
'}'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27677914672993139)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(46925993088720850)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Add/Update Gift Certificate'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>27677914672993139
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27677550520993137)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(46925993088720850)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Add/Update Gift Certificate'
,p_internal_uid=>27677550520993137
);
wwv_flow_imp.component_end;
end;
/
