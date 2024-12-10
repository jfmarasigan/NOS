prompt --application/pages/page_00312
begin
--   Manifest
--     PAGE: 00312
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
 p_id=>312
,p_name=>'Add Gift Certificate'
,p_alias=>'ADD-GIFT-CERTIFICATE'
,p_step_title=>'Add Gift Certificate'
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
'        // check if key is P and check if required checker has value (meaning, the gc was created already)',
'        if (key === "p" || key === "P") {',
'            if (p6KeyMap[key] && $("#P312_REQUIRED_CHECKER").val() && activeElement.tagName !== "INPUT") {',
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
'',
'function getFormattedDate(date) {',
'  var year = date.getFullYear();',
'',
'  var month = (1 + date.getMonth()).toString();',
'  month = month.length > 1 ? month : ''0'' + month;',
'',
'  var day = date.getDate().toString();',
'  day = day.length > 1 ? day : ''0'' + day;',
'  ',
'  return month + ''/'' + day + ''/'' + year;',
'}',
'',
'',
'',
'// array id, min length, max length',
'alphanumericValidation([''#P312_GC_TYPE''], 0, 3);',
'alphanumericValidation1([''#P312_DESCRIPTION_1''], 0, null);',
'',
'// array id, min whole num, max whole num, min decimal, max decimal',
'customNumberDecimalValidation([''#P312_AMOUNT''], 0, 5, 1, 2);',
'',
'',
'var checkDateFormat = [''#P312_ISSUE_DATE'', ''#P312_EXPIRY_DATE'']',
'',
'// check date format mm/dd/yyyy',
'dateValidation(checkDateFormat)'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP6Keys();',
'',
'// computeExpiryDate();',
'setTitle("Gift Certificate Creation");',
'$x(''P312_AMOUNT'').focus();',
'',
'// Amount validation',
'setInputFilter($("#P312_AMOUNT"), function(value) {',
'    return /^\d*(\.\d{0,2})?$/.test(value); // numbers with 2 decimals only',
'}, "Five whole numbers and two decimal numbers only.");',
'',
'',
'// Type validation',
'setInputFilter($("#P312_GC_TYPE"), function(value) {',
'    return /^[A-Za-z0-9]{0,3}$/.test(value);',
'}, "Numbers and Letters only.");',
'',
'',
'// Description 1 to event validation',
'setInputFilter($("#P312_DESCRIPTION_1"), function(value) {',
'    return /^[A-Za-z0-9\s]{0,}$/.test(value);',
'}, "Numbers and Letters only.");',
'',
'setInputFilter($("#P312_DESCRIPTION_2"), function(value) {',
'    return /^[A-Za-z0-9\s]{0,}$/.test(value);',
'}, "Numbers and Letters only.");',
'',
'setInputFilter($("#P312_THIS_ENTITLES"), function(value) {',
'    return /^[A-Za-z0-9\s]{0,}$/.test(value);',
'}, "Numbers and Letters only.");',
'',
'setInputFilter($("#P312_REMARKS"), function(value) {',
'    return /^[A-Za-z0-9\s]{0,}$/.test(value);',
'}, "Numbers and Letters only.");',
'',
'setInputFilter($("#P312_BEST_WISHES"), function(value) {',
'    return /^[A-Za-z0-9\s]{0,}$/.test(value);',
'}, "Numbers and Letters only.");',
'',
'setInputFilter($("#P312_RECIPIENT"), function(value) {',
'    return /^[A-Za-z0-9\s]{0,}$/.test(value);',
'}, "Numbers and Letters only.");',
'',
'setInputFilter($("#P312_EVENT"), function(value) {',
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
'#P312_GC_TYPE, #P312_ISSUE_DATE, #P312_EXPIRY_DATE, #P312_INVOICE_TYPE {',
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
'    color: #4a5880;',
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
'.t-Form-labelContainer:has(#P312_INVOICE_TYPE_LABEL),',
'.t-Form-labelContainer:has(#P312_INVOICE_ID_LABEL) {',
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
 p_id=>wwv_flow_imp.id(19250569609727760)
