prompt --application/pages/page_00054
begin
--   Manifest
--     PAGE: 00054
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
 p_id=>54
,p_name=>'Transfer Search'
,p_alias=>'TRANSFER-SEARCH'
,p_page_mode=>'MODAL'
,p_step_title=>'Search'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p54KeyMap = {',
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
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20512585409240116)
,p_plug_name=>'Search'
,p_region_name=>'search'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>10
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20514060618240144)
,p_name=>'P54_START_WITH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(20512585409240116)
,p_prompt=>'<p class="format-size">Start with Transfer ID:</p>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'format-size'
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21215304931437951)
,p_name=>'P54_PREPARED_URL'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(15249212988369629)
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
 p_id=>wwv_flow_imp.id(18921229762729230)
,p_event_id=>wwv_flow_imp.id(15249212988369629)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var field = $v("P54_START_WITH");',
'',
'if (!field) {',
'    apex.message.showErrors({',
'        type: "error",',
'        location: "inline",',
'        pageItem: "P54_START_WITH",',
'        message: "Please fill out the field."',
'    });',
'    // Highlight fields that are empty',
'    if (!field) {',
'        $("#P54_START_WITH").addClass("error-highlight");',
'    }',
'',
'    return false; // Prevent modal from closing',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18920383591729221)
,p_event_id=>wwv_flow_imp.id(15249212988369629)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
,p_attribute_01=>'P54_START_WITH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(15249604694369633)
,p_name=>'New'
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15249779621369634)
,p_event_id=>wwv_flow_imp.id(15249604694369633)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P54_START_WITH'
);
wwv_flow_imp.component_end;
end;
/
