prompt --application/pages/page_00230
begin
--   Manifest
--     PAGE: 00230
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
 p_id=>230
,p_name=>'Cashiering - Denomination Utility Update'
,p_alias=>'CASHIERING-DENOMINATION-UTILITY-UPDATE'
,p_page_mode=>'MODAL'
,p_step_title=>'Cashiering - Denomination Utility Update'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#js/cmn#MIN#.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p230KeyMap = {',
'    escape : (v) => {',
'        $("#close").click();',
'    },',
'    enter: (v) => {',
'       $("#enter").trigger("click");',
'    }',
'',
'}',
'',
'function mapP230Keys() {',
'    $(document).off(''keydown.p230keyevents'');',
'    $(document).on(''keydown.p230keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p230KeyMap[key]) {',
'            ev.preventDefault();',
'            p230KeyMap[key]();',
'        }',
'    });',
'}',
'',
'$(''#P230_VALUE'').keypress(function (e) {',
'    if(Number( $(this).val() + e.key ) <= 9999.99){',
'        if(',
'            e.key == "1" || e.key == "2" || e.key == "3" || e.key == "4" ||',
'            e.key == "5" || e.key == "6" || e.key == "7" || e.key == "8" ||',
'            e.key == "9" || e.key == "0"',
'        ){',
'            return true;',
'        } else if(e.key == "." && $(this).val().indexOf(''.'') == -1){',
'            return true;',
'        } else {',
'            return false;',
'        }',
'    } else {',
'        return false;',
'    }',
'});',
'',
'$("#P230_DENOMINATION_NAME").on("focus", function () {',
'   $(this).select();',
'});'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP230Keys();',
'$x(''P230_DENOMINATION_NAME'').focus();'))
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
,p_dialog_attributes=>'close: function() { customEvent(''customClose'', {modalPageId: ''MODAL_CLOSE_FIXED''});}'
,p_protection_level=>'C'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(49741645716243309)
,p_plug_name=>'Form'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>20
,p_query_type=>'TABLE'
,p_query_table=>'NPM008'
,p_include_rowid_column=>false
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(49742600954243319)
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
 p_id=>wwv_flow_imp.id(49741877940243311)
,p_name=>'P230_DENOMINATION_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(49741645716243309)
,p_item_source_plug_id=>wwv_flow_imp.id(49741645716243309)
,p_source=>'DENOMINATION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(49741940237243312)
,p_name=>'P230_DENOMINATION_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(49741645716243309)
,p_item_source_plug_id=>wwv_flow_imp.id(49741645716243309)
,p_prompt=>'Name  <span style="color:red;">*</span>'
,p_source=>'DENOMINATION_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>30
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(49742047251243313)
,p_name=>'P230_VALUE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(49741645716243309)
,p_item_source_plug_id=>wwv_flow_imp.id(49741645716243309)
,p_prompt=>'Value  <span style="color:red;">*</span>'
,p_source=>'VALUE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(49742158679243314)
,p_name=>'P230_USER_CREATED'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(49741645716243309)
,p_item_source_plug_id=>wwv_flow_imp.id(49741645716243309)
,p_source=>'USER_CREATED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(49742231135243315)
,p_name=>'P230_DATE_CREATED'
,p_source_data_type=>'DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(49741645716243309)
,p_item_source_plug_id=>wwv_flow_imp.id(49741645716243309)
,p_source=>'DATE_CREATED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(49742395470243316)
,p_name=>'P230_USER_UPDATE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(49741645716243309)
,p_item_source_plug_id=>wwv_flow_imp.id(49741645716243309)
,p_source=>'USER_UPDATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(49742428354243317)
,p_name=>'P230_DATE_UPDATED'
,p_source_data_type=>'DATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(49741645716243309)
,p_item_source_plug_id=>wwv_flow_imp.id(49741645716243309)
,p_source=>'DATE_UPDATED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(57589077117995845)
,p_name=>'P230_IS_VALID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(49741645716243309)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(49742729296243320)
,p_validation_name=>'Empty Name'
,p_validation_sequence=>10
,p_validation=>'P230_DENOMINATION_NAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Must have some value.'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_imp.id(49741940237243312)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(49742808397243321)
,p_validation_name=>'Empty Value'
,p_validation_sequence=>20
,p_validation=>'P230_VALUE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Must have some value.'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_imp.id(49742047251243313)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(49742914341243322)
,p_validation_name=>'Unique Name'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1 ',
'FROM NPM008',
'WHERE UPPER(DENOMINATION_NAME) = UPPER(:P230_DENOMINATION_NAME) AND DENOMINATION_ID != :P230_DENOMINATION_ID'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'Name already exists.'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_imp.id(49741940237243312)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(49743040545243323)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update Denomination'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'UPDATE NPM008',
'SET',
'    DENOMINATION_NAME = :P230_DENOMINATION_NAME, ',
'    VALUE = :P230_VALUE, ',
'    USER_UPDATE = v(''APP_USER''), ',
'    DATE_UPDATED = SYSTIMESTAMP',
'WHERE DENOMINATION_ID = :P230_DENOMINATION_ID;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>49743040545243323
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(49743158506243324)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_01=>'P230_DENOMINATION_ID'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>49743158506243324
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(49741767482243310)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(49741645716243309)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Cashiering - Denomination Utility Update'
,p_internal_uid=>49741767482243310
);
wwv_flow_imp.component_end;
end;
/