,p_plug_name=>'Add/Update Gift Certificate'
,p_region_name=>'area'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>50
,p_plug_grid_row_css_classes=>'buttons-row'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    NULL AS "GIFT_CERTIFICATE_BATCH_ID",',
'    NULL AS "GIFT_CERTIFICATE_NAME",',
'    NULL AS "AMOUNT",',
'    NULL AS "GC_TYPE",',
'    NULL AS "DATE_ISSUED",',
'    NULL AS "EXPIRY_DATE",',
'    NULL AS "DESCRIPTION_1",',
'    NULL AS "DESCRIPTION_2",',
'    NULL AS "THIS_ENTITIES",',
'    NULL AS "REMARKS",',
'    NULL AS "BEST_WISHES"',
'FROM ',
'    DUAL'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18630054043263546)
,p_plug_name=>'2nd Section'
,p_parent_plug_id=>wwv_flow_imp.id(19250569609727760)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--hiddenOverflow:t-Form--leftLabels'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>80
,p_plug_grid_column_span=>8
,p_plug_display_column=>3
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18630150393263547)
,p_plug_name=>'3rd Section'
,p_parent_plug_id=>wwv_flow_imp.id(19250569609727760)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--hiddenOverflow:t-Form--leftLabels'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>90
,p_plug_grid_column_span=>8
,p_plug_display_column=>3
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18630357297263549)
,p_plug_name=>'Buttons'
,p_parent_plug_id=>wwv_flow_imp.id(19250569609727760)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19263302682727798)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(18630357297263549)
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
 p_id=>wwv_flow_imp.id(19262771369727796)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(18630357297263549)
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18629587409263541)
,p_name=>'P312_GC_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(18630054043263546)
,p_item_source_plug_id=>wwv_flow_imp.id(19250569609727760)
,p_prompt=>'Type<span style="color:red;">*</span>'
,p_source=>'GC_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'SELECT GC_TYPE_CODE FROM NPM013'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>3
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
 p_id=>wwv_flow_imp.id(18629690060263542)
,p_name=>'P312_ISSUE_DATE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(18630054043263546)
,p_item_source_plug_id=>wwv_flow_imp.id(19250569609727760)
,p_prompt=>'Issue Date<span style="color:red;">*</span>'
,p_source=>'DATE_ISSUED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>100
,p_cMaxlength=>10
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_grid_column=>4
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
 p_id=>wwv_flow_imp.id(18629701526263543)
,p_name=>'P312_THIS_ENTITLES'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(18630150393263547)
,p_item_source_plug_id=>wwv_flow_imp.id(19250569609727760)
,p_prompt=>'This Entitles'
,p_source=>'THIS_ENTITIES'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>95
,p_cMaxlength=>50
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
 p_id=>wwv_flow_imp.id(18629811448263544)
,p_name=>'P312_BEST_WISHES'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(18630150393263547)
,p_item_source_plug_id=>wwv_flow_imp.id(19250569609727760)
,p_prompt=>'Best Wishes'
,p_source=>'BEST_WISHES'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>95
,p_cMaxlength=>50
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
 p_id=>wwv_flow_imp.id(19250903252727765)
,p_name=>'P312_GIFT_CERTIFICATE_BATCH_ID'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(19250569609727760)
,p_item_source_plug_id=>wwv_flow_imp.id(19250569609727760)
,p_source=>'GIFT_CERTIFICATE_BATCH_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19252455342727782)
,p_name=>'P312_AMOUNT'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(18630054043263546)
,p_item_source_plug_id=>wwv_flow_imp.id(19250569609727760)
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
 p_id=>wwv_flow_imp.id(19253697422727784)
,p_name=>'P312_EXPIRY_DATE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(18630054043263546)
,p_item_source_plug_id=>wwv_flow_imp.id(19250569609727760)
,p_prompt=>'Expiry Date<span style="color:red;">*</span>'
,p_source=>'EXPIRY_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_cMaxlength=>10
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_grid_column=>4
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
 p_id=>wwv_flow_imp.id(19254088374727785)
,p_name=>'P312_DESCRIPTION_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(18630150393263547)
,p_item_source_plug_id=>wwv_flow_imp.id(19250569609727760)
,p_prompt=>'Description 1<span style="color:red;">*</span>'
,p_source=>'DESCRIPTION_1'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>95
,p_cMaxlength=>32
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
 p_id=>wwv_flow_imp.id(19254497770727785)
,p_name=>'P312_DESCRIPTION_2'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(18630150393263547)
,p_item_source_plug_id=>wwv_flow_imp.id(19250569609727760)
,p_prompt=>'Description 2'
,p_source=>'DESCRIPTION_2'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>95
,p_cMaxlength=>20
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
 p_id=>wwv_flow_imp.id(19255266998727787)
