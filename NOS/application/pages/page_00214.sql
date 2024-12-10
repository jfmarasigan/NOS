prompt --application/pages/page_00214
begin
--   Manifest
--     PAGE: 00214
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
 p_id=>214
,p_name=>'Customer Payment Terms Utilities Search'
,p_alias=>'CUSTOMER-PAYMENT-TERMS-UTILITIES-SEARCH'
,p_page_mode=>'MODAL'
,p_step_title=>'Search'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p214KeyMap = {',
'    escape : (v) => {',
'        $("#close").click();',
'    },',
'    enter: (v) => {',
'        $("#search").trigger("click");',
'    }',
'}',
'',
'function mapP214Keys() {',
'    $(document).off(''keydown.p214keyevents'');',
'    $(document).on(''keydown.p214keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p214KeyMap[key]) {',
'            ev.preventDefault();',
'            p214KeyMap[key]();',
'        }',
'    });',
'}',
'',
'$x(''P214_NAME'').focus();'))
,p_javascript_code_onload=>'mapP214Keys();'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.btns {',
'    font-size: 1.125rem;',
'    color: white;',
'    background-color: #046BC8;',
'}',
'',
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
'#search-form{',
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
,p_dialog_width=>'40rem'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(43433663726832016)
,p_plug_name=>'Search'
,p_region_name=>'search-form'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>20
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(43433870202832018)
,p_plug_name=>'Buttons'
,p_plug_display_sequence=>30
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(43433907098832019)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(43433870202832018)
,p_button_name=>'Search'
,p_button_static_id=>'search'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Search'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'hiddenbtn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(43434049416832020)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(43433870202832018)
,p_button_name=>'Close'
,p_button_static_id=>'close'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Close'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'hiddenbtn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43433742600832017)
,p_name=>'P214_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(43433663726832016)
,p_prompt=>'Go To Name:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(43434139204832021)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(43434049416832020)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43434287729832022)
,p_event_id=>wwv_flow_imp.id(43434139204832021)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(43434390679832023)
,p_name=>'Close Dialog'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(43433907098832019)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43434485560832024)
,p_event_id=>wwv_flow_imp.id(43434390679832023)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
,p_attribute_01=>'P214_NAME'
);
wwv_flow_imp.component_end;
end;
/
