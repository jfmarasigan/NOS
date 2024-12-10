prompt --application/pages/page_00039
begin
--   Manifest
--     PAGE: 00039
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
 p_id=>39
,p_name=>'RPO Search'
,p_alias=>'RPO-SEARCH'
,p_page_mode=>'MODAL'
,p_step_title=>'RPO Search'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p8KeyMap = {',
'    enter: (v) => {',
'        $("#enter").trigger("click");',
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
'}'))
,p_javascript_code_onload=>'mapP8Keys();'
,p_css_file_urls=>'#APP_FILES#css/ibi-css#MIN#.css'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Dialog-body {',
'    background-color: #056AC8;',
'}',
'',
'.col > .container {',
'    background-color: white;',
'    padding: 1rem 1.5rem 0 1.5rem !important;',
'}',
'',
'.w-100 {',
'    width: 100%;',
'}',
'',
'#header {',
'    padding: 1rem;',
'}',
'',
'.t-Form-labelContainer {',
'    text-align: left;',
'    padding-right: 1rem;',
'}',
'',
'.t-Form-inputContainer {',
'    width: 80%;',
'    max-width: 80%;',
'}',
'',
'.t-Dialog-body {',
'    padding: .50rem 0 0 0 !important;',
'}',
'',
'.p-1 {',
'    padding-left: .50rem !important;',
'    padding-bottom: .25rem;',
'}',
'',
'.bcolor-b {',
'    background-color: #056BC9;',
'}',
'',
'.hide {',
'    display: none;',
'}',
'',
'.text-red {',
'    color: red;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'640'
,p_dialog_max_width=>'640'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11736861497394634)
,p_plug_name=>'Header'
,p_region_name=>'header'
,p_plug_display_sequence=>10
,p_plug_grid_column_css_classes=>'p-1 header color-w'
,p_location=>null
,p_plug_source=>'Search'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11736915866394635)
,p_plug_name=>'Search Item'
,p_plug_display_sequence=>20
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11737210085394638)
,p_plug_name=>'Error Area'
,p_parent_plug_id=>wwv_flow_imp.id(11736915866394635)
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>'<span id="errorArea" class="hide text-red">Please fill in the search field</span>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11737395239394639)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(11736915866394635)
,p_button_name=>'SEARCH_BTN'
,p_button_static_id=>'enter'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Search Btn'
,p_warn_on_unsaved_changes=>null
,p_grid_column_css_classes=>'hide'
,p_grid_new_row=>'Y'
,p_grid_column_span=>4
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11737464991394640)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(11736915866394635)
,p_button_name=>'CLOSE_BTN'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Close Btn'
,p_warn_on_unsaved_changes=>null
,p_grid_column_css_classes=>'hide'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>4
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11737186774394637)
,p_name=>'P39_START_WITH'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(11736915866394635)
,p_prompt=>'<span style="font-size: 1.125rem;">Start with PO #: </span>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11737534006394641)
,p_name=>'Search Data'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11737395239394639)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11737643408394642)
,p_event_id=>wwv_flow_imp.id(11737534006394641)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var poNum = $v("P39_START_WITH");',
'var errorArea = document.getElementById("errorArea")',
'',
'if(!poNum) {',
'    errorArea.style.display = "block"',
'    document.getElementById("P39_START_WITH").focus();',
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11737778017394643)
,p_event_id=>wwv_flow_imp.id(11737534006394641)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
,p_attribute_01=>'P39_START_WITH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11737819884394644)
,p_name=>'Close Modal'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11737464991394640)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11737970802394645)
,p_event_id=>wwv_flow_imp.id(11737819884394644)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp.component_end;
end;
/