,p_name=>'P312_REMARKS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(18630150393263547)
,p_item_source_plug_id=>wwv_flow_imp.id(19250569609727760)
,p_prompt=>'Remarks'
,p_source=>'REMARKS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>95
,p_cMaxlength=>50
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
 p_id=>wwv_flow_imp.id(26313844355216518)
,p_name=>'P312_EVENT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(18630150393263547)
,p_item_source_plug_id=>wwv_flow_imp.id(19250569609727760)
,p_prompt=>'Event'
,p_source=>'BEST_WISHES'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>95
,p_cMaxlength=>50
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
 p_id=>wwv_flow_imp.id(26313970161216519)
,p_name=>'P312_RECIPIENT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(18630150393263547)
,p_item_source_plug_id=>wwv_flow_imp.id(19250569609727760)
,p_prompt=>'Recipient'
,p_source=>'BEST_WISHES'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>95
,p_cMaxlength=>50
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_css_classes=>'text-bold'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large:margin-top-md:margin-left-md'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28432837964015732)
,p_name=>'P312_GET_EXPIRY_DAYS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(19250569609727760)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28433454469015738)
,p_name=>'P312_REDIRECT_TO_URL'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28433738670015741)
,p_name=>'P312_REQUIRED_CHECKER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(19250569609727760)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28433974696015743)
,p_name=>'P312_SUCCESS_MESSAGE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(19250569609727760)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30478762197245242)
,p_name=>'P312_ALLOW_PRINT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(19250569609727760)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34716344792647723)
,p_name=>'P312_DATE_CHECKER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(19250569609727760)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37010642029700443)
,p_name=>'P312_GC_NO'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45466116785718729)
,p_name=>'P312_INVOICE_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(18630054043263546)
,p_item_source_plug_id=>wwv_flow_imp.id(19250569609727760)
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
 p_id=>wwv_flow_imp.id(45466260073718730)
,p_name=>'P312_INVOICE_ID'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(18630054043263546)
,p_item_source_plug_id=>wwv_flow_imp.id(19250569609727760)
,p_prompt=>'Invoice ID<span id="invoice-id" style="color:red;">*</span>'
,p_source=>'AMOUNT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>100
,p_cMaxlength=>6
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
 p_id=>wwv_flow_imp.id(45466878661718736)
