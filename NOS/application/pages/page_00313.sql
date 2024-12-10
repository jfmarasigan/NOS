prompt --application/pages/page_00313
begin
--   Manifest
--     PAGE: 00313
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
 p_id=>313
,p_name=>'Print Gift Certificate'
,p_alias=>'PRINT-GIFT-CERTIFICATE'
,p_page_mode=>'MODAL'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p6KeyMap = {',
'    enter: (v) => {',
'        $("#enter").trigger("click");',
'    }',
'}',
'',
'function mapP6Keys() {',
'    $(document).off(''keydown.p6keyevents'');',
'    $(document).on(''keydown.p6keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p6KeyMap[key]) {',
'            ev.preventDefault();',
'            p6KeyMap[key]();',
'        }',
'    });',
'}',
'',
'function customEvent(event, data){',
'    mapP6Keys();',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP6Keys();',
'',
'',
'setInputFilter($("#P313_COPIES"), function(value) {',
'    return /^\d*$/.test(value); // numbers only',
'}, "Invalid input. Values should be numbers only.");',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Dialog-header {',
'    background-color: #056AC8;',
'    padding: .5rem 0rem 0rem 1rem;',
'}',
'',
'.t-Dialog-body {',
'    padding-block-start: 0;',
'    padding-block-end: 0;',
'}',
'',
'.t-Dialog-bodyWrapperIn {',
'    overflow: hidden;',
'    background-color: #056AC8;',
'    color: white;',
'}',
'',
'.t-Region {',
'    margin-block-end: .1rem;',
'    color: white;',
'    font-size: 1.125rem;',
'}',
'',
'.t-Form-label {',
'    color: white;',
'    font-size: 1.125rem;',
'    padding-block-start: 0;',
'}',
'',
'.t-Form-labelContainer:has(#P313_COPIES_LABEL) {',
'    padding-block-end: var(--ut-field-padding-y, .5rem);',
'    padding-block-start: 0;',
'    text-align: center;',
'}',
'',
'.t-Form-itemWrapper:has(#P313_COPIES) {',
'    margin: auto;',
'    width: 40%;',
'}',
'',
'#P313_COPIES{',
'    text-align: center !important;',
'    font-size: 1.125rem;',
'}',
'',
'.hide {',
'    display: none;',
'}',
'',
'.error-msg {',
'    color: #FFD700;',
'    font-size: 0.8rem;',
'    padding-left: 1.5rem;',
'    padding-top: 0.1rem;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'135'
,p_dialog_width=>'300'
,p_dialog_max_width=>'300'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18630411166263550)
,p_plug_name=>'Title'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--accent1:t-Region--noUI:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_plug_source=>'Gift Certificate'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(34716990731647729)
,p_plug_name=>'Error display'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>80
,p_location=>null
,p_plug_source=>'<span id="errorArea" class="hide error-msg">Please input number of copies.</span>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(37006933418700406)
,p_plug_name=>'Input_field'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>90
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19468368883761264)
,p_button_sequence=>100
,p_button_name=>'Print'
,p_button_static_id=>'enter'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Print'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'hide'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19465442672761256)
,p_name=>'P313_COPIES'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(37006933418700406)
,p_prompt=>'No of copies will be printed:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>5
,p_colspan=>7
,p_grid_column=>3
,p_field_template=>wwv_flow_imp.id(4382138690084278)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34716505129647725)
,p_name=>'P313_SELECTED_GC_NO'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34717564872647735)
,p_name=>'P313_IS_DONATION'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34717913782647739)
,p_name=>'P313_PRINT_ID'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34718266151647742)
,p_name=>'P313_STATUS_ID'
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38242380254771104)
,p_name=>'P313_PREPARED_URL'
,p_item_sequence=>70
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(37007284968700409)
,p_computation_sequence=>10
,p_computation_item=>'P313_COPIES'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(34716685323647726)
,p_name=>'Enter'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(19468368883761264)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34716759435647727)
,p_event_id=>wwv_flow_imp.id(34716685323647726)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'Validate number of copies'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var errorArea = document.getElementById("errorArea")',
'',
'if ($(''#P313_COPIES'').val() && $(''#P313_COPIES'').val() > 0) {',
'    errorArea.style.display = "none"',
'    return true;',
'} else {',
'    errorArea.style.display = "block"',
'    document.getElementById("P313_COPIES").focus();',
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37011162656700448)
,p_event_id=>wwv_flow_imp.id(34716685323647726)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_name=>'Trigger spinner'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.widget.waitPopup();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34717695761647736)
,p_event_id=>wwv_flow_imp.id(34716685323647726)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_name=>'Set donation type'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P313_IS_DONATION'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'l_return_value  VARCHAR(1) := NULL;',
'',
'BEGIN',
'',
'    IF LENGTH(:P313_SELECTED_GC_NO) > 0 THEN',
'    ',
'        SELECT DONATION INTO l_return_value',
'        FROM NPM013 npm013',
'        WHERE (SELECT npt020.GC_TYPE_ID',
'               FROM NPT020 npt020',
'               WHERE npt020.GIFT_CERTIFICATE_ID = :P313_SELECTED_GC_NO) = npm013.GC_TYPE_ID;',
'',
'    END IF;',
'',
'    RETURN l_return_value;',
'',
'END;'))
,p_attribute_07=>'P313_SELECTED_GC_NO'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34718127491647741)
,p_event_id=>wwv_flow_imp.id(34716685323647726)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'Y'
,p_name=>'Set new PRINT_ID'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P313_PRINT_ID'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'l_return_value  NUMBER := NULL;',
'',
'BEGIN',
'',
'    SELECT (NVL(MAX(npt020.PRINT_ID), 0) + 1) INTO l_return_value',
'    FROM NPT020 npt020;',
'',
'    :P313_PRINT_ID := l_return_value;',
'',
'    RETURN l_return_value;',
'',
'END;'))
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34718019275647740)
,p_event_id=>wwv_flow_imp.id(34716685323647726)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_name=>'Update selected GC'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'BEGIN',
'    UPDATE NPT020',
'        SET PRINT_ID = :P313_PRINT_ID,',
'            GC_STATUS_ID = 1,',
'            USER_UPDATE = :app_user, ',
'            DATE_UPDATED = SYSDATE,',
'            PRINT_DATE = SYSDATE',
'        WHERE GIFT_CERTIFICATE_ID = :P313_SELECTED_GC_NO;',
'END;'))
,p_attribute_02=>'P313_SELECTED_GC_NO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34717842701647738)
,p_event_id=>wwv_flow_imp.id(34716685323647726)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_name=>'Insert new rows'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_copies NUMBER;',
'    counter NUMBER := 1;',
'BEGIN',
'    l_copies := TO_NUMBER(:P313_COPIES);',
'    LOOP',
'        IF counter < l_copies THEN',
'            INSERT INTO NPT020 (',
'                GIFT_CERTIFICATE_ID,',
'                GC_TYPE_ID, AMOUNT, ISSUE_DATE, EXPIRY_DATE, DESCRIPTION_1, ',
'                DESCRIPTION_2, THIS_ENTITLES, REMARKS, BEST_WISHES, RECIPIENT, EVENT, ',
'                BALANCE, GC_STATUS_ID, USER_CREATED, DATE_CREATED, PRINT_ID',
'            )',
'',
'            SELECT (SELECT NVL(MAX(GIFT_CERTIFICATE_ID), 0) + 1 FROM NPT020),',
'                GC_TYPE_ID, AMOUNT, ISSUE_DATE, EXPIRY_DATE, DESCRIPTION_1, ',
'                DESCRIPTION_2, THIS_ENTITLES, REMARKS, BEST_WISHES, RECIPIENT, EVENT, ',
'                BALANCE, 1, :app_user, SYSDATE, :P313_PRINT_ID',
'            FROM NPT020',
'            WHERE GIFT_CERTIFICATE_ID = :P313_SELECTED_GC_NO;',
'        ',
'        ELSE',
'            EXIT;',
'        END IF;',
'        counter := counter + 1;',
'    END LOOP;',
'',
'END;'))
,p_attribute_02=>'P313_SELECTED_GC_NO,P313_COPIES'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34717429673647734)
,p_event_id=>wwv_flow_imp.id(34716685323647726)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v("P313_IS_DONATION") === "Y") {',
'    generateReport("GC_DONATION", "pdf", { ',
'        fileName: "Gift_Certificate_Print_Id_" + $v("P313_PRINT_ID") + ".pdf",',
'        mode : "print",',
'        parameters : {',
'            P_SELECTED_PRINT_ID : $v("P313_PRINT_ID")',
'        },',
'        printCallback : function () {',
'            $("#apex_wait_popup").remove();',
'            $("#apex_wait_overlay").remove();',
'            $(".u-Processing").remove();',
'            apex.navigation.dialog.close(true);',
'        },',
'        spinnerEnabled : false',
'    });',
'} else {',
'    generateReport("GC_NORMAL", "pdf", { ',
'        fileName: "Gift_Certificate_Print_Id_" + $v("P313_PRINT_ID") + ".pdf",',
'        mode : "print",',
'        parameters : {',
'            P_SELECTED_PRINT_ID : $v("P313_PRINT_ID")',
'        },',
'        printCallback : function () {',
'            $("#apex_wait_popup").remove();',
'            $("#apex_wait_overlay").remove();',
'            $(".u-Processing").remove();',
'            apex.navigation.dialog.close(true);',
'        },',
'        spinnerEnabled : false',
'    });',
'}'))
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'$("#P313_STATUS_ID").val() !== 4 && $("#P313_STATUS_ID").val() !== 5'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19469904593761268)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>19469904593761268
);
wwv_flow_imp.component_end;
end;
/
