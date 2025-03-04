prompt --application/pages/page_00361
begin
--   Manifest
--     PAGE: 00361
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
 p_id=>361
,p_name=>'Reservation Print Options Modal'
,p_alias=>'RESERVATION-PRINT-OPTIONS-MODAL'
,p_page_mode=>'MODAL'
,p_step_title=>'Reservation Print Options Modal'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p361KeyMap = {',
'    a: (v) => {',
'        $("#a").trigger("click");',
'    },',
'    b: (v) => {',
'        $("#b").trigger("click");',
'    }',
'}',
'',
'function mapP361Keys() {',
'    $(document).off(''keydown.p361keyevents'');',
'    $(document).on(''keydown.p361keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p361KeyMap[key]) {',
'            ev.preventDefault();',
'            p361KeyMap[key]();',
'        }',
'    });',
'}',
'',
'function customEvent(event, data){',
'    mapP361Keys();',
'}'))
,p_javascript_code_onload=>'mapP361Keys();'
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
,p_dialog_width=>'300'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(52231397488703915)
,p_plug_name=>'Body'
,p_region_name=>'options-body'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>50
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(99074395165124296)
,p_plug_name=>'Title'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--accent1:t-Region--noUI:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_plug_source=>'Printing Options'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(52616146772451221)
,p_button_sequence=>30
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
 p_id=>wwv_flow_imp.id(52616514756451223)
,p_button_sequence=>40
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
 p_id=>wwv_flow_imp.id(99075148246124365)
