prompt --application/pages/page_09998
begin
--   Manifest
--     PAGE: 09998
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
 p_id=>9998
,p_name=>'Print report'
,p_alias=>'PRINT-REPORT'
,p_step_title=>'Print report'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APP_FILES#js/qz-tray.min.js',
'#APP_FILES#js/print.min.js'))
,p_javascript_code=>'let printer;'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'getPhysicalPrinters((printers) => {',
'    $.each(printers, (index, printer) => {',
'        $(''#P9998_SELECT_PRINTER'').append($(''<option/>'', { ',
'            value: printer,',
'            text : printer',
'        }));',
'    })',
'});',
'',
'// $(".dropdown-select2").select2({',
'//     placeholder : "Select an option",',
'//     minimumInputLength: 2,',
'//     ajax: {',
'//         delay: 250,',
'//         dataType: "json",',
'//         processResults : function(data) {',
'//             console.log("process results");',
'//             console.log(data);',
'//             return {',
'//                 results : data.results',
'//             };',
'//         },',
'//         transport : function (params, success, failure) {',
'//             console.log(params);',
'//             apex.server.process("GET_REF_NOS", {',
'//                 x01: params.term',
'//             })',
'//             .done(success)',
'//             .fail(failure);',
'//         }',
'//     }',
'// });',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12166203103578319)
,p_button_sequence=>50
,p_button_name=>'PRINT_BASE64'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Print Base64'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8720802328866724)
,p_button_sequence=>60
,p_button_name=>'SAMPLE_PRINT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Sample Print'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12165752725578314)
,p_name=>'P9998_REP_NAME'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12165850234578315)
,p_name=>'P9998_FORMAT'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12165965102578316)
,p_name=>'P9998_ADD_PARAMS'
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12166511689578322)
,p_name=>'P9998_SELECT_PRINTER'
,p_item_sequence=>10
,p_prompt=>'Select Printer'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:-'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(4382271073084278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17925068481262927)
,p_name=>'P9998_NEW'
,p_item_sequence=>70
,p_prompt=>'New'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'dropdown-select2'
,p_field_template=>wwv_flow_imp.id(4383087695084279)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12166006832578317)
,p_name=>'Set up QZ Tray'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12166112422578318)
,p_event_id=>wwv_flow_imp.id(12166006832578317)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// set digital certificate',
'// qz.security.setCertificatePromise(function(resolve, reject) {',
'//     resolve("-----BEGIN CERTIFICATE-----\n" +',
'//             "MIIDsTCCApmgAwIBAgIULW8CT5p2CqSMuWQiMXl3CMeq/P8wDQYJKoZIhvcNAQEL\n" +',
'//             "BQAwZzELMAkGA1UEBhMCVVMxCjAIBgNVBAgMAS0xCjAIBgNVBAcMAS0xDDAKBgNV\n" +',
'//             "BAoMA05PUzEMMAoGA1UECwwDTk9TMRIwEAYDVQQDDAlsb2NhbGhvc3QxEDAOBgkq\n" +',
'//             "hkiG9w0BCQEWAS0wIBcNMjQwODE2MDY0NDAwWhgPMjA1NjAyMDkwNjQ0MDBaMGcx\n" +',
'//             "CzAJBgNVBAYTAlVTMQowCAYDVQQIDAEtMQowCAYDVQQHDAEtMQwwCgYDVQQKDANO\n" +',
'//             "T1MxDDAKBgNVBAsMA05PUzESMBAGA1UEAwwJbG9jYWxob3N0MRAwDgYJKoZIhvcN\n" +',
'//             "AQkBFgEtMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAtWTCGYlReXAZ\n" +',
'//             "sIFAIc6+jNj/HeNnYl2Bug+l1mXYVOC1bJEITC0058k0HGJ5bXxD5wnoiMC6SlQQ\n" +',
'//             "PI5OhUjgG8SXluQXrCNofJ350mpu+H9WNkpAART20HCDSqWe+cIhJo4WZfxg7Gnr\n" +',
'//             "bh/fWuQKMLJD5NrU/w/7m9Iy0OzZf5JtfzPYHtUqQuZGC7Ak26Br2VMiwVdSkZ3v\n" +',
'//             "HNl4MLcCvLAmwDt2EFYX8Rvb1WJVSAaa6hAcLFUOmR93xURVSZgfmI2x3Nz4st7D\n" +',
'//             "C6P7lTtwJK03zDeuz4zhp/AZIpLz911LBUwsOb+sbr0LjCAaeBh+/8rWztpzvGJX\n" +',
'//             "sMF7Pcg9dQIDAQABo1MwUTAdBgNVHQ4EFgQUafSoScCKUX2vpr/QYRtSg6ZJfosw\n" +',
'//             "HwYDVR0jBBgwFoAUafSoScCKUX2vpr/QYRtSg6ZJfoswDwYDVR0TAQH/BAUwAwEB\n" +',
'//             "/zANBgkqhkiG9w0BAQsFAAOCAQEAGLgMUmFVk6z4q+vil8l8YNzl784SfDvQtGwY\n" +',
'//             "doMoudoLvcvc0wQ3jhI1Js7rjsBQS6GCqPwtJXH4mW9Vjry2+ldXD5sAByu58LSe\n" +',
'//             "6YeKiwZr7kWjlGXGQLd1ZTMyLcfnOEn/EQVFp95uJyj7noHWOgLZuLCODFeDSrJ7\n" +',
'//             "XL46C4EtFgGkTdd0z1jDL9Bih8ykcce3JA6T8fCJXnKwgCkHtBfAQIiQVGkIJNGx\n" +',
'//             "ajkl4vUntRuLdEOZhAazrYjjfrcMT4tgJcbFQaqeeYQEl4rNir9sGhWXjuQIhT/h\n" +',
'//             "MVd1cuamQs7FmOxZsqoQJiVftqQWju03wzdw+Lnkix+NMp64pA==\n" +',
'//             "-----END CERTIFICATE-----\n");',
'// });',
'',
'// // set printer',
'// printer = qz.websocket.connect().then(function() { ',
'//     qz.printers.find()',
'//     .then(function(printersList) {',
'//         // var list = '''';',
'//         // for(var i = 0; i < data.length; i++) {',
'//         //     list += "&nbsp; " + data[i] + "<br/>";',
'//         // }',
'//         // displayMessage("<strong>Available printers:</strong><br/>" + list);',
'//         console.log(printersList);',
'//         $("#P9998_SELECT_PRINTER").html("");',
'//         $.each(printersList, function (index, value) {',
'//             $(''#P9998_SELECT_PRINTER'').append($(''<option/>'', { ',
'//                 value: value,',
'//                 text : value',
'//             }));',
'//         });',
'//     })',
'//     .catch(function(e) { console.error(e); });',
'',
'//     return qz.printers.find("Microsoft Print to PDF");',
'// });',
'',
'printer = connect().then(function() { ',
'    qz.printers.find()',
'        .then(function(printersList) {',
'            $.each(printersList, function (index, value) {',
'                $(''#P9998_SELECT_PRINTER'').append($(''<option/>'', { ',
'                    value: value,',
'                    text : value',
'                }));',
'            });',
'        })',
'        .catch(function(e) { console.error(e); });',
'',
'    return qz.printers.find("Microsoft Print to PDF");    ',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12166302923578320)
,p_name=>'Print'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(12166203103578319)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12166484465578321)
,p_event_id=>wwv_flow_imp.id(12166302923578320)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// printer.then((printerz) => {',
'//     console.log(printerz);',
'//     var config = qz.configs.create(printerz);',
'//     var printData = [{ ',
'//         type: ''pixel'',',
'//         format: ''pdf'',',
'//         flavor: ''base64'',',
'//         data: testData',
'//     }];',
'//     qz.print(config, printData).catch(function(e) { ',
'//         console.error(e); ',
'//     });',
'// });',
'',
'connect().then(() => {',
'    var config = qz.configs.create($("#P9998_SELECT_PRINTER").value());',
'    var printData = [{ ',
'        type: ''pixel'',',
'        format: ''pdf'',',
'        flavor: ''base64'',',
'        data: testData',
'    }];',
'    qz.print(config, printData).catch(function(e) { ',
'        console.error(e); ',
'    });',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8720916804866725)
,p_name=>'Print sample'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(8720802328866724)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8721040842866726)
,p_event_id=>wwv_flow_imp.id(8720916804866725)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const options = {',
'    parameters: {',
'        parameter1: "test111",',
'        parameter2: "222test"',
'    },',
'    mode : "printer",    ',
'    printerCallback : (filePath) => {',
'        // let printer = "Microsoft Print to PDF";',
'        qzprint(defaultPrinter, filePath);',
'    }',
'};',
'',
'generateReport("test", "pdf", options);'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(26821573847203701)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_REF_NOS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_cursor        sys_refcursor;',
'    v_term          varchar2(300) := apex_application.g_x01;',
'    v_vendor_id     nit006.vendor_id%TYPE := apex_application.g_x02;',
'begin',
'    OPEN l_cursor FOR ',
'        SELECT vendor_id "realValue", vendor_name "label", vendor_name "value", v_vendor_id "test"',
'          FROM nit006',
'         WHERE UPPER(vendor_name) like UPPER(''%'' || v_term || ''%'')',
'           AND NOT EXISTS (SELECT null',
'                             FROM apex_collections',
'                            WHERE collection_name = ''P9998_VENDOR_CODES''',
'                              AND n001 = vendor_id)',
'         ORDER BY vendor_name ASC;',
'',
'    APEX_JSON.write(l_cursor);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>26821573847203701
);
wwv_flow_imp.component_end;
end;
/
