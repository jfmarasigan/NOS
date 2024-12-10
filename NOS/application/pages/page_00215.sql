prompt --application/pages/page_00215
begin
--   Manifest
--     PAGE: 00215
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
 p_id=>215
,p_name=>'Customer Payment Terms Utilities Add'
,p_alias=>'CUSTOMER-PAYMENT-TERMS-UTILITIES-ADD'
,p_page_mode=>'MODAL'
,p_step_title=>'Add'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p215KeyMap = {',
'    escape : (v) => {',
'        $("#close").click();',
'    },',
'    enter: (v) => {',
'        $("#enter").trigger("click"); ',
'    }',
'}',
'',
'function mapP215Keys() {',
'    $(document).off(''keydown.p215keyevents'');',
'    $(document).on(''keydown.p215keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p215KeyMap[key]) {',
'            ev.preventDefault();',
'            p215KeyMap[key]();',
'        }',
'    });',
'}',
'',
'$("#P215_AMOUNT, #P215_SPLIT_COUNT, #P215_DAYS")',
'    .keypress(function(e){',
'        if(',
'            e.key == "1" || e.key == "2" ||',
'            e.key == "3" || e.key == "4" ||',
'            e.key == "5" || e.key == "6" ||',
'            e.key == "7" || e.key == "8" ||',
'            e.key == "9" || e.key == "0"',
'        ){',
'            return true;',
'        } else {',
'            return false;',
'        }',
'});'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP215Keys();',
'',
'$x(''P215_PAYMENT_TERMS_NAME'').focus();'))
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
 p_id=>wwv_flow_imp.id(43434990184832029)
,p_plug_name=>'Form'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>20
,p_query_type=>'TABLE'
,p_query_table=>'NPM006'
,p_include_rowid_column=>false
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(43436015029832040)
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
 p_id=>wwv_flow_imp.id(43435145611832031)
,p_name=>'P215_PAYMENT_TERMS_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(43434990184832029)
,p_item_source_plug_id=>wwv_flow_imp.id(43434990184832029)
,p_source=>'PAYMENT_TERMS_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43435209844832032)
,p_name=>'P215_AMOUNT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(43434990184832029)
,p_item_source_plug_id=>wwv_flow_imp.id(43434990184832029)
,p_prompt=>'Amount'
,p_source=>'AMOUNT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>9
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43435386340832033)
,p_name=>'P215_SPLIT_COUNT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(43434990184832029)
,p_item_source_plug_id=>wwv_flow_imp.id(43434990184832029)
,p_prompt=>'Split Count'
,p_source=>'SPLIT_COUNT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>2
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43435425711832034)
,p_name=>'P215_USER_CREATED'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(43434990184832029)
,p_item_source_plug_id=>wwv_flow_imp.id(43434990184832029)
,p_source=>'USER_CREATED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43435522747832035)
,p_name=>'P215_DATE_CREATED'
,p_source_data_type=>'DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(43434990184832029)
,p_item_source_plug_id=>wwv_flow_imp.id(43434990184832029)
,p_source=>'DATE_CREATED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43435617245832036)
,p_name=>'P215_USER_UPDATE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(43434990184832029)
,p_item_source_plug_id=>wwv_flow_imp.id(43434990184832029)
,p_source=>'USER_UPDATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43435728859832037)
,p_name=>'P215_DATE_UPDATED'
,p_source_data_type=>'DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(43434990184832029)
,p_item_source_plug_id=>wwv_flow_imp.id(43434990184832029)
,p_source=>'DATE_UPDATED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43435813458832038)
,p_name=>'P215_PAYMENT_TERMS_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(43434990184832029)
,p_item_source_plug_id=>wwv_flow_imp.id(43434990184832029)
,p_prompt=>'Name <span style="color:red;">*</span>'
,p_source=>'PAYMENT_TERMS_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43435950719832039)
,p_name=>'P215_DAYS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(43434990184832029)
,p_item_source_plug_id=>wwv_flow_imp.id(43434990184832029)
,p_prompt=>'Days'
,p_source=>'DAYS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>3
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(43436162894832041)
,p_validation_name=>'Empty Name'
,p_validation_sequence=>10
,p_validation=>'P215_PAYMENT_TERMS_NAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Must have some value.'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_imp.id(43435813458832038)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(43436261770832042)
,p_validation_name=>'Unique Name'
,p_validation_sequence=>20
,p_validation=>'SELECT 1 FROM NPM006 WHERE UPPER(PAYMENT_TERMS_NAME) = UPPER(:P215_PAYMENT_TERMS_NAME)'
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'Name already exists.'
,p_associated_item=>wwv_flow_imp.id(43435813458832038)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(43436364786832043)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Payment Term Add'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    INSERT INTO NPM006 (',
'        PAYMENT_TERMS_NAME, ',
'        AMOUNT, ',
'        SPLIT_COUNT,',
'        DAYS, ',
'        USER_CREATED, ',
'        DATE_CREATED, ',
'        USER_UPDATE, ',
'        DATE_UPDATED',
'    )',
'    VALUES (',
'        :P215_PAYMENT_TERMS_NAME, ',
'        NVL(:P215_AMOUNT, 0), ',
'        NVL(:P215_SPLIT_COUNT, 0),',
'        NVL(:P215_DAYS, 0),',
'        v(''APP_USER''), ',
'        SYSTIMESTAMP, ',
'        v(''APP_USER''), ',
'        SYSTIMESTAMP',
'    );',
'',
'    apex_util.set_session_state(''SUCCESS_MSG'', ''Payment Term added successfully'');',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>43436364786832043
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(43436469939832044)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>43436469939832044
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(43435049357832030)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(43434990184832029)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Customer Payment Terms Utilities Add'
,p_internal_uid=>43435049357832030
);
wwv_flow_imp.component_end;
end;
/
