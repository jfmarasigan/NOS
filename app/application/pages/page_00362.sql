prompt --application/pages/page_00362
begin
--   Manifest
--     PAGE: 00362
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
 p_id=>362
,p_name=>'Gift Certificate Print Again'
,p_alias=>'GIFT-CERTIFICATE-PRINT-AGAIN'
,p_page_mode=>'MODAL'
,p_step_title=>'Gift Certificate Print Again'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p6KeyMap = {',
'    escape: (v) => {',
'        $("#esc").trigger("click");',
'    },',
'    enter: (v) => {',
'        $("#enter").trigger("click");',
'    }',
'}',
'',
'function mapP6Keys() {',
'    $(document).off(''keydown.p6keyevents'');',
'    $(document).on(''keydown.p6keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p6KeyMap[key]) {',
'            ev.preventDefault();',
'            p6KeyMap[key]();',
'        }',
'    });',
'}',
'',
'function customEvent(event, data){',
'    mapP6Keys();',
'}'))
,p_javascript_code_onload=>'mapP6Keys();'
,p_css_file_urls=>'#APP_FILES#css/cmn#MIN#.css'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Dialog {',
'    border: 0.3rem solid #046BC8;',
'    overflow: hidden !important;',
'}',
'',
'.t-Dialog-header {',
'    background-color: white;',
'    padding: .5rem 0rem 0rem 1rem;',
'}',
'',
'.t-Dialog-body {',
'    padding-block-start: 0;',
'    padding-block-end: 0;',
'}',
'',
'.t-Dialog-bodyWrapperIn {',
'    overflow: hidden;',
'}',
'',
'.t-Region {',
'    margin-block-end: .1rem;',
'    text-align: center;',
'    font-weight: 600;',
'    font-size: 1.5rem;',
'}',
'',
'.t-Region-body {',
'    margin-top: 1rem;',
'    height: 4rem;',
'}',
'',
'.t-Form-label {',
'    color: white;',
'    font-size: 1.125rem;',
'    padding-block-start: 0;',
'}',
'',
'.btns {',
'    font-size: 1.3rem;',
'    font-weight: 600;',
'}',
'',
'#enter,',
'#escape {',
'    margin-left: 1rem;',
'    margin-right: 1rem;',
'    background-color: white;',
'    border-color: white;',
'    box-shadow: none;',
'}',
'',
'.t-Region-buttons-left {',
'    padding-left: 2.5rem;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'160px'
,p_dialog_width=>'450px'
,p_dialog_css_classes=>'print-again'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(124348854492546862)
,p_plug_name=>'Title'
,p_region_name=>'print-content'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>50
,p_location=>null
,p_plug_source=>'This gift certificate has been printed. Do you want to print it again?'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(77890616102873801)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(124348854492546862)
,p_button_name=>'CLOSE'
,p_button_static_id=>'esc'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'ESC - CLOSE'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(77891055439873806)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(124348854492546862)
,p_button_name=>'PRINT'
,p_button_static_id=>'enter'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'ENTER - PRINT'
,p_button_position=>'HELP'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77931762752036501)
,p_name=>'P362_PREPARED_URL'
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77935596249036539)
,p_name=>'P362_IS_DONATION'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(124349628262546971)
,p_name=>'P362_SELECTED_GC_NO'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77893356033873878)
,p_name=>'Print'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(77891055439873806)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74202134429493947)
,p_event_id=>wwv_flow_imp.id(77893356033873878)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P362_PREPARED_URL := apex_page.get_url(',
'       p_page   => 313,',
'       p_items  => ''P313_SELECTED_GC_NO,P313_IS_DONATION'',',
'       p_values => :P362_SELECTED_GC_NO || '','' || :P362_IS_DONATION',
'     );',
'END;'))
,p_attribute_02=>'P362_SELECTED_GC_NO,P362_IS_DONATION'
,p_attribute_03=>'P362_PREPARED_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77932761565036511)
,p_event_id=>wwv_flow_imp.id(77893356033873878)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P362_PREPARED_URL");',
'apex.navigation.redirect(url);'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74202469565493950)
,p_event_id=>wwv_flow_imp.id(77893356033873878)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(74202209344493948)
,p_name=>'Close'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(77890616102873801)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74202347642493949)
,p_event_id=>wwv_flow_imp.id(74202209344493948)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77932588930036509)
,p_name=>'Set Focus'
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77932615559036510)
,p_event_id=>wwv_flow_imp.id(77932588930036509)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(77890616102873801)
);
wwv_flow_imp.component_end;
end;
/
