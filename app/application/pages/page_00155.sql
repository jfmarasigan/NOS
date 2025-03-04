prompt --application/pages/page_00155
begin
--   Manifest
--     PAGE: 00155
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
 p_id=>155
,p_name=>'Update Quantity Reason add/update'
,p_alias=>'UPDATE-QUANTITY-REASON-ADD-UPDATE'
,p_page_mode=>'MODAL'
,p_step_title=>'Update Quantity Reason add/update'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#js/cmn#MIN#.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function setModalTitle(){',
'    if($v("P155_REASON_ID") == ''''){',
'        parent.$(''.ui-dialog-title'').html(''Add'');',
'    }',
'    else{',
'        parent.$(''.ui-dialog-title'').html(''Update'');',
'    }',
'}'))
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
'.a-Form-error, .t-Form-error{',
'    color: #FFD700;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(83862835358757865)
,p_plug_name=>'Update Quantity Reason'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>50
,p_query_type=>'TABLE'
,p_query_table=>'NIM028'
,p_include_rowid_column=>false
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42619854274340703)
,p_name=>'P155_REASON_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(83862835358757865)
,p_item_source_plug_id=>wwv_flow_imp.id(83862835358757865)
,p_source=>'QTY_REASON_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42619918130340704)
,p_name=>'P155_REASON_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(83862835358757865)
,p_item_source_plug_id=>wwv_flow_imp.id(83862835358757865)
,p_prompt=>'Reason Name:'
,p_source=>'REASON_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67460228882426319)
,p_name=>'P155_PROCESS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(83862835358757865)
,p_source=>'CASE WHEN :P155_REASON_ID IS NULL THEN 1 ELSE 2 END'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(65484223046001949)
,p_validation_name=>'Empty Name'
,p_validation_sequence=>10
,p_validation=>'P155_REASON_NAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Must have some value.'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_imp.id(42619918130340704)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(65484321021001950)
,p_validation_name=>'Unique Name Update'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1 ',
'FROM NIM028',
'WHERE UPPER(REASON_NAME) = UPPER(:P155_REASON_NAME) AND qty_reason_id  != :P155_REASON_ID'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'Name already exists.'
,p_always_execute=>'Y'
,p_validation_condition=>'P155_REASON_ID'
,p_validation_condition_type=>'ITEM_IS_NOT_NULL'
,p_associated_item=>wwv_flow_imp.id(42619918130340704)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(70298629267784939)
,p_validation_name=>'Unique Name Add'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1 ',
'FROM NIM028',
'WHERE UPPER(REASON_NAME) = UPPER(:P155_REASON_NAME)'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'Name already exists.'
,p_always_execute=>'Y'
,p_validation_condition=>'P155_REASON_ID'
,p_validation_condition_type=>'ITEM_IS_NULL'
,p_associated_item=>wwv_flow_imp.id(42619918130340704)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42641747913368945)
,p_name=>'On press Enter'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P155_COLLECTION_NAME'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.key?.toLowerCase() === ''enter'';'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keyup'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42642291850368946)
,p_event_id=>wwv_flow_imp.id(42641747913368945)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P155_COLLECTION_DESC'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42642618017368950)
,p_name=>'On Press Enter'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P155_COLLECTION_TYPE_NAME'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.key?.toLowerCase() === ''enter'';'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keyup'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42643140773368950)
,p_event_id=>wwv_flow_imp.id(42642618017368950)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P155_COLLECTION_TYPE_DESCRIPTION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(42640539029368942)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add New Data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'INSERT INTO NIM028(reason_name, create_user, create_date,',
'                    update_user, update_date)',
'            VALUES(:P155_REASON_NAME, :APP_USER, SYSDATE,',
'                    :APP_USER, SYSDATE);'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P155_REASON_ID'
,p_process_when_type=>'ITEM_IS_NULL'
,p_internal_uid=>42640539029368942
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(42640961582368943)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update Data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'UPDATE NIM028 SET reason_name = :P155_REASON_NAME, update_user = :APP_USER, update_date = SYSDATE',
'WHERE qty_reason_id = :P155_REASON_ID;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P155_REASON_ID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_internal_uid=>42640961582368943
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(42641300290368945)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog Add'
,p_attribute_01=>'P155_PROCESS,P155_REASON_NAME'
,p_attribute_02=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P155_REASON_ID'
,p_process_when_type=>'ITEM_IS_NULL'
,p_internal_uid=>42641300290368945
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(69539209913893501)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog Update'
,p_attribute_01=>'P155_PROCESS,P155_REASON_ID'
,p_attribute_02=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P155_REASON_ID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_internal_uid=>69539209913893501
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(42640077068368940)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(83862835358757865)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Collection type utilities add/update'
,p_internal_uid=>42640077068368940
);
wwv_flow_imp.component_end;
end;
/
