prompt --application/pages/page_00031
begin
--   Manifest
--     PAGE: 00031
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
 p_id=>31
,p_name=>'POS Cashiering - Enter Customer'
,p_alias=>'POS-CASHIERING-ENTER-CUSTOMER'
,p_page_mode=>'MODAL'
,p_step_title=>'Customer Name'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let lastSelected = null;',
'const p31KeyMap = {',
'    escape : (v) => {',
'        $("#esc").trigger("click");',
'    },',
'    enter: (v) => {',
'        $("#enter-customer").trigger("click");',
'    }',
'}',
'',
'function mapP31Keys() {',
'    $(document).off(''keydown.p31keyevents'');',
'    $(document).on(''keydown.p31keyevents'', (ev) => {',
'        console.log(`KeyboardEvent: key=''${ev.key}'' | code=''${ev.code}''`);',
'        var key = ev.key?.toLowerCase();',
'        if (p31KeyMap[key]) {',
'            ev.preventDefault();',
'            p31KeyMap[key]();',
'        }',
'    });',
'}'))
,p_javascript_code_onload=>'mapP31Keys();'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.hiddenbtn {',
'    display: none;',
'}',
'',
'.t-Form-label {',
'    font-size: 1.125rem;',
'    white-space: nowrap;',
'    ',
'}',
'',
'#P31_CUSTOMER {',
'    --a-field-input-flex-grow: .9;',
'}',
'',
'#P31_CUSTOMER .apex-item-text {',
'    font-size: 1.125rem;',
'}',
'',
'#P31_CUSTOMER_CONTAINER .t-Form-labelContainer {',
'    align-content: center;',
'}'))
,p_step_template=>wwv_flow_imp.id(4231087530083996)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'150'
,p_dialog_width=>'640px'
,p_dialog_attributes=>'closeOnEscape: false'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(17276035383462621)
,p_button_sequence=>30
,p_button_name=>'Enter'
,p_button_static_id=>'enter-customer'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Enter'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'hiddenbtn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(17276405572462625)
,p_button_sequence=>40
,p_button_name=>'Close'
,p_button_static_id=>'esc'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Close'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'hiddenbtn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17274811939462609)
,p_name=>'P31_CUSTOMER'
,p_item_sequence=>10
,p_prompt=>'DBA:'
,p_display_as=>'NATIVE_SELECT_ONE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DBA, DBA A ',
'  FROM NPT009'))
,p_lov_cascade_parent_items=>'P31_CUSTOMER'
,p_ajax_items_to_submit=>'P31_CUSTOMER'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'CONTAINS'
,p_attribute_02=>'N'
,p_attribute_04=>'N'
,p_attribute_09=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18258312494008511)
,p_name=>'P31_URL'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(17276183668462622)
,p_name=>'Enter Customer'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(17276035383462621)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17276299763462623)
,p_event_id=>wwv_flow_imp.id(17276183668462622)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var field1 = $v("P31_CUSTOMER");',
'',
'if (!field1) {',
'    apex.message.showErrors({',
'        type: "error",',
'        location: "inline",',
'        pageItem: "P31_CUSTOMER",',
'        message: "Please fill in at least one field."',
'    });',
'',
'    if (!field1) {',
'        $("#P31_CUSTOMER").addClass("error-highlight");',
'    }',
'',
'    return false; ',
'}'))
,p_build_option_id=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25492759320440433)
,p_event_id=>wwv_flow_imp.id(17276183668462622)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    apex_collection.add_member(',
'                p_collection_name => ''ORDERS'',',
'                p_c001 => NVL(:P31_CUSTOMER, ''Cash Customer'')',
'                );',
'END;',
''))
,p_attribute_02=>'P31_CUSTOMER'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17276335068462624)
,p_event_id=>wwv_flow_imp.id(17276183668462622)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
,p_attribute_01=>'P31_CUSTOMER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(17276531555462626)
,p_name=>'Cancel Dialog'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(17276405572462625)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72265065764359931)
,p_event_id=>wwv_flow_imp.id(17276531555462626)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P31_URL := apex_page.get_url(',
'       p_page   => 305',
'     );',
'END;'))
,p_attribute_03=>'P31_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72265195499359932)
,p_event_id=>wwv_flow_imp.id(17276531555462626)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P31_URL");',
'apex.navigation.redirect(url);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18259903040008527)
,p_name=>'Focus'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18260016742008528)
,p_event_id=>wwv_flow_imp.id(18259903040008527)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P31_CUSTOMER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18260235155008530)
,p_name=>'Clear Field'
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18260327394008531)
,p_event_id=>wwv_flow_imp.id(18260235155008530)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P31_CUSTOMER'
);
wwv_flow_imp.component_end;
end;
/
