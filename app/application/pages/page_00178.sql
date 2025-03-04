prompt --application/pages/page_00178
begin
--   Manifest
--     PAGE: 00178
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
 p_id=>178
,p_name=>'Bank Utility Add'
,p_alias=>'BANK-UTILITY-ADD'
,p_page_mode=>'MODAL'
,p_step_title=>'Add'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p178KeyMap = {',
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
'function mapP178Keys() {',
'    $(document).off(''keydown.p178keyevents'');',
'    $(document).on(''keydown.p178keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p178KeyMap[key]) {',
'            ev.preventDefault();',
'            p178KeyMap[key]();',
'        }',
'    });',
'}',
'',
''))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP178Keys();',
'',
'$x(''P178_BANK_CODE'').focus();'))
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
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'40rem'
,p_protection_level=>'C'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(236376830319992593)
,p_plug_name=>'Form / Table'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>50
,p_query_type=>'TABLE'
,p_query_table=>'NPM007'
,p_include_rowid_column=>false
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(41039601604168679)
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
 p_id=>wwv_flow_imp.id(40583188568970211)
,p_name=>'P178_BANK_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(236376830319992593)
,p_item_source_plug_id=>wwv_flow_imp.id(236376830319992593)
,p_source=>'BANK_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40583251100970212)
,p_name=>'P178_BANK_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(236376830319992593)
,p_item_source_plug_id=>wwv_flow_imp.id(236376830319992593)
,p_prompt=>'Name<span style="color:red;">*</span>'
,p_source=>'BANK_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382365997084278)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:margin-right-sm'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40583302830970213)
,p_name=>'P178_USER_CREATED'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(236376830319992593)
,p_item_source_plug_id=>wwv_flow_imp.id(236376830319992593)
,p_source=>'USER_CREATED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40583430991970214)
,p_name=>'P178_DATE_CREATED'
,p_source_data_type=>'DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(236376830319992593)
,p_item_source_plug_id=>wwv_flow_imp.id(236376830319992593)
,p_source=>'DATE_CREATED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40583519077970215)
,p_name=>'P178_USER_UPDATE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(236376830319992593)
,p_item_source_plug_id=>wwv_flow_imp.id(236376830319992593)
,p_source=>'USER_UPDATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40583685556970216)
,p_name=>'P178_DATE_UPDATED'
,p_source_data_type=>'DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(236376830319992593)
,p_item_source_plug_id=>wwv_flow_imp.id(236376830319992593)
,p_source=>'DATE_UPDATED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40583743855970217)
,p_name=>'P178_BANK_CODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(236376830319992593)
,p_item_source_plug_id=>wwv_flow_imp.id(236376830319992593)
,p_prompt=>'Code<span style="color:red;">*</span>'
,p_source=>'BANK_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>5
,p_colspan=>8
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382365997084278)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
,p_attribute_06=>'UPPER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40583850857970218)
,p_name=>'P178_BANK_ROUTE_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(236376830319992593)
,p_item_source_plug_id=>wwv_flow_imp.id(236376830319992593)
,p_prompt=>'Route No'
,p_source=>'BANK_ROUTE_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>10
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382365997084278)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:margin-right-sm'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(40583960018970219)
,p_validation_name=>'Empty_code'
,p_validation_sequence=>10
,p_validation=>'P178_BANK_CODE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Field cannnot be empty.'
,p_associated_item=>wwv_flow_imp.id(40583743855970217)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(40584081013970220)
,p_validation_name=>'Empty_name'
,p_validation_sequence=>20
,p_validation=>'P178_BANK_NAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Field cannnot be empty.'
,p_associated_item=>wwv_flow_imp.id(40583251100970212)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(40584132845970221)
,p_validation_name=>'Empty_route'
,p_validation_sequence=>30
,p_validation=>'P178_BANK_ROUTE_NO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Field cannnot be empty.'
,p_associated_item=>wwv_flow_imp.id(40583850857970218)
,p_error_display_location=>'INLINE_WITH_FIELD'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(40584220468970222)
,p_validation_name=>'Unique_code'
,p_validation_sequence=>40
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT BANK_CODE FROM NPM007',
'WHERE UPPER(BANK_CODE) = UPPER(:P178_BANK_CODE)'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'Bank Code already exists.'
,p_associated_item=>wwv_flow_imp.id(40583743855970217)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(40584311754970223)
,p_validation_name=>'Unique_name'
,p_validation_sequence=>50
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT BANK_name FROM NPM007',
'WHERE UPPER(BANK_name) = UPPER(:P178_BANK_name)'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'Bank Code already exists.'
,p_associated_item=>wwv_flow_imp.id(40583251100970212)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(41047368354168756)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'INSERT INTO NPM007 (BANK_CODE, BANK_NAME, BANK_ROUTE_NO, USER_CREATED, DATE_CREATED, USER_UPDATE, DATE_UPDATED)',
'VALUES (:P178_BANK_CODE, :P178_BANK_NAME, :P178_BANK_ROUTE_NO, :APP_USER, SYSTIMESTAMP, :APP_USER, SYSTIMESTAMP);',
'',
'apex_util.set_session_state(''SUCCESS_MSG'', ''Bank Name added successfully'');'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>41047368354168756
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(41047734415168756)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>41047734415168756
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(41045236918168720)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(236376830319992593)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Bank Utility Add'
,p_internal_uid=>41045236918168720
);
wwv_flow_imp.component_end;
end;
/
