prompt --application/pages/page_00149
begin
--   Manifest
--     PAGE: 00149
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
 p_id=>149
,p_name=>'Collection and Outstanding Reports Print'
,p_alias=>'COLLECTION-AND-OUTSTANDING-REPORTS-PRINT'
,p_page_mode=>'MODAL'
,p_step_title=>'Collection and Outstanding Reports Print'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p149KeyMap = {',
'    e : (v) => {',
'        $("#e").trigger("click");',
'    },',
'    p : (v) => {',
'        $("#p").trigger("click");',
'    },',
'',
'    // escape : (v) => {',
'    //     $.event.trigger("exit");',
'    // }',
'}',
'',
'function map149Keys() {',
'    $(document).off(''keydown.p149keyevents'');',
'    $(document).on(''keydown.p149keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p149KeyMap[key]) {',
'            ev.preventDefault();',
'            p149KeyMap[key]();',
'        }',
'    });',
'}'))
,p_javascript_code_onload=>'map149Keys();'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#p, #e {',
'    font-size: 1.125rem;',
'}',
'',
'#p:hover, #e:hover{',
'    border: 0;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'75'
,p_dialog_width=>'500'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(39230459380531921)
,p_button_sequence=>50
,p_button_name=>'Export'
,p_button_static_id=>'e'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>E</u> - Export'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
,p_grid_column_span=>2
,p_grid_column=>4
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(39230372579531920)
,p_button_sequence=>60
,p_button_name=>'Print'
,p_button_static_id=>'p'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>P</u> - Print'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_column_span=>2
,p_grid_column=>8
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39230783255531924)
,p_name=>'P149_PRINT_TYPE'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39232630083531943)
,p_name=>'P149_CUSTOMER_ID'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39831096343742301)
,p_name=>'P149_LEGAL_NAME'
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39232781474531944)
,p_name=>'Export'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(39230459380531921)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39232825797531945)
,p_event_id=>wwv_flow_imp.id(39232781474531944)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Export Main'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var d = new Date();',
'var datestamp = d.getFullYear() + "";',
'if( (d.getMonth() + 1) >= 10){',
'    datestamp = datestamp + (d.getMonth() + 1) + "";',
'}',
'else{',
'    datestamp = datestamp + "0" + (d.getMonth() + 1);',
'}',
'if( (d.getDate() + 1) >= 10){',
'    datestamp = datestamp + d.getDate() + "";',
'}',
'else{',
'    datestamp = datestamp + "0" + d.getDate();',
'}',
'generateReport("SOA_EOM_MAIN_XLS", "xlsx", { ',
'    fileName: $v("P149_LEGAL_NAME") + "_Main Account Summary Report_" + datestamp + ".xlsx",',
'    mode : "export",',
'    parameters : {',
'        P_CUSTOMER_ID : $v("P149_CUSTOMER_ID")',
'    }',
'});'))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P149_PRINT_TYPE'
,p_client_condition_expression=>'main'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39831147231742302)
,p_event_id=>wwv_flow_imp.id(39232781474531944)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'Export Ageing'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var d = new Date();',
'var datestamp = d.getFullYear() + "";',
'if( (d.getMonth() + 1) >= 10){',
'    datestamp = datestamp + (d.getMonth() + 1) + "";',
'}',
'else{',
'    datestamp = datestamp + "0" + (d.getMonth() + 1);',
'}',
'if( (d.getDate() + 1) >= 10){',
'    datestamp = datestamp + d.getDate() + "";',
'}',
'else{',
'    datestamp = datestamp + "0" + d.getDate();',
'}',
'generateReport("SOA_EOM_CUSTOMERS_XLS", "xlsx", { ',
'    fileName: $v("P149_LEGAL_NAME") + "_Collections Ageing Summary Report_" + datestamp + ".xlsx",',
'    mode : "export",',
'    parameters : {',
'        P_CUSTOMER_ID : $v("P149_CUSTOMER_ID")',
'    }',
'});'))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P149_PRINT_TYPE'
,p_client_condition_expression=>'ageing'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39232985668531946)
,p_name=>'Print'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(39230372579531920)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39831222710742303)
,p_event_id=>wwv_flow_imp.id(39232985668531946)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Print Main'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var d = new Date();',
'var datestamp = d.getFullYear() + "";',
'if( (d.getMonth() + 1) >= 10){',
'    datestamp = datestamp + (d.getMonth() + 1) + "";',
'}',
'else{',
'    datestamp = datestamp + "0" + (d.getMonth() + 1);',
'}',
'if( (d.getDate() + 1) >= 10){',
'    datestamp = datestamp + d.getDate() + "";',
'}',
'else{',
'    datestamp = datestamp + "0" + d.getDate();',
'}',
'generateReport("SOA_EOM_MAIN", "pdf", { ',
'    fileName: $v("P149_LEGAL_NAME") + "_Main Account Summary Report_" + datestamp + ".pdf",',
'    mode : "export",',
'    parameters : {',
'        P_CUSTOMER_ID : $v("P149_CUSTOMER_ID")',
'    }',
'});'))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P149_PRINT_TYPE'
,p_client_condition_expression=>'main'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39831382263742304)
,p_event_id=>wwv_flow_imp.id(39232985668531946)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'Print Ageing'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var d = new Date();',
'var datestamp = d.getFullYear() + "";',
'if( (d.getMonth() + 1) >= 10){',
'    datestamp = datestamp + (d.getMonth() + 1) + "";',
'}',
'else{',
'    datestamp = datestamp + "0" + (d.getMonth() + 1);',
'}',
'if( (d.getDate() + 1) >= 10){',
'    datestamp = datestamp + d.getDate() + "";',
'}',
'else{',
'    datestamp = datestamp + "0" + d.getDate();',
'}',
'generateReport("SOA_EOM_CUSTOMERS", "pdf", { ',
'    fileName: $v("P149_LEGAL_NAME") + "_Collections Ageing Summary Report_" + datestamp + ".pdf",',
'    mode : "export",',
'    parameters : {',
'        P_CUSTOMER_ID : $v("P149_CUSTOMER_ID")',
'    }',
'});'))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P149_PRINT_TYPE'
,p_client_condition_expression=>'ageing'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39233111042531948)
,p_name=>'Focus'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39233201965531949)
,p_event_id=>wwv_flow_imp.id(39233111042531948)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(39230459380531921)
);
wwv_flow_imp.component_end;
end;
/
