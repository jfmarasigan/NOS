prompt --application/pages/page_00315
begin
--   Manifest
--     PAGE: 00315
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
 p_id=>315
,p_name=>'Release Gift Certificate'
,p_alias=>'RELEASE-GIFT-CERTIFICATE'
,p_page_mode=>'MODAL'
,p_step_title=>'Release Gift Certificate'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#js/gift-certificate-validations#MIN#.js'
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
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP7Keys();',
'',
'',
'const fullDate = [''P315_INPUT_RELEASE_DATE''];',
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
'// MM validation',
'setInputFilter($("#P315_MM"), function(value) {',
'    return /^([1-9]|1[012]|^$)$/.test(value); // accepts empty string',
'    // return /^([1-9]|1[012])$/.test(value); // not accepting empty string',
'}, "Invalid input. Values should only be numbers from 1 to 12.");',
'',
'',
'// DD validation',
'setInputFilter($("#P315_DD"), function(value) {',
'    return (/^([1-9]$|^[1-2][0-9]$|^3[0-1]|^$)$/.test(value));',
'}, "Invalid input. Values should only be numbers from 1 to 31.")',
'',
'',
'// accept numbers only for YYYY',
'setInputFilter($("#P315_YYYY"), function(value) {',
'    return /^\d*$/.test(value); // numbers only',
'}, "Invalid input. Values should be numbers only.");',
'',
'',
'',
'// MM/DD/YYYY validation',
'setInputFilter($("#P315_INPUT_RELEASE_DATE"), function(value) {',
'    return /^((\d{0,2}|\d{0,2}\/|\d{0,2}\/\d{0,2}|\d{0,2}\/\d{0,2}\/|\d{0,2}\/\d{0,2}\/\d{0,4}))$/.test(value); // numbers only',
'}, "Invalid input. Date should be in MM/DD/YYYY format.");'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Dialog-header {',
'    background-color: #056AC8;',
'    padding: .5rem 0rem 0rem 1rem;',
'}',
'',
'.t-Dialog-body {',
'    padding-block-start: 0;',
'    padding-block-end: 0;',
'    padding-inline-end: var(--ut-dialog-padding-x, 1.4rem);',
'    padding-inline-start: var(--ut-dialog-padding-x, 1.4rem);',
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
'.t-Form-label {',
'    color: white;',
'    font-size: 1.125rem;',
'    padding-block-start: 0;',
'}',
'',
'.t-Form-labelContainer:has(#P315_SLASH_LABEL), .t-Form-labelContainer:has(#P315_SLASH_1_LABEL) {',
'    padding-block-start: var(--ut-field-padding-y, .1rem);',
'    padding-inline-end: var(--ut-field-padding-x, .3rem);',
'}',
'',
'.t-Form-itemWrapper:has(#P315_RELEASE_DATE) {',
'    min-height: 0;',
'}',
'',
'.t-Form-itemWrapper:has(#P315_MM) {',
'    margin-left: .6rem;',
'}',
'',
'.t-Form-itemWrapper:has(#P315_YYYY) {',
'    margin-right: .6rem;',
'}',
'',
'',
'/* -------------------------------------------------- */',
'',
'.t-Form-labelContainer:has(#P315_INPUT_RELEASE_DATE_LABEL) {',
'    display: none;',
'}',
'',
'.t-Form-inputContainer:has(#P315_INPUT_RELEASE_DATE) {',
'    width: 60%;',
'    margin-left: auto;',
'    margin-right: auto;',
'}',
'',
'#P315_INPUT_RELEASE_DATE {',
'    height: 2.3rem;',
'}',
'',
'.hide {',
'    display: none;',
'}',
'',
'.error-msg {',
'    color: #FFD700;',
'    font-size: 0.8rem;',
'    font-weight: 600;',
'    padding-left: 0.7rem;',
'    padding-bottom: 0.2rem;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'150'
,p_dialog_width=>'340'
,p_dialog_max_width=>'340'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(45854356337755467)
,p_plug_name=>'Title'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--accent1:t-Region--noUI:t-Region--hiddenOverflow:margin-top-sm'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_plug_source=>'Gift Certificate Release'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(46689143600253171)
,p_plug_name=>'Release Gift Certificate'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4329702440084182)
,p_plug_display_sequence=>60
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26314295585216522)
,p_plug_name=>'Date_Input_Fields'
,p_parent_plug_id=>wwv_flow_imp.id(46689143600253171)
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
 p_id=>wwv_flow_imp.id(30478055086245235)
