prompt --application/pages/page_00060
begin
--   Manifest
--     PAGE: 00060
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
 p_id=>60
,p_name=>'Charge/COD Quotation Display Records'
,p_alias=>'CHARGE-COD-QUOTATION-DISPLAY-RECORDS'
,p_page_mode=>'MODAL'
,p_step_title=>'Diplay Records For:'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p60KeyMap = {',
'    enter: (v) => {',
'        $("#enter").trigger("click");',
'    },',
'    escape: (v) => {',
'        $("#escape").trigger("click");',
'    }',
'}',
'',
'function mapP60Keys() {',
'    $(document).off(''keydown.p60keyevents'');',
'    $(document).on(''keydown.p60keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p60KeyMap[key]) {',
'            ev.preventDefault();',
'            p60KeyMap[key]();',
'        }',
'    });',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP60Keys();',
'',
'const fullDate = [''P60_DAY_DATE''];',
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
'});',
'',
'const monthDate = [''P60_MONTH_DATE''];',
'',
'monthDate.forEach((fieldId) => {',
'  const dateField = document.getElementById(fieldId);',
'',
'  dateField.addEventListener(''input'', function () {',
'    let value = dateField.value.replace(/\D/g, '''');',
'',
'    if (value.length > 2) {',
'      value = value.substring(0, 2) + ''/'' + value.substring(2);',
'    }',
'',
'    dateField.value = value;',
'  });',
'});'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Dialog-header {',
'    /* background-color: #056BC9; */',
'    background-color: #056AC8;',
'    padding: .5rem 0rem 0rem 1rem;',
'}',
'',
'.t-Dialog-body {',
'    padding-block-start: var(--ut-dialog-padding-y, .5rem);',
'    padding-inline-start: var(--ut-dialog-padding-x, .5rem);',
'}',
'',
'.t-Dialog-bodyWrapperIn {',
'    overflow: hidden;',
'    background-color: white;',
'}',
'',
'.t-Region {',
'    color: white;',
'    font-size: 1.5rem;',
'    margin-bottom: .4rem;',
'}',
'',
'.t-Form-itemWrapper {',
'    width: 62%;',
'    position: absolute;',
'    left: 36%;',
'    bottom: 10%;',
'}',
'',
'.t-Form-itemWrapper > input {',
'    background-color: #ece7e7;',
'    height: 2rem;',
'}',
'',
'.t-Form-inputContainer {',
'    padding-block-end: var(--ut-field-padding-y, .4rem);',
'}',
'',
'.t-Form-labelContainer {',
'    padding-block-start: var(--ut-field-padding-y, .5rem);',
'}',
'',
'.t-Form-label {',
'    font-size: 1.125rem;',
'    font-weight: 600;',
'}',
'',
'.ui-dialog-titlebar {',
'    display: none !important;',
'}',
'',
'.hide {',
'    display: none;',
'}',
'',
'.error-msg {',
'    color: red;',
'    font-size: 0.75rem;',
'    padding-left: 0.7rem;',
'    padding-bottom: 0.5rem;',
'}',
'',
'#P60_DAY_DATE,',
'#P60_MONTH_DATE {',
'    font-size: 1.125rem;',
'    text-align: center;',
'    margin: 0 auto;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'405px'
,p_dialog_max_width=>'405px'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(104222748802041722)
,p_plug_name=>'Search'
,p_region_name=>'search-form'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>20
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(129315289206129514)
,p_plug_name=>'Error Display'
,p_parent_plug_id=>wwv_flow_imp.id(104222748802041722)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--hiddenOverflow:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span id="errorArea" class="hide error-msg">Please fill in at least one search field</span>',
'<span id="errorArea1" class="hide error-msg">Please input a valid date.</span>'))
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(68671217353159017)
,p_button_sequence=>30
,p_button_name=>'SEARCH'
,p_button_static_id=>'enter'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Search'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'hide'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69532575449822623)
,p_button_sequence=>40
,p_button_name=>'Cancel'
,p_button_static_id=>'escape'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Search'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'hide'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(104222979741041793)
,p_name=>'P60_DAY_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(104222748802041722)
,p_prompt=>'Day Date:'
,p_placeholder=>'MM / DD / YYYY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--postTextBlock:margin-right-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(104223098325041794)
,p_name=>'P60_MONTH_DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(104222748802041722)
,p_prompt=>'Month Date:'
,p_placeholder=>'MM / YYYY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>7
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--postTextBlock:margin-right-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(68673098504159103)
,p_name=>'Search Table'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(68671217353159017)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68673507455159104)
,p_event_id=>wwv_flow_imp.id(68673098504159103)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var dayDate = $v("P60_DAY_DATE");',
'var monthDate = $v("P60_MONTH_DATE");',
'var errorArea = document.getElementById("errorArea");',
'var errorArea1 = document.getElementById("errorArea1");',
'',
'if(!dayDate && !monthDate && !contactPerson) {',
'    errorArea.style.display = "block";',
'    errorArea1.style.display = "none";',
'    document.getElementById("P60_DAY_DATE").focus();',
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68674023881159106)
,p_event_id=>wwv_flow_imp.id(68673098504159103)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var errorArea = document.getElementById("errorArea");',
'var errorArea1 = document.getElementById("errorArea1");',
'',
'',
'var date_regex = /^(0?[1-9]|1[012])[- \/.](0?[1-9]|[12][0-9]|3[01])[- \/.](19|20)\d\d$/;',
'var date_regex_1 = /^(0?[1-9]|1[012])[- \/.](0?[1-9]|[12][0-9]|2[09])[- \/.](19|20)\d\d$/;',
'var date_regex_2 = /^(0?[1-9]|1[012])[- \/.](0?[1-9]|[12][0-8]|2[08])[- \/.](19|20)\d\d$/;',
'',
'if ($(''#P60_DAY_DATE'').val().substring(0,3) === "02/" || $(''#P60_DAY_DATE'').val().substring(0,2) === "2/") {',
'    var year = '''';',
'    if ($(''#P60_DAY_DATE'').val().length === 10) {',
'        year = $(''#P60_DAY_DATE'').val().substring(6, 10);',
'    } else {',
'        year = $(''#P60_DAY_DATE'').val().substring(5, 9);',
'    }',
'    if (((year % 4 == 0) && (year % 100 != 0)) || (year % 400 == 0)) {',
'        if (date_regex_1.test($(''#P60_DAY_DATE'').val()) || $(''#P60_DAY_DATE'').val().trim().length === 0) {',
'            errorArea.style.display = "none"',
'            errorArea1.style.display = "none"',
'            return true;',
'        } else {',
'            errorArea.style.display = "none"',
'            errorArea1.style.display = "block"',
'            document.getElementById("P60_DAY_DATE").focus();',
'            return false;',
'        }',
'    } else {',
'        if (date_regex_2.test($(''#P60_DAY_DATE'').val()) || $(''#P60_DAY_DATE'').val().trim().length === 0) {',
'            errorArea.style.display = "none"',
'            errorArea1.style.display = "none"',
'            return true;',
'        } else {',
'            errorArea.style.display = "none"',
'            errorArea1.style.display = "block"',
'            document.getElementById("P60_DAY_DATE").focus();',
'            return false;',
'        }',
'    }',
'} else {',
'    if (date_regex.test($(''#P60_DAY_DATE'').val()) || $(''#P60_DAY_DATE'').val().trim().length === 0) {',
'        errorArea.style.display = "none"',
'        errorArea1.style.display = "none"',
'        return true;',
'    } else {',
'        errorArea.style.display = "none"',
'        errorArea1.style.display = "block"',
'        document.getElementById("P60_DAY_DATE").focus();',
'        return false;',
'    }',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68674585392159106)
,p_event_id=>wwv_flow_imp.id(68673098504159103)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var errorArea = document.getElementById("errorArea");',
'var errorArea1 = document.getElementById("errorArea1");',
'',
'var date_regex = /^(0?[1-9]|1[012])[- \/.](19|20)\d\d$/;',
'',
'if (date_regex.test($(''#P60_MONTH_DATE'').val()) || $(''#P60_MONTH_DATE'').val().trim().length === 0) {',
'    errorArea.style.display = "none"',
'    errorArea1.style.display = "none"',
'    return true;',
'} else {',
'    errorArea.style.display = "none"',
'    errorArea1.style.display = "block"',
'    document.getElementById("P60_MONTH_DATE").focus();',
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68675091497159107)
,p_event_id=>wwv_flow_imp.id(68673098504159103)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
,p_attribute_01=>'P60_DAY_DATE,P60_MONTH_DATE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69532612411822624)
,p_name=>'New'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(69532575449822623)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69532792548822625)
,p_event_id=>wwv_flow_imp.id(69532612411822624)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Cancel'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp.component_end;
end;
/
