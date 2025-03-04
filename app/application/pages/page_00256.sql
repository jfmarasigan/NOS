prompt --application/pages/page_00256
begin
--   Manifest
--     PAGE: 00256
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
 p_id=>256
,p_name=>'View Item Transfer History Search'
,p_alias=>'VIEW-ITEM-TRANSFER-HISTORY-SEARCH'
,p_page_mode=>'MODAL'
,p_step_title=>'Search'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p54KeyMap = {',
'',
'    enter : (v) => {',
'        $.event.trigger("Search");',
'    },',
'',
'    esc : (v) => {',
'        $("#c").trigger("click");',
'    }',
'}',
'',
'function mapP54Keys() {',
'    $(document).off(''keydown.p54keyevents'');',
'    $(document).on(''keydown.p54keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p54KeyMap[key]) {',
'            ev.preventDefault();',
'            p54KeyMap[key]();',
'        }',
'    });',
'}'))
,p_javascript_code_onload=>'mapP54Keys();'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.format-size{',
'    font-size: 1.01rem;',
'    font-family: Arial;',
'}',
'',
'.t-Form-labelContainer{',
'    text-align: left;',
'}',
'',
'.text_field{',
'    background-color: white;',
'}',
'',
'.err{',
'    color: red;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(92883997055924728)
,p_plug_name=>'Search'
,p_region_name=>'search'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>10
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71166394020396740)
,p_name=>'P256_UPC'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(92883997055924728)
,p_prompt=>'<p class="format-size">UPC:</p>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'format-size'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--preTextBlock'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71166422947396741)
,p_name=>'P256_ITEM_DESCRIPTION'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(92883997055924728)
,p_prompt=>'<p class="format-size">Item Description:</p>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'format-size'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--preTextBlock'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92886057957924837)
,p_name=>'P256_ITEM_NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(92883997055924728)
,p_prompt=>'<p class="format-size">Item Number:</p>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'format-size'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--preTextBlock'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(137957666382905227)
,p_name=>'P256_ERR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(92883997055924728)
,p_prompt=>'Err'
,p_source=>'Please fill out at least one field.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'err'
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(4381902469084273)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--normalDisplay'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(72373035869684764)
,p_name=>'Search'
,p_event_sequence=>30
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'Search'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72373503367684767)
,p_event_id=>wwv_flow_imp.id(72373035869684764)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var field = $v("P256_ITEM_NUMBER");',
'var field2 = $v("P256_UPC");',
'var field3 = $v("P256_ITEM_DESCRIPTION");',
'',
'if (!field && !field2 && !field3 && document.activeElement.id === ''P256_ITEM_DESCRIPTION'') {',
'    apex.message.showErrors({',
'        type: "error",',
'        location: "inline",',
'        pageItem: "P256_ITEM_NUMBER",',
'        message: "Please fill out at least one field."',
'    });',
'',
'    apex.message.showErrors({',
'        type: "error",',
'        location: "inline",',
'        pageItem: "P256_UPC",',
'        message: "Please fill out at least one field."',
'    });',
'',
'    apex.message.showErrors({',
'        type: "error",',
'        location: "inline",',
'        pageItem: "P256_ITEM_DESCRIPTION",',
'        message: "Please fill out at least one field."',
'    });',
'    // Highlight fields that are empty',
'    if (!field && !field2 && !field3) {',
'        $("#P256_ITEM_NUMBER").addClass("error-highlight");',
'        $("#P256_UPC").addClass("error-highlight");',
'        $("#P256_ITEM_DESCRIPTION").addClass("error-highlight");',
'    }',
'',
'    return false; // Prevent modal from closing',
'} else if (document.activeElement.id === ''P256_ITEM_NUMBER'' && document.activeElement.value === ''''){',
'    $("#P256_UPC").select();',
'    return false;',
'} else if (document.activeElement.id === ''P256_UPC'' && document.activeElement.value === ''''){',
'    $("#P256_ITEM_DESCRIPTION").select();',
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72374035350684768)
,p_event_id=>wwv_flow_imp.id(72373035869684764)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
,p_attribute_01=>'P256_ITEM_NUMBER,P256_UPC,P256_ITEM_DESCRIPTION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(72374483214684768)
,p_name=>'New'
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72374980555684768)
,p_event_id=>wwv_flow_imp.id(72374483214684768)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P256_ITEM_NUMBER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72490090532106902)
,p_event_id=>wwv_flow_imp.id(72374483214684768)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P256_ITEM_NUMBER,P256_UPC,P256_ITEM_DESCRIPTION'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'NULL'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72375477861684770)
,p_event_id=>wwv_flow_imp.id(72374483214684768)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("#P256_ITEM_NUMBER").select()'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72375999972684770)
,p_event_id=>wwv_flow_imp.id(72374483214684768)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P256_ERR'
);
wwv_flow_imp.component_end;
end;
/
