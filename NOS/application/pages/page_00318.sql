prompt --application/pages/page_00318
begin
--   Manifest
--     PAGE: 00318
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
 p_id=>318
,p_name=>'GC Statistics Date Range'
,p_alias=>'GC-STATISTICS-DATE-RANGE'
,p_page_mode=>'MODAL'
,p_step_title=>'GC Statistics Date Range'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p6KeyMap = {',
'    enter: (v) => {',
'        $("#enter").trigger("click");',
'    }',
'}',
'',
'function mapP6Keys() {',
'    $(document).off(''keydown.p6keyevents'');',
'    $(document).on(''keydown.p6keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p6KeyMap[key]) {',
'            ev.preventDefault();',
'            p6KeyMap[key]();',
'        }',
'    });',
'}',
'',
'function customEvent(event, data){',
'    mapP6Keys();',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP6Keys();',
'',
'///// FROM ',
'',
'// MM validation',
'setInputFilter($("#P318_MM"), function(value) {',
'    return /^([1-9]|1[012]|^$)$/.test(value); // accepts empty string',
'    // return /^([1-9]|1[012])$/.test(value); // not accepting empty string',
'}, "Invalid input. Values should only be numbers from 1 to 12.");',
'',
'',
'// DD validation',
'setInputFilter($("#P318_DD"), function(value) {',
'    return (/^([1-9]$|^[1-2][0-9]$|^3[0-1]|^$)$/.test(value));',
'}, "Invalid input. Values should only be numbers from 1 to 31.")',
'',
'',
'// accept numbers only for YYYY',
'setInputFilter($("#P318_YYYY"), function(value) {',
'    return /^\d*$/.test(value); // numbers only',
'}, "Invalid input. Values should be numbers only.");',
'',
'',
'///// TO',
'',
'// MM validation',
'setInputFilter($("#P318_MM_1"), function(value) {',
'    return /^([1-9]|1[012]|^$)$/.test(value); // accepts empty string',
'    // return /^([1-9]|1[012])$/.test(value); // not accepting empty string',
'}, "Invalid input. Values should only be numbers from 1 to 12.");',
'',
'',
'// DD validation',
'setInputFilter($("#P318_DD_1"), function(value) {',
'    return (/^([1-9]$|^[1-2][0-9]$|^3[0-1]|^$)$/.test(value));',
'}, "Invalid input. Values should only be numbers from 1 to 31.")',
'',
'',
'// accept numbers only for YYYY',
'setInputFilter($("#P318_YYYY_1"), function(value) {',
'    return /^\d*$/.test(value); // numbers only',
'}, "Invalid input. Values should be numbers only.");',
'',
'',
'',
'// MM/DD/YYYY validation',
'setInputFilter($("#P318_DATE_FROM"), function(value) {',
'    return /^((\d{0,2}|\d{0,2}\/|\d{0,2}\/\d{0,2}|\d{0,2}\/\d{0,2}\/|\d{0,2}\/\d{0,2}\/\d{0,4}))$/.test(value); // numbers only',
'}, "Invalid input. Date should be in MM/DD/YYYY format.");',
'',
'// MM/DD/YYYY validation',
'setInputFilter($("#P318_DATE_TO"), function(value) {',
'    return /^((\d{0,2}|\d{0,2}\/|\d{0,2}\/\d{0,2}|\d{0,2}\/\d{0,2}\/|\d{0,2}\/\d{0,2}\/\d{0,4}))$/.test(value); // numbers only',
'}, "Invalid input. Date should be in MM/DD/YYYY format.");'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Dialog-header {',
'    background-color: #056AC8;',
'    padding: 0rem 0rem 0rem .5rem;',
'}',
'',
'.t-Dialog-body {',
'    padding-block-start: 0;',
'    padding-block-end: 0;',
'    padding-inline-end: 0;',
'    padding-inline-start: 0;',
'}',
'',
'.t-Dialog-bodyWrapperIn {',
'    overflow: hidden;',
'    background-color: #056AC8;',
'    color: white;',
'}',
'',
'.t-Region {',
'    margin-block-end: .1rem;',
'    color: white;',
'    font-size: 1.125rem;',
'}',
'',
'.row {',
'    flex-wrap: initial;',
'}',
'',
'.col {',
'    height: 3.5rem;',
'}',
'',
'.t-Form-label {',
'    color: white;',
'    font-size: 1.125rem;',
'    padding-block-start: 0;',
'}',
'',
'.t-Form-labelContainer:has(#P318_SLASH_LABEL), .t-Form-labelContainer:has(#P318_SLASH_1_LABEL),',
'.t-Form-labelContainer:has(#P318_SLASH_2_LABEL), .t-Form-labelContainer:has(#P318_SLASH_1_1_LABEL) {',
'    padding-inline-start: var(--ut-field-padding-x, .3rem);',
'}',
'',
'.col:has(#P318_YYYY_1_CONTAINER), .col:has(#P318_YYYY_CONTAINER) {',
'    padding-inline-end: var(--ut-grid-gutter-width, 1.5rem);',
'}',
'',
'.t-Form-labelContainer {',
'    padding-inline-start: var(--ut-field-padding-x, 2rem);',
'}',
'',
'.t-Form-inputContainer {',
'    padding-block-start: .2rem;',
'}',
'',
'.t-Form-itemWrapper:has(#P315_MM), .t-Form-itemWrapper:has(#P315_MM_1) {',
'    margin-left: .6rem;',
'    /* margin: auto;',
'    width: 20%; */',
'}',
'',
'.t-Form-itemWrapper:has(#P315_YYYY), .t-Form-itemWrapper:has(#P315_YYYY_1) {',
'    margin-right: .6rem;',
'}',
'',
'#P318_TO_LABEL {',
'    padding-right: 1.4rem;',
'}',
'',
'.t-ButtonRegion-wrap:has(#statistics) {',
'    display: none;',
'}',
'',
'',
'',
'/* new design css */',
'',
'#P318_DATE_FROM_LABEL,',
'#P318_DATE_TO_LABEL {',
'    display: none;',
'}',
'',
'.max-width-label {',
'    max-width: 28% !important;',
'}',
'',
'#P318_DATE_FROM,',
'#P318_DATE_TO {',
'    text-align: center;',
'    font-size: 1.125rem;',
'    height: 2rem;',
'}',
'',
'.t-Form-inputContainer:has(#P318_DATE_FROM),',
'.t-Form-inputContainer:has(#P318_DATE_TO) {',
'    max-width: 75% !important;',
'}',
'',
'.t-Form-fieldContainer:has(#P318_TO_1_LABEL) {',
'    padding-right: 1.4rem;',
'}',
'',
'.hide {',
'    display: none;',
'}',
'',
'.error-msg {',
'    color: #FFD700;',
'    font-size: 1rem;',
'    padding-left: 1.5rem;',
'    padding-top: 0.1rem;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'170'
,p_dialog_width=>'350'
,p_dialog_max_width=>'350'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(32483885991104146)
,p_plug_name=>'Error display'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>20
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span id="errorArea" class="hide error-msg">Please input a valid date.</span>',
'<span id="errorArea1" class="hide error-msg">Date to should be greater than date from.</span>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54094434123752387)
,p_plug_name=>'Date_Input_Fields'
,p_region_name=>'from-id'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--hiddenOverflow:margin-top-none'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(73634494876291332)
,p_plug_name=>'Title'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--accent1:t-Region--noUI:t-Region--hiddenOverflow:margin-top-sm'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_plug_source=>'<text style="font-size:1.5rem;">Date Range - Statistics</text>'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(74469282138789036)
,p_plug_name=>'Release Gift Certificate'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4329702440084182)
,p_plug_display_sequence=>80
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    NULL AS "COPIES"',
'FROM',
'    DUAL'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27781920204535928)
,p_button_sequence=>70
,p_button_name=>'Search'
,p_button_static_id=>'enter'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Search'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'hide'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32483049349104138)
,p_name=>'P318_DATE_FROM'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(54094434123752387)
,p_placeholder=>'MM / DD / YYYY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32483170679104139)
,p_name=>'P318_DATE_TO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(54094434123752387)
,p_placeholder=>'MM / DD / YYYY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32483228180104140)
,p_name=>'P318_FROM_1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(54094434123752387)
,p_prompt=>'From:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>2
,p_grid_label_column_span=>1
,p_grid_column_css_classes=>'max-width-label'
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:margin-top-sm'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32483345635104141)
,p_name=>'P318_TO_1'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(54094434123752387)
,p_prompt=>'To:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>2
,p_grid_label_column_span=>1
,p_grid_column_css_classes=>'max-width-label'
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:margin-top-sm'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33724414957036901)
,p_name=>'P318_PREPARED_URL'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74475530377789158)
,p_name=>'P318_COPIES'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(74469282138789036)
,p_item_source_plug_id=>wwv_flow_imp.id(74469282138789036)
,p_source=>'COPIES'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(33724584461036902)
,p_computation_sequence=>10
,p_computation_item=>'P318_PREPARED_URL'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(33725048073036907)
,p_computation_sequence=>20
,p_computation_item=>'P318_DATE_FROM'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(33725150459036908)
,p_computation_sequence=>30
,p_computation_item=>'P318_DATE_TO'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27800466896719146)
,p_name=>'Enter'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27781920204535928)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(32483943245104147)
,p_event_id=>wwv_flow_imp.id(27800466896719146)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var errorArea = document.getElementById("errorArea")',
'var errorArea1 = document.getElementById("errorArea1")',
'',
'',
'var date_regex = /^(0?[1-9]|1[012])[- \/.](0?[1-9]|[12][0-9]|3[01])[- \/.](19|20)\d\d$/;',
'var date_regex_1 = /^(0?[1-9]|1[012])[- \/.](0?[1-9]|[12][0-9]|2[09])[- \/.](19|20)\d\d$/;',
'var date_regex_2 = /^(0?[1-9]|1[012])[- \/.](0?[1-9]|[12][0-8]|2[08])[- \/.](19|20)\d\d$/;',
'',
'if ($(''#P318_DATE_FROM'').val().substring(0,3) === "02/" || $(''#P318_DATE_FROM'').val().substring(0,2) === "2/") {',
'    var year = '''';',
'    if ($(''#P318_DATE_FROM'').val().length === 10) {',
'        year = $(''#P318_DATE_FROM'').val().substring(6, 10);',
'    } else {',
'        year = $(''#P318_DATE_FROM'').val().substring(5, 9);',
'    }',
'    if (((year % 4 == 0) && (year % 100 != 0)) || (year % 400 == 0)) {',
'        if (date_regex_1.test($(''#P318_DATE_FROM'').val()) || $(''#P318_DATE_FROM'').val().trim().length === 0) {',
'            errorArea.style.display = "none"',
'            errorArea1.style.display = "none"',
'            return true;',
'        } else {',
'            errorArea.style.display = "block"',
'            errorArea1.style.display = "none"',
'            document.getElementById("P318_DATE_FROM").focus();',
'            return false;',
'        }',
'    } else {',
'        if (date_regex_2.test($(''#P318_DATE_FROM'').val()) || $(''#P318_DATE_FROM'').val().trim().length === 0) {',
'            errorArea.style.display = "none"',
'            errorArea1.style.display = "none"',
'            return true;',
'        } else {',
'            errorArea.style.display = "block"',
'            errorArea1.style.display = "none"',
'            document.getElementById("P318_DATE_FROM").focus();',
'            return false;',
'        }',
'    }',
'} else {',
'    if (date_regex.test($(''#P318_DATE_FROM'').val()) || $(''#P318_DATE_FROM'').val().trim().length === 0) {',
'        errorArea.style.display = "none"',
'        errorArea1.style.display = "none"',
'        return true;',
'    } else {',
'        errorArea.style.display = "block"',
'        errorArea1.style.display = "none"',
'        document.getElementById("P318_DATE_FROM").focus();',
'        return false;',
'    }',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(32484006823104148)
,p_event_id=>wwv_flow_imp.id(27800466896719146)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var errorArea = document.getElementById("errorArea")',
'var errorArea1 = document.getElementById("errorArea1")',
'',
'',
'var date_regex = /^(0?[1-9]|1[012])[- \/.](0?[1-9]|[12][0-9]|3[01])[- \/.](19|20)\d\d$/;',
'var date_regex_1 = /^(0?[1-9]|1[012])[- \/.](0?[1-9]|[12][0-9]|2[09])[- \/.](19|20)\d\d$/;',
'var date_regex_2 = /^(0?[1-9]|1[012])[- \/.](0?[1-9]|[12][0-8]|2[08])[- \/.](19|20)\d\d$/;',
'',
'if ($(''#P318_DATE_TO'').val().substring(0,3) === "02/" || $(''#P318_DATE_TO'').val().substring(0,2) === "2/") {',
'    var year = '''';',
'    if ($(''#P318_DATE_TO'').val().length === 10) {',
'        year = $(''#P318_DATE_TO'').val().substring(6, 10);',
'    } else {',
'        year = $(''#P318_DATE_TO'').val().substring(5, 9);',
'    }',
'    if (((year % 4 == 0) && (year % 100 != 0)) || (year % 400 == 0)) {',
'        if (date_regex_1.test($(''#P318_DATE_TO'').val()) || $(''#P318_DATE_TO'').val().trim().length === 0) {',
'            errorArea.style.display = "none"',
'            errorArea1.style.display = "none"',
'            return true;',
'        } else {',
'            errorArea.style.display = "block"',
'            errorArea1.style.display = "none"',
'            document.getElementById("P318_DATE_TO").focus();',
'            return false;',
'        }',
'    } else {',
'        if (date_regex_2.test($(''#P318_DATE_TO'').val()) || $(''#P318_DATE_TO'').val().trim().length === 0) {',
'            errorArea.style.display = "none"',
'            errorArea1.style.display = "none"',
'            return true;',
'        } else {',
'            errorArea.style.display = "block"',
'            errorArea1.style.display = "none"',
'            document.getElementById("P318_DATE_TO").focus();',
'            return false;',
'        }',
'    }',
'} else {',
'    if (date_regex.test($(''#P318_DATE_FROM'').val()) || $(''#P318_DATE_FROM'').val().trim().length === 0) {',
'        errorArea.style.display = "none"',
'        errorArea1.style.display = "none"',
'        return true;',
'    } else {',
'        errorArea.style.display = "block"',
'        errorArea1.style.display = "none"',
'        document.getElementById("P318_DATE_FROM").focus();',
'        return false;',
'    }',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(32484141800104149)
,p_event_id=>wwv_flow_imp.id(27800466896719146)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'Compare from and to'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var errorArea = document.getElementById("errorArea")',
'var errorArea1 = document.getElementById("errorArea1")',
'',
'',
'var fromDate = new Date($(''#P318_DATE_FROM'').val())',
'var toDate = new Date($(''#P318_DATE_TO'').val())',
'',
'',
'if (toDate > fromDate) {',
'    errorArea.style.display = "none"',
'    errorArea1.style.display = "none"',
'    return true;',
'} else {',
'    errorArea.style.display = "none"',
'    errorArea1.style.display = "block"',
'    document.getElementById("P318_DATE_TO").focus();',
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33724705175036904)
,p_event_id=>wwv_flow_imp.id(27800466896719146)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P318_PREPARED_URL := apex_page.get_url(',
'       p_page   => 308,',
'       p_items  => ''P308_DATE_FROM,P308_DATE_TO'',',
'       p_values => :P318_DATE_FROM || '','' || :P318_DATE_TO',
'     );',
'END;'))
,p_attribute_02=>'P318_DATE_FROM,P318_DATE_TO'
,p_attribute_03=>'P318_PREPARED_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33724688665036903)
,p_event_id=>wwv_flow_imp.id(27800466896719146)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P318_PREPARED_URL");',
'apex.navigation.redirect(url);'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27800789784719149)
,p_event_id=>wwv_flow_imp.id(27800466896719146)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_name=>'Close Date Range Modal'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27787354677535960)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>27787354677535960
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27784272453535937)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(74469282138789036)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Print Gift Certificate'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>27784272453535937
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27783828479535932)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(74469282138789036)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Print Gift Certificate'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>27783828479535932
);
wwv_flow_imp.component_end;
end;
/
