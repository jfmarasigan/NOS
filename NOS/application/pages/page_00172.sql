prompt --application/pages/page_00172
begin
--   Manifest
--     PAGE: 00172
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
 p_id=>172
,p_name=>'UOM Utility Add'
,p_alias=>'UOM-UTILITY-ADD'
,p_page_mode=>'MODAL'
,p_step_title=>'Add'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p172KeyMap = {',
'    escape : (v) => {',
'        $("#close").click();',
'    },',
'    enter: (v) => {',
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
'function mapP172Keys() {',
'    $(document).off(''keydown.p172keyevents'');',
'    $(document).on(''keydown.p172keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p172KeyMap[key]) {',
'            ev.preventDefault();',
'            p172KeyMap[key]();',
'        }',
'    });',
'}',
'',
''))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP172Keys();',
'',
'$x(''P172_UOM_CODE'').focus();'))
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
'',
'.t-Form-labelContainer .t-Form-label::before {',
'    content: '''' !important; ',
'}',
'',
'',
'.white-text {',
'    color: white;',
'    font-size: 1.125rem;',
'}',
'',
'.t-Form-error {',
'    color: #FFD700;',
'}',
'',
'.hiddenbtn {',
'    display: none;',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'40rem'
,p_protection_level=>'C'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(155645349219286026)
,p_plug_name=>'Form / Table'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>50
,p_query_type=>'TABLE'
,p_query_table=>'NIM026'
,p_include_rowid_column=>false
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(38060775179901781)
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
 p_id=>wwv_flow_imp.id(37729581936533431)
,p_name=>'P172_UOM_CODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(155645349219286026)
,p_item_source_plug_id=>wwv_flow_imp.id(155645349219286026)
,p_prompt=>'Code<span style="color:red;">*</span>'
,p_source=>'UOM_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4
,p_colspan=>8
,p_field_template=>wwv_flow_imp.id(4382365997084278)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37729631134533432)
,p_name=>'P172_UOM_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(155645349219286026)
,p_item_source_plug_id=>wwv_flow_imp.id(155645349219286026)
,p_prompt=>'Name<span style="color:red;">*</span>'
,p_source=>'UOM_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>20
,p_field_template=>wwv_flow_imp.id(4382365997084278)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37729716747533433)
,p_name=>'P172_UOM_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(155645349219286026)
,p_item_source_plug_id=>wwv_flow_imp.id(155645349219286026)
,p_source=>'UOM_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145900439781586169)
,p_name=>'P172_CREATE_USER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(155645349219286026)
,p_item_source_plug_id=>wwv_flow_imp.id(155645349219286026)
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
 p_id=>wwv_flow_imp.id(145900520062586170)
,p_name=>'P172_CREATE_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(155645349219286026)
,p_item_source_plug_id=>wwv_flow_imp.id(155645349219286026)
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
 p_id=>wwv_flow_imp.id(145900651984586171)
,p_name=>'P172_UPDATE_USER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(155645349219286026)
,p_item_source_plug_id=>wwv_flow_imp.id(155645349219286026)
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
 p_id=>wwv_flow_imp.id(145900788053586172)
,p_name=>'P172_UPDATE_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(155645349219286026)
,p_item_source_plug_id=>wwv_flow_imp.id(155645349219286026)
,p_item_default=>'SYSTIMESTAMP'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'UPDATE_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(37729831333533434)
,p_validation_name=>'Code_empty'
,p_validation_sequence=>10
,p_validation=>'P172_UOM_CODE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Field cannot be empty'
,p_associated_item=>wwv_flow_imp.id(37729581936533431)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(37729930755533435)
,p_validation_name=>'Name_empty'
,p_validation_sequence=>20
,p_validation=>'P172_UOM_NAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Field cannot be empty.'
,p_associated_item=>wwv_flow_imp.id(37729631134533432)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(38764066124655630)
,p_validation_name=>'Unique_code'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT UOM_CODE FROM NIM026',
'WHERE UPPER(UOM_CODE) = UPPER(:P172_UOM_CODE)'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'UOM code already exists'
,p_associated_item=>wwv_flow_imp.id(37729581936533431)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(38764166990655631)
,p_validation_name=>'Unique_name'
,p_validation_sequence=>40
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT UOM_NAME FROM NIM026',
'WHERE UPPER(UOM_NAME) = UPPER(:P172_UOM_CODE)'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'UOM name already exists'
,p_associated_item=>wwv_flow_imp.id(37729631134533432)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(38067528355901823)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'INSERT INTO NIM026 (UOM_CODE, UOM_NAME, CREATE_USER, CREATE_DATE, UPDATE_USER, UPDATE_DATE)',
'VALUES (:P172_UOM_CODE, :P172_UOM_NAME, :APP_USER, SYSTIMESTAMP, :APP_USER, SYSTIMESTAMP);',
'',
'apex_util.set_session_state(''SUCCESS_MSG'', ''UOM added successfully'');'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>38067528355901823
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(38067947616901823)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>38067947616901823
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(38066263603901814)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(155645349219286026)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form UOM Utility Add'
,p_internal_uid=>38066263603901814
);
wwv_flow_imp.component_end;
end;
/
