prompt --application/pages/page_00374
begin
--   Manifest
--     PAGE: 00374
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
 p_id=>374
,p_name=>'Reservation Search'
,p_alias=>'RESERVATION-SEARCH'
,p_page_mode=>'MODAL'
,p_step_title=>'Reservation Search'
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
'    const inputFieldIds = ["P374_DAY_DATE", "P374_MONTH_DATE", "P374_CONTACT_PERSON"];',
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
'highlightValue();',
'',
'const fullDate = [''P374_DAY_DATE''];',
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
'',
'',
'const monthDate = [''P374_MONTH_DATE''];',
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
'    background-color: white;',
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
'    padding-bottom: 0.5rem;',
'}',
'',
'#P374_DAY_DATE,',
'#P374_MONTH_DATE,',
'#P374_CONTACT_PERSON {',
'    font-size: 1.125rem;',
'    margin: 0 auto;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'405px'
,p_dialog_max_width=>'405px'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(59254002047293901)
,p_plug_name=>'Title'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span>',
'    <text style="display: block; height: 1.6rem;">Display Records For:</text>',
'</span>'))
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(59373346935121382)
,p_plug_name=>'Gift Certificate Search'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4329702440084182)
,p_plug_display_sequence=>20
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
 p_id=>wwv_flow_imp.id(59254079455293902)
,p_plug_name=>'Error Display'
,p_parent_plug_id=>wwv_flow_imp.id(59373346935121382)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--hiddenOverflow:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
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
 p_id=>wwv_flow_imp.id(40626425623030378)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(59373346935121382)
,p_button_name=>'SEARCH_BTN'
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
 p_id=>wwv_flow_imp.id(40626037428030376)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(59373346935121382)
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
 p_id=>wwv_flow_imp.id(40130308376188926)
,p_name=>'P374_CONTACT_PERSON'
,p_source_data_type=>'DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(59373346935121382)
,p_item_source_plug_id=>wwv_flow_imp.id(59373346935121382)
,p_prompt=>'<span style="padding-left:0rem">Contact Person:</span>'
,p_source=>'DATE_CREATED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59375202178121398)
,p_name=>'P374_DAY_DATE'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(59373346935121382)
,p_item_source_plug_id=>wwv_flow_imp.id(59373346935121382)
,p_prompt=>'<span style="padding-left:3rem">Day Date:</span>'
,p_placeholder=>'MM / DD / YYYY'
,p_source=>'GIFT_CERTIFICATE_BATCH_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>10
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59377508606121423)
,p_name=>'P374_MONTH_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(59373346935121382)
,p_item_source_plug_id=>wwv_flow_imp.id(59373346935121382)
,p_prompt=>'<span style="padding-left:1.5rem">Month Date:</span>'
,p_placeholder=>'MM / YYYY'
,p_source=>'DATE_CREATED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>7
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(40631656181030387)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(40626037428030376)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40632193357030387)
,p_event_id=>wwv_flow_imp.id(40631656181030387)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(40630273744030384)
,p_name=>'Search Table'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(40626425623030378)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40630795616030385)
,p_event_id=>wwv_flow_imp.id(40630273744030384)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var dayDate = $v("P374_DAY_DATE");',
'var monthDate = $v("P374_MONTH_DATE");',
'var contactPerson = $v("P374_CONTACT_PERSON");',
'var errorArea = document.getElementById("errorArea");',
'var errorArea1 = document.getElementById("errorArea1");',
'',
'if(!dayDate && !monthDate && !contactPerson) {',
'    errorArea.style.display = "block";',
'    errorArea1.style.display = "none";',
'    document.getElementById("P374_DAY_DATE").focus();',
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40130711585188930)
,p_event_id=>wwv_flow_imp.id(40630273744030384)
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
'if ($(''#P374_DAY_DATE'').val().substring(0,3) === "02/" || $(''#P374_DAY_DATE'').val().substring(0,2) === "2/") {',
'    var year = '''';',
'    if ($(''#P374_DAY_DATE'').val().length === 10) {',
'        year = $(''#P374_DAY_DATE'').val().substring(6, 10);',
'    } else {',
'        year = $(''#P374_DAY_DATE'').val().substring(5, 9);',
'    }',
'    if (((year % 4 == 0) && (year % 100 != 0)) || (year % 400 == 0)) {',
'        if (date_regex_1.test($(''#P374_DAY_DATE'').val()) || $(''#P374_DAY_DATE'').val().trim().length === 0) {',
'            errorArea.style.display = "none"',
'            errorArea1.style.display = "none"',
'            return true;',
'        } else {',
'            errorArea.style.display = "none"',
'            errorArea1.style.display = "block"',
'            document.getElementById("P374_DAY_DATE").focus();',
'            return false;',
'        }',
'    } else {',
'        if (date_regex_2.test($(''#P374_DAY_DATE'').val()) || $(''#P374_DAY_DATE'').val().trim().length === 0) {',
'            errorArea.style.display = "none"',
'            errorArea1.style.display = "none"',
'            return true;',
'        } else {',
'            errorArea.style.display = "none"',
'            errorArea1.style.display = "block"',
'            document.getElementById("P374_DAY_DATE").focus();',
'            return false;',
'        }',
'    }',
'} else {',
'    if (date_regex.test($(''#P374_DAY_DATE'').val()) || $(''#P374_DAY_DATE'').val().trim().length === 0) {',
'        errorArea.style.display = "none"',
'        errorArea1.style.display = "none"',
'        return true;',
'    } else {',
'        errorArea.style.display = "none"',
'        errorArea1.style.display = "block"',
'        document.getElementById("P374_DAY_DATE").focus();',
'        return false;',
'    }',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40130890918188931)
,p_event_id=>wwv_flow_imp.id(40630273744030384)
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
'if (date_regex.test($(''#P374_MONTH_DATE'').val()) || $(''#P374_MONTH_DATE'').val().trim().length === 0) {',
'    errorArea.style.display = "none"',
'    errorArea1.style.display = "none"',
'    return true;',
'} else {',
'    errorArea.style.display = "none"',
'    errorArea1.style.display = "block"',
'    document.getElementById("P374_MONTH_DATE").focus();',
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40631232975030387)
,p_event_id=>wwv_flow_imp.id(40630273744030384)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
,p_attribute_01=>'P374_DAY_DATE,P374_MONTH_DATE,P374_CONTACT_PERSON'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(40628580299030382)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(59373346935121382)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Gift Certificate Search'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>40628580299030382
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(40629828790030384)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>40629828790030384
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(40628147167030381)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(59373346935121382)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Gift Certificate Search'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>40628147167030381
);
wwv_flow_imp.component_end;
end;
/
