prompt --application/pages/page_00302
begin
--   Manifest
--     PAGE: 00302
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
 p_id=>302
,p_name=>'Purchasing Transactions Submenu'
,p_alias=>'PURCHASING-TRANSACTIONS'
,p_step_title=>'Purchasing Transactions'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#js/pur-trans-menu#MIN#.js'
,p_javascript_code_onload=>'mapKeys();'
,p_css_file_urls=>'#APP_FILES#css/menu#MIN#.css'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.menu-instruction {',
'    margin-block-start: 6rem;',
'}',
'',
'div#incoming.ui-dialog-content {',
'    padding: 0 !important;',
'    background-color: #056AC8;',
'}',
'',
'.h-110 {',
'    height: 110px;',
'}',
'',
'.ui-dialog-titlebar {',
'    display: none !important;',
'}',
'',
'.bg-success {',
'    background-color: #056AC8;',
'}',
'',
'div#success.ui-dialog-content {',
'    padding: 0 !important;',
'}',
'',
'#success,',
'#incoming {',
'    border-radius: 12px;',
'}',
'',
'#inc {',
'    background-color: #056AC8;',
'    color: white;',
'}',
'',
''))
,p_step_template=>wwv_flow_imp.id(5671392681337017)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26261582753850127)
,p_plug_name=>'Wrapper - Incoming'
,p_region_name=>'incoming'
,p_region_template_options=>'#DEFAULT#:js-dialog-nosize'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>50
,p_plug_display_point=>'REGION_POSITION_04'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26261699875850128)
,p_plug_name=>'Incoming'
,p_region_name=>'inc'
,p_parent_plug_id=>wwv_flow_imp.id(26261582753850127)
,p_region_css_classes=>'h-110'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--hiddenOverflow:margin-top-none:margin-bottom-none'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="margin-bottom: 1rem;">',
'    <p style="margin-bottom: .5rem;" id="currentProcess">Initializing Incoming Shipment Logs</p>',
'    <p>Record Count: <span id="recordCount">0</span></p>',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26261783236850129)
,p_plug_name=>'Loading Bar'
,p_parent_plug_id=>wwv_flow_imp.id(26261699875850128)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="position: relative; width: 100%; height: 50px; border: 1px solid black; background-color: white;">',
'    <div id="loadingProgressBar" style="width: 0; height: 100%; background-color: #A3D5F7;">',
'    </div>',
'    <div id="progressText" style="position: absolute; top: 30%; left: 50%; transform: translateX(-50%, -50%); color: black;">',
'        0%',
'    </div>',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26262565693850137)
,p_plug_name=>'Wrapper - Success'
,p_region_name=>'success'
,p_region_css_classes=>'bg-success'
,p_region_template_options=>'#DEFAULT#:t-DialogRegion--noPadding:js-dialog-nosize:margin-bottom-none:margin-left-none:margin-right-none'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>60
,p_plug_display_point=>'REGION_POSITION_04'
,p_location=>null
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="display: flex; justify-content: space-between; font-size: 1.125rem; color: white;">',
'    <div style="font-weight: 600; margin: .50rem 0 2rem .50rem;">',
'        Successful Update',
'    </div>',
'    <div style="margin-right: .50rem;">x</div>',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26262605942850138)
,p_plug_name=>'Message'
,p_parent_plug_id=>wwv_flow_imp.id(26262565693850137)
,p_region_template_options=>'#DEFAULT#:t-Region--showIcon:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--hiddenOverflow:margin-top-none:margin-bottom-none:margin-left-lg:margin-right-none'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="color: white; display: flex; justify-content: center; margin-right: 2rem;">',
'    <img src="#APP_FILES#img/circle-info-solid.png" style="width: 40px; height: 40px;">',
'    <div style="display: flex; align-items: center; margin-left: .25rem;">',
'        <p>Incoming shipments log successfully updated.</p>',
'    </div>',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26262803490850140)
,p_plug_name=>'Button'
,p_parent_plug_id=>wwv_flow_imp.id(26262565693850137)
,p_region_css_classes=>'bg-success'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--hiddenOverflow:margin-top-lg:margin-bottom-none:margin-right-none'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(43970978877982316)
,p_plug_name=>'Header'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="title-header">',
'Purchasing Transactions',
'</div>'))
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(43971027596982317)
,p_plug_name=>'Buttons'
,p_region_name=>'menu-btns'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>10
,p_plug_display_column=>2
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(58954674580975596)
,p_plug_name=>'Footer'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--textContent:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>30
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="menu-instruction">',
'Press the underlined letter to proceed',
'</div>'))
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13306362609310896)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(43971027596982317)
,p_button_name=>'REVIEW_PURCHASE_ORDERS'
,p_button_static_id=>'review-purchase-orders'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--noUI:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>I</u> - Review Purchase Orders'
,p_button_redirect_url=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'Y'
,p_grid_column_span=>4
,p_grid_column=>5
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26263003467850142)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(26262803490850140)
,p_button_name=>'OK'
,p_button_static_id=>'ok'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--small:t-Button--padTop:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Ok'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
,p_grid_column_span=>1
,p_grid_column=>12
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13306782442310896)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(43971027596982317)
,p_button_name=>'UPD_INC_SHIP_LOG'
,p_button_static_id=>'upd-inc-ship-log'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--noUI:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>L</u> - Update Incoming Shipment Log'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'has_access(:APP_USER, 143, 192) = ''Y'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_grid_new_row=>'Y'
,p_grid_column_span=>4
,p_grid_column=>5
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13307178903310896)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(43971027596982317)
,p_button_name=>'EXIT'
,p_button_static_id=>'exit'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--noUI:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>Esc</u> - To Exit'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'Y'
,p_grid_column_span=>4
,p_grid_column=>5
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15655190643560913)
,p_name=>'P302_MURL'
,p_item_sequence=>40
,p_item_default=>'APEX_PAGE.GET_URL(p_page => 1)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19394235012535034)
,p_name=>'P302_PLACEHOLDER1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(43971027596982317)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26263365656850145)
,p_name=>'P302_TOTAL_COUNT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(43971027596982317)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26261831626850130)
,p_name=>'Update Incoming Shipment Log'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(13306782442310896)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26262424264850136)
,p_event_id=>wwv_flow_imp.id(26261831626850130)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_record_count NUMBER := 0;',
'    v_total_po NUMBER;',
'    v_po_id NIT012.PO_ID%TYPE;',
'BEGIN',
'    DELETE FROM NIT025;',
'    DELETE FROM NIT024;',
'',
'    FOR r IN (',
'        SELECT nit012.po_id',
'        FROM NIT012 nit012',
'        WHERE TRUNC(nit012.eta_date) >= TRUNC(SYSDATE)',
'        ORDER BY nit012.eta_date',
'        FETCH FIRST 6 ROWS ONLY',
'    ) LOOP',
'        INSERT INTO NIT024 (PO_ID, CREATE_USER, CREATE_DATE, UPDATE_USER, UPDATE_DATE)',
'        VALUES (r.po_id, V(''APP_USER''), SYSDATE, V(''APP_USER''), SYSDATE);',
'',
'        INSERT INTO NIT025 (PO_ID, ITEM_ID, QTY, CREATE_USER, CREATE_DATE, UPDATE_USER, UPDATE_DATE, VENDOR_PRICE, INTERNAL_UOM_ID, EXTERNAL_UOM_ID, INTERNAL_PRICE, EXTERNAL_PRICE)',
'        SELECT nit013.po_id, nit013.item_id, nit013.qty, V(''APP_USER''), SYSDATE, V(''APP_USER''), SYSDATE, nit013.vendor_price, nit013.internal_uom_id, nit013.external_uom_id, nit013.internal_price, nit013.external_price',
'        FROM NIT013 nit013',
'        WHERE nit013.po_id = r.po_id;',
'',
'        v_record_count := v_record_count + SQL%ROWCOUNT;',
'    END LOOP;',
'',
'    :P302_TOTAL_COUNT := v_record_count;',
'END;'))
,p_attribute_03=>'P302_TOTAL_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26262044196850132)
,p_event_id=>wwv_flow_imp.id(26261831626850130)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#incoming").dialog("option", "width", 600);',
'$(document).ready(function() {',
'    $("#success").dialog({',
'        autoOpen: false,',
'        modal: true,',
'        width: 520,',
'    });',
'',
'    $(''#incoming'').dialog("open");',
'    let progress = 0;',
'    let totalRecords = $v("P302_TOTAL_COUNT");',
'    let interval = setInterval(function() {',
'        let currentCount = Math.floor(progress / 100 * totalRecords);',
'',
'        $("#loadingProgressBar").css("width", progress + "%");',
'        $("#progressText").text(progress + "%");',
'        $("#recordCount").text(currentCount)',
'        ',
'        if(progress <= 30) {',
'            $("#currentProcess").text("Initializing Incoming Shipment Logs");',
'        } else {',
'            $("#currentProcess").text("Incoming Goods of 2024")',
'        }',
'',
'        if (progress >= 100) {',
'            clearInterval(interval);',
'            setTimeout(function() {',
'                $(''#incoming'').dialog("close");',
'                $("#currentProcess").text("Initializing Incoming Shipment Logs");',
'                $(''#success'').dialog("open");',
'            }, 500);',
'        }',
'        progress += 10;',
'    }, 500);',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26263172903850143)
,p_name=>'Close'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(26263003467850142)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26263240216850144)
,p_event_id=>wwv_flow_imp.id(26263172903850143)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(26262565693850137)
);
wwv_flow_imp.component_end;
end;
/
