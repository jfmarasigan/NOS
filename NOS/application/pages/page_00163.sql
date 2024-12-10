prompt --application/pages/page_00163
begin
--   Manifest
--     PAGE: 00163
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
 p_id=>163
,p_name=>'Department Utility Add'
,p_alias=>'DEPARTMENT-UTILITY-ADD'
,p_page_mode=>'MODAL'
,p_step_title=>'Add'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p163KeyMap = {',
'    escape : (v) => {',
'        $("#close").click();',
'    },',
'    enter: (v) => {',
'       // $("#submit").trigger("click");',
'       let activeElement = document.activeElement;',
'',
'        if ($(activeElement).is(''input'')) {',
'            var currentField = $(activeElement);',
'            var allInputs = $(''input:visible:enabled'');',
'            var currentIndex = allInputs.index(currentField); ',
'            var nextField = allInputs.eq(currentIndex + 1);',
'',
'            if (currentIndex === allInputs.length - 1) {',
'                $("#submit").trigger("click");',
'            } else {',
'                nextField.focus();',
'            }',
'        } else {',
'            $("#submit").trigger("click"); ',
'        }',
'    }',
'',
'}',
'',
'',
'function mapP163Keys() {',
'    $(document).off(''keydown.p163keyevents'');',
'    $(document).on(''keydown.p163keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p163KeyMap[key]) {',
'            ev.preventDefault();',
'            p163KeyMap[key]();',
'        }',
'    });',
'}',
'',
''))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP163Keys();',
'',
'$x(''P163_DEPT_CODE'').focus();'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Dialog-body{',
'    background-color: #056AC8;',
'    padding-top: 0;',
'}',
'',
'.t-Dialog-body label, .t-Dialog-body input, .t-Dialog-body .apex-item-display-only {',
'    font-size: 1.125rem;',
'}',
'',
'.t-Dialog-body label {',
'    color: white;',
'}',
'',
'.t-Region-body{',
'    background-color: #056AC8;',
'    padding-bottom: 0;',
'}',
'',
'.t-Form-error {',
'    color: #FFD700;',
'}',
'',
'',
'.t-Form-labelContainer .t-Form-label::before {',
'    content: '''' !important; /* Remove the asterisk before the label */',
'}',
'',
'',
'.white-text {',
'    color: white;',
'    font-size: 1.125rem;',
'}',
'',
'.hiddenbtn {',
'    display: none;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'40rem'
,p_protection_level=>'C'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(44281963296655323)
,p_plug_name=>'Form / Table'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>50
,p_query_type=>'TABLE'
,p_query_table=>'NIM024'
,p_include_rowid_column=>false
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(35162863908051228)
,p_button_sequence=>60
,p_button_name=>'Enter'
,p_button_static_id=>'submit'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Press enter to add'
,p_button_css_classes=>'white-text hiddenbtn'
,p_button_cattributes=>'tabindex="-1"'
,p_grid_new_row=>'Y'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34533992804955315)
,p_name=>'P163_DEPT_CODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(44281963296655323)
,p_item_source_plug_id=>wwv_flow_imp.id(44281963296655323)
,p_prompt=>'Code<span style="color:red;">*</span>'
,p_source=>'DEPT_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>1
,p_colspan=>8
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
 p_id=>wwv_flow_imp.id(34534098753955316)
,p_name=>'P163_DEPT_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(44281963296655323)
,p_item_source_plug_id=>wwv_flow_imp.id(44281963296655323)
,p_prompt=>'Name<span style="color:red;">*</span>'
,p_source=>'DEPT_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_field_template=>wwv_flow_imp.id(4382365997084278)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:margin-right-sm'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34534195746955317)
,p_name=>'P163_DESC'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(44281963296655323)
,p_item_source_plug_id=>wwv_flow_imp.id(44281963296655323)
,p_source=>'DESC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34534246174955318)
,p_name=>'P163_CREATE_USER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(44281963296655323)
,p_item_source_plug_id=>wwv_flow_imp.id(44281963296655323)
,p_item_default=>':APP_USER'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'CREATE_USER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34534326455955319)
,p_name=>'P163_CREATE_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(44281963296655323)
,p_item_source_plug_id=>wwv_flow_imp.id(44281963296655323)
,p_item_default=>'SYSTIMESTAMP'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'CREATE_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34534458377955320)
,p_name=>'P163_UPDATE_USER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(44281963296655323)
,p_item_source_plug_id=>wwv_flow_imp.id(44281963296655323)
,p_item_default=>':APP_USER'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'UPDATE_USER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34534594446955321)
,p_name=>'P163_UPDATE_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(44281963296655323)
,p_item_source_plug_id=>wwv_flow_imp.id(44281963296655323)
,p_item_default=>'SYSTIMESTAMP'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'UPDATE_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34534655774955322)
,p_name=>'P163_DEPT_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(44281963296655323)
,p_item_source_plug_id=>wwv_flow_imp.id(44281963296655323)
,p_source=>'DEPT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55009364869028284)
,p_name=>'P163_SUCCESS_MSG'
,p_item_sequence=>30
,p_item_default=>'Test from Update Price'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(36406455607386231)
,p_validation_name=>'Code_empty'
,p_validation_sequence=>10
,p_validation=>'P163_DEPT_CODE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Field cannot be empty.'
,p_associated_item=>wwv_flow_imp.id(34533992804955315)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(36406542163386232)
,p_validation_name=>'Name_empty'
,p_validation_sequence=>20
,p_validation=>'P163_DEPT_NAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Field cannot be empty.'
,p_associated_item=>wwv_flow_imp.id(34534098753955316)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(37731070006533446)
,p_validation_name=>'Unique_code'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DEPT_CODE FROM NIM024',
'WHERE DEPT_CODE = :P163_DEPT_CODE'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'Department code already exists.'
,p_associated_item=>wwv_flow_imp.id(34533992804955315)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(37731293296533448)
,p_validation_name=>'Unique_name'
,p_validation_sequence=>40
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DEPT_NAME FROM NIM024',
'WHERE DEPT_NAME = :P163_DEPT_NAME'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'Department name already exists.'
,p_associated_item=>wwv_flow_imp.id(34534098753955316)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(34533768126955313)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'INSERT INTO NIM024 (DEPT_CODE, DEPT_NAME, CREATE_USER, CREATE_DATE, UPDATE_USER, UPDATE_DATE)',
'VALUES (:P163_DEPT_CODE, :P163_DEPT_NAME, :APP_USER, SYSTIMESTAMP, :APP_USER, SYSTIMESTAMP);',
'',
'apex_util.set_session_state(''SUCCESS_MSG'', ''Department added successfully'');'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>34533768126955313
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(34535981706955335)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>34535981706955335
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(34533819023955314)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(44281963296655323)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Department Utility Add'
,p_internal_uid=>34533819023955314
);
wwv_flow_imp.component_end;
end;
/
