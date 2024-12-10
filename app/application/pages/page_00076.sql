prompt --application/pages/page_00076
begin
--   Manifest
--     PAGE: 00076
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
 p_id=>76
,p_name=>'Collection & Outstanding Search'
,p_alias=>'COLLECTION-OUTSTANDING-SEARCH'
,p_page_mode=>'MODAL'
,p_step_title=>'Search:'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p76KeyMap = {',
'    escape : (v) => {',
'        $(document).off(''keydown.p76keyevents'');',
'        $.event.trigger("cancelDialog");',
'        console.log(''Reset Keys'');',
'    },',
'    enter : (v) => {',
'        apex.page.submit( "SUBMIT" );',
'    }',
'}',
'',
'function mapP76Keys() {',
'    $(document).off(''keydown.p76keyevents'');',
'    $(document).on(''keydown.p76keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p76KeyMap[key]) {',
'            ev.preventDefault();',
'            p76KeyMap[key]();',
'        }',
'    });',
'}',
'',
'$(''#P76_SEARCH_COLLECTION_DATE_dialog'').parent().change(function (){',
'    console.log("Date Picker Changed");',
'});'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP76Keys();',
'$(''#P76_SEARCH_COLLECTION_DATE_LABEL'').trigger(''click'')',
'// $(''#P76_SEARCH_COLLECTION_DATE_input'').focus();'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Dialog{',
'    background-color: #046BC8;',
'}',
'',
'.t-Dialog-body{',
'    background-color: #046BC8;',
'    padding-top: 0;',
'    padding-bottom: 0;',
'}',
'.t-Dialog-body label,',
'.t-Dialog-body input{',
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
 p_id=>wwv_flow_imp.id(22496291309163650)
,p_plug_name=>'Search Field'
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
 p_id=>wwv_flow_imp.id(24856769617616201)
,p_name=>'P76_SEARCH_COLLECTION_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(22496291309163650)
,p_prompt=>'Go To Collection Date: '
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--preTextBlock'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'INLINE'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(24857117544616205)
,p_validation_name=>'Search Must not be Empty'
,p_validation_sequence=>10
,p_validation=>'P76_SEARCH_COLLECTION_DATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Please type value in the fields.'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_imp.id(24856769617616201)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24856866698616202)
,p_name=>'Cancel Search'
,p_event_sequence=>10
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'cancelDialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24856945119616203)
,p_event_id=>wwv_flow_imp.id(24856866698616202)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(document).off(''keydown.p76keyevents'');'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24857069935616204)
,p_event_id=>wwv_flow_imp.id(24856866698616202)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24858597605616219)
,p_name=>'Detect Escape Key'
,p_event_sequence=>20
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24858781687616221)
,p_event_id=>wwv_flow_imp.id(24858597605616219)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).keyup(function(e) {',
'    console.log(e.key);',
'    if (e.key === "Escape") { ',
'        $(document).off(''keydown.p76keyevents'');',
'        $.event.trigger("cancelDialog");',
'        console.log(''Reset Keys'');',
'    }',
'});'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(24857268961616206)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Go To Page 75'
,p_attribute_01=>'P76_SEARCH_COLLECTION_DATE'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>24857268961616206
);
wwv_flow_imp.component_end;
end;
/
