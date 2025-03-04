prompt --application/pages/page_00376
begin
--   Manifest
--     PAGE: 00376
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
 p_id=>376
,p_name=>'Reservation New Expiry Date'
,p_alias=>'RESERVATION-CHANGE-EXPIRY-DATE'
,p_page_mode=>'MODAL'
,p_step_title=>'Change Expiry Date'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p7KeyMap = {',
'    enter: (v) => {',
'        $("#enter").trigger("click");',
'    }',
'}',
'',
'function mapP7Keys() {',
'    $(document).off(''keydown.p7keyevents'');',
'    $(document).on(''keydown.p7keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p7KeyMap[key]) {',
'            ev.preventDefault();',
'            p7KeyMap[key]();',
'        }',
'    });',
'}',
'',
'function highlightValue() {',
'    const inputFieldIds = ["P376_NEW_EXPIRY_DATE"];',
'',
'    inputFieldIds.forEach((fieldId) => {',
'        $(`#${fieldId}`).on("focus", function() {',
'            $(this).select();',
'        });',
'    })',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP7Keys();',
'',
'// MM/DD/YYYY validation',
'// setInputFilter($("#P376_NEW_EXPIRY_DATE"), function(value) {',
'//     return /^((\d{0,2}|\d{0,2}\/|\d{0,2}\/\d{0,2}|\d{0,2}\/\d{0,2}\/|\d{0,2}\/\d{0,2}\/\d{0,4}))$/.test(value); // numbers only',
'// }, "Invalid input. Date should be in MM/DD/YYYY format.");',
'',
'highlightValue();',
'',
'const fullDate = [''P376_NEW_EXPIRY_DATE''];',
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
'    font-weight: 600;',
'    padding-left: 0.7rem;',
'    padding-bottom: 0.1rem;',
'}',
'',
'#P376_NEW_EXPIRY_DATE {',
'    font-size: 1.125rem;',
'    margin: 0 auto;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'120px'
,p_dialog_width=>'430px'
,p_dialog_max_width=>'430px'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(100709960110052296)
,p_plug_name=>'Reservation New Expiry Date'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4329702440084182)
,p_plug_display_sequence=>30
,p_query_type=>'TABLE'
,p_query_table=>'NPT020'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(100590692630224816)
,p_plug_name=>'Error Display'
,p_parent_plug_id=>wwv_flow_imp.id(100709960110052296)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--hiddenOverflow:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span id="errorArea" class="hide error-msg">Please fill in the required field.</span>',
'<span id="errorArea1" class="hide error-msg">Please input a valid date.</span>',
'<span id="errorArea2" class="hide error-msg">New expiry date should be greater than the present date.</span>'))
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(41338016038930920)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(100709960110052296)
,p_button_name=>'UPDATE_EXPIRY_DATE'
,p_button_static_id=>'enter'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Search'
,p_warn_on_unsaved_changes=>null
,p_grid_column_css_classes=>'hide'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(41337687444930920)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(100709960110052296)
,p_button_name=>'CLOSE_BTN'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Close Btn'
,p_warn_on_unsaved_changes=>null
,p_grid_column_css_classes=>'hide'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44823289185626642)
,p_name=>'P376_RESERVE_NO'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(100713628386052318)
,p_name=>'P376_NEW_EXPIRY_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(100709960110052296)
,p_prompt=>'<span style="padding-left:0rem">New Expiry Date:</span>'
,p_placeholder=>'MM / DD / YYYY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>10
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(44823655441626646)
,p_computation_sequence=>20
,p_computation_item=>'P376_NEW_EXPIRY_DATE'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(41344467566930931)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(41337687444930920)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41344940272930932)
,p_event_id=>wwv_flow_imp.id(41344467566930931)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(41342001165930928)
,p_name=>'Submit Update'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(41338016038930920)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41342566635930928)
,p_event_id=>wwv_flow_imp.id(41342001165930928)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var newExpiryDate = $v("P376_NEW_EXPIRY_DATE");',
'var errorArea = document.getElementById("errorArea");',
'var errorArea1 = document.getElementById("errorArea1");',
'var errorArea2 = document.getElementById("errorArea2")',
'',
'if(!newExpiryDate) {',
'    errorArea.style.display = "block"',
'    errorArea1.style.display = "none"',
'    errorArea2.style.display = "none"',
'    document.getElementById("P376_NEW_EXPIRY_DATE").focus();',
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41344009352930931)
,p_event_id=>wwv_flow_imp.id(41342001165930928)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var errorArea = document.getElementById("errorArea");',
'var errorArea1 = document.getElementById("errorArea1");',
'var errorArea2 = document.getElementById("errorArea2")',
'',
'',
'var date_regex = /^(0?[1-9]|1[012])[- \/.](0?[1-9]|[12][0-9]|3[01])[- \/.](19|20)\d\d$/;',
'var date_regex_1 = /^(0?[1-9]|1[012])[- \/.](0?[1-9]|[12][0-9]|2[09])[- \/.](19|20)\d\d$/;',
'var date_regex_2 = /^(0?[1-9]|1[012])[- \/.](0?[1-9]|[12][0-8]|2[08])[- \/.](19|20)\d\d$/;',
'',
'if ($(''#P376_NEW_EXPIRY_DATE'').val().substring(0,3) === "02/" || $(''#P376_NEW_EXPIRY_DATE'').val().substring(0,2) === "2/") {',
'    var year = '''';',
'    if ($(''#P376_NEW_EXPIRY_DATE'').val().length === 10) {',
'        year = $(''#P376_NEW_EXPIRY_DATE'').val().substring(6, 10);',
'    } else {',
'        year = $(''#P376_NEW_EXPIRY_DATE'').val().substring(5, 9);',
'    }',
'    if (((year % 4 == 0) && (year % 100 != 0)) || (year % 400 == 0)) {',
'        if (date_regex_1.test($(''#P376_NEW_EXPIRY_DATE'').val()) || $(''#P376_NEW_EXPIRY_DATE'').val().trim().length === 0) {',
'            errorArea.style.display = "none"',
'            errorArea1.style.display = "none"',
'            errorArea2.style.display = "none"',
'            return true;',
'        } else {',
'            errorArea.style.display = "none"',
'            errorArea1.style.display = "block"',
'            errorArea2.style.display = "none"',
'            document.getElementById("P376_NEW_EXPIRY_DATE").focus();',
'            return false;',
'        }',
'    } else {',
'        if (date_regex_2.test($(''#P376_NEW_EXPIRY_DATE'').val()) || $(''#P376_NEW_EXPIRY_DATE'').val().trim().length === 0) {',
'            errorArea.style.display = "none"',
'            errorArea1.style.display = "none"',
'            errorArea2.style.display = "none"',
'            return true;',
'        } else {',
'            errorArea.style.display = "none"',
'            errorArea1.style.display = "block"',
'            errorArea2.style.display = "none"',
'            document.getElementById("P376_NEW_EXPIRY_DATE").focus();',
'            return false;',
'        }',
'    }',
'} else {',
'    if (date_regex.test($(''#P376_NEW_EXPIRY_DATE'').val()) || $(''#P376_NEW_EXPIRY_DATE'').val().trim().length === 0) {',
'        errorArea.style.display = "none"',
'        errorArea1.style.display = "none"',
'        errorArea2.style.display = "none"',
'        return true;',
'    } else {',
'        errorArea.style.display = "none"',
'        errorArea1.style.display = "block"',
'        errorArea2.style.display = "none"',
'        document.getElementById("P376_NEW_EXPIRY_DATE").focus();',
'        return false;',
'    }',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44822844381626638)
,p_event_id=>wwv_flow_imp.id(41342001165930928)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var errorArea = document.getElementById("errorArea");',
'var errorArea1 = document.getElementById("errorArea1");',
'var errorArea2 = document.getElementById("errorArea2");',
'',
'',
'var date = document.getElementById("P376_NEW_EXPIRY_DATE").value;',
'var varDate = new Date(date); //dd-mm-YYYY',
'var today = new Date();',
'today.setHours(0,0,0,0);',
'',
'if(varDate > today) {',
'    errorArea.style.display = "none";',
'    errorArea1.style.display = "none";',
'    errorArea2.style.display = "none";',
'    return true;',
'} else {',
'    errorArea.style.display = "none";',
'    errorArea1.style.display = "none";',
'    errorArea2.style.display = "block";',
'    document.getElementById("P376_NEW_EXPIRY_DATE").focus();',
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41343057642930929)
,p_event_id=>wwv_flow_imp.id(41342001165930928)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
,p_attribute_01=>'P376_NEW_EXPIRY_DATE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(41340724653930925)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(100709960110052296)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Gift Certificate Search'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>41340724653930925
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(41341671133930928)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>41341671133930928
);
wwv_flow_imp.component_end;
end;
/
