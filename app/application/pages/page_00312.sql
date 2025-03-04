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
'    f8 : (v) => {',
'        setTimeout(() => {',
'            $(document).ready(function() {',
'                $("#f8").trigger("click");',
'            });',
'        }, 350);',
'    },',
'    escape : (v) => {',
'        $("#exit").trigger("click");',
'    },',
'}',
'',
'const p312KeyMap = {',
'    escape: (v) => {',
'        $("#close").trigger("click");',
'    },',
'    enter : (v) => {',
'        $("#create").trigger("click");',
'    }',
'}',
'',
'function mapP6Keys() {',
'    $(document).off(''keydown.p6keyevents'');',
'    $(document).on(''keydown.p6keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if ($("#P312_REQUIRED_CHECKER").val() === ''true'') {',
'            if (p312KeyMap[key]) {',
'                ev.preventDefault();',
'                p312KeyMap[key]();',
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
'// alphanumericValidation1([''#P312_DESCRIPTION_1''], 0, null);',
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
'    return /^(\d{0,5}(\.\d{0,2})?|\d{1,2}(,\d{3})*)(\.\d{2})?$/.test(value); // numbers with 2 decimals only',
'}, "Five whole numbers and two decimal numbers only.");',
'',
'',
'// Type validation',
'setInputFilter($("#P312_GC_TYPE"), function(value) {',
'    return /^[A-Za-z0-9]{0,3}$/.test(value);',
'}, "Numbers and Letters only.");',
'',
'// Invoice ID validation',
'setInputFilter($("#P312_INVOICE_ID"), function(value) {',
'    return /^\d*?$/.test(value); // no decimal',
'}, "Numbers only.");',
'',
'// Select the input field and attach the blur event using jQuery',
'$("#P312_AMOUNT").blur(function() {',
'    if ($v(''P312_AMOUNT'')) {',
'        // Get the current number from the element',
'        var number = parseFloat($v(''P312_AMOUNT''));',
'',
'        // Format the number with two decimals',
'        var formattedNumber = number.toFixed(2);',
'',
'        let numWithCommas = formattedNumber.toString().replace(/(\d)(?=(\d{3})+(?!\d))/g, "$1,");',
'',
'        // Update the element with the formatted number',
'        $s(''P312_AMOUNT'', numWithCommas);',
'    }',
'});',
'',
'',
'const fullDate = [''P312_ISSUE_DATE'', ''P312_EXPIRY_DATE''];',
'',
'fullDate.forEach((fieldId) => {',
'  const dateField = document.getElementById(fieldId);',
'',
'  dateField.addEventListener(''input'', function () {',
'    let value = dateField.value.replace(/\D/g, '''');',
'',
'    if (value.length > 2) {',
'      value = value.substring(0, 2) + ''/'' + value.substring(2);',
'    }',
'    if (value.length > 5) {',
'      value = value.substring(0, 5) + ''/'' + value.substring(5, 9);',
'    }',
'',
'    if (value.length > 10) {',
'      value = value.substring(0, 10);',
'    }',
'',
'    dateField.value = value;',
'  });',
'});'))
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
'#P312_GC_TYPE, #P312_INVOICE_TYPE {',
'    text-align: center;',
'}',
'',
'#P312_GC_TYPE, #P312_INVOICE_TYPE {',
'    font-size: 1.125rem;',
'    height: 2rem;',
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
'.mt-10 {',
'    margin-top: 10rem;',
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
'.t-Form-labelContainer:has(#P312_AMOUNT_LABEL),',
'.t-Form-labelContainer:has(#P312_ISSUE_DATE_LABEL),',
'.t-Form-labelContainer:has(#P312_INVOICE_TYPE_LABEL),',
'.t-Form-labelContainer:has(#P312_EXPIRY_DATE_LABEL) {',
'    max-width: 37% !important;',
'}',
'',
'.t-Form-labelContainer:has(#P312_GC_TYPE_LABEL),',
'.t-Form-labelContainer:has(#P312_INVOICE_ID_LABEL) {',
'    max-width: 25% !important;',
'}',
'',
'.col>.t-Form-fieldContainer:has(#P312_GC_TYPE),',
'.col>.t-Form-fieldContainer:has(#P312_INVOICE_ID) {',
'    margin-inline-end: calc(var(--ut-grid-gutter-width, .5rem)* -12);',
'    margin-inline-start: calc(var(--ut-grid-gutter-width, .5rem)* -1);',
'    max-width: none;',
'}',
'',
'.show {',
'    display: block !important;',
'}',
'',
'.disabled {',
'    background-color: #d9d9d9;',
'}',
'',
'',
'.ui-dialog > #inline-dialog > .t-DialogRegion-wrap {',
'    width: 470px !important;',
'    height: 180px !important;',
'    border: 1px solid black;',
'    border-radius: 0.5rem;',
'    overflow: hidden !important;',
'}',
'',
'.ui-dialog:has(#inline-dialog) {',
'    width: 470px !important;',
'    height: 180px !important;',
'    border: 0.3rem solid #046BC8;',
'    overflow: hidden !important;',
'}',
'',
'.dialog-header {',
'    font-size: 1.75rem;',
'    font-weight: 600;',
'    margin-top: 1rem;',
'}',
'',
'.dialog-sub {',
'    font-size: 1rem;',
'    font-weight: 600;',
'    margin-top: 0.5rem;',
'    margin-bottom: 2rem;',
'}',
'',
'.btns-2 {',
'    font-size: 1.3rem;',
'    font-weight: 600;',
'}',
'',
'#create,',
'#close {',
'    margin-left: 1rem;',
'    margin-right: 1rem;',
'    background-color: white;',
'    border-color: white;',
'    box-shadow: none;',
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
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--hiddenOverflow:margin-top-none'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>120
,p_plug_grid_row_css_classes=>'mt-10'
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
,p_plug_display_sequence=>110
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
,p_plug_display_sequence=>120
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(72338199927152616)
,p_plug_name=>'Inline Dialog'
,p_region_name=>'inline-dialog'
,p_region_template_options=>'#DEFAULT#:js-dialog-nosize'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_04'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(72338230785152617)
,p_plug_name=>'Inline Dialog Body'
,p_parent_plug_id=>wwv_flow_imp.id(72338199927152616)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(72338388214152618)
,p_plug_name=>'Dialog text'
,p_parent_plug_id=>wwv_flow_imp.id(72338230785152617)
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<center class="dialog-header">Create Gift Certificate?</center>',
'<center class="dialog-sub">(Once created, to make changes go to the Update Page.)</center>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19263302682727798)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(18630357297263549)
,p_button_name=>'Print_Gift_Certificate'
,p_button_static_id=>'f8'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>F8</u> - Print Gift Certificate'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_column_css_classes=>'ms-1 mt-3'
,p_grid_new_row=>'Y'
,p_grid_column_span=>2
,p_grid_column=>8
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(72520253637470692)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(72338230785152617)
,p_button_name=>'CLOSE'
,p_button_static_id=>'close'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'ESC - CLOSE'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns-2'
,p_grid_new_row=>'Y'
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(72520500587472040)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(72338230785152617)
,p_button_name=>'CREATE'
,p_button_static_id=>'create'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'ENTER - CREATE'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns-2'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18629587409263541)
,p_name=>'P312_GC_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
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
,p_begin_on_new_line=>'N'
,p_colspan=>4
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
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(18630054043263546)
,p_item_source_plug_id=>wwv_flow_imp.id(19250569609727760)
,p_prompt=>'Issue Date<span style="color:red;">*</span>'
,p_placeholder=>'MM/DD/YYYY'
,p_source=>'DATE_ISSUED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>100
,p_cMaxlength=>10
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_label_column_span=>2
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
,p_item_sequence=>30
,p_item_source_plug_id=>wwv_flow_imp.id(19250569609727760)
,p_source=>'GIFT_CERTIFICATE_BATCH_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'N'
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
 p_id=>wwv_flow_imp.id(19253697422727784)
,p_name=>'P312_EXPIRY_DATE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(18630054043263546)
,p_item_source_plug_id=>wwv_flow_imp.id(19250569609727760)
,p_prompt=>'Expiry Date<span style="color:red;">*</span>'
,p_placeholder=>'MM/DD/YYYY'
,p_source=>'EXPIRY_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_cMaxlength=>10
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_label_column_span=>2
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
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
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
,p_item_sequence=>70
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28433974696015743)
,p_name=>'P312_SUCCESS_MESSAGE'
,p_item_sequence=>60
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30478762197245242)
,p_name=>'P312_ALLOW_PRINT'
,p_item_sequence=>80
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34716344792647723)
,p_name=>'P312_DATE_CHECKER'
,p_item_sequence=>50
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
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
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(18630054043263546)
,p_item_source_plug_id=>wwv_flow_imp.id(19250569609727760)
,p_prompt=>'Invoice Type<span id="invoice-type" style="color:red;">*</span>'
,p_source=>'GC_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'STATIC:Cash;Cash,Charge/COD;Charge/COD'
,p_lov_display_null=>'YES'
,p_cSize=>30
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
,p_item_sequence=>90
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45467622200718744)
,p_name=>'P312_INVOICE_REQUIRED'
,p_item_sequence=>100
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(82190707348156608)
,p_name=>'P312_IS_DONATION'
,p_item_sequence=>110
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
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
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(72340536977152640)
,p_computation_sequence=>70
,p_computation_item=>'P312_REQUIRED_CHECKER'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(72338411939152619)
,p_name=>'Enter to submit'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P312_EVENT'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.key?.toLowerCase() === ''enter'''
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72340469087152639)
,p_event_id=>wwv_flow_imp.id(72338411939152619)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(() => {',
'    $.event.trigger(''showDialog'');',
'}, 500)'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28432913385015733)
,p_name=>'Compute Expiry Date'
,p_event_sequence=>30
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
'var date_regex_2 = /^(0?[1-9]|1[012])[- \/.](0?[1-9]|[1][0-9]|2[08])[- \/.](19|20)\d\d$/;',
'',
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
'        -- SELECT (EXPIRY_MONTHS + TO_DATE(:P312_ISSUE_DATE)) INTO l_return_value',
'        ',
'        SELECT ADD_MONTHS(TO_DATE(:P312_ISSUE_DATE), EXPIRY_MONTHS) INTO l_return_value',
'',
'        FROM NPM013',
'',
'        WHERE GC_TYPE_CODE = :P312_GC_TYPE;',
'',
'    END IF;',
'',
'RETURN TO_CHAR(LAST_DAY(l_return_value), ''MM/DD/YYYY'');',
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
'DECLARE',
'',
'l_return_value  VARCHAR(20) := NULL;',
'',
'BEGIN',
'    SELECT UPPER(npm014.GC_STATUS_NAME) INTO l_return_value',
'    FROM NPT020',
'    JOIN NPM014 npm014 ON npt020.GC_STATUS_ID = npm014.GC_STATUS_ID',
'    WHERE GIFT_CERTIFICATE_ID = :P312_GC_NO;',
'',
'    IF l_return_value = ''PRINTED'' THEN',
'    ',
'        :P312_REDIRECT_TO_URL := apex_page.get_url(',
'           p_page   => 362,',
'           p_items  => ''P362_SELECTED_GC_NO'',',
'           p_values => :P312_GC_NO',
'         );',
'    ',
'    ELSE',
'        IF l_return_value != ''VOIDED'' AND l_return_value != ''EXPIRED'' THEN',
'            :P312_REDIRECT_TO_URL := apex_page.get_url(',
'               p_page   => 313,',
'               p_items  => ''P313_SELECTED_GC_NO'',',
'               p_values => :P312_GC_NO',
'             );',
'         END IF;',
'    END IF;',
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
'        if ($(''#P312_INVOICE_TYPE'').val() == "") {',
'            $(''#P312_INVOICE_TYPE'').focus();',
'            $(''#P312_INVOICE_TYPE'' + ''_error_placeholder'').html(''<span>Please select invoice type.</span>'');',
'            $(''#P312_INVOICE_TYPE'' + ''_error_placeholder'').addClass("show");',
'        } else {',
'            $(''#P312_INVOICE_ID'').focus();',
'            $(''#P312_INVOICE_ID'' + ''_error_placeholder'').html(''<span>Invalid invoice.</span>'');',
'            $(''#P312_INVOICE_ID'' + ''_error_placeholder'').addClass("show");',
'        }',
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
'l_return_value  VARCHAR(1) := ''N'';',
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
'',
'    $("#P312_INVOICE_TYPE").parent().addClass(''disabled'');',
'    $("#P312_INVOICE_ID").parent().addClass(''disabled'');',
'    ',
'    apex.message.clearErrors("P312_INVOICE_TYPE")',
'    apex.message.clearErrors("P312_INVOICE_ID")',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70200346115373446)
,p_event_id=>wwv_flow_imp.id(45467432799718742)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P312_INVOICE_TYPE,P312_INVOICE_ID'
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'$(''#P312_INVOICE_REQUIRED'').val() === ''Y'''
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70200590228373448)
,p_event_id=>wwv_flow_imp.id(45467432799718742)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P312_INVOICE_TYPE,P312_INVOICE_ID'
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'$(''#P312_INVOICE_REQUIRED'').val() === ''Y'''
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70200460521373447)
,p_event_id=>wwv_flow_imp.id(45467432799718742)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P312_INVOICE_TYPE,P312_INVOICE_ID'
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'$(''#P312_INVOICE_REQUIRED'').val() === ''N'''
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(72340374207152638)
,p_name=>'Show Dialog'
,p_event_sequence=>90
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'showDialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72338532617152620)
,p_event_id=>wwv_flow_imp.id(72340374207152638)
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
'apex.item("P312_REQUIRED_CHECKER").setValue(checkRequiredFields)'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72339190332152626)
,p_event_id=>wwv_flow_imp.id(72340374207152638)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(72338199927152616)
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'$("#P312_REQUIRED_CHECKER").val() === ''true'''
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(72340686782152641)
,p_name=>'Close dialog'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(72520253637470692)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72340889236152643)
,p_event_id=>wwv_flow_imp.id(72340686782152641)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P312_REQUIRED_CHECKER'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'Null'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72340783824152642)
,p_event_id=>wwv_flow_imp.id(72340686782152641)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(72338199927152616)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(72340958618152644)
,p_name=>'Submit new gc'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(72520500587472040)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28433312506015737)
,p_event_id=>wwv_flow_imp.id(72340958618152644)
,p_event_result=>'TRUE'
,p_action_sequence=>10
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
,p_event_id=>wwv_flow_imp.id(72340958618152644)
,p_event_result=>'TRUE'
,p_action_sequence=>20
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
,p_event_id=>wwv_flow_imp.id(72340958618152644)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'Allow print'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// change color of print button',
'document.getElementById("f8").style.color = "white";',
'',
'// set value for print disable validation',
'document.getElementById(''P312_ALLOW_PRINT'').value=true;'))
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'$("#P312_REQUIRED_CHECKER").val() === ''true'''
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30913576347029402)
,p_event_id=>wwv_flow_imp.id(72340958618152644)
,p_event_result=>'TRUE'
,p_action_sequence=>40
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
,p_event_id=>wwv_flow_imp.id(72340958618152644)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_name=>'Enable print'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(19263302682727798)
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'$("#P312_REQUIRED_CHECKER").val() === ''true'''
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72341144950152646)
,p_event_id=>wwv_flow_imp.id(72340958618152644)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P312_REQUIRED_CHECKER'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'Null'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72341045885152645)
,p_event_id=>wwv_flow_imp.id(72340958618152644)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(72338199927152616)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(74199053261493916)
,p_name=>'Check if user placed a value'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P312_INVOICE_TYPE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74199176988493917)
,p_event_id=>wwv_flow_imp.id(74199053261493916)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($(''#P312_INVOICE_TYPE'').val() == "") {',
'    $(''#P312_INVOICE_TYPE'' + ''_error_placeholder'').html(''<span>Please select invoice type.</span>'');',
'    $(''#P312_INVOICE_TYPE'' + ''_error_placeholder'').addClass("show");',
'} else {',
'    $(''#P312_INVOICE_TYPE'' + ''_error_placeholder'').html('''');',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(74199287691493918)
,p_name=>'Check invoice type'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P312_INVOICE_ID'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$(''#P312_INVOICE_TYPE'').val() == ""'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusin'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74199387444493919)
,p_event_id=>wwv_flow_imp.id(74199287691493918)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P312_INVOICE_TYPE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(82190936272156610)
,p_name=>'Set P312_IS_DONATION'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P312_GC_TYPE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(82191020404156611)
,p_event_id=>wwv_flow_imp.id(82190936272156610)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P312_IS_DONATION'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT DONATION INTO :P312_IS_DONATION',
'    FROM NPM013',
'    WHERE GC_TYPE_CODE = :P312_GC_TYPE;',
'',
'    RETURN :P312_IS_DONATION;',
'END;'))
,p_attribute_07=>'P312_GC_TYPE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(82191195499156612)
,p_event_id=>wwv_flow_imp.id(82190936272156610)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'console.log("tyyyyyype")',
'console.log(apex.item("P312_IS_DONATION").getValue())'))
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
