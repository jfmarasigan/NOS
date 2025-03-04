prompt --application/pages/page_00321
begin
--   Manifest
--     PAGE: 00321
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
 p_id=>321
,p_name=>'Statement Of Account Search'
,p_alias=>'STATEMENT-OF-ACCOUNT-SEARCH'
,p_page_mode=>'MODAL'
,p_step_title=>'Statement Of Account Search'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p7KeyMap = {',
'    enter: (v) => {',
'        $("#enter").trigger("click");',
'    }',
'}',
'',
'function mapP7Keys() {',
'    $(document).off(''keydown.p7keyevents'');',
'    $(document).on(''keydown.p7keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p7KeyMap[key]) {',
'            ev.preventDefault();',
'            p7KeyMap[key]();',
'        }',
'    });',
'}',
'',
'// $(document).keydown(function (event) {',
'//     if (event.keyCode === 27) {',
'//         event.preventDefault();',
'//         // event.stopImmediatePropagation();',
'//     }',
'// });'))
,p_javascript_code_onload=>'mapP7Keys();'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.format-size{',
'    font-size: 1.125rem;',
'    font-family: Arial;',
'}',
'',
'.text_field{',
'    background-color: white;',
'}',
'',
'#P321_INVOICE_NUMBER .apex-item-text {',
'    border: none;',
'    font-size: 1.125rem;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'560px'
,p_dialog_max_width=>'560px'
,p_dialog_attributes=>'closeOnEscape:false'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(82199749088202402)
,p_button_sequence=>30
,p_button_name=>'Exit'
,p_button_static_id=>'exit'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Exit'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(72494743068106949)
,p_name=>'P321_INVOICE_NUMBER'
,p_item_sequence=>20
,p_prompt=>'Invoice Number:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>6
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(72494835790106950)
,p_name=>'Close'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P321_INVOICE_NUMBER'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'this.browserEvent.key?.toLowerCase() === "enter" && ',
'!this.browserEvent.shiftKey'))
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(82199669219202401)
,p_event_id=>wwv_flow_imp.id(72494835790106950)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'console.log("TEST");',
'$("#exit").trigger("click")'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(82199818568202403)
,p_name=>'Exit'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(82199749088202402)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(82199946202202404)
,p_event_id=>wwv_flow_imp.id(82199818568202403)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
,p_attribute_01=>'P321_INVOICE_NUMBER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(25264299788673362)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>25264299788673362
);
wwv_flow_imp.component_end;
end;
/
