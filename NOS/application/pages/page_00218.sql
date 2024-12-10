prompt --application/pages/page_00218
begin
--   Manifest
--     PAGE: 00218
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
 p_id=>218
,p_name=>'User Utilities Search'
,p_alias=>'USER-UTILITIES-SEARCH'
,p_page_mode=>'MODAL'
,p_step_title=>'Search'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p218KeyMap = {',
'    escape : (v) => {',
'        $(document).off(''keydown.p218keyevents'');',
'        $.event.trigger("cancelDialog")',
'    },',
'    enter : (v) => {',
'        $(document).off(''keydown.p218keyevents'');',
'        apex.page.submit( "SUBMIT" );',
'    }',
'}',
'',
'function mapP218Keys() {',
'    $(document).off(''keydown.p218keyevents'');',
'    $(document).on(''keydown.p218keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p218KeyMap[key]) {',
'            ev.preventDefault();',
'            p218KeyMap[key]();',
'        }',
'    });',
'}',
'',
'$x(''P218_SEARCH_NAME'').focus();'))
,p_javascript_code_onload=>'mapP218Keys();'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* .t-Dialog-body{',
'    background-color: #056AC8;',
'    padding-top: 0;',
'    padding-bottom: 0;',
'} */',
'.t-Dialog-body label,',
'.t-Dialog-body input {',
'    font-size: 1.125rem;',
'}',
'',
'/* .t-Region-body{',
'    padding: 0.4;',
'} */',
'',
'/* .t-Form-label{',
'    white-space: nowrap;',
'} */',
'',
'/* #search-form{',
'    background-color: white;',
'} */'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(45029015535682426)
,p_plug_name=>'Search'
,p_plug_display_sequence=>20
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45029175580682427)
,p_name=>'P218_SEARCH_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(45029015535682426)
,p_prompt=>'Search For Name:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45029286505682428)
,p_name=>'P218_SEARCH_USERNAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(45029015535682426)
,p_prompt=>'Username:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(45029748449682433)
,p_validation_name=>'Empty Value Name'
,p_validation_sequence=>10
,p_validation=>'(:P218_SEARCH_NAME IS NOT NULL OR :P218_SEARCH_USERNAME IS NOT NULL)'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Please type value in the fields.'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_imp.id(45029175580682427)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(45029890651682434)
,p_validation_name=>'Empty Value Username'
,p_validation_sequence=>20
,p_validation=>'(:P218_SEARCH_NAME IS NOT NULL OR :P218_SEARCH_USERNAME IS NOT NULL)'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Please type value in the fields.'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_imp.id(45029286505682428)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(45029362009682429)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'cancelDialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45029476178682430)
,p_event_id=>wwv_flow_imp.id(45029362009682429)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(document).off(''keydown.p218keyevents'');'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45029508649682431)
,p_event_id=>wwv_flow_imp.id(45029362009682429)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(45029699893682432)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Go To Page 217'
,p_attribute_01=>'P218_SEARCH_NAME,P218_SEARCH_USERNAME'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>45029699893682432
);
wwv_flow_imp.component_end;
end;
/
