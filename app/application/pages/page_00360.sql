prompt --application/pages/page_00360
begin
--   Manifest
--     PAGE: 00360
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
 p_id=>360
,p_name=>'Gift Certificate Print Options Modal'
,p_alias=>'GIFT-CERTIFICATE-PRINT-OPTIONS-MODAL'
,p_page_mode=>'MODAL'
,p_step_title=>'Gift Certificate Print Options Modal'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p6KeyMap = {',
'    a: (v) => {',
'        $("#a").trigger("click");',
'    },',
'    b: (v) => {',
'        $("#b").trigger("click");',
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
,p_javascript_code_onload=>'mapP6Keys();'
,p_css_file_urls=>'#APP_FILES#css/cmn#MIN#.css'
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
'    font-size: 1.5rem;',
'}',
'',
'.t-Region-body {',
'    height: 2rem;',
'}',
'',
'.t-Form-label {',
'    color: white;',
'    font-size: 1.125rem;',
'    padding-block-start: 0;',
'}',
'',
'.btns{',
'    font-size: 1.125rem;',
'    color:white;',
'    text-align: left;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(46458516864673111)
,p_plug_name=>'Title'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--accent1:t-Region--noUI:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_plug_source=>'Printing Options'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(46805997431124065)
,p_button_sequence=>80
,p_button_name=>'DOTMATRIX'
,p_button_static_id=>'a'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>A</u> - Dotmatrix'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(46806304471124068)
,p_button_sequence=>90
,p_button_name=>'GRAPHIC_PRINTER'
,p_button_static_id=>'b'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>B</u> - Graphic Printer'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46457749099673103)
,p_name=>'P360_SELECTED_GC_NO'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46457828589673104)
,p_name=>'P360_IS_DONATION'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46457959285673105)
,p_name=>'P360_STATUS_ID'
,p_item_sequence=>50
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46458143318673107)
,p_name=>'P360_COPIES'
,p_item_sequence=>60
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46812129431238715)
,p_name=>'P360_PRINT_ID'
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(46458641842673112)
,p_name=>'Print'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(46805997431124065)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46458772723673113)
,p_event_id=>wwv_flow_imp.id(46458641842673112)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_name=>'Set donation type'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P360_IS_DONATION'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'l_return_value  VARCHAR(1) := NULL;',
'',
'BEGIN',
'',
'    IF LENGTH(:P360_SELECTED_GC_NO) > 0 THEN',
'    ',
'        SELECT DONATION INTO l_return_value',
'        FROM NPM013 npm013',
'        WHERE (SELECT npt020.GC_TYPE_ID',
'               FROM NPT020 npt020',
'               WHERE npt020.GIFT_CERTIFICATE_ID = :P360_SELECTED_GC_NO) = npm013.GC_TYPE_ID;',
'',
'    END IF;',
'',
'    RETURN l_return_value;',
'',
'END;'))
,p_attribute_07=>'P360_SELECTED_GC_NO'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46458825332673114)
,p_event_id=>wwv_flow_imp.id(46458641842673112)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_name=>'Set new PRINT_ID'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P360_PRINT_ID'
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
'    :P360_PRINT_ID := l_return_value;',
'',
'    RETURN l_return_value;',
'',
'END;'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46458992462673115)
,p_event_id=>wwv_flow_imp.id(46458641842673112)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>'Update selected GC'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'BEGIN',
'    UPDATE NPT020',
'        SET PRINT_ID = :P360_PRINT_ID,',
'            GC_STATUS_ID = 1,',
'            USER_UPDATE = :app_user, ',
'            DATE_UPDATED = SYSDATE,',
'            PRINT_DATE = SYSDATE',
'        WHERE GIFT_CERTIFICATE_ID = :P360_SELECTED_GC_NO;',
'END;'))
,p_attribute_02=>'P360_SELECTED_GC_NO,P360_PRINT_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46459137098673117)
,p_event_id=>wwv_flow_imp.id(46458641842673112)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_name=>'Insert new rows'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_copies NUMBER;',
'    counter NUMBER := 1;',
'BEGIN',
'    l_copies := TO_NUMBER(:P360_COPIES);',
'    LOOP',
'        IF counter < l_copies THEN',
'            INSERT INTO NPT020 (',
'                GIFT_CERTIFICATE_ID,',
'                GC_TYPE_ID, AMOUNT, ISSUE_DATE, EXPIRY_DATE, DESCRIPTION_1, ',
'                DESCRIPTION_2, THIS_ENTITLES, REMARKS, BEST_WISHES, RECIPIENT, EVENT, ',
'                BALANCE, GC_STATUS_ID, USER_CREATED, DATE_CREATED, PRINT_ID,',
'                INVOICE_ID, CASH_INVOICE_ID',
'            )',
'',
'            SELECT (SELECT NVL(MAX(GIFT_CERTIFICATE_ID), 0) + 1 FROM NPT020),',
'                GC_TYPE_ID, AMOUNT, ISSUE_DATE, EXPIRY_DATE, DESCRIPTION_1, ',
'                DESCRIPTION_2, THIS_ENTITLES, REMARKS, BEST_WISHES, RECIPIENT, EVENT, ',
'                BALANCE, 1, :app_user, SYSDATE, :P360_PRINT_ID,',
'                INVOICE_ID, CASH_INVOICE_ID',
'            FROM NPT020',
'            WHERE GIFT_CERTIFICATE_ID = :P360_SELECTED_GC_NO;',
'        ',
'        ELSE',
'            EXIT;',
'        END IF;',
'        counter := counter + 1;',
'    END LOOP;',
'',
'END;'))
,p_attribute_02=>'P360_SELECTED_GC_NO,P360_COPIES'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46459291786673118)
,p_event_id=>wwv_flow_imp.id(46458641842673112)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v("P360_IS_DONATION") === "Y") {',
'    generateReport("GC_DONATION", "pdf", { ',
'        fileName: "Gift_Certificate_Print_Id_" + $v("P360_PRINT_ID") + ".pdf",',
'        mode : "print",',
'        parameters : {',
'            P_SELECTED_PRINT_ID : $v("P360_PRINT_ID")',
'        },',
'        printCallback : function () {',
'            apex.navigation.dialog.close(true);',
'        },',
'        spinnerEnabled : true',
'    });',
'} else {',
'    generateReport("GC_NORMAL", "pdf", { ',
'        fileName: "Gift_Certificate_Print_Id_" + $v("P360_PRINT_ID") + ".pdf",',
'        mode : "print",',
'        parameters : {',
'            P_SELECTED_PRINT_ID : $v("P360_PRINT_ID")',
'        },',
'        printCallback : function () {',
'            apex.navigation.dialog.close(true);',
'        },',
'        spinnerEnabled : true',
'    });',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(46459384498673119)
,p_name=>'Print_1'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(46806304471124068)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46459452777673120)
,p_event_id=>wwv_flow_imp.id(46459384498673119)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_name=>'Set donation type'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P360_IS_DONATION'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'l_return_value  VARCHAR(1) := NULL;',
'',
'BEGIN',
'',
'    IF LENGTH(:P360_SELECTED_GC_NO) > 0 THEN',
'    ',
'        SELECT DONATION INTO l_return_value',
'        FROM NPM013 npm013',
'        WHERE (SELECT npt020.GC_TYPE_ID',
'               FROM NPT020 npt020',
'               WHERE npt020.GIFT_CERTIFICATE_ID = :P360_SELECTED_GC_NO) = npm013.GC_TYPE_ID;',
'',
'    END IF;',
'',
'    RETURN l_return_value;',
'',
'END;'))
,p_attribute_07=>'P360_SELECTED_GC_NO'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46459518909673121)
,p_event_id=>wwv_flow_imp.id(46459384498673119)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_name=>'Set new PRINT_ID'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P360_PRINT_ID'
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
'    :P360_PRINT_ID := l_return_value;',
'',
'    RETURN l_return_value;',
'',
'END;'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46459609063673122)
,p_event_id=>wwv_flow_imp.id(46459384498673119)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'Update selected GC'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'BEGIN',
'    UPDATE NPT020',
'        SET PRINT_ID = :P360_PRINT_ID,',
'            GC_STATUS_ID = 1,',
'            USER_UPDATE = :app_user, ',
'            DATE_UPDATED = SYSDATE,',
'            PRINT_DATE = SYSDATE',
'        WHERE GIFT_CERTIFICATE_ID = :P360_SELECTED_GC_NO;',
'END;'))
,p_attribute_02=>'P360_SELECTED_GC_NO,P360_PRINT_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46459723296673123)
,p_event_id=>wwv_flow_imp.id(46459384498673119)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>'Insert new rows'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_copies NUMBER;',
'    counter NUMBER := 1;',
'BEGIN',
'    l_copies := TO_NUMBER(:P360_COPIES);',
'    LOOP',
'        IF counter < l_copies THEN',
'            INSERT INTO NPT020 (',
'                GIFT_CERTIFICATE_ID,',
'                GC_TYPE_ID, AMOUNT, ISSUE_DATE, EXPIRY_DATE, DESCRIPTION_1, ',
'                DESCRIPTION_2, THIS_ENTITLES, REMARKS, BEST_WISHES, RECIPIENT, EVENT, ',
'                BALANCE, GC_STATUS_ID, USER_CREATED, DATE_CREATED, PRINT_ID,',
'                INVOICE_ID, CASH_INVOICE_ID',
'            )',
'',
'            SELECT (SELECT NVL(MAX(GIFT_CERTIFICATE_ID), 0) + 1 FROM NPT020),',
'                GC_TYPE_ID, AMOUNT, ISSUE_DATE, EXPIRY_DATE, DESCRIPTION_1, ',
'                DESCRIPTION_2, THIS_ENTITLES, REMARKS, BEST_WISHES, RECIPIENT, EVENT, ',
'                BALANCE, 1, :app_user, SYSDATE, :P360_PRINT_ID,',
'                INVOICE_ID, CASH_INVOICE_ID',
'            FROM NPT020',
'            WHERE GIFT_CERTIFICATE_ID = :P360_SELECTED_GC_NO;',
'        ',
'        ELSE',
'            EXIT;',
'        END IF;',
'        counter := counter + 1;',
'    END LOOP;',
'',
'END;'))
,p_attribute_02=>'P360_SELECTED_GC_NO,P360_COPIES,P360_PRINT_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46459869129673124)
,p_event_id=>wwv_flow_imp.id(46459384498673119)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v("P360_IS_DONATION") === "Y") {',
'    generateReport("GC_DONATION", "pdf", { ',
'        fileName: "Gift_Certificate_Print_Id_" + $v("P360_PRINT_ID") + ".pdf",',
'        mode : "print",',
'        parameters : {',
'            P_SELECTED_PRINT_ID : $v("P360_PRINT_ID")',
'        },',
'        printCallback : function () {',
'            apex.navigation.dialog.close(true);',
'        },',
'        spinnerEnabled : true',
'    });',
'} else {',
'    generateReport("GC_NORMAL", "pdf", { ',
'        fileName: "Gift_Certificate_Print_Id_" + $v("P360_PRINT_ID") + ".pdf",',
'        mode : "print",',
'        parameters : {',
'            P_SELECTED_PRINT_ID : $v("P360_PRINT_ID")',
'        },',
'        printCallback : function () {',
'            apex.navigation.dialog.close(true);',
'        },',
'        spinnerEnabled : true',
'    });',
'}'))
);
wwv_flow_imp.component_end;
end;
/
