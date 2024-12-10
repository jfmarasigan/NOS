prompt --application/pages/page_00023
begin
--   Manifest
--     PAGE: 00023
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
 p_id=>23
,p_name=>'IIB Search'
,p_alias=>'IIB-SEARCH'
,p_page_mode=>'MODAL'
,p_step_title=>'IIB Search'
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
'}'))
,p_javascript_code_onload=>'mapP7Keys();'
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
'    text-align: right;',
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
'}',
'',
'.ui-widget-overlay {',
'    background: none !important;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'230'
,p_dialog_width=>'640'
,p_dialog_max_width=>'640'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9471760274968208)
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
 p_id=>wwv_flow_imp.id(9473168646968222)
,p_plug_name=>'Search Item'
,p_plug_display_sequence=>20
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10468422119962431)
,p_plug_name=>'Error Area'
,p_parent_plug_id=>wwv_flow_imp.id(9473168646968222)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--hiddenOverflow:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>'<span id="errorArea" class="hide text-red">Please fill in at least one search field</span>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9473599691968226)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(9473168646968222)
,p_button_name=>'SEARCH_BTN'
,p_button_static_id=>'enter'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Enter- Search'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'bcolor-b color-w'
,p_grid_column_css_classes=>'hide'
,p_grid_new_row=>'Y'
,p_grid_column_span=>4
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9475171576968242)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(9473168646968222)
,p_button_name=>'CLOSE_BTN'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Esc - Close'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'bcolor-b color-w'
,p_grid_column_css_classes=>'hide'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>4
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9473278552968223)
,p_name=>'P23_ITEM_NUM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(9473168646968222)
,p_prompt=>'<span style="font-size: 1.125rem;">Search for Item No : </span>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9473300937968224)
,p_name=>'P23_UPC'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(9473168646968222)
,p_prompt=>'<span style="font-size : 1.125rem;">UPC : </span>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9473455859968225)
,p_name=>'P23_ITEM_DESC'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(9473168646968222)
,p_prompt=>'<span style="font-size: 1.125rem;">Item Desc : </span>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:margin-bottom-none'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9836728080150904)
,p_name=>'Close Modal'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(9475171576968242)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9836854346150905)
,p_event_id=>wwv_flow_imp.id(9836728080150904)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9838114063150918)
,p_name=>'Search Table'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(9473599691968226)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9838259488150919)
,p_event_id=>wwv_flow_imp.id(9838114063150918)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var itemNum = $v("P23_ITEM_NUM");',
'var upc = $v("P23_UPC");',
'var itemDesc = $v("P23_ITEM_DESC");',
'var errorArea = document.getElementById("errorArea")',
'',
'if(!itemNum && !upc && !itemDesc) {',
'    errorArea.style.display = "block"',
'    document.getElementById("P23_ITEM_NUM").focus();',
'    return false;',
'}',
'',
'',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9839289435150929)
,p_event_id=>wwv_flow_imp.id(9838114063150918)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
,p_attribute_01=>'P23_ITEM_NUM,P23_UPC,P23_ITEM_DESC'
);
wwv_flow_imp.component_end;
end;
/
