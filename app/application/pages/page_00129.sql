prompt --application/pages/page_00129
begin
--   Manifest
--     PAGE: 00129
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
 p_id=>129
,p_name=>'Charge COD Quotation - Additional DIscount'
,p_alias=>'CHARGE-COD-QUOTATION-ADDITIONAL-DISCOUNT'
,p_page_mode=>'MODAL'
,p_step_title=>'Additional DIscount'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p129KeyMap = {',
'    enter: (v) => {',
'        $("#enter").trigger("click");',
'    },',
'    escape: (v) => {',
'        $("#esc").trigger("click");',
'    }',
'}',
'',
'function mapP129Keys() {',
'    $(document).off(''keydown.p129keyevents'');',
'    $(document).on(''keydown.129keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p129KeyMap[key]) {',
'            ev.preventDefault();',
'            p129KeyMap[key]();',
'        }',
'    });',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP129Keys();',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Dialog-header {',
'    background-color: #046AC8;',
'    padding: .5rem 0rem 0rem 1rem;',
'}',
'',
'.t-Dialog-body {',
'    padding-block-start: var(--ut-dialog-padding-y, .5rem);',
'    padding-inline-start: var(--ut-dialog-padding-x, .5rem);',
'    color: white;',
'}',
'',
'.t-Dialog-bodyWrapperIn {',
'    overflow: hidden;',
'    background-color: #046BC8;',
'    color: white;',
'}',
'',
'.t-Region {',
'    color: white;',
'    font-size: 1.5rem;',
'    margin-bottom: .4rem;',
'}',
'',
'.ui-dialog-titlebar {',
'    display: none !important;',
'}',
'',
'.hide {',
'    display: none;',
'}',
'',
'#P129_TYPE{',
'    font-size: 1.125rem;',
'}',
'',
'#P129_AMOUNT{',
'    font-size: 1.125rem;',
'}',
'',
'#P129_REASON{',
'    font-size: 1.125rem;',
'}',
'',
'.t-Form-label {',
'    font-size: 1.125rem;',
'    color: white;',
'    font-weight: 700;',
'    white-space: nowrap;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'400px'
,p_dialog_max_width=>'400px'
,p_dialog_attributes=>'closeOnEscape:false'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66390746561676301)
,p_button_sequence=>70
,p_button_name=>'SEARCH_BTN'
,p_button_static_id=>'enter'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Search'
,p_warn_on_unsaved_changes=>null
,p_grid_column_css_classes=>'hide'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66391186267676303)
,p_button_sequence=>80
,p_button_name=>'CLOSE_BTN'
,p_button_static_id=>'esc'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Close'
,p_warn_on_unsaved_changes=>null
,p_grid_column_css_classes=>'hide'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65593502008268718)
,p_name=>'P129_AMOUNT'
,p_item_sequence=>50
,p_prompt=>'Amount:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(4382365997084278)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65593673288268719)
,p_name=>'P129_REASON'
,p_item_sequence=>60
,p_prompt=>'Reason:'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68003763194073916)
,p_name=>'P129_TOTAL'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68004582247073924)
,p_name=>'P129_FINAL_TOTAL'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(198364013341407964)
,p_name=>'P129_TYPE'
,p_item_sequence=>40
,p_prompt=>'Type:'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>'STATIC:Flat;Flat,Percent;Percent'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(4382365997084278)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'Y'
,p_attribute_05=>'7'
,p_attribute_09=>'1'
,p_attribute_10=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66392214179676385)
,p_name=>'Search Table'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(66390746561676301)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66392711312676389)
,p_event_id=>wwv_flow_imp.id(66392214179676385)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P129_TYPE = ''Percent'' THEN',
'        :P129_FINAL_TOTAL := :P129_TOTAL - (:P129_TOTAL * (:P129_AMOUNT / 100)); ',
'    ELSIF :P129_TYPE = ''Flat'' THEN',
'        :P129_FINAL_TOTAL := :P129_AMOUNT; ',
'    END IF;',
'',
'    apex_collection.add_member(',
'        p_collection_name => ''QUOTATION_ADDITIONAL'',',
'        p_c001 => :P129_TYPE,',
'        p_c002 => :P129_REASON,',
'        p_n001 => NVL(:P129_FINAL_TOTAL, 0)',
'    );',
'END;',
''))
,p_attribute_02=>'P129_TYPE,P129_AMOUNT,P129_TOTAL,P129_REASON,P129_TOTAL,P129_FINAL_TOTAL'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66393229144676389)
,p_event_id=>wwv_flow_imp.id(66392214179676385)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66393636119676389)
,p_name=>'Set Values'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P129_CUSTOMER_DBA'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66394101739676390)
,p_event_id=>wwv_flow_imp.id(66393636119676389)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Set Point Person'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P129_POINT_PERSON'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'no_data_in_file EXCEPTION;',
'l_return_value  VARCHAR(40) := NULL;',
'',
'BEGIN',
'    BEGIN',
'',
'        IF LENGTH(:P129_CUSTOMER_DBA) > 0 THEN',
'',
'            SELECT NVL(npt009.CONTACT_PERSON, '''') INTO l_return_value',
'            FROM NPT009 npt009',
'            WHERE npt009.DBA = :P129_CUSTOMER_DBA;',
'',
'        END IF;',
'',
'        EXCEPTION',
'            WHEN no_data_in_file THEN',
'                l_return_value := '''';',
'            WHEN OTHERS THEN ',
'                l_return_value := l_return_value;',
'',
'    END;',
'',
'    RETURN l_return_value;',
'END;'))
,p_attribute_07=>'P129_CUSTOMER_DBA'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P129_CUSTOMER_DBA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66394670259676390)
,p_event_id=>wwv_flow_imp.id(66393636119676389)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'Set Tel No'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P129_TELEPHONE_NUMBER'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'no_data_in_file EXCEPTION;',
'l_return_value  VARCHAR(40) := NULL;',
'',
'BEGIN',
'    BEGIN',
'',
'        IF LENGTH(:P129_CUSTOMER_DBA) > 0 THEN',
'',
'            SELECT NVL(npt009.BILLING_CONTACTA, '''') INTO l_return_value',
'            FROM NPT009 npt009',
'            WHERE npt009.DBA = :P129_CUSTOMER_DBA;',
'',
'        END IF;',
'',
'        EXCEPTION',
'            WHEN no_data_in_file THEN',
'                l_return_value := '''';',
'            WHEN OTHERS THEN ',
'                l_return_value := l_return_value;',
'',
'    END;',
'',
'    RETURN l_return_value;',
'END;'))
,p_attribute_07=>'P129_CUSTOMER_DBA'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P129_CUSTOMER_DBA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66395124958676392)
,p_event_id=>wwv_flow_imp.id(66393636119676389)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'Set Fax No'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P129_FAX_NUMBER'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'no_data_in_file EXCEPTION;',
'l_return_value  VARCHAR(40) := NULL;',
'',
'BEGIN',
'    BEGIN',
'',
'        IF LENGTH(:P129_CUSTOMER_DBA) > 0 THEN',
'',
'            SELECT NVL(npt009.BILLING_FAX, '''') INTO l_return_value',
'            FROM NPT009 npt009',
'            WHERE npt009.DBA = :P129_CUSTOMER_DBA;',
'',
'        END IF;',
'',
'        EXCEPTION',
'            WHEN no_data_in_file THEN',
'                l_return_value := '''';',
'            WHEN OTHERS THEN ',
'                l_return_value := l_return_value;',
'',
'    END;',
'',
'    RETURN l_return_value;',
'END;'))
,p_attribute_07=>'P129_CUSTOMER_DBA'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P129_CUSTOMER_DBA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66395693315676392)
,p_event_id=>wwv_flow_imp.id(66393636119676389)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>'Set Email'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P129_EMAIL'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'no_data_in_file EXCEPTION;',
'l_return_value  VARCHAR(40) := NULL;',
'',
'BEGIN',
'    BEGIN',
'',
'        IF LENGTH(:P129_CUSTOMER_DBA) > 0 THEN',
'',
'            SELECT NVL(npt009.BILLING_EMAIL, '''') INTO l_return_value',
'            FROM NPT009 npt009',
'            WHERE npt009.DBA = :P129_CUSTOMER_DBA;',
'',
'        END IF;',
'',
'        EXCEPTION',
'            WHEN no_data_in_file THEN',
'                l_return_value := '''';',
'            WHEN OTHERS THEN ',
'                l_return_value := l_return_value;',
'',
'    END;',
'',
'    RETURN l_return_value;',
'END;'))
,p_attribute_07=>'P129_CUSTOMER_DBA'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P129_CUSTOMER_DBA'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(65594084253268723)
,p_name=>'Cancel'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(66391186267676303)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65594147731268724)
,p_event_id=>wwv_flow_imp.id(65594084253268723)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66391803293676382)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>66391803293676382
);
wwv_flow_imp.component_end;
end;
/
