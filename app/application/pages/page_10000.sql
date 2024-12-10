prompt --application/pages/page_10000
begin
--   Manifest
--     PAGE: 10000
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
 p_id=>10000
,p_name=>'Print Options'
,p_alias=>'PRINT-OPTIONS'
,p_page_mode=>'MODAL'
,p_step_title=>'Print Options'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const printOptionKeys = {',
'    a : (ev) => {',
'        print(1);',
'    },',
'    b : (ev) => {',
'        print(2);',
'    }',
'}',
'',
'function mapPrintOptionKeys() {',
'    $(document).on(''keydown.p10000keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (printOptionKeys[key]) {',
'            ev.preventDefault();',
'            printOptionKeys[key](ev);',
'        }',
'    });',
'}',
'',
'function print(printerOption) {',
'    let reportName = `${$v("P10000_REPORT_NAME")}${printerOption === 1 ? "_COURIER_NEW" : "_ARIAL"}`;',
'    let format = $v("P10000_FORMAT");',
'    let fileName = $("P10000_FILENAME");',
'    let spinnerEnabled = $v("P10000_SPINNER_ENABLE") === "Y"; ',
'    let parameters = {',
'        [$v("P10000_PARAM1_NAME")] : $v("P10000_PARAM1_VALUE"),',
'        [$v("P10000_PARAM2_NAME")] : $v("P10000_PARAM2_VALUE"),',
'        [$v("P10000_PARAM3_NAME")] : $v("P10000_PARAM3_VALUE"),',
'        [$v("P10000_PARAM4_NAME")] : $v("P10000_PARAM4_VALUE"),',
'        [$v("P10000_PARAM5_NAME")] : $v("P10000_PARAM5_VALUE"),',
'        [$v("P10000_PARAM6_NAME")] : $v("P10000_PARAM6_VALUE"),',
'        [$v("P10000_PARAM7_NAME")] : $v("P10000_PARAM7_VALUE"),',
'        [$v("P10000_PARAM8_NAME")] : $v("P10000_PARAM8_VALUE"),',
'        P_PRINTER_OPTION : printerOption',
'    };',
'',
'    generateReport(reportName, format, {',
'        fileName: fileName,',
'        mode : "print",',
'        parameters : parameters,',
'        spinnerEnabled : spinnerEnabled',
'    });',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(39669906069745227)
,p_plug_name=>'Printer Options'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>20
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="print-option-boxes">',
'    <div class="print-option" data-value="1">A - Dot Matrix Printer</div>',
'    <div class="print-option" data-value="2">B - Graphics Printer</div>',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39670022941745228)
,p_name=>'P10000_REPORT_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(39669906069745227)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39670114536745229)
,p_name=>'P10000_FORMAT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(39669906069745227)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39670261228745230)
,p_name=>'P10000_FILENAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(39669906069745227)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39670317886745231)
,p_name=>'P10000_SPINNER_ENABLE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(39669906069745227)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39670450220745232)
,p_name=>'P10000_PARAM1_NAME'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(39669906069745227)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39670504666745233)
,p_name=>'P10000_PARAM2_NAME'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(39669906069745227)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39670632608745234)
,p_name=>'P10000_PARAM3_NAME'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(39669906069745227)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39670784593745235)
,p_name=>'P10000_PARAM4_NAME'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(39669906069745227)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39670894959745236)
,p_name=>'P10000_PARAM5_NAME'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(39669906069745227)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39670930156745237)
,p_name=>'P10000_PARAM6_NAME'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(39669906069745227)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39671087450745238)
,p_name=>'P10000_PARAM7_NAME'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(39669906069745227)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39671195321745239)
,p_name=>'P10000_PARAM8_NAME'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(39669906069745227)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39671288526745240)
,p_name=>'P10000_PARAM1_VALUE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(39669906069745227)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39671317150745241)
,p_name=>'P10000_PARAM7_VALUE'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(39669906069745227)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39671453886745242)
,p_name=>'P10000_PARAM8_VALUE'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(39669906069745227)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39671524999745243)
,p_name=>'P10000_PARAM6_VALUE'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(39669906069745227)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39671606906745244)
,p_name=>'P10000_PARAM5_VALUE'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(39669906069745227)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39671795055745245)
,p_name=>'P10000_PARAM4_VALUE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(39669906069745227)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39671862507745246)
,p_name=>'P10000_PARAM3_VALUE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(39669906069745227)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39671963140745247)
,p_name=>'P10000_PARAM2_VALUE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(39669906069745227)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39672052372745248)
,p_name=>'PRINT'
,p_event_sequence=>10
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'PRINT_REPORT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39672126839745249)
,p_event_id=>wwv_flow_imp.id(39672052372745248)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let reportName = $v("P10000_REPORT_NAME");',
'let format = $v("P10000_FORMAT");',
'let fileName = $("P10000_FILENAME");',
'let spinnerEnabled = $v("P10000_SPINNER_ENABLE") === "Y"; ',
'let parameters = {',
'    [$v("P10000_PARAM1_NAME")] : $v("P10000_PARAM1_VALUE"),',
'    [$v("P10000_PARAM2_NAME")] : $v("P10000_PARAM2_VALUE"),',
'    [$v("P10000_PARAM3_NAME")] : $v("P10000_PARAM3_VALUE"),',
'    [$v("P10000_PARAM4_NAME")] : $v("P10000_PARAM4_VALUE"),',
'    [$v("P10000_PARAM5_NAME")] : $v("P10000_PARAM5_VALUE"),',
'    [$v("P10000_PARAM6_NAME")] : $v("P10000_PARAM6_VALUE"),',
'    [$v("P10000_PARAM7_NAME")] : $v("P10000_PARAM7_VALUE"),',
'    [$v("P10000_PARAM8_NAME")] : $v("P10000_PARAM8_VALUE")',
'};',
'',
'generateReport(reportName, format, {',
'    fileName: fileName,',
'    mode : "print",',
'    parameters : parameters,',
'    spinnerEnabled : spinnerEnabled',
'});'))
);
wwv_flow_imp.component_end;
end;
/