,p_name=>'P361_SELECTED_RESERVATION_NO'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(52621886037451276)
,p_name=>'Print'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(52616146772451221)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72341505581152650)
,p_event_id=>wwv_flow_imp.id(52621886037451276)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'	v_warehouse_id			nit022.warehouse_id%TYPE := 1;',
'	v_io 					nit022.io%TYPE := ''O'';',
'	v_reference_id 			nit022.reference_id%TYPE := ''RS '' || :P361_SELECTED_RESERVATION_NO;',
'    v_count                 NUMBER := 0;',
'BEGIN',
'    FOR rec IN (',
'        SELECT ',
'            npt019.ITEM_ID, ',
'            npt019.UOM_ID, ',
'            npt018.DATE_CREATED,',
'            npt019.DISCOUNTED_PRICE,',
'            npt019.QUANTITY',
'        FROM',
'            NPT019 npt019',
'        JOIN',
'            NPT018 npt018 ON npt018.RESERVE_ID = npt019.RESERVE_ID',
'        WHERE',
'            npt019.RESERVE_ID = :P361_SELECTED_RESERVATION_NO',
'    ) LOOP',
'',
'        -- CHECK IF ITEM EXISTS IN NIT004',
'        SELECT COUNT(nit004.ITEM_ID) INTO v_count',
'        FROM NIT004 nit004',
'        WHERE nit004.ITEM_ID = rec.ITEM_ID',
'          AND nit004.UOM_ID = rec.UOM_ID',
'          AND nit004.WAREHOUSE_ID = 1;',
'',
'        IF v_count > 0 THEN',
'            -- UPDATE NIT004',
'            UPDATE NIT004',
'                SET QTY = (QTY - rec.QUANTITY),',
'                    UPDATE_USER = :app_user,',
'                    UPDATE_DATE = SYSDATE',
'     ',
'                WHERE ITEM_ID = rec.ITEM_ID AND ',
'                      UOM_ID = rec.UOM_ID AND ',
'                      WAREHOUSE_ID = 1;',
'',
'',
'            -- UPDATE NIT022',
'            item_trans_pkg.log_item_transaction(',
'                p_item_id => rec.ITEM_ID, ',
'                p_uom_id => rec.UOM_ID, ',
'                p_reference_date => rec.DATE_CREATED, ',
'                p_cost => rec.DISCOUNTED_PRICE, ',
'                p_qty => rec.QUANTITY, ',
'',
'                p_warehouse_id => v_warehouse_id, ',
'                p_io => v_io, ',
'                p_reference_id => v_reference_id',
'            );',
'        ELSE',
'            -- INSERT NIT004',
'            INSERT INTO NIT004 (',
'                ITEM_ID, WAREHOUSE_ID, CREATE_USER, CREATE_DATE, QTY, UOM_ID',
'            )',
'            VALUES (',
'                rec.ITEM_ID, 1, :app_user, SYSDATE, (0 - rec.QUANTITY), rec.UOM_ID',
'            );',
'',
'',
'            -- UPDATE NIT022',
'            item_trans_pkg.log_item_transaction(',
'                p_item_id => rec.ITEM_ID, ',
'                p_uom_id => rec.UOM_ID, ',
'                p_reference_date => rec.DATE_CREATED, ',
'                p_cost => rec.DISCOUNTED_PRICE, ',
'                p_qty => rec.QUANTITY, ',
'',
'                p_warehouse_id => v_warehouse_id, ',
'                p_io => v_io, ',
'                p_reference_id => v_reference_id',
'            );',
'        END IF;',
'    END LOOP;',
'END;'))
,p_attribute_02=>'P361_SELECTED_RESERVATION_NO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52623267714451278)
,p_event_id=>wwv_flow_imp.id(52621886037451276)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v("P361_SELECTED_RESERVATION_NO") > 0) {',
'    generateReport("RESERVATION", "pdf", { ',
'        fileName: "Reservation_No_" + $v("P361_SELECTED_RESERVATION_NO") + ".pdf",',
'        mode : "print",',
'        parameters : {',
'            P_RESERVE_ID : $v("P361_SELECTED_RESERVATION_NO")',
'        },',
'        printCallback : function () {',
'            apex.navigation.dialog.close(true);',
'        },',
'        spinnerEnabled : true',
'    });',
'} else {',
'    generateReport("RESERVATION_SUMMARY", "pdf", { ',
'        fileName: "Reservation_Summary_Active" +  + ".pdf",',
'        mode : "print",',
'        parameters : {},',
'        printCallback : function () {',
'            apex.navigation.dialog.close(true);',
'        },',
'        spinnerEnabled : true',
'    });',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(52618921170451270)
,p_name=>'Print_1'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(52616514756451223)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74197582307493901)
,p_event_id=>wwv_flow_imp.id(52618921170451270)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'	v_warehouse_id			nit022.warehouse_id%TYPE := 1;',
'	v_io 					nit022.io%TYPE := ''O'';',
'	v_reference_id 			nit022.reference_id%TYPE := ''RS '' || :P361_SELECTED_RESERVATION_NO;',
'    v_count                 NUMBER := 0;',
'BEGIN',
'    FOR rec IN (',
'        SELECT ',
'            npt019.ITEM_ID, ',
'            npt019.UOM_ID, ',
'            npt018.DATE_CREATED,',
'            npt019.DISCOUNTED_PRICE,',
'            npt019.QUANTITY',
'        FROM',
'            NPT019 npt019',
'        JOIN',
'            NPT018 npt018 ON npt018.RESERVE_ID = npt019.RESERVE_ID',
'        WHERE',
'            npt019.RESERVE_ID = :P361_SELECTED_RESERVATION_NO',
'    ) LOOP',
'',
'        -- CHECK IF ITEM EXISTS IN NIT004',
'        SELECT COUNT(nit004.ITEM_ID) INTO v_count',
'        FROM NIT004 nit004',
'        WHERE nit004.ITEM_ID = rec.ITEM_ID',
'          AND nit004.UOM_ID = rec.UOM_ID',
'          AND nit004.WAREHOUSE_ID = 1;',
'',
'        IF v_count > 0 THEN',
'            -- UPDATE NIT004',
'            UPDATE NIT004',
'                SET QTY = (QTY - rec.QUANTITY),',
'                    UPDATE_USER = :app_user,',
'                    UPDATE_DATE = SYSDATE',
'     ',
'                WHERE ITEM_ID = rec.ITEM_ID AND ',
'                      UOM_ID = rec.UOM_ID AND ',
'                      WAREHOUSE_ID = 1;',
'        ELSE',
'            -- INSERT NIT004',
'            INSERT INTO NIT004 (',
'                ITEM_ID, WAREHOUSE_ID, CREATE_USER, CREATE_DATE, QTY, UOM_ID',
'            )',
'            VALUES (',
'                rec.ITEM_ID, 1, :app_user, SYSDATE, (0 - rec.QUANTITY), rec.UOM_ID',
'            );',
'        END IF;',
'',
'        ',
'        -- UPDATE NIT022',
'        item_trans_pkg.log_item_transaction(',
'            p_item_id => rec.ITEM_ID, ',
'            p_uom_id => rec.UOM_ID, ',
'            p_reference_date => rec.DATE_CREATED, ',
'            p_cost => rec.DISCOUNTED_PRICE, ',
'            p_qty => rec.QUANTITY, ',
'',
'            p_warehouse_id => v_warehouse_id, ',
'            p_io => v_io, ',
'            p_reference_id => v_reference_id',
'        );',
'    END LOOP;',
'END;'))
,p_attribute_02=>'P361_SELECTED_RESERVATION_NO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52621443838451276)
,p_event_id=>wwv_flow_imp.id(52618921170451270)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v("P361_SELECTED_RESERVATION_NO") > 0) {',
'    generateReport("RESERVATION", "pdf", { ',
'        fileName: "Reservation_No_" + $v("P361_SELECTED_RESERVATION_NO") + ".pdf",',
'        mode : "print",',
'        parameters : {',
'            P_RESERVE_ID : $v("P361_SELECTED_RESERVATION_NO")',
'        },',
'        printCallback : function () {',
'            apex.navigation.dialog.close(true);',
'        },',
'        spinnerEnabled : true',
'    });',
'} else {',
'    generateReport("RESERVATION_SUMMARY", "pdf", { ',
'        fileName: "Reservation_Summary_Active" +  + ".pdf",',
'        mode : "print",',
'        parameters : {},',
'        printCallback : function () {',
'            apex.navigation.dialog.close(true);',
'        },',
'        spinnerEnabled : true',
'    });',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(52231129945703913)
,p_name=>'Button Focus'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52231229528703914)
,p_event_id=>wwv_flow_imp.id(52231129945703913)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(52616146772451221)
);
wwv_flow_imp.component_end;
end;
/
