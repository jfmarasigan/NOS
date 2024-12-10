prompt --application/pages/page_00189
begin
--   Manifest
--     PAGE: 00189
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
 p_id=>189
,p_name=>'PO Opening Email Utility Add/Update'
,p_alias=>'PO-OPENING-EMAIL-UTILITY-ADD-UPDATE'
,p_page_mode=>'MODAL'
,p_step_title=>'PO Opening Email Utility Add/Update'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p189KeyMap = {',
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
'function mapP189Keys() {',
'    $(document).off(''keydown.p189keyevents'');',
'    $(document).on(''keydown.p189keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p189KeyMap[key]) {',
'            ev.preventDefault();',
'            p189KeyMap[key]();',
'        }',
'    });',
'}',
'',
''))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP189Keys();',
'',
'$x(''P189_OPENING_EMAIL'').focus();',
'',
'if($v("P189_OPENING_EMAIL_ID") == ''''){',
'    parent.$(''.ui-dialog-title'').html(''Add'');',
'}',
'else{',
'    parent.$(''.ui-dialog-title'').html(''Update'');',
'}',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Dialog-body{',
'    background-color: #056AC8;',
'    padding-top: 0;',
'}',
'',
'.t-Dialog-body label, .t-Dialog-body input, .t-Dialog-body .apex-item-display-only, .t-Dialog-body .textarea {',
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
 p_id=>wwv_flow_imp.id(164781179291155947)
,p_plug_name=>'Form / Table'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>20
,p_query_type=>'TABLE'
,p_query_table=>'NIM033'
,p_include_rowid_column=>false
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(42336659500760310)
,p_button_sequence=>30
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
 p_id=>wwv_flow_imp.id(41786983762876140)
,p_name=>'P189_OPENING_EMAIL_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(164781179291155947)
,p_item_source_plug_id=>wwv_flow_imp.id(164781179291155947)
,p_source=>'OPENING_EMAIL_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41787079400876141)
,p_name=>'P189_OPENING_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(164781179291155947)
,p_item_source_plug_id=>wwv_flow_imp.id(164781179291155947)
,p_prompt=>'Opening Email<span style="color:red;">*</span>'
,p_source=>'OPENING_EMAIL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>5
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(4382365997084278)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:margin-right-sm'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(155036393221456046)
,p_name=>'P189_CREATE_USER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(164781179291155947)
,p_item_source_plug_id=>wwv_flow_imp.id(164781179291155947)
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
 p_id=>wwv_flow_imp.id(155036473502456047)
,p_name=>'P189_CREATE_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(164781179291155947)
,p_item_source_plug_id=>wwv_flow_imp.id(164781179291155947)
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
 p_id=>wwv_flow_imp.id(155036605424456048)
,p_name=>'P189_UPDATE_USER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(164781179291155947)
,p_item_source_plug_id=>wwv_flow_imp.id(164781179291155947)
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
 p_id=>wwv_flow_imp.id(155036741493456049)
,p_name=>'P189_UPDATE_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(164781179291155947)
,p_item_source_plug_id=>wwv_flow_imp.id(164781179291155947)
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
 p_id=>wwv_flow_imp.id(42341667078760321)
,p_validation_name=>'Empty'
,p_validation_sequence=>10
,p_validation=>'P189_OPENING_EMAIL'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Field cannot be empty.'
,p_associated_item=>wwv_flow_imp.id(41787079400876141)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(42342027604760321)
,p_validation_name=>'Unique'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT OPENING_EMAIL FROM NIM033',
'WHERE UPPER(OPENING_EMAIL) = UPPER(:P189_OPENING_EMAIL)',
'AND OPENING_EMAIL_ID != :P189_OPENING_EMAIL_ID'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'Opening already exists.'
,p_associated_item=>wwv_flow_imp.id(41787079400876141)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(42342777620760323)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'INSERT INTO NIM033 (OPENING_EMAIL, CREATE_USER, CREATE_DATE, UPDATE_USER, UPDATE_DATE)',
'VALUES (:P189_OPENING_EMAIL, :APP_USER, SYSTIMESTAMP, :APP_USER, SYSTIMESTAMP);',
'',
'apex_util.set_session_state(''SUCCESS_MSG'', ''Opening Email added successfully'');'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P189_OPENING_EMAIL_ID'
,p_process_when_type=>'ITEM_IS_NULL'
,p_internal_uid=>42342777620760323
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(42342389653760321)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'UPDATE NIM033 ',
'SET OPENING_EMAIL = :P189_OPENING_EMAIL, ',
'    UPDATE_USER = :APP_USER, ',
'    UPDATE_DATE = SYSTIMESTAMP',
'WHERE OPENING_EMAIL_ID = :P189_OPENING_EMAIL_ID;',
'',
'apex_util.set_session_state(''SUCCESS_MSG'', ''Opening Email updated successfully'');'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P189_OPENING_EMAIL_ID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_internal_uid=>42342389653760321
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(42343133474760323)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>42343133474760323
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(42341008497760320)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(164781179291155947)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form PO Opening Email Utility Add'
,p_internal_uid=>42341008497760320
);
wwv_flow_imp.component_end;
end;
/
