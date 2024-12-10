prompt --application/pages/page_00037
begin
--   Manifest
--     PAGE: 00037
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
 p_id=>37
,p_name=>'Update Inventory Balance Search'
,p_alias=>'UPDATE-INVENTORY-BALANCE-SEARCH'
,p_page_mode=>'MODAL'
,p_step_title=>'Search'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p37KeyMap = {',
'    enter : (v) => {',
'        if($v("P37_ITEM_NUM") != '''' || $v("P37_UPC") != '''' || $v("P37_DESCRIPTION") != ''''){',
'            $.event.trigger("Search");',
'        } else {',
'            if($v("P37_NEXT_ITEM") == "SEARCH"){',
'                apex.item("P37_ITEM_NUM").setFocus();',
'                apex.item("P37_ERR_MESSAGE").show();',
'            } else {',
'                jQuery($v("P37_NEXT_ITEM")).trigger("focus");',
'            }',
'        }',
'    },',
'}',
'',
'function mapP37Keys() {',
'    $(document).off(''keydown.p37keyevents'');',
'    $(document).on(''keydown.p37keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p37KeyMap[key]) {',
'            ev.preventDefault();',
'            p37KeyMap[key]();',
'        }',
'    });',
'}'))
,p_javascript_code_onload=>'mapP37Keys();'
,p_css_file_urls=>'#APP_FILES#css/p37_css#MIN#.css'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9518298922251334)
,p_plug_name=>'Search'
,p_title=>'Search'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>10
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9518369369251335)
,p_name=>'P37_ITEM_NUM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(9518298922251334)
,p_prompt=>'<p class="format-size">Item Number:</p>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'format-size'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_warn_on_unsaved_changes=>'I'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9518405753251336)
,p_name=>'P37_UPC'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(9518298922251334)
,p_prompt=>'<p class="format-size">UPC:</p>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'format-size'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_warn_on_unsaved_changes=>'I'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9518571292251337)
,p_name=>'P37_DESCRIPTION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(9518298922251334)
,p_prompt=>'<p class="format-size">Item Desc:</p>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'format-size'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_warn_on_unsaved_changes=>'I'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10218672094449126)
,p_name=>'P37_PREPARED_URL'
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11424084434400409)
,p_name=>'P37_NEXT_ITEM'
,p_item_sequence=>20
,p_item_default=>'#P26_UPC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11425032511400419)
,p_name=>'P37_ERR_MESSAGE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9518298922251334)
,p_item_default=>'Please fill up at least one field'
,p_prompt=>'Err Message'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'error-text'
,p_field_template=>wwv_flow_imp.id(4381902469084273)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_05=>'HTML'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11424119163400410)
,p_name=>'focus'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P37_ITEM_NUM'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusin'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11424203842400411)
,p_event_id=>wwv_flow_imp.id(11424119163400410)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P37_NEXT_ITEM'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'#P37_UPC'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11424597379400414)
,p_name=>'focus 2'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P37_UPC'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusin'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11424637383400415)
,p_event_id=>wwv_flow_imp.id(11424597379400414)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P37_NEXT_ITEM'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'#P37_DESCRIPTION'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11424720353400416)
,p_name=>'focus 3'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P37_DESCRIPTION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusin'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11424899542400417)
,p_event_id=>wwv_flow_imp.id(11424720353400416)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P37_NEXT_ITEM'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'SEARCH'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11425408262400423)
,p_name=>'focus on first field'
,p_event_sequence=>70
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11425566461400424)
,p_event_id=>wwv_flow_imp.id(11425408262400423)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P37_ITEM_NUM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11425682384400425)
,p_event_id=>wwv_flow_imp.id(11425408262400423)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P37_ERR_MESSAGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13779283051768150)
,p_name=>'Search'
,p_event_sequence=>80
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'Search'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14053708640524201)
,p_event_id=>wwv_flow_imp.id(13779283051768150)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P37_ITEM_NUM IS NULL AND :P37_UPC IS NULL AND :P37_DESCRIPTION IS NULL THEN',
'        :P37_PREPARED_URL := '''';',
'    ELSE',
'        :P37_PREPARED_URL := apex_page.get_url(',
'           p_page   => 25,',
'           p_items  => ''P25_ITEM_NUM_QUERY,P25_UPC_QUERY,P25_ITEM_DESC_QUERY,P25_PREVIOUS_PAGE'',',
'           p_values => :P37_ITEM_NUM ||'',''|| :P37_UPC ||'',''|| :P37_DESCRIPTION || '','' || 37',
'         );',
'',
'        :P37_ITEM_NUM := null;',
'        :P37_UPC := null;',
'        :P37_DESCRIPTION := null;',
'    END IF;',
'END;'))
,p_attribute_02=>'P37_ITEM_NUM,P37_UPC,P37_DESCRIPTION'
,p_attribute_03=>'P37_PREPARED_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14053838432524202)
,p_event_id=>wwv_flow_imp.id(13779283051768150)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if($v("P37_PREPARED_URL") == ''''){',
'    $v("P37_PREPARED_URL").show();',
'} else {',
'    let url = $v("P37_PREPARED_URL");',
'    apex.navigation.redirect(url);',
'}'))
);
wwv_flow_imp.component_end;
end;
/
