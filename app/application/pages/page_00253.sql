prompt --application/pages/page_00253
begin
--   Manifest
--     PAGE: 00253
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
 p_id=>253
,p_name=>'Credit Memo Utilities - Add'
,p_alias=>'CREDIT-MEMO-UTILITIES-ADD'
,p_page_mode=>'MODAL'
,p_step_title=>'Credit Memo Utilities - Add'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#js/cmn#MIN#.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p253KeyMap = { ',
'    enter: (v) => {',
'        $("#enter").trigger("click");',
'    }',
'}',
'',
'function mapP253Keys() {',
'    $(document).off(''keydown.p253keyevents'');',
'    $(document).on(''keydown.p253keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p253KeyMap[key]) {',
'            ev.preventDefault();',
'            p253KeyMap[key]();',
'        }',
'    });',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP253Keys();',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Dialog-body{',
'    label, input {',
'        font-size: 1.125rem;',
'    }',
'//    background-color: #046BC8;',
'    padding-bottom: 0;',
'    padding-left: 0;',
'}',
'',
'.t-Region-body{',
'   padding-bottom: 0;',
'   padding-left: 0;',
'}',
'',
'#cmName-form, #cmDesc-form{',
'    background-color: white;',
'    margin-bottom: 0;',
'    margin-left: 0;',
'}',
'',
'',
'.hiddenbtn {',
'    display: none;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(51299529196993309)
,p_button_sequence=>60
,p_button_name=>'Submit'
,p_button_static_id=>'enter'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Submit'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'hiddenbtn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51299138179993305)
,p_name=>'P253_CM_STATUS_NAME'
,p_item_sequence=>30
,p_prompt=>'Name:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>12
,p_tag_css_classes=>'cmName'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
,p_attribute_06=>'UPPER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51299455723993308)
,p_name=>'P253_CM_STATUS_DESCRIPTION'
,p_item_sequence=>50
,p_prompt=>'Description:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_tag_css_classes=>'cmDesc'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(72491072290106912)
,p_name=>'P253_CM_STATUS_NAME_DUP'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(51299278376993306)
,p_name=>'Load'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51299325715993307)
,p_event_id=>wwv_flow_imp.id(51299278376993306)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P253_CM_STATUS_NAME'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(51299624878993310)
,p_name=>'Add'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(51299529196993309)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72491139444106913)
,p_event_id=>wwv_flow_imp.id(51299624878993310)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   FOR i IN (SELECT CM_STATUS_NAME FROM NPM017) LOOP',
'    IF i.CM_STATUS_NAME = :P253_CM_STATUS_NAME THEN',
'        :P253_CM_STATUS_NAME_DUP := 1;',
'        EXIT;',
'    ELSE',
'        :P253_CM_STATUS_NAME_DUP := 0;',
'    END IF;',
'   END LOOP;',
'END;'))
,p_attribute_02=>'P253_CM_STATUS_NAME'
,p_attribute_03=>'P253_CM_STATUS_NAME_DUP'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72491202546106914)
,p_event_id=>wwv_flow_imp.id(51299624878993310)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.message.showErrors({',
'    type: "error",',
'    location: "inline",',
'    pageItem: "P253_CM_STATUS_NAME",',
'    message: "Status already exists."',
'});',
'',
'// Highlight fields that are empty',
'$("#P253_CM_STATUS_NAME").addClass("error-highlight");',
'',
'return false; // Prevent modal from closing'))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P253_CM_STATUS_NAME_DUP'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51299746072993311)
,p_event_id=>wwv_flow_imp.id(51299624878993310)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    INSERT INTO NPM017 (CM_STATUS_NAME, CM_STATUS_DESCRIPTION, USER_CREATED, DATE_CREATED)',
'    VALUES(:P253_CM_STATUS_NAME, :P253_CM_STATUS_DESCRIPTION, :APP_USER, SYSDATE());',
'END;'))
,p_attribute_02=>'P253_CM_STATUS_NAME,P253_CM_STATUS_DESCRIPTION'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'$v("P253_CM_STATUS_NAME") !== '''' && $v("P253_CM_STATUS_DESCRIPTION") !== '''' && $v("P253_CM_STATUS_NAME_DUP") == 0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51299891616993312)
,p_event_id=>wwv_flow_imp.id(51299624878993310)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'$v("P253_CM_STATUS_NAME") !== '''' && $v("P253_CM_STATUS_DESCRIPTION") !== '''''
);
wwv_flow_imp.component_end;
end;
/
