prompt --application/pages/page_00040
begin
--   Manifest
--     PAGE: 00040
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
 p_id=>40
,p_name=>'ITM Search'
,p_alias=>'ITM-SEARCH'
,p_page_mode=>'MODAL'
,p_step_title=>'Search'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p40KeyMap = {',
'    escape : (v) => {',
'        $("#esc").trigger("click");',
'    }',
'}',
'',
'function mapP40Keys() {',
'    $(document).off(''keydown.p40keyevents'');',
'    $(document).on(''keydown.p40keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p40KeyMap[key]) {',
'            ev.preventDefault();',
'            p40KeyMap[key]();',
'        }',
'    });',
'}'))
,p_javascript_code_onload=>'mapP40Keys();'
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
'',
'.text-left {',
'    text-align: left;',
'}',
'',
'.text-right {',
'    text-align: right;',
'}',
'.t-Form-labelContainer{',
'    text-align: start;',
'}',
'.t-Form-label{',
'    font-size: 1.125rem;',
'}',
'',
'',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12389551248815809)
,p_name=>'P40_UPC'
,p_item_sequence=>100
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12389671822815810)
,p_name=>'P40_ITEM_DESC'
,p_item_sequence=>110
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12389763648815811)
,p_name=>'P40_UPC_SEARCH'
,p_item_sequence=>40
,p_prompt=>'UPC:'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'text-general'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:margin-top-sm:margin-bottom-sm'
,p_attribute_01=>'1'
,p_attribute_03=>'left'
,p_attribute_04=>'numeric'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16110841251770136)
,p_name=>'P40_MONTH_FROM'
,p_item_sequence=>60
,p_prompt=>'Month From'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_tag_css_classes=>'text-general'
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:margin-top-sm:margin-bottom-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16110996429770137)
,p_name=>'P40_MONTH_TO'
,p_item_sequence=>70
,p_prompt=>'Month To'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_tag_css_classes=>'text-general'
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:margin-top-sm:margin-bottom-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22129019642463272)
,p_name=>'P40_CODE_SEARCH'
,p_item_sequence=>30
,p_prompt=>'Item No: '
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'text-general'
,p_grid_label_column_span=>2
,p_grid_column_css_classes=>'nop-right'
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:margin-top-sm:margin-bottom-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22129168745463273)
,p_name=>'P40_DESC_SEARCH'
,p_item_sequence=>50
,p_prompt=>'Item Desc:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'text-general'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:margin-top-sm:margin-bottom-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22130259687463284)
,p_name=>'P40_ITEM_ID'
,p_item_sequence=>80
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22131482501463296)
,p_name=>'P40_ITEM_NUM'
,p_item_sequence=>90
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(18999015039168312)
,p_computation_sequence=>10
,p_computation_item=>'P40_MONTH_FROM'
,p_computation_type=>'QUERY'
,p_computation=>'SELECT TRUNC(SYSDATE, ''MONTH'') FROM DUAL;'
,p_compute_when=>'P40_MONTH_FROM'
,p_compute_when_type=>'ITEM_IS_NULL_OR_ZERO'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(18999139115168313)
,p_computation_sequence=>20
,p_computation_item=>'P40_MONTH_TO'
,p_computation_type=>'QUERY'
,p_computation=>'SELECT LAST_DAY(SYSDATE) FROM DUAL'
,p_compute_when=>'P40_MONTH_TO'
,p_compute_when_type=>'ITEM_IS_NULL_OR_ZERO'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(12361758017646276)
,p_validation_name=>'No blank fields'
,p_validation_sequence=>10
,p_validation=>':P40_CODE_SEARCH IS NOT NULL OR :P40_UPC_SEARCH IS NOT NULL OR :P40_DESC_SEARCH IS NOT NULL'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Fill up at least one field'
,p_associated_item=>wwv_flow_imp.id(22129019642463272)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12364363624646284)
,p_name=>'Code Search - On press Enter'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P40_CODE_SEARCH'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.key?.toLowerCase() === ''enter'''
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14278917036795917)
,p_event_id=>wwv_flow_imp.id(12364363624646284)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P40_CODE_SEARCH IS NULL AND :P40_UPC_SEARCH IS NULL AND :P40_DESC_SEARCH IS NOT NULL ',
'    THEN :P40_ITEM_DESC := :P40_DESC_SEARCH;',
'ELSIF :P40_CODE_SEARCH IS NULL AND :P40_UPC_SEARCH IS NOT NULL',
'    THEN :P40_UPC := :P40_UPC_SEARCH;',
'ELSIF :P40_CODE_SEARCH IS NOT NULL ',
'    THEN :P40_ITEM_NUM := :P40_CODE_SEARCH;',
'END IF;',
'END;'))
,p_attribute_02=>'P40_CODE_SEARCH,P40_DESC_SEARCH,P40_UPC_SEARCH'
,p_attribute_03=>'P40_ITEM_ID,P40_ITEM_NUM,P40_UPC,P40_ITEM_DESC'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14279061148795918)
,p_event_id=>wwv_flow_imp.id(12364363624646284)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12365279478646285)
,p_name=>'Name Search - On press Enter'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P40_DESC_SEARCH'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.key?.toLowerCase() === ''enter'''
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16107724525770105)
,p_event_id=>wwv_flow_imp.id(12365279478646285)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P40_CODE_SEARCH IS NULL AND :P40_UPC_SEARCH IS NULL AND :P40_DESC_SEARCH IS NOT NULL ',
'    THEN :P40_ITEM_DESC := :P40_DESC_SEARCH;',
'ELSIF :P40_CODE_SEARCH IS NULL AND :P40_UPC_SEARCH IS NOT NULL',
'    THEN :P40_UPC := :P40_UPC_SEARCH;',
'ELSIF :P40_CODE_SEARCH IS NOT NULL ',
'    THEN :P40_ITEM_NUM := :P40_CODE_SEARCH;',
'END IF;',
'END;'))
,p_attribute_02=>'P40_CODE_SEARCH,P40_DESC_SEARCH,P40_UPC_SEARCH'
,p_attribute_03=>'P40_ITEM_ID,P40_ITEM_NUM,P40_UPC,P40_ITEM_DESC'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10499991792417946)
,p_event_id=>wwv_flow_imp.id(12365279478646285)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12389879488815812)
,p_name=>'UPC Search - On press Enter'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P40_UPC_SEARCH'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.key?.toLowerCase() === ''enter'';'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16107872043770106)
,p_event_id=>wwv_flow_imp.id(12389879488815812)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P40_CODE_SEARCH IS NULL AND :P40_UPC_SEARCH IS NULL AND :P40_DESC_SEARCH IS NOT NULL ',
'    THEN :P40_ITEM_DESC := :P40_DESC_SEARCH;',
'ELSIF :P40_CODE_SEARCH IS NULL AND :P40_UPC_SEARCH IS NOT NULL',
'    THEN :P40_UPC := :P40_UPC_SEARCH;',
'ELSIF :P40_CODE_SEARCH IS NOT NULL ',
'    THEN :P40_ITEM_NUM := :P40_CODE_SEARCH;',
'END IF;',
'END;'))
,p_attribute_02=>'P40_CODE_SEARCH,P40_DESC_SEARCH,P40_UPC_SEARCH'
,p_attribute_03=>'P40_ITEM_ID,P40_ITEM_NUM,P40_UPC,P40_ITEM_DESC'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14279218047795920)
,p_event_id=>wwv_flow_imp.id(12389879488815812)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18998718298168309)
,p_name=>'Month From - On press Enter'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P40_MONTH_FROM'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.key?.toLowerCase() === ''enter'';'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keyup'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18998860344168310)
,p_event_id=>wwv_flow_imp.id(18998718298168309)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P40_CODE_SEARCH IS NULL AND :P40_UPC_SEARCH IS NULL AND :P40_DESC_SEARCH IS NOT NULL ',
'    THEN :P40_ITEM_DESC := :P40_DESC_SEARCH;',
'ELSIF :P40_CODE_SEARCH IS NULL AND :P40_UPC_SEARCH IS NOT NULL',
'    THEN :P40_UPC := :P40_UPC_SEARCH;',
'ELSIF :P40_CODE_SEARCH IS NOT NULL ',
'    THEN :P40_ITEM_NUM := :P40_CODE_SEARCH;',
'END IF;',
'END;'))
,p_attribute_02=>'P40_CODE_SEARCH,P40_UPC_SEARCH,P40_DESC_SEARCH'
,p_attribute_03=>'P40_ITEM_ID,P40_ITEM_NUM,P40_UPC,P40_ITEM_DESC'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18998905727168311)
,p_event_id=>wwv_flow_imp.id(18998718298168309)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18999218640168314)
,p_name=>'Month To - On Press Enter'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P40_MONTH_TO'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.key?.toLowerCase() === ''enter'';'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keyup'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18999343660168315)
,p_event_id=>wwv_flow_imp.id(18999218640168314)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P40_CODE_SEARCH IS NULL AND :P40_UPC_SEARCH IS NULL AND :P40_DESC_SEARCH IS NOT NULL ',
'    THEN :P40_ITEM_DESC := :P40_DESC_SEARCH;',
'ELSIF :P40_CODE_SEARCH IS NULL AND :P40_UPC_SEARCH IS NOT NULL',
'    THEN :P40_UPC := :P40_UPC_SEARCH;',
'ELSIF :P40_CODE_SEARCH IS NOT NULL ',
'    THEN :P40_ITEM_NUM := :P40_CODE_SEARCH;',
'END IF;',
'END;'))
,p_attribute_02=>'P40_CODE_SEARCH,P40_UPC_SEARCH,P40_DESC_SEARCH'
,p_attribute_03=>'P40_ITEM_ID,P40_ITEM_NUM,P40_UPC,P40_ITEM_DESC'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18999486385168316)
,p_event_id=>wwv_flow_imp.id(18999218640168314)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12362029494646278)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_01=>'P40_ITEM_ID,P40_ITEM_NUM,P40_UPC,P40_ITEM_DESC,P40_MONTH_FROM,P40_MONTH_TO'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>12362029494646278
);
wwv_flow_imp.component_end;
end;
/