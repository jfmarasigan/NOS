prompt --application/pages/page_00183
begin
--   Manifest
--     PAGE: 00183
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
 p_id=>183
,p_name=>'Pricing Type Utility Update'
,p_alias=>'PRICING-TYPE-UTILITY-UPDATE'
,p_page_mode=>'MODAL'
,p_step_title=>'Update'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p183KeyMap = {',
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
'function mapP183Keys() {',
'    $(document).off(''keydown.p183keyevents'');',
'    $(document).on(''keydown.p183keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p183KeyMap[key]) {',
'            ev.preventDefault();',
'            p183KeyMap[key]();',
'        }',
'    });',
'}',
'',
''))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP183Keys();',
'',
'$x(''P183_PRICING_TYPE_CODE'').focus();'))
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
 p_id=>wwv_flow_imp.id(278867423727450029)
,p_plug_name=>'Form / Table'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>50
,p_query_type=>'TABLE'
,p_query_table=>'NIM032'
,p_include_rowid_column=>false
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(41775575836854045)
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
 p_id=>wwv_flow_imp.id(82362890676824292)
,p_name=>'P183_PRICING_TYPE_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(278867423727450029)
,p_item_source_plug_id=>wwv_flow_imp.id(278867423727450029)
,p_source=>'PRICING_TYPE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(82362944534824293)
,p_name=>'P183_PRICING_TYPE_CODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(278867423727450029)
,p_item_source_plug_id=>wwv_flow_imp.id(278867423727450029)
,p_prompt=>'Code<span style="color:red;">*</span>'
,p_source=>'PRICING_TYPE_CODE'
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
 p_id=>wwv_flow_imp.id(82363030394824294)
,p_name=>'P183_PRICING_TYPE_DESCRIPTION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(278867423727450029)
,p_item_source_plug_id=>wwv_flow_imp.id(278867423727450029)
,p_prompt=>'Description<span style="color:red;">*</span>'
,p_source=>'PRICING_TYPE_DESCRIPTION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>30
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
 p_id=>wwv_flow_imp.id(269125469390750221)
,p_name=>'P183_CREATE_USER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(278867423727450029)
,p_item_source_plug_id=>wwv_flow_imp.id(278867423727450029)
,p_item_default=>':APP_USER'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'CREATE_USER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(269125549671750222)
,p_name=>'P183_CREATE_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(278867423727450029)
,p_item_source_plug_id=>wwv_flow_imp.id(278867423727450029)
,p_item_default=>'SYSTIMESTAMP'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'CREATE_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(269125681593750223)
,p_name=>'P183_UPDATE_USER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(278867423727450029)
,p_item_source_plug_id=>wwv_flow_imp.id(278867423727450029)
,p_item_default=>':APP_USER'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'UPDATE_USER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(269125817662750224)
,p_name=>'P183_UPDATE_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(278867423727450029)
,p_item_source_plug_id=>wwv_flow_imp.id(278867423727450029)
,p_item_default=>'SYSTIMESTAMP'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'UPDATE_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(41781178101854056)
,p_validation_name=>'Empty_code'
,p_validation_sequence=>30
,p_validation=>'P183_PRICING_TYPE_CODE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Field cannot be empty.'
,p_associated_item=>wwv_flow_imp.id(82362944534824293)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(41781537861854056)
,p_validation_name=>'Empty_name'
,p_validation_sequence=>40
,p_validation=>'P183_PRICING_TYPE_DESCRIPTION'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Field cannot be empty.'
,p_associated_item=>wwv_flow_imp.id(82363030394824294)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(41781964242854057)
,p_validation_name=>'Unique_code'
,p_validation_sequence=>50
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT PRICING_TYPE_CODE FROM NIM032',
'WHERE UPPER(PRICING_TYPE_CODE) = UPPER(:P183_PRICING_TYPE_CODE)',
'AND PRICING_TYPE_ID != :P183_PRICING_TYPE_ID'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'Pricing Type code already exists.'
,p_associated_item=>wwv_flow_imp.id(82362944534824293)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(41783014787876101)
,p_name=>'Disable Code'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41783120251876102)
,p_event_id=>wwv_flow_imp.id(41783014787876101)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#P183_PRICING_TYPE_CODE").addClass("is-disabled apex_disabled")',
'.prop("readonly", true)',
'.attr("tabindex", "-1")',
'.on("focus mousedown", function(e) { ',
'    e.preventDefault();});',
''))
,p_server_condition_type=>'EXISTS'
,p_server_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT PRICING_TYPE_CODE FROM NIM032',
'WHERE TRUNC(CREATE_DATE) != TRUNC(SYSDATE)',
'AND PRICING_TYPE_ID = :P183_PRICING_TYPE_ID'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(41782231987854057)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'UPDATE NIM032 ',
'SET PRICING_TYPE_CODE = :P183_PRICING_TYPE_CODE, ',
'    PRICING_TYPE_DESCRIPTION = :P183_PRICING_TYPE_DESCRIPTION, ',
'    UPDATE_USER = :APP_USER, ',
'    UPDATE_DATE = SYSTIMESTAMP',
'WHERE PRICING_TYPE_ID = :P183_PRICING_TYPE_ID;',
'',
'apex_util.set_session_state(''SUCCESS_MSG'', ''Pricing Type updated successfully'');'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>41782231987854057
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(41782661853854059)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>41782661853854059
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(41780543770854054)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(278867423727450029)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Pricing Type Utility Update'
,p_internal_uid=>41780543770854054
);
wwv_flow_imp.component_end;
end;
/
