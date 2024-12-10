prompt --application/pages/page_00033
begin
--   Manifest
--     PAGE: 00033
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
 p_id=>33
,p_name=>'Add/Update Ordertaker and Salesman'
,p_alias=>'ADD-UPDATE-ORDERTAKER-AND-SALESMAN'
,p_page_mode=>'MODAL'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function setModalTitle(){',
'    if($v("P33_OTAS_ID") == ''''){',
'        parent.$(''.ui-dialog-title'').html(''Add Ordertaker and Salesman'');',
'    }',
'    else{',
'        parent.$(''.ui-dialog-title'').html(''Update Ordertaker and Salesman'');',
'    }',
'}'))
,p_javascript_code_onload=>'setModalTitle();'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Dialog{',
'    background-color: #226597;',
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
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_attributes=>'close: function() { customEvent(''customDialogClose'', {modalPageId: ''MODAL_CLOSE_FIXED''});} '
,p_protection_level=>'C'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6113003091173267)
,p_plug_name=>'Add/Update Ordertaker and Salesman'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4329702440084182)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'NIM037'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7113862110022045)
,p_plug_name=>'Form Body'
,p_parent_plug_id=>wwv_flow_imp.id(6113003091173267)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6146206846307919)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(6113003091173267)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Press Enter to add'
,p_button_position=>'NEXT'
,p_button_condition=>'P33_OTAS_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_button_css_classes=>'btns white-text'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6146119051307918)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(6113003091173267)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Press Enter to update or exit'
,p_button_position=>'NEXT'
,p_button_condition=>'P33_OTAS_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_button_css_classes=>'btns white-text'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6113411245173268)
,p_name=>'P33_OTAS_CODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7113862110022045)
,p_item_source_plug_id=>wwv_flow_imp.id(6113003091173267)
,p_prompt=>'Code:'
,p_source=>'OTAS_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>5
,p_tag_css_classes=>'text-general'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382365997084278)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6113845794173268)
,p_name=>'P33_OTAS_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7113862110022045)
,p_item_source_plug_id=>wwv_flow_imp.id(6113003091173267)
,p_prompt=>'Name:'
,p_source=>'OTAS_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_tag_css_classes=>'text-general'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382365997084278)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6114263661173270)
,p_name=>'P33_CREATE_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7113862110022045)
,p_item_source_plug_id=>wwv_flow_imp.id(6113003091173267)
,p_source=>'CREATE_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6114682389173270)
,p_name=>'P33_CREATE_USER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7113862110022045)
,p_item_source_plug_id=>wwv_flow_imp.id(6113003091173267)
,p_source=>'CREATE_USER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6115033824173270)
,p_name=>'P33_UPDATE_USER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7113862110022045)
,p_item_source_plug_id=>wwv_flow_imp.id(6113003091173267)
,p_source=>'UPDATE_USER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6115454898173271)
,p_name=>'P33_UPDATE_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7113862110022045)
,p_item_source_plug_id=>wwv_flow_imp.id(6113003091173267)
,p_source=>'UPDATE_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6147439801307931)
,p_name=>'P33_OTAS_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7113862110022045)
,p_item_source_plug_id=>wwv_flow_imp.id(6113003091173267)
,p_source=>'OTAS_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(6146477398307921)
,p_computation_sequence=>10
,p_computation_item=>'P33_CREATE_DATE'
,p_computation_type=>'QUERY'
,p_computation=>'SELECT SYSDATE FROM DUAL;'
,p_compute_when=>'P33_OTAS_ID'
,p_compute_when_type=>'ITEM_IS_NULL'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(6146500360307922)
,p_computation_sequence=>20
,p_computation_item=>'P33_CREATE_USER'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'v(''APP_USER'')'
,p_compute_when=>'P33_OTAS_ID'
,p_compute_when_type=>'ITEM_IS_NULL'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(6146686746307923)
,p_computation_sequence=>30
,p_computation_item=>'P33_UPDATE_DATE'
,p_computation_type=>'QUERY'
,p_computation=>'SELECT SYSDATE FROM DUAL'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(6146781374307924)
,p_computation_sequence=>40
,p_computation_item=>'P33_UPDATE_USER'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'v(''APP_USER'')'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(7112390193022030)
,p_validation_name=>'Field is empty'
,p_validation_sequence=>10
,p_validation=>'P33_OTAS_CODE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Field must have some value'
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(7112414886022031)
,p_validation_name=>'Field is empty_1'
,p_validation_sequence=>20
,p_validation=>'P33_OTAS_NAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Field must have some value'
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(6147003604307927)
,p_validation_name=>'Adding Existing Code'
,p_validation_sequence=>30
,p_validation=>'SELECT OTAS_CODE FROM NIM037 WHERE OTAS_CODE = UPPER(:P33_OTAS_CODE)'
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'Code already exists'
,p_validation_condition=>'P33_OTAS_ID'
,p_validation_condition_type=>'ITEM_IS_NULL'
,p_associated_item=>wwv_flow_imp.id(6113411245173268)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(6147165599307928)
,p_validation_name=>'Using existing code on update'
,p_validation_sequence=>40
,p_validation=>'SELECT OTAS_CODE FROM NIM037 WHERE OTAS_CODE = UPPER(:P33_OTAS_CODE) AND OTAS_ID <> :P33_OTAS_ID'
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'Code already exists'
,p_validation_condition=>'P33_OTAS_ID'
,p_validation_condition_type=>'ITEM_IS_NOT_NULL'
,p_associated_item=>wwv_flow_imp.id(6113411245173268)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10498558250417932)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P33_OTAS_CODE'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.key?.toLowerCase() === ''enter'''
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keyup'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10498647585417933)
,p_event_id=>wwv_flow_imp.id(10498558250417932)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P33_OTAS_NAME'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14280871680795936)
,p_name=>'Disable Code Field'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P33_OTAS_CODE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14281190096795939)
,p_event_id=>wwv_flow_imp.id(14280871680795936)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#P33_OTAS_CODE'').attr({''readonly'':true});'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14281010175795938)
,p_event_id=>wwv_flow_imp.id(14280871680795936)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P33_OTAS_NAME'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7111425862022021)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add New Data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'INSERT INTO NIM037(otas_code, otas_name, create_date, create_user, update_date, update_user)',
'VALUES(UPPER(:P33_OTAS_CODE), UPPER(:P33_OTAS_NAME), :P33_CREATE_DATE, :P33_CREATE_USER, :P33_UPDATE_DATE, :P33_UPDATE_USER);'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P33_OTAS_ID'
,p_process_when_type=>'ITEM_IS_NULL'
,p_process_success_message=>'Item added successfully'
,p_internal_uid=>7111425862022021
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7111546888022022)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update Data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'UPDATE NIM037 SET otas_code = UPPER(:P33_OTAS_CODE), otas_name = UPPER(:P33_OTAS_NAME), ',
'create_date = :P33_CREATE_DATE, create_user = :P33_CREATE_USER, update_date = :P33_UPDATE_DATE, ',
'update_user = :P33_UPDATE_USER WHERE otas_id = UPPER(:P33_OTAS_ID);'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P33_OTAS_ID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_process_success_message=>'Item updated successfully'
,p_internal_uid=>7111546888022022
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6121449224173279)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>6121449224173279
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6120670409173279)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(6113003091173267)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Add/Update Ordertaker and Salesman'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>6120670409173279
);
wwv_flow_imp.component_end;
end;
/
