prompt --application/pages/page_00034
begin
--   Manifest
--     PAGE: 00034
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
 p_id=>34
,p_name=>'OTAS Search'
,p_alias=>'OTAS-SEARCH'
,p_page_mode=>'MODAL'
,p_step_title=>'Search'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.bgblue{',
'    background-color: #056BC9;',
'}',
'.white-text{',
'    color:white;',
'}',
'.nop-right {',
'    padding-right: 0;',
'}',
'',
'.nop-left {',
'    padding-left: 0;',
'}',
'.search-header {',
'    font-size: 1.5rem;',
'    font-weight: bold;',
'}',
'.text-general {',
'    font-size: 1.125rem;',
'}',
'.t-Form-label{',
'    font-size:1.125rem;',
'}',
'',
'.text-left {',
'    text-align: left;',
'}',
'',
'.text-right {',
'    text-align: right;',
'}',
'',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9768536540817007)
,p_name=>'P34_CODE_SEARCH'
,p_item_sequence=>30
,p_prompt=>'Search for Code: '
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'text-general'
,p_grid_label_column_span=>3
,p_grid_column_css_classes=>'nop-right'
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:margin-top-sm:margin-bottom-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9768685643817008)
,p_name=>'P34_NAME_SEARCH'
,p_item_sequence=>40
,p_prompt=>'Name:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'text-general'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:margin-top-sm:margin-bottom-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9769776585817019)
,p_name=>'P34_SEARCH_KEY'
,p_item_sequence=>50
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9770999399817031)
,p_name=>'P34_SEARCH_VALUE'
,p_item_sequence=>60
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(10497081634417917)
,p_validation_name=>'No blank fields'
,p_validation_sequence=>10
,p_validation=>':P34_CODE_SEARCH IS NOT NULL OR :P34_NAME_SEARCH IS NOT NULL'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Fill up at least one field'
,p_associated_item=>wwv_flow_imp.id(9768536540817007)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9772770691817049)
,p_name=>'Code Search - On press Enter'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P34_CODE_SEARCH'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.key?.toLowerCase() === ''enter'''
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14278376701795911)
,p_event_id=>wwv_flow_imp.id(9772770691817049)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(document).off(''keydown.p34keyevents'');'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16109163871770119)
,p_event_id=>wwv_flow_imp.id(9772770691817049)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P34_CODE_SEARCH IS NULL AND :P34_NAME_SEARCH IS NOT NULL ',
'THEN BEGIN :P34_SEARCH_KEY := ''name''; :P34_SEARCH_VALUE := :P34_NAME_SEARCH; END;',
'ELSE BEGIN :P34_SEARCH_KEY := ''code''; :P34_SEARCH_VALUE := :P34_CODE_SEARCH; END;',
'END IF;',
'END;'))
,p_attribute_02=>'P34_CODE_SEARCH,P34_NAME_SEARCH'
,p_attribute_03=>'P34_SEARCH_KEY,P34_SEARCH_VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14278561023795913)
,p_event_id=>wwv_flow_imp.id(9772770691817049)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10495487641417901)
,p_name=>'Name Search - On press Enter'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P34_NAME_SEARCH'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.key?.toLowerCase() === ''enter'''
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14278614832795914)
,p_event_id=>wwv_flow_imp.id(10495487641417901)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(document).off(''keydown.p34keyevents'');'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16109234327770120)
,p_event_id=>wwv_flow_imp.id(10495487641417901)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P34_CODE_SEARCH IS NULL AND :P34_NAME_SEARCH IS NOT NULL ',
'THEN BEGIN :P34_SEARCH_KEY := ''name''; :P34_SEARCH_VALUE := :P34_NAME_SEARCH; END;',
'ELSE BEGIN :P34_SEARCH_KEY := ''code''; :P34_SEARCH_VALUE := :P34_CODE_SEARCH; END;',
'END IF;',
'END;'))
,p_attribute_02=>'P34_CODE_SEARCH,P34_NAME_SEARCH'
,p_attribute_03=>'P34_SEARCH_KEY,P34_SEARCH_VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14278833399795916)
,p_event_id=>wwv_flow_imp.id(10495487641417901)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9771025003817032)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_01=>'P34_SEARCH_KEY,P34_SEARCH_VALUE'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>9771025003817032
);
wwv_flow_imp.component_end;
end;
/
