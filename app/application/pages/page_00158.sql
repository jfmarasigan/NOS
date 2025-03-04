prompt --application/pages/page_00158
begin
--   Manifest
--     PAGE: 00158
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
 p_id=>158
,p_name=>'Warehouse Location add/update'
,p_alias=>'WAREHOUSE-LOCATION-ADD-UPDATE'
,p_page_mode=>'MODAL'
,p_step_title=>'Warehouse Location add/update'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#js/cmn#MIN#.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function setModalTitle(){',
'    if($v("P158_WAREHOUSE_ID") == ''''){',
'        parent.$(''.ui-dialog-title'').html(''Add'');',
'    }',
'    else{',
'        parent.$(''.ui-dialog-title'').html(''Update'');',
'    }',
'}',
'',
'$(''#P158_WAREHOUSE_LOCATION'').keypress(function (e) {',
'    if(',
'        e.key == "1" || e.key == "2" || e.key == "3" || e.key == "4" ||',
'        e.key == "5" || e.key == "6" || e.key == "7" || e.key == "8" ||',
'        e.key == "9" || e.key == "0"',
'    ){',
'        return true;',
'    } else {',
'        return false;',
'    }',
'});'))
,p_javascript_code_onload=>'setModalTitle();'
,p_css_file_urls=>'#APP_FILES#css/cmn#MIN#.css'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Dialog{',
'    background-color: #056AC8;',
'}',
'.white-text{',
'    color:white;',
'}',
'.btns{',
'    font-size: 1.125rem;',
'}',
'.text-general{',
'    font-size: 1.125rem;',
'}',
'.t-Form-label{',
'    font-size: 1.125rem;',
'    color: white;',
'}',
'',
'.t-Form-error, .a-Form-error{',
'    color: #FFD700;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(83902649390920880)
,p_plug_name=>'Warehouse Location'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>50
,p_query_type=>'TABLE'
,p_query_table=>'NIM027'
,p_include_rowid_column=>false
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42620775090340712)
,p_name=>'P158_WAREHOUSE_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(83902649390920880)
,p_item_source_plug_id=>wwv_flow_imp.id(83902649390920880)
,p_source=>'WAREHOUSE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42620823756340713)
,p_name=>'P158_WAREHOUSE_LOCATION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(83902649390920880)
,p_item_source_plug_id=>wwv_flow_imp.id(83902649390920880)
,p_prompt=>'Warehouse Location <span style="color:red;">*</span>'
,p_source=>'WAREHOUSE_LOCATION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>1
,p_tag_css_classes=>'fs-1125'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42620977236340714)
,p_name=>'P158_LOCATION_DESC'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(83902649390920880)
,p_item_source_plug_id=>wwv_flow_imp.id(83902649390920880)
,p_prompt=>'Description <span style="color:red;">*</span>'
,p_source=>'LOCATION_DESC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_tag_css_classes=>'fs-1125'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67460701804426324)
,p_name=>'P158_PROCESS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(83902649390920880)
,p_source=>'CASE WHEN :P158_WAREHOUSE_ID IS NULL THEN 1 ELSE 2 END'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(65483257334001939)
,p_validation_name=>'Unique Location Add'
,p_validation_sequence=>10
,p_validation=>'SELECT 1 FROM NIM027 WHERE UPPER(warehouse_location) = UPPER(:P158_WAREHOUSE_LOCATION)'
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'Name already exists.'
,p_always_execute=>'Y'
,p_validation_condition=>'P158_WAREHOUSE_ID'
,p_validation_condition_type=>'ITEM_IS_NULL'
,p_associated_item=>wwv_flow_imp.id(42620823756340713)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(65483322029001940)
,p_validation_name=>'Empty Location'
,p_validation_sequence=>20
,p_validation=>'P158_WAREHOUSE_LOCATION'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Must have some value.'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_imp.id(42620823756340713)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(65483424739001941)
,p_validation_name=>'Empty Desc'
,p_validation_sequence=>30
,p_validation=>'P158_LOCATION_DESC'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Must have some value.'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_imp.id(42620977236340714)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(70298541468784938)
,p_validation_name=>'Unique Location Update'
,p_validation_sequence=>40
,p_validation=>'SELECT 1 FROM NIM027 WHERE UPPER(warehouse_location) = UPPER(:P158_WAREHOUSE_LOCATION) AND WAREHOUSE_ID != :P158_WAREHOUSE_ID'
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'Name already exists.'
,p_always_execute=>'Y'
,p_validation_condition=>'P158_WAREHOUSE_ID'
,p_validation_condition_type=>'ITEM_IS_NOT_NULL'
,p_associated_item=>wwv_flow_imp.id(42620823756340713)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42681582281531954)
,p_name=>'On press Enter'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P158_WAREHOUSE_LOCATION'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.key?.toLowerCase() === ''enter'';'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keyup'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42682062996531954)
,p_event_id=>wwv_flow_imp.id(42681582281531954)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P158_LOCATION_DESC'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(55359866492980734)
,p_name=>'Disable Location textfield'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P158_WAREHOUSE_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(55359980241980735)
,p_event_id=>wwv_flow_imp.id(55359866492980734)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#P158_WAREHOUSE_LOCATION'').attr({''readonly'':true});'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(55360086022980736)
,p_event_id=>wwv_flow_imp.id(55359866492980734)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P158_LOCATION_DESC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(42680354346531951)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add New Data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'INSERT INTO NIM027(warehouse_location, location_desc,create_user,create_date,',
'                    update_user, update_date)',
'            VALUES(:P158_WAREHOUSE_LOCATION, :P158_LOCATION_DESC, :APP_USER, SYSDATE,',
'                    :APP_USER, SYSDATE);'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P158_WAREHOUSE_ID'
,p_process_when_type=>'ITEM_IS_NULL'
,p_internal_uid=>42680354346531951
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(42680777297531953)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update Data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'UPDATE NIM027 SET warehouse_location = :P158_WAREHOUSE_LOCATION, location_desc = :P158_LOCATION_DESC,',
'                    update_user = :APP_USER, update_date = SYSDATE',
'WHERE warehouse_id = :P158_WAREHOUSE_ID;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P158_WAREHOUSE_ID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_internal_uid=>42680777297531953
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(42681163239531953)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog Add'
,p_attribute_01=>'P158_PROCESS,P158_WAREHOUSE_LOCATION'
,p_attribute_02=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P158_WAREHOUSE_ID'
,p_process_when_type=>'ITEM_IS_NULL'
,p_internal_uid=>42681163239531953
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(65483582484001942)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog Update'
,p_attribute_01=>'P158_PROCESS,P158_WAREHOUSE_ID'
,p_attribute_02=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P158_WAREHOUSE_ID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_internal_uid=>65483582484001942
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(42679842933531951)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(83902649390920880)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Collection type utilities add/update'
,p_internal_uid=>42679842933531951
);
wwv_flow_imp.component_end;
end;
/