,p_name=>'P312_INVOICE_CHECKER'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45467622200718744)
,p_name=>'P312_INVOICE_REQUIRED'
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(28430136133015705)
,p_computation_sequence=>10
,p_computation_item=>'P312_EXPIRY_DATE'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'FUNCTION_BODY'
,p_computation_language=>'PLSQL'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'l_return_value  VARCHAR2(300) DEFAULT NULL;',
'BEGIN',
'    IF LENGTH(:P312_ISSUE_DATE) > 0 AND LENGTH(:P312_GC_TYPE) > 0 THEN',
'        IF UPPER(:P312_GC_TYPE) = ''B1'' THEN',
'            l_return_value := to_date(:P312_ISSUE_DATE) + 60;',
'        ELSIF UPPER(:P312_GC_TYPE) = ''Y1'' THEN',
'            l_return_value := to_date(:P312_ISSUE_DATE) + 45;',
'        ELSE ',
'            l_return_value := '':P312_EXPIRY_DATE'';',
'        END IF;',
'    ELSE ',
'        l_return_value := '':P312_EXPIRY_DATE'';',
'    END IF;',
'RETURN l_return_value;',
'END;'))
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(28432765819015731)
,p_computation_sequence=>20
,p_computation_item=>'P312_EXPIRY_DATE'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'FUNCTION_BODY'
,p_computation_language=>'PLSQL'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'l_return_value  VARCHAR2(300) DEFAULT NULL;',
'BEGIN',
'    l_return_value :=',
'        ''SELECT EXPIRY_DAYS',
'        FROM NPM013',
'        WHERE GC_TYPE_CODE = :P312_GC_TYPE'';',
'RETURN l_return_value;',
'END;'))
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(30913410122029401)
,p_computation_sequence=>30
,p_computation_item=>'P312_ALLOW_PRINT'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(37011070630700447)
,p_computation_sequence=>40
,p_computation_item=>'P312_GC_NO'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(45466966377718737)
,p_computation_sequence=>50
,p_computation_item=>'P312_INVOICE_CHECKER'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(45467760412718745)
,p_computation_sequence=>60
,p_computation_item=>'P312_INVOICE_REQUIRED'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19492226906090509)
,p_name=>'Enter to submit'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P312_EVENT'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.key?.toLowerCase() === ''enter'''
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19492381870090510)
,p_event_id=>wwv_flow_imp.id(19492226906090509)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Check required fields'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P312_REQUIRED_CHECKER'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.message.clearErrors();',
'',
'// Check if required fields have values',
'if ($(''#P312_INVOICE_REQUIRED'').val() === ''Y'') {',
'    var requiredField = [',
'                        ''#P312_AMOUNT'',',
'                        ''#P312_ISSUE_DATE'',',
'                        ''#P312_GC_TYPE'',',
'                        ''#P312_EXPIRY_DATE'',',
'                        ''#P312_DESCRIPTION_1''',
'                        ]',
'} else {',
'    var requiredField = [',
'                        ''#P312_AMOUNT'',',
'                        ''#P312_ISSUE_DATE'',',
'                        ''#P312_GC_TYPE'',',
'                        ''#P312_EXPIRY_DATE'',',
'                        ''#P312_DESCRIPTION_1'',',
'                        ''#P312_INVOICE_TYPE'',',
'                        ''#P312_INVOICE_ID''',
'                        ]',
'}',
'',
'var checkRequiredFields = requiredValidation(requiredField);',
'',
'// assign value to hidden item',
'document.getElementById(''P312_REQUIRED_CHECKER'').value=checkRequiredFields;'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28433312506015737)
,p_event_id=>wwv_flow_imp.id(19492226906090509)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'Insert data'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'new_gc_id NUMBER;',
'cash_invoice_id NUMBER;',
'invoice_id NUMBER;',
'BEGIN',
'',
'    IF :P312_INVOICE_TYPE = ''Cash'' THEN',
'',
'        cash_invoice_id := :P312_INVOICE_ID;',
'        invoice_id := null;',
'',
'    ELSIF :P312_INVOICE_TYPE = ''Charge/COD'' THEN',
'',
'        cash_invoice_id := null;',
'        invoice_id := :P312_INVOICE_ID;',
'',
'    END IF;',
'',
'',
'    INSERT INTO NPT020 (',
'        GIFT_CERTIFICATE_ID,',
'        GC_TYPE_ID, AMOUNT, ISSUE_DATE, EXPIRY_DATE, DESCRIPTION_1, ',
'        DESCRIPTION_2, THIS_ENTITLES, REMARKS, BEST_WISHES, RECIPIENT, EVENT, ',
'        INVOICE_ID, CASH_INVOICE_ID,',
'        BALANCE, GC_STATUS_ID, USER_CREATED, DATE_CREATED',
'    )',
'    VALUES (',
'        (SELECT NVL(MAX(GIFT_CERTIFICATE_ID), 0) + 1 FROM NPT020),',
'        (SELECT GC_TYPE_ID FROM NPM013 WHERE GC_TYPE_CODE = :P312_GC_TYPE), :P312_AMOUNT, :P312_ISSUE_DATE, :P312_EXPIRY_DATE, :P312_DESCRIPTION_1,',
'        :P312_DESCRIPTION_2, :P312_THIS_ENTITLES, :P312_REMARKS, :P312_BEST_WISHES, :P312_RECIPIENT, :P312_EVENT,',
'        invoice_id, cash_invoice_id,',
'        :P312_AMOUNT, 6, :app_user, SYSDATE',
'        -- BALANCE === AMOUNT SINCE IT WAS JUST CREATED',
'    )',
'',
'    RETURNING GIFT_CERTIFICATE_ID INTO :P312_GC_NO;',
'    ',
'    -- :P312_GC_NO := new_gc_id;',
'END;',
''))
,p_attribute_02=>'P312_AMOUNT,P312_GC_TYPE,P312_ISSUE_DATE,P312_EXPIRY_DATE,P312_DESCRIPTION_1,P312_DESCRIPTION_2,P312_THIS_ENTITLES,P312_REMARKS,P312_BEST_WISHES,P312_RECIPIENT,P312_EVENT,P312_INVOICE_TYPE,P312_INVOICE_ID'
,p_attribute_03=>'P312_GC_NO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'$("#P312_REQUIRED_CHECKER").val() === ''true'''
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30478211454245237)
,p_event_id=>wwv_flow_imp.id(19492226906090509)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>'Show success'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.message.showPageSuccess( "Created gift certificate" );',
'setTimeout(function() {',
'    $(''.t-Button--closeAlert'').click();',
'}, 3000);'))
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'$("#P312_REQUIRED_CHECKER").val() === ''true'''
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30478349810245238)
,p_event_id=>wwv_flow_imp.id(19492226906090509)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_name=>'Allow print'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// change color of print button',
'document.getElementById("p").style.color = "white";',
'',
'// set value for print disable validation',
'document.getElementById(''P312_ALLOW_PRINT'').value=true;'))
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'$("#P312_REQUIRED_CHECKER").val() === ''true'''
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30913576347029402)
,p_event_id=>wwv_flow_imp.id(19492226906090509)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_name=>'Refresh allow print'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P312_ALLOW_PRINT'
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'$("#P312_REQUIRED_CHECKER").val() === ''true'''
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30913694990029403)
,p_event_id=>wwv_flow_imp.id(19492226906090509)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'Y'
,p_name=>'Enable print'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(19263302682727798)
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'$("#P312_REQUIRED_CHECKER").val() === ''true'''
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28432913385015733)
,p_name=>'Compute Expiry Date'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P312_ISSUE_DATE,P312_GC_TYPE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34716238701647722)
,p_event_id=>wwv_flow_imp.id(28432913385015733)
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
'if ($(''#P312_ISSUE_DATE'').val().substring(0,3) === "02/" || $(''#P312_ISSUE_DATE'').val().substring(0,2) === "2/") {',
'    var year = '''';',
'    if ($(''#P312_ISSUE_DATE'').val().length === 10) {',
'        year = $(''#P312_ISSUE_DATE'').val().substring(6, 10);',
'    } else {',
'        year = $(''#P312_ISSUE_DATE'').val().substring(5, 9);',
'    }',
'    if (((year % 4 == 0) && (year % 100 != 0)) || (year % 400 == 0)) {',
'        if (date_regex_1.test($(''#P312_ISSUE_DATE'').val()) || $(''#P312_ISSUE_DATE'').val().trim().length === 0) {',
'        } else {',
'            count = count + 1;',
'        }',
'    } else {',
'        if (date_regex_2.test($(''#P312_ISSUE_DATE'').val()) || $(''#P312_ISSUE_DATE'').val().trim().length === 0) {',
'            $(''#P312_ISSUE_DATE'' + ''_error_placeholder'').html('''');',
'        } else {',
'            count = count + 1;',
'        }',
'    }',
'} else {',
'    if (date_regex.test($(''#P312_ISSUE_DATE'').val()) || $(''#P312_ISSUE_DATE'').val().trim().length === 0) {',
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
'document.getElementById(''P312_DATE_CHECKER'').value=isValid;'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28433131672015735)
,p_event_id=>wwv_flow_imp.id(28432913385015733)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P312_EXPIRY_DATE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'l_return_value  DATE := NULL;',
'year NUMBER := NULL;',
'calc BOOLEAN := FALSE;',
'',
'BEGIN',
'',
'    IF LENGTH(:P312_ISSUE_DATE) > 0 AND LENGTH(:P312_GC_TYPE) > 0 THEN',
'',
'        SELECT (EXPIRY_DAYS + TO_DATE(:P312_ISSUE_DATE)) INTO l_return_value',
'',
'        FROM NPM013',
'',
'        WHERE GC_TYPE_CODE = :P312_GC_TYPE;',
'',
'    END IF;',
'',
'RETURN l_return_value;',
'',
'END;'))
,p_attribute_07=>'P312_ISSUE_DATE,P312_GC_TYPE'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'$("#P312_DATE_CHECKER").val() === ''false'''
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28433052663015734)
,p_event_id=>wwv_flow_imp.id(28432913385015733)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P312_EXPIRY_DATE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30479115180245246)
,p_name=>'Disable print'
,p_event_sequence=>40
,p_condition_element=>'P312_ALLOW_PRINT'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30479356314245248)
,p_event_id=>wwv_flow_imp.id(30479115180245246)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// $("#p").trigger("click");',
'$("#p").addClass("apex_disabled");'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30479420020245249)
,p_event_id=>wwv_flow_imp.id(30479115180245246)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("#p").removeClass("apex_disabled");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37010776756700444)
,p_name=>'Open copies popup'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(19263302682727798)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37010864391700445)
,p_event_id=>wwv_flow_imp.id(37010776756700444)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P312_REDIRECT_TO_URL := apex_page.get_url(',
'       p_page   => 313,',
'       p_items  => ''P313_SELECTED_GC_NO'',',
'       p_values => :P312_GC_NO',
'     );',
'END;'))
,p_attribute_02=>'P312_GC_NO'
,p_attribute_03=>'P312_REDIRECT_TO_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P312_GC_NO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37010914611700446)
,p_event_id=>wwv_flow_imp.id(37010776756700444)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P312_REDIRECT_TO_URL");',
'apex.navigation.redirect(url);'))
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P312_GC_NO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(45466631164718734)
,p_name=>'Check if Invoice exists'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P312_INVOICE_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45466754177718735)
,p_event_id=>wwv_flow_imp.id(45466631164718734)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P312_INVOICE_CHECKER'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'BEGIN',
'',
'    -- check if CASH or Charge/COD',
'    IF :P312_INVOICE_TYPE = ''Cash'' THEN',
'',
'        SELECT COUNT(*) INTO :P312_INVOICE_CHECKER',
'        FROM NPT033 npt033',
'        WHERE npt033.CASH_INVOICE_ID = :P312_INVOICE_ID;',
'',
'    ELSIF :P312_INVOICE_TYPE = ''Charge/COD'' THEN',
'',
'        SELECT COUNT(*) INTO :P312_INVOICE_CHECKER',
'        FROM NPT001 npt001',
'        WHERE npt001.INVOICE_ID = :P312_INVOICE_ID;',
'',
'    END IF;',
'',
'    RETURN :P312_INVOICE_CHECKER;',
'',
'END;'))
,p_attribute_07=>'P312_INVOICE_ID,P312_INVOICE_TYPE'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45467062315718738)
,p_event_id=>wwv_flow_imp.id(45466631164718734)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P312_INVOICE_ID'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($(''#P312_INVOICE_REQUIRED'').val() === ''N'') {',
'    if ($(''#P312_INVOICE_CHECKER'').val() == null) {',
'        $(''#P312_INVOICE_TYPE'').focus();',
'        $(''#P312_INVOICE_ID'' + ''_error_placeholder'').html(''<span>Please select invoice type.</span>'');',
'        $(''#P312_INVOICE_ID'' + ''_error_placeholder'').addClass("show");',
'    } else if ($(''#P312_INVOICE_CHECKER'').val() == 0) {',
'        $(''#P312_INVOICE_ID'').focus();',
'        $(''#P312_INVOICE_ID'' + ''_error_placeholder'').html(''<span>Invalid invoice.</span>'');',
'        $(''#P312_INVOICE_ID'' + ''_error_placeholder'').addClass("show");',
'    } else {',
'        $(''#P312_INVOICE_ID'' + ''_error_placeholder'').html('''');',
'    }',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(45467216698718740)
,p_name=>'Clear invoice id'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P312_INVOICE_TYPE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45467308603718741)
,p_event_id=>wwv_flow_imp.id(45467216698718740)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P312_INVOICE_ID'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(45467432799718742)
,p_name=>'Check if invoice is required'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P312_GC_TYPE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45467553114718743)
,p_event_id=>wwv_flow_imp.id(45467432799718742)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P312_INVOICE_REQUIRED'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'l_return_value  VARCHAR(1) := NULL;',
'',
'BEGIN',
'',
'    IF LENGTH(:P312_GC_TYPE) > 0 THEN',
'',
'        SELECT DONATION INTO l_return_value',
'        FROM NPM013 ',
'        WHERE GC_TYPE_CODE = :P312_GC_TYPE;',
'',
'    END IF;',
'',
'RETURN l_return_value;',
'',
'END;'))
,p_attribute_07=>'P312_GC_TYPE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45467860770718746)
,p_event_id=>wwv_flow_imp.id(45467432799718742)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($(''#P312_INVOICE_REQUIRED'').val() === ''Y'') {',
'    document.getElementById(''invoice-type'').style.display = ''none'';',
'    document.getElementById(''invoice-id'').style.display = ''none'';',
'}'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19265367093727803)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(19250569609727760)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Add/Update Gift Certificate'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Created gift certificate'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
,p_internal_uid=>19265367093727803
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19264978181727803)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(19250569609727760)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Add/Update Gift Certificate'
,p_internal_uid=>19264978181727803
);
wwv_flow_imp.component_end;
end;
/
