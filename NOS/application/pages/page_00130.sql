prompt --application/pages/page_00130
begin
--   Manifest
--     PAGE: 00130
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
 p_id=>130
,p_name=>'Shipment Report Options'
,p_alias=>'SHIPMENT-REPORT-OPTIONS'
,p_page_mode=>'MODAL'
,p_step_title=>'Report Options'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Dialog {',
'    background-color: #056AC8;',
'}',
'',
'.report-options {',
'    background-color: #056AC8;',
'}',
'',
'.report-option-boxes {',
'    display: flex;',
'    flex-wrap: wrap;',
'    background-color: white;',
'}',
'',
'.report-option-boxes .report-option-option {',
'    font-size: 1.125rem;',
'    width: 100%;',
'    padding: 0.75rem 0.5rem;',
'    box-sizing: border-box;',
'    font-weight: 600;',
'}',
'',
'.report-option-boxes .report-option-option:focus  {',
'    background-color: rgba(4, 107, 200, 0.4);',
'}',
'',
'.report-buttons {',
'    font-size: 1.125rem;',
'    text-align: start;',
'    background-color: white;',
'    outline: white;',
'    border-color: white;',
'    border-radius: 0%;',
'    font-weight: 600;',
'    padding: 1rem;',
'    box-sizing: border-box;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'480'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(39466557883750302)
,p_plug_name=>'Report Options'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>30
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!-- <div class="report-option-boxes">',
'    <div class="report-option-option" data-value="1" tabindex="10001">A - Shipment Vessel Information Summary</div>',
'    <div class="report-option-option" data-value="2" tabindex="10002">B - Summary of Shipment By Supplier Report</div>',
'    <div class="report-option-option" data-value="3" tabindex="10003">C - Shipment Report with Serial Numbers</div>',
'    <div class="report-option-option" data-value="4" tabindex="10004">D - Shipment Report</div>',
'</div> -->'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(39466974637750306)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(39466557883750302)
,p_button_name=>'SHIPMENT_VESSEL_INFO_SUMMARY'
,p_button_static_id=>'a'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'A - Shipment Vessel Information Summary'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'report-buttons'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(39467013067750307)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(39466557883750302)
,p_button_name=>'SHIPMENT_SUMMARY_SUPPLIER'
,p_button_static_id=>'b'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'B - Summary of Shipment By Supplier Report'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'report-buttons'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(39467181720750308)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(39466557883750302)
,p_button_name=>'SHIPMENT_WITH_SERIAL'
,p_button_static_id=>'c'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'C - Shipment Report with Serial Numbers'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'report-buttons'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(39467257973750309)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(39466557883750302)
,p_button_name=>'SHIPMENT_REPORT'
,p_button_static_id=>'d'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'D - Shipment Report'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'report-buttons'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39466602964750303)
,p_name=>'P130_SHIPMENT_ID'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39467302894750310)
,p_name=>'Print A'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(39466974637750306)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39467580878750312)
,p_name=>'Print B'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(39467013067750307)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39467755391750314)
,p_name=>'Print C'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(39467181720750308)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39467955770750316)
,p_name=>'Print D'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(39467257973750309)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(39468147781750318)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_PRINT_VESSEL_INFO_SUMMARY'
,p_process_sql_clob=>'null;'
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>39468147781750318
);
wwv_flow_imp.component_end;
end;
/
