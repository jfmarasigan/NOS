prompt --application/pages/page_00208
begin
--   Manifest
--     PAGE: 00208
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
 p_id=>208
,p_name=>'Customer Account Type Utilities Update'
,p_alias=>'CUSTOMER-ACCOUNT-TYPE-UTILITIES-UPDATE'
,p_page_mode=>'MODAL'
,p_step_title=>'Update'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p208KeyMap = {',
'    escape : (v) => {',
'        $("#close").click();',
'    },',
'    enter: (v) => {',
'       $("#enter").trigger("click");',
'    }',
'',
'}',
'',
'function mapP208Keys() {',
'    $(document).off(''keydown.p208keyevents'');',
'    $(document).on(''keydown.p208keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p208KeyMap[key]) {',
'            ev.preventDefault();',
'            p208KeyMap[key]();',
'        }',
'    });',
'}',
'',
'$("#P208_ACCOUNT_TYPE_NAME").on("focus", function () {',
'   $(this).select();',
'});'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP208Keys();',
'$x(''P208_ACCOUNT_TYPE_NAME'').focus();'))
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
'.t-Form-labelContainer .t-Form-label::before {',
'    content: '''' !important;',
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
'}',
'',
'.t-Form-error, .a-Form-error{',
'    font-weight: bold;',
'}',
'',
'#P208_ACCOUNT_TYPE_CODE:disabled {',
'    color: black;',
'    background-color: #d9d9d9;',
'    opacity: unset;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_attributes=>'close: function() { customEvent(''customDialogClose'', {modalPageId: ''MODAL_CLOSE_FIXED''});} '
,p_protection_level=>'C'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(42868755688395905)
,p_plug_name=>'Form'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>20
,p_query_type=>'TABLE'
,p_query_table=>'NPM003'
,p_include_rowid_column=>false
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(42869782493395915)
,p_button_sequence=>30
,p_button_name=>'Enter'
,p_button_static_id=>'enter'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Enter'
,p_button_css_classes=>'hiddenbtn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42868966937395907)
,p_name=>'P208_ACCOUNT_TYPE_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(42868755688395905)
,p_item_source_plug_id=>wwv_flow_imp.id(42868755688395905)
,p_source=>'ACCOUNT_TYPE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42869068401395908)
,p_name=>'P208_ACCOUNT_TYPE_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(42868755688395905)
,p_item_source_plug_id=>wwv_flow_imp.id(42868755688395905)
,p_prompt=>'Name <span style="color:red;">*</span>'
,p_source=>'ACCOUNT_TYPE_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42869190711395909)
,p_name=>'P208_ACCOUNT_TYPE_CODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(42868755688395905)
,p_item_source_plug_id=>wwv_flow_imp.id(42868755688395905)
,p_prompt=>'Code'
,p_source=>'ACCOUNT_TYPE_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>2
,p_colspan=>5
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42869261743395910)
,p_name=>'P208_DESCRIPTION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(42868755688395905)
,p_item_source_plug_id=>wwv_flow_imp.id(42868755688395905)
,p_prompt=>'Description'
,p_source=>'DESCRIPTION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>200
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42869337436395911)
,p_name=>'P208_USER_CREATED'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(42868755688395905)
,p_item_source_plug_id=>wwv_flow_imp.id(42868755688395905)
,p_source=>'USER_CREATED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42869437769395912)
,p_name=>'P208_DATE_CREATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(42868755688395905)
,p_item_source_plug_id=>wwv_flow_imp.id(42868755688395905)
,p_source=>'DATE_CREATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42869589340395913)
,p_name=>'P208_USER_UPDATE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(42868755688395905)
,p_item_source_plug_id=>wwv_flow_imp.id(42868755688395905)
,p_source=>'USER_UPDATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42869667653395914)
,p_name=>'P208_DATE_UPDATED'
,p_source_data_type=>'DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(42868755688395905)
,p_item_source_plug_id=>wwv_flow_imp.id(42868755688395905)
,p_source=>'DATE_UPDATED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(42869859614395916)
,p_validation_name=>'Unique Name'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1 ',
'FROM NPM003',
'WHERE UPPER(ACCOUNT_TYPE_NAME) = UPPER(:P208_ACCOUNT_TYPE_NAME) AND ACCOUNT_TYPE_ID != :P208_ACCOUNT_TYPE_ID'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'Name already exists.'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_imp.id(42869068401395908)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(42870151869395919)
,p_validation_name=>'Empty Name'
,p_validation_sequence=>20
,p_validation=>'P208_ACCOUNT_TYPE_NAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Must have some value.'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_imp.id(42869068401395908)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42869996731395917)
,p_name=>'Disable Code'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42870035927395918)
,p_event_id=>wwv_flow_imp.id(42869996731395917)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P208_ACCOUNT_TYPE_CODE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(42870221954395920)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update Account Type'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'UPDATE NPM003 ',
'SET',
'    ACCOUNT_TYPE_NAME = :P208_ACCOUNT_TYPE_NAME, ',
'    DESCRIPTION = :P208_DESCRIPTION,',
'    USER_UPDATE = v(''APP_USER''), ',
'    DATE_UPDATED = SYSTIMESTAMP',
'WHERE ACCOUNT_TYPE_ID = :P208_ACCOUNT_TYPE_ID;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>42870221954395920
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(42870710594395925)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_01=>'P208_ACCOUNT_TYPE_ID'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>42870710594395925
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(42868844820395906)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(42868755688395905)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Customer Account Type Utilities Update'
,p_internal_uid=>42868844820395906
);
wwv_flow_imp.component_end;
end;
/