,p_plug_name=>'New Field'
,p_parent_plug_id=>wwv_flow_imp.id(26314295585216522)
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
 p_id=>wwv_flow_imp.id(30915274446029519)
,p_plug_name=>'Error display'
,p_parent_plug_id=>wwv_flow_imp.id(26314295585216522)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--textContent:t-Region--hiddenOverflow:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_location=>null
,p_plug_source=>'<span id="errorArea" class="hide error-msg">Please input a valid date.</span>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(30914688084029513)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(46689143600253171)
,p_button_name=>'Submit'
,p_button_static_id=>'enter'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Submit'
,p_warn_on_unsaved_changes=>null
,p_grid_column_css_classes=>'hide'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(30914339459029410)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(46689143600253171)
,p_button_name=>'Close'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Close'
,p_warn_on_unsaved_changes=>null
,p_grid_column_css_classes=>'hide'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26314918193216529)
,p_name=>'P315_RELEASE_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(26314295585216522)
,p_prompt=>'Release Date:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30478150394245236)
,p_name=>'P315_INPUT_RELEASE_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(30478055086245235)
,p_placeholder=>'MM / DD / YYYY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cMaxlength=>10
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30913900640029406)
,p_name=>'P315_GET_SELECTED_GC_NO'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30916715865029534)
,p_name=>'P315_GET_SEARCHED_YEAR'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30916881611029535)
,p_name=>'P315_GET_SEARCHED_GC_NO'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30917001875029537)
,p_name=>'P315_SUCCESS_MSG'
,p_item_sequence=>50
,p_item_default=>'Test from release success'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46692427336253229)
,p_name=>'P315_COPIES'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(46689143600253171)
,p_item_source_plug_id=>wwv_flow_imp.id(46689143600253171)
,p_source=>'COPIES'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77936050784036544)
,p_name=>'P315_IS_DONATION'
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(30916928411029536)
,p_computation_sequence=>10
,p_computation_item=>'P315_INPUT_RELEASE_DATE'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(30917708182029544)
,p_computation_sequence=>20
,p_computation_item=>'P315_SUCCESS_MSG'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30914418439029411)
,p_name=>'Close dialog'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(30914339459029410)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30914510772029512)
,p_event_id=>wwv_flow_imp.id(30914418439029411)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30914702104029514)
,p_name=>'Enter'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(30914688084029513)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30915024005029517)
,p_event_id=>wwv_flow_imp.id(30914702104029514)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var errorArea = document.getElementById("errorArea")',
'',
'var date_regex = /^(0?[1-9]|1[012])[- \/.](0?[1-9]|[12][0-9]|3[01])[- \/.](19|20)\d\d$/;',
'var date_regex_1 = /^(0?[1-9]|1[012])[- \/.](0?[1-9]|[12][0-9]|2[09])[- \/.](19|20)\d\d$/;',
'var date_regex_2 = /^(0?[1-9]|1[012])[- \/.](0?[1-9]|[1][0-9]|2[08])[- \/.](19|20)\d\d$/;',
'',
'var date = $(''#P315_INPUT_RELEASE_DATE'').val();',
'var inputDate = new Date(date); //dd-mm-YYYY',
'var today = new Date();',
'today.setHours(0,0,0,0);',
'',
'if ($(''#P315_INPUT_RELEASE_DATE'').val().substring(0,3) === "02/" || $(''#P315_INPUT_RELEASE_DATE'').val().substring(0,2) === "2/") {',
'    var year = '''';',
'    if ($(''#P315_INPUT_RELEASE_DATE'').val().length === 10) {',
'        year = $(''#P315_INPUT_RELEASE_DATE'').val().substring(6, 10);',
'    } else {',
'        year = $(''#P315_INPUT_RELEASE_DATE'').val().substring(5, 9);',
'    }',
'    if (((year % 4 == 0) && (year % 100 != 0)) || (year % 400 == 0)) {',
'        if (date_regex_1.test($(''#P315_INPUT_RELEASE_DATE'').val()) || $(''#P315_INPUT_RELEASE_DATE'').val().trim().length === 0) {',
'            ',
'            // check if input date greater than current date',
'            if (inputDate <= today) {',
'                errorArea.style.display = "none"',
'                return true;',
'            } else {',
'                errorArea.style.display = "block"',
'                document.getElementById("P315_INPUT_RELEASE_DATE").focus();',
'                return false;',
'            }',
'        } else {',
'            errorArea.style.display = "block"',
'            document.getElementById("P315_INPUT_RELEASE_DATE").focus();',
'            return false;',
'        }',
'    } else {',
'        if (date_regex_2.test($(''#P315_INPUT_RELEASE_DATE'').val()) || $(''#P315_INPUT_RELEASE_DATE'').val().trim().length === 0) {',
'            ',
'            // check if input date greater than current date',
'            if (inputDate <= today) {',
'                errorArea.style.display = "none"',
'                return true;',
'            } else {',
'                errorArea.style.display = "block"',
'                document.getElementById("P315_INPUT_RELEASE_DATE").focus();',
'                return false;',
'            }',
'        } else {',
'            errorArea.style.display = "block"',
'            document.getElementById("P315_INPUT_RELEASE_DATE").focus();',
'            return false;',
'        }',
'    }',
'} else {',
'    if (date_regex.test($(''#P315_INPUT_RELEASE_DATE'').val()) || $(''#P315_INPUT_RELEASE_DATE'').val().trim().length === 0) {',
'        ',
'        // check if input date greater than current date',
'        if (inputDate <= today) {',
'            errorArea.style.display = "none"',
'            return true;',
'        } else {',
'            errorArea.style.display = "block"',
'            document.getElementById("P315_INPUT_RELEASE_DATE").focus();',
'            return false;',
'        }',
'    } else {',
'        errorArea.style.display = "block"',
'        document.getElementById("P315_INPUT_RELEASE_DATE").focus();',
'        return false;',
'    }',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30915563498029522)
,p_event_id=>wwv_flow_imp.id(30914702104029514)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'BEGIN',
'',
'    IF :P315_IS_DONATION = ''Y'' THEN ',
'        UPDATE NPT020',
'            SET RELEASE_DATE = :P315_INPUT_RELEASE_DATE,',
'                GC_STATUS_ID = (SELECT npm014.GC_STATUS_ID',
'                                FROM NPM014 npm014',
'                                WHERE UPPER(npm014.GC_STATUS_NAME) = ''RELEASED''),',
'                USER_UPDATE = :app_user, ',
'                DATE_UPDATED = SYSDATE',
'            WHERE npt020.DONATION_GC_NO = :P315_GET_SELECTED_GC_NO;',
'    ELSE ',
'        UPDATE NPT020',
'            SET RELEASE_DATE = :P315_INPUT_RELEASE_DATE,',
'                GC_STATUS_ID = (SELECT npm014.GC_STATUS_ID',
'                                FROM NPM014 npm014',
'                                WHERE UPPER(npm014.GC_STATUS_NAME) = ''RELEASED''),',
'                USER_UPDATE = :app_user, ',
'                DATE_UPDATED = SYSDATE',
'            WHERE npt020.REGULAR_GC_NO = :P315_GET_SELECTED_GC_NO;',
'    END IF;',
'',
'    ',
'    apex_util.set_session_state(''SUCCESS_MSG'', ''Successfully released gift certificate'');',
'END;',
''))
,p_attribute_02=>'P315_INPUT_RELEASE_DATE,P315_IS_DONATION'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'$("#P315_GET_SELECTED_GC_NO").val() !== null && $("#P315_GET_SELECTED_GC_NO").val() !== '''' && $("#P315_GET_SELECTED_GC_NO").val() !== undefined'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30914898415029515)
,p_event_id=>wwv_flow_imp.id(30914702104029514)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'$("#P315_GET_SELECTED_GC_NO").val() !== null && $("#P315_GET_SELECTED_GC_NO").val() !== '''' && $("#P315_GET_SELECTED_GC_NO").val() !== undefined'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27228514255492003)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(30914688084029513)
,p_process_success_message=>'test test test'
,p_internal_uid=>27228514255492003
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27228071521491979)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(46689143600253171)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Print Gift Certificate'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'dito'
,p_internal_uid=>27228071521491979
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27227646355491976)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(46689143600253171)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Print Gift Certificate'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>27227646355491976
);
wwv_flow_imp.component_end;
end;
/
