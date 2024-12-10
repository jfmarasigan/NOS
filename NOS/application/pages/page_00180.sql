prompt --application/pages/page_00180
begin
--   Manifest
--     PAGE: 00180
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
 p_id=>180
,p_name=>'Bank Utility Search'
,p_alias=>'BANK-UTILITY-SEARCH'
,p_page_mode=>'MODAL'
,p_step_title=>'Search'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p180KeyMap = {',
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
'function mapP180Keys() {',
'    $(document).off(''keydown.p180keyevents'');',
'    $(document).on(''keydown.p180keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p180KeyMap[key]) {',
'            ev.preventDefault();',
'            p180KeyMap[key]();',
'        }',
'    });',
'}',
'',
'$x(''P180_CODE'').focus();',
'',
''))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP180Keys();',
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
 p_id=>wwv_flow_imp.id(83177615951315081)
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
 p_id=>wwv_flow_imp.id(86838474827150941)
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
 p_id=>wwv_flow_imp.id(41272997017588459)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(86838474827150941)
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
 p_id=>wwv_flow_imp.id(41273390023588460)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(86838474827150941)
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
 p_id=>wwv_flow_imp.id(40584797218970227)
,p_name=>'P180_ROUTE_NO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(83177615951315081)
,p_prompt=>'Route No.:'
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(83178847893315160)
,p_name=>'P180_CODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(83177615951315081)
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(83442497219939311)
,p_name=>'P180_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(83177615951315081)
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(41273973293588475)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(41273390023588460)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41274414691588478)
,p_event_id=>wwv_flow_imp.id(41273973293588475)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(41274866169588478)
,p_name=>'Search Enter'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(41272997017588459)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41275336994588478)
,p_event_id=>wwv_flow_imp.id(41274866169588478)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let field1 = $v("P180_CODE");',
'let field2 = $v("P180_NAME");',
'',
'',
'if (!field1 && !field2) {',
'    apex.message.showErrors({',
'        type: "error",',
'        location: "inline",',
'        pageItem: "P180_CODE",',
'        message: "Please fill in at least one field."',
'    });',
'    ',
'    apex.message.showErrors({',
'        type: "error",',
'        location: "inline",',
'        pageItem: "P180_NAME",',
'        message: "Please fill in at least one field."',
'    });',
'',
'',
'    if (!field1) {',
'        $("#P180_CODE").addClass("error-highlight");',
'    }',
'    if (!field2) {',
'        $("#P180_NAME").addClass("error-highlight");',
'    }',
'',
'}',
''))
,p_build_option_id=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41275843102588479)
,p_event_id=>wwv_flow_imp.id(41274866169588478)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
,p_attribute_01=>'P180_CODE,P180_NAME,P180_ROUTE_NO'
);
wwv_flow_imp.component_end;
end;
/
