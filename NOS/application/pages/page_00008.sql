prompt --application/pages/page_00008
begin
--   Manifest
--     PAGE: 00008
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
 p_id=>8
,p_name=>'Vendor Masterlist Search'
,p_alias=>'VENDOR-MASTERLIST-SEARCH'
,p_page_mode=>'MODAL'
,p_step_title=>'Search'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p8KeyMap = {',
'    escape : (v) => {',
'        $(document).off(''keydown.p8keyevents'');',
'        $.event.trigger("cancelDialog")',
'    },',
'    enter : (v) => {',
'        $(document).off(''keydown.p8keyevents'');',
'        apex.page.submit( "SUBMIT" );',
'    }',
'}',
'',
'function mapP8Keys() {',
'    $(document).off(''keydown.p8keyevents'');',
'    $(document).on(''keydown.p8keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p8KeyMap[key]) {',
'            ev.preventDefault();',
'            p8KeyMap[key]();',
'        }',
'    });',
'}',
'',
'$x(''P8_SEARCH_CODE'').focus();'))
,p_javascript_code_onload=>'mapP8Keys();'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Dialog-body{',
'    background-color: #056AC8;',
'    padding-top: 0;',
'    padding-bottom: 0;',
'}',
'.t-Dialog-body label,',
'.t-Dialog-body input {',
'    font-size: 1.125rem;',
'}',
'',
'.t-Region-body{',
'    padding: 0.4;',
'}',
'',
'.t-Form-label{',
'    white-space: nowrap;',
'}',
'',
'#search-form{',
'    background-color: white;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8967200921281306)
,p_plug_name=>'Search_Field'
,p_region_name=>'search-form'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>10
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8967356877281307)
,p_name=>'P8_SEARCH_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(8967200921281306)
,p_prompt=>'Vendor Name:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--postTextBlock'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8967419084281308)
,p_name=>'P8_SEARCH_CODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8967200921281306)
,p_prompt=>'Search For Vendor Code :'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--postTextBlock'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(8971064956281344)
,p_validation_name=>'Value must be present Code'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM DUAL',
'WHERE :P8_SEARCH_CODE IS NOT NULL OR :P8_SEARCH_NAME IS NOT NULL'))
,p_validation_type=>'EXISTS'
,p_error_message=>'Please type value in the fields.'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_imp.id(8967419084281308)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(8971392193281347)
,p_validation_name=>'Value must be present Name'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM DUAL',
'WHERE :P8_SEARCH_CODE IS NOT NULL OR :P8_SEARCH_NAME IS NOT NULL'))
,p_validation_type=>'EXISTS'
,p_error_message=>'Please type value in the fields.'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_imp.id(8967356877281307)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8969464079281328)
,p_name=>'Cancel Search'
,p_event_sequence=>20
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'cancelDialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8969657868281330)
,p_event_id=>wwv_flow_imp.id(8969464079281328)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(document).off(''keydown.p8keyevents'');'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8969529736281329)
,p_event_id=>wwv_flow_imp.id(8969464079281328)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11482566875867001)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Go To Page 5'
,p_attribute_01=>'P8_SEARCH_CODE,P8_SEARCH_NAME'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11482566875867001
);
wwv_flow_imp.component_end;
end;
/
