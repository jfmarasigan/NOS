prompt --application/pages/page_00162
begin
--   Manifest
--     PAGE: 00162
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
 p_id=>162
,p_name=>'Utility Search'
,p_alias=>'UTILITY-SEARCH'
,p_page_mode=>'MODAL'
,p_step_title=>'Search'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p162KeyMap = {',
'    escape : (v) => {',
'        $("#close").click();',
'    },',
'    enter: (v) => {',
'        $("#search").trigger("click");',
'    }',
'',
'}',
'',
'',
'function mapP162Keys() {',
'    $(document).off(''keydown.p162keyevents'');',
'    $(document).on(''keydown.p162keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p162KeyMap[key]) {',
'            ev.preventDefault();',
'            p162KeyMap[key]();',
'        }',
'    });',
'}',
'',
'$x(''P162_CODE'').focus();',
'',
''))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP162Keys();',
'',
''))
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
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41906183382726649)
,p_plug_name=>'Search'
,p_region_name=>'search-form'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>20
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(45567042258562509)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>30
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(34736963734922573)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(45567042258562509)
,p_button_name=>'Search'
,p_button_static_id=>'search'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Enter - Search'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'hiddenbtn'
,p_grid_new_row=>'Y'
,p_grid_column_span=>3
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(34737313789922576)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(45567042258562509)
,p_button_name=>'Close'
,p_button_static_id=>'close'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Esc - Close'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'hiddenbtn'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>3
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41906924177726706)
,p_name=>'P162_CODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(41906183382726649)
,p_prompt=>'Go To Code:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>10
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--postTextBlock:margin-right-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
,p_attribute_06=>'UPPER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42170573504350857)
,p_name=>'P162_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(41906183382726649)
,p_prompt=>'Name:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>14
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--postTextBlock:margin-right-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(34737914469922598)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(34737313789922576)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34738442655922601)
,p_event_id=>wwv_flow_imp.id(34737914469922598)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(34738825859922601)
,p_name=>'Search Enter'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(34736963734922573)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34739323840922603)
,p_event_id=>wwv_flow_imp.id(34738825859922601)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let field1 = $v("P162_CODE");',
'let field2 = $v("P162_NAME");',
'',
'',
'if (!field1 && !field2) {',
'    apex.message.showErrors({',
'        type: "error",',
'        location: "inline",',
'        pageItem: "P162_CODE",',
'        message: "Please fill in at least one field."',
'    });',
'    ',
'    apex.message.showErrors({',
'        type: "error",',
'        location: "inline",',
'        pageItem: "P162_NAME",',
'        message: "Please fill in at least one field."',
'    });',
'',
'',
'    if (!field1) {',
'        $("#P162_CODE").addClass("error-highlight");',
'    }',
'    if (!field2) {',
'        $("#P162_NAME").addClass("error-highlight");',
'    }',
'',
'}',
''))
,p_build_option_id=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34739812761922603)
,p_event_id=>wwv_flow_imp.id(34738825859922601)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
,p_attribute_01=>'P162_CODE,P162_NAME'
);
wwv_flow_imp.component_end;
end;
/
