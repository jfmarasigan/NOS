prompt --application/pages/page_00238
begin
--   Manifest
--     PAGE: 00238
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
 p_id=>238
,p_name=>'Gift Certificate - Gift Certificate Status Utilities Update'
,p_alias=>'GIFT-CERTIFICATE-GIFT-CERTIFICATE-STATUS-UTILITIES-UPDATE'
,p_page_mode=>'MODAL'
,p_step_title=>'Gift Certificate - Gift Certificate Status Utilities Update'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p238KeyMap = {',
'    escape : (v) => {',
'        $("#close").click();',
'    },',
'    enter: (v) => {',
'       $("#enter").trigger("click");',
'    }',
'',
'}',
'',
'function mapP238Keys() {',
'    $(document).off(''keydown.p238keyevents'');',
'    $(document).on(''keydown.p238keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p238KeyMap[key]) {',
'            ev.preventDefault();',
'            p238KeyMap[key]();',
'        }',
'    });',
'}',
'',
'$("#P238_GC_STATUS_NAME").on("focus", function () {',
'   $(this).select();',
'});'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP238Keys();',
'$x(''P238_GC_STATUS_NAME'').focus();'))
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
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_attributes=>'close: function() { customEvent(''customDialogClose'', {modalPageId: ''MODAL_CLOSE_FIXED''});} '
,p_protection_level=>'C'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(50283019445702404)
,p_plug_name=>'Form'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>20
,p_query_type=>'TABLE'
,p_query_table=>'NPM014'
,p_include_rowid_column=>false
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(50284022085702414)
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
 p_id=>wwv_flow_imp.id(50283298048702406)
,p_name=>'P238_GC_STATUS_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(50283019445702404)
,p_item_source_plug_id=>wwv_flow_imp.id(50283019445702404)
,p_source=>'GC_STATUS_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50283359138702407)
,p_name=>'P238_GC_STATUS_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(50283019445702404)
,p_item_source_plug_id=>wwv_flow_imp.id(50283019445702404)
,p_prompt=>'Name <span style="color:red;">*</span>'
,p_source=>'GC_STATUS_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>12
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50283433296702408)
,p_name=>'P238_GC_STATUS_DESCRIPTION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(50283019445702404)
,p_item_source_plug_id=>wwv_flow_imp.id(50283019445702404)
,p_prompt=>'Description <span style="color:red;">*</span>'
,p_source=>'GC_STATUS_DESCRIPTION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50283502965702409)
,p_name=>'P238_USER_CREATED'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(50283019445702404)
,p_item_source_plug_id=>wwv_flow_imp.id(50283019445702404)
,p_source=>'USER_CREATED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50283698017702410)
,p_name=>'P238_DATE_CREATED'
,p_source_data_type=>'DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(50283019445702404)
,p_item_source_plug_id=>wwv_flow_imp.id(50283019445702404)
,p_source=>'DATE_CREATED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50283720657702411)
,p_name=>'P238_UPDATE_USER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(50283019445702404)
,p_item_source_plug_id=>wwv_flow_imp.id(50283019445702404)
,p_source=>'UPDATE_USER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50283874831702412)
,p_name=>'P238_DATE_UPDATED'
,p_source_data_type=>'DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(50283019445702404)
,p_item_source_plug_id=>wwv_flow_imp.id(50283019445702404)
,p_source=>'DATE_UPDATED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(50284186481702415)
,p_validation_name=>'Empy Name'
,p_validation_sequence=>10
,p_validation=>'P238_GC_STATUS_NAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Must have some value.'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_imp.id(50283359138702407)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(50284239113702416)
,p_validation_name=>'Empty Desc'
,p_validation_sequence=>20
,p_validation=>'P238_GC_STATUS_DESCRIPTION'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Must have some value.'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_imp.id(50283433296702408)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(50284320930702417)
,p_validation_name=>'Unique Name'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1 ',
'FROM NPM014',
'WHERE UPPER(GC_STATUS_NAME) = UPPER(:P238_GC_STATUS_NAME) AND GC_STATUS_ID != :P238_GC_STATUS_ID'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'Name already exists.'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_imp.id(50283359138702407)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(50284497290702418)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update GC Status'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'UPDATE NPM014',
'SET',
'    GC_STATUS_NAME = :P238_GC_STATUS_NAME, ',
'    GC_STATUS_DESCRIPTION = :P238_GC_STATUS_DESCRIPTION,',
'    UPDATE_USER = v(''APP_USER''), ',
'    DATE_UPDATED = SYSTIMESTAMP',
'WHERE GC_STATUS_ID = :P238_GC_STATUS_ID;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>50284497290702418
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(50284576825702419)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_01=>'P238_GC_STATUS_ID'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>50284576825702419
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(50283140897702405)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(50283019445702404)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Gift Certificate - Gift Certificate Status Utilities Update'
,p_internal_uid=>50283140897702405
);
wwv_flow_imp.component_end;
end;
/
