prompt --application/pages/page_00147
begin
--   Manifest
--     PAGE: 00147
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
 p_id=>147
,p_name=>'Collection and Outstanding Reports'
,p_alias=>'COLLECTION-AND-OUTSTANDING-REPORTS'
,p_step_title=>'Collection and Outstanding Reports'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#js/cmn#MIN#.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const ICON_FAIL_LARGE = "fa fa-lg fa-times-circle msg-icon-yellow";',
'const p147KeyMap = {',
'    a : (v) => {',
'        if($("#option2").is('':visible'')){',
'            $("#a2").trigger("click");',
'        } else {',
'            $("#a").trigger("click");',
'        }',
'    },',
'    ',
'    b : (v) => {',
'        if($("#option2").is('':visible'')){',
'            $("#b2").trigger("click");',
'        } else {',
'            $("#b").trigger("click");',
'        }',
'    },',
'',
'    p : (v) => {',
'        if($("#option1").is('':visible'')){',
'            $("#p2").trigger("click");',
'        } ',
'    },',
'',
'    e : (v) => {',
'        if($("#option1").is('':visible'')){',
'            $("#e").trigger("click");',
'        } ',
'    },',
'',
'    escape : (v) => {',
'        if(!($("#option1").is('':visible'') || $("#option2").is('':visible''))){',
'            $("#esc").trigger("click");',
'        }',
'    }',
'}',
'',
'function map147Keys() {',
'    $(document).off(''keydown.p147keyevents'');',
'    $(document).on(''keydown.p147keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p147KeyMap[key]) {',
'            ev.preventDefault();',
'            p147KeyMap[key]();',
'        }',
'    });',
'}'))
,p_javascript_code_onload=>'map147Keys()'
,p_css_file_urls=>'#APP_FILES#css/menu#MIN#.css'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.menu-instruction {',
'    margin-block-start: 4rem;',
'}',
'',
'#option2, #a2, #b2 {',
'    padding-top: 0;',
'    background-color: #056AC8;',
'    color: white;',
'}',
'',
'#option2{',
'    height: 6rem!important;',
'}',
'',
'#a2, #b2{',
'    font-size: 1.125rem;',
'    outline: none;',
'}',
'#p2, #e {',
'    font-size: 1.125rem;',
'}',
'',
'#p2:hover, #e:hover{',
'    border: 0;',
'}',
'',
'.ui-dialog .ui-dialog-titlebar {',
'    background-color: #056AC8;',
'    color: white;',
'    border-bottom: 0;',
'    padding-top: 0;',
'    padding-bottom: 0.1rem;',
'}',
'',
'.ui-dialog .ui-dialog-title {',
'    font-size: 1.5rem;',
'    padding-bottom: 0.3rem;',
'}',
'',
'.ui-dialog.inv-qby-w {',
'   left: 45% !important; ',
'}',
'',
'.ui-dialog.modal-dialog--pullout{',
'    left: 45% !important;',
'}',
'',
'.ui-dialog-titlebar-close{',
'    display: none;',
'}',
'',
'.a-GV-hdr .a-GV-table {',
'    width: 100% !important;',
'}',
'',
'#p{',
'    display: none;',
'}',
'',
'#esc{',
'    display: none;',
'}'))
,p_step_template=>wwv_flow_imp.id(5671392681337017)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(35460157515234033)
,p_plug_name=>'Buttons'
,p_region_name=>'menu-btns'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>30
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(35460262776234034)
,p_plug_name=>'Header'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>20
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="title-header">',
'Collection and Outstanding Reports',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(35460397383234035)
,p_plug_name=>'Footer'
,p_region_template_options=>'#DEFAULT#:i-h640:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody:margin-top-lg'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>40
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="menu-instruction">',
'Press the underlined letter to proceed',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(45597817865188004)
,p_plug_name=>'Collection and Outstanding Reports Print'
,p_region_name=>'option1'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size480x320'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_04'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(45598271192188008)
,p_plug_name=>'Printing Options'
,p_region_name=>'option2'
,p_region_template_options=>'#DEFAULT#:js-dialog-size480x320'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_04'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(45597953755188005)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(45597817865188004)
,p_button_name=>'Export'
,p_button_static_id=>'e'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>E</u> - Export'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns'
,p_grid_new_row=>'Y'
,p_grid_column_span=>2
,p_grid_column=>4
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(45598336853188009)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(45598271192188008)
,p_button_name=>'Dotmatrix'
,p_button_static_id=>'a2'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>A</u> - Dotmatrix'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(45598040678188006)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(45597817865188004)
,p_button_name=>'Print_1'
,p_button_static_id=>'p2'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>P</u> - Print'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns'
,p_grid_new_row=>'N'
,p_grid_column_span=>2
,p_grid_column=>8
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(45598431154188010)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(45598271192188008)
,p_button_name=>'Graphic'
,p_button_static_id=>'b2'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>B</u> - Graphic'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(35459984332234031)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(35460157515234033)
,p_button_name=>'Main'
,p_button_static_id=>'a'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--noUI:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>A</u>- SOA Main Account Summary Report'
,p_button_redirect_url=>'f?p=&APP_ID.:148:&SESSION.::&DEBUG.::P148_LEGAL_NAME:&P147_LEGAL_NAME.'
,p_grid_new_row=>'Y'
,p_grid_row_css_classes=>'menu-row'
,p_grid_column_span=>4
,p_grid_column=>5
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(35460008840234032)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(35460157515234033)
,p_button_name=>'Ageing'
,p_button_static_id=>'b'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--noUI:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>B</u>- Collections Ageing Summary Report'
,p_button_redirect_url=>'f?p=&APP_ID.:148:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'Y'
,p_grid_row_css_classes=>'menu-row'
,p_grid_column_span=>4
,p_grid_column=>5
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(39230667758531923)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(35460157515234033)
,p_button_name=>'Print'
,p_button_static_id=>'p'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Print'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(39832493571742315)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(35460157515234033)
,p_button_name=>'Esc'
,p_button_static_id=>'esc'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Esc'
,p_button_redirect_url=>'f?p=&APP_ID.:306:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39228617869531903)
,p_name=>'P147_LEGAL_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(35460157515234033)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39229156666531908)
,p_name=>'P147_CUSTOMER_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(35460157515234033)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39229752339531914)
,p_name=>'P147_ACCOUNT_TYPE_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(35460157515234033)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39230881950531925)
,p_name=>'P147_PRINT_TYPE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(35460157515234033)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39232448727531941)
,p_name=>'P147_PREPARED_URL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(35460157515234033)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45599678165188022)
,p_name=>'P147_PRINT_FORMAT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(35460157515234033)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39231825898531935)
,p_name=>'Set Print Type'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(35459984332234031)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39230978306531926)
,p_event_id=>wwv_flow_imp.id(39231825898531935)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P147_PRINT_TYPE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'main'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39232030225531937)
,p_name=>'Set Print Type 2'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(35460008840234032)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39232147133531938)
,p_event_id=>wwv_flow_imp.id(39232030225531937)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P147_PRINT_TYPE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'ageing'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39228422302531901)
,p_name=>'Dialog Closed'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(35459984332234031)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39228522323531902)
,p_event_id=>wwv_flow_imp.id(39228422302531901)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P147_LEGAL_NAME'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P148_LEGAL_NAME'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39229451481531911)
,p_event_id=>wwv_flow_imp.id(39228422302531901)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P147_CUSTOMER_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    CUSTOMER_ID',
'FROM',
'    NPT009',
'WHERE',
'    LEGAL_NAME = :P147_LEGAL_NAME'))
,p_attribute_07=>'P147_LEGAL_NAME'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39229692024531913)
,p_event_id=>wwv_flow_imp.id(39228422302531901)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P147_ACCOUNT_TYPE_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    ACCOUNT_TYPE_ID',
'FROM',
'    NPT009',
'WHERE',
'    LEGAL_NAME = :P147_LEGAL_NAME'))
,p_attribute_07=>'P147_LEGAL_NAME'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39229540786531912)
,p_event_id=>wwv_flow_imp.id(39228422302531901)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'showGPopup({',
'    message: `Customer does not exist!`,',
'    icon: ICON_FAIL_LARGE,',
'    width: 500,',
'    timeout: 1500,',
'    timeoutActive: true',
'});'))
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P147_CUSTOMER_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39229842986531915)
,p_event_id=>wwv_flow_imp.id(39228422302531901)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'showGPopup({',
'    message: `Please enter a Main Account.`,',
'    icon: ICON_FAIL_LARGE,',
'    width: 500,',
'    timeout: 1500,',
'    timeoutActive: true',
'});'))
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'apex.item("P147_ACCOUNT_TYPE_ID").getValue() != 2 && apex.item("P147_CUSTOMER_ID").getValue() != '''''
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39230561526531922)
,p_event_id=>wwv_flow_imp.id(39228422302531901)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("#p").trigger("click");'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P147_ACCOUNT_TYPE_ID'
,p_client_condition_expression=>'2'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39231040434531927)
,p_name=>'Dialog Closed_1'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(35460008840234032)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39231147722531928)
,p_event_id=>wwv_flow_imp.id(39231040434531927)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P147_LEGAL_NAME'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P148_LEGAL_NAME'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39231258271531929)
,p_event_id=>wwv_flow_imp.id(39231040434531927)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P147_CUSTOMER_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    CUSTOMER_ID',
'FROM',
'    NPT009',
'WHERE',
'    LEGAL_NAME = :P147_LEGAL_NAME'))
,p_attribute_07=>'P147_LEGAL_NAME'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39231337062531930)
,p_event_id=>wwv_flow_imp.id(39231040434531927)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P147_ACCOUNT_TYPE_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    ACCOUNT_TYPE_ID',
'FROM',
'    NPT009',
'WHERE',
'    LEGAL_NAME = :P147_LEGAL_NAME'))
,p_attribute_07=>'P147_LEGAL_NAME'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39231572239531932)
,p_event_id=>wwv_flow_imp.id(39231040434531927)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'showGPopup({',
'    message: `Customer does not exist!`,',
'    icon: ICON_FAIL_LARGE,',
'    width: 500,',
'    timeout: 1500,',
'    timeoutActive: true',
'});'))
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P147_CUSTOMER_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39231643556531933)
,p_event_id=>wwv_flow_imp.id(39231040434531927)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'showGPopup({',
'    message: `Please enter a Main Account.`,',
'    icon: ICON_FAIL_LARGE,',
'    width: 500,',
'    timeout: 1500,',
'    timeoutActive: true',
'});'))
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'apex.item("P147_ACCOUNT_TYPE_ID").getValue() != 2 && apex.item("P147_CUSTOMER_ID").getValue() != '''''
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39231729312531934)
,p_event_id=>wwv_flow_imp.id(39231040434531927)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("#p").trigger("click");'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P147_ACCOUNT_TYPE_ID'
,p_client_condition_expression=>'2'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39232226728531939)
,p_name=>'Send to print'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(39230667758531923)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45598100901188007)
,p_event_id=>wwv_flow_imp.id(39232226728531939)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(45597817865188004)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39232326301531940)
,p_event_id=>wwv_flow_imp.id(39232226728531939)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P147_PREPARED_URL := apex_page.get_url(',
'       p_page   => 149,',
'       p_items  => ''P149_PRINT_TYPE,P149_CUSTOMER_ID,P149_LEGAL_NAME'',',
'       p_values => :P147_PRINT_TYPE || '','' || :P147_CUSTOMER_ID || '','' || :P147_LEGAL_NAME',
'    );',
'END;'))
,p_attribute_02=>'P147_CUSTOMER_ID,P147_PRINT_TYPE,P147_LEGAL_NAME'
,p_attribute_03=>'P147_PREPARED_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_build_option_id=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39232537358531942)
,p_event_id=>wwv_flow_imp.id(39232226728531939)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P147_PREPARED_URL");',
'apex.navigation.redirect(url);'))
,p_build_option_id=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(45598583316188011)
,p_name=>'Export'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(45597953755188005)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45598623196188012)
,p_event_id=>wwv_flow_imp.id(45598583316188011)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P147_PRINT_FORMAT'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'export'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45599079027188016)
,p_event_id=>wwv_flow_imp.id(45598583316188011)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(".ui-dialog-titlebar-close").trigger("click");'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45599206234188018)
,p_event_id=>wwv_flow_imp.id(45598583316188011)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(45598271192188008)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(45598740185188013)
,p_name=>'Print'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(45598040678188006)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45598845224188014)
,p_event_id=>wwv_flow_imp.id(45598740185188013)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P147_PRINT_FORMAT'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'print'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45598903253188015)
,p_event_id=>wwv_flow_imp.id(45598740185188013)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(".ui-dialog-titlebar-close").trigger("click");'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45599121604188017)
,p_event_id=>wwv_flow_imp.id(45598740185188013)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(45598271192188008)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(45599363754188019)
,p_name=>'Print dotmatrix'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(45598336853188009)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45599450581188020)
,p_event_id=>wwv_flow_imp.id(45599363754188019)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Export main'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var d = new Date();',
'var datestamp = d.getFullYear() + "";',
'if( (d.getMonth() + 1) >= 10){',
'    datestamp = datestamp + (d.getMonth() + 1) + "";',
'}',
'else{',
'    datestamp = datestamp + "0" + (d.getMonth() + 1);',
'}',
'if( (d.getDate() + 1) >= 10){',
'    datestamp = datestamp + d.getDate() + "";',
'}',
'else{',
'    datestamp = datestamp + "0" + d.getDate();',
'}',
'generateReport("SOA_EOM_MAIN_XLS", "xlsx", { ',
'    fileName: $v("P147_LEGAL_NAME") + "_Main Account Summary Report_" + datestamp + ".xlsx",',
'    mode : "export",',
'    parameters : {',
'        P_CUSTOMER_ID : $v("P147_CUSTOMER_ID"),',
'        P_PRINT_TYPE: "dotmatrix"',
'    }',
'});'))
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'$v("P147_PRINT_FORMAT") == ''export'' && $v("P147_PRINT_TYPE") == ''main'''
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45600111163188027)
,p_event_id=>wwv_flow_imp.id(45599363754188019)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'Export ageing'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var d = new Date();',
'var datestamp = d.getFullYear() + "";',
'if( (d.getMonth() + 1) >= 10){',
'    datestamp = datestamp + (d.getMonth() + 1) + "";',
'}',
'else{',
'    datestamp = datestamp + "0" + (d.getMonth() + 1);',
'}',
'if( (d.getDate() + 1) >= 10){',
'    datestamp = datestamp + d.getDate() + "";',
'}',
'else{',
'    datestamp = datestamp + "0" + d.getDate();',
'}',
'generateReport("SOA_EOM_CUSTOMERS_XLS", "xlsx", { ',
'    fileName: $v("P147_LEGAL_NAME") + "_Collections Ageing Summary Report_" + datestamp + ".xlsx",',
'    mode : "export",',
'    parameters : {',
'        P_CUSTOMER_ID : $v("P147_CUSTOMER_ID"),',
'        P_PRINT_TYPE: "dotmatrix"',
'    }',
'});'))
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'$v("P147_PRINT_FORMAT") == ''export'' && $v("P147_PRINT_TYPE") == ''ageing'''
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45600320471188029)
,p_event_id=>wwv_flow_imp.id(45599363754188019)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'Print main'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var d = new Date();',
'var datestamp = d.getFullYear() + "";',
'if( (d.getMonth() + 1) >= 10){',
'    datestamp = datestamp + (d.getMonth() + 1) + "";',
'}',
'else{',
'    datestamp = datestamp + "0" + (d.getMonth() + 1);',
'}',
'if( (d.getDate() + 1) >= 10){',
'    datestamp = datestamp + d.getDate() + "";',
'}',
'else{',
'    datestamp = datestamp + "0" + d.getDate();',
'}',
'generateReport("SOA_EOM_MAIN", "pdf", { ',
'    fileName: $v("P147_LEGAL_NAME") + "_Main Account Summary Report_" + datestamp + ".pdf",',
'    mode : "export",',
'    parameters : {',
'        P_CUSTOMER_ID : $v("P147_CUSTOMER_ID"),',
'        P_PRINT_TYPE: "dotmatrix"',
'    }',
'});'))
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'$v("P147_PRINT_FORMAT") == ''print'' && $v("P147_PRINT_TYPE") == ''main'''
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45600522904188031)
,p_event_id=>wwv_flow_imp.id(45599363754188019)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>'Print ageing'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var d = new Date();',
'var datestamp = d.getFullYear() + "";',
'if( (d.getMonth() + 1) >= 10){',
'    datestamp = datestamp + (d.getMonth() + 1) + "";',
'}',
'else{',
'    datestamp = datestamp + "0" + (d.getMonth() + 1);',
'}',
'if( (d.getDate() + 1) >= 10){',
'    datestamp = datestamp + d.getDate() + "";',
'}',
'else{',
'    datestamp = datestamp + "0" + d.getDate();',
'}',
'generateReport("SOA_EOM_CUSTOMERS", "pdf", { ',
'    fileName: $v("P147_LEGAL_NAME") + "_Collections Ageing Summary Report_" + datestamp + ".pdf",',
'    mode : "export",',
'    parameters : {',
'        P_CUSTOMER_ID : $v("P147_CUSTOMER_ID"),',
'        P_PRINT_TYPE: "dotmatrix"',
'    }',
'});'))
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'$v("P147_PRINT_FORMAT") == ''print'' && $v("P147_PRINT_TYPE") == ''ageing'''
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(45599863502188024)
,p_name=>'Print graphic'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(45598431154188010)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45600074333188026)
,p_event_id=>wwv_flow_imp.id(45599863502188024)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Export main'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var d = new Date();',
'var datestamp = d.getFullYear() + "";',
'if( (d.getMonth() + 1) >= 10){',
'    datestamp = datestamp + (d.getMonth() + 1) + "";',
'}',
'else{',
'    datestamp = datestamp + "0" + (d.getMonth() + 1);',
'}',
'if( (d.getDate() + 1) >= 10){',
'    datestamp = datestamp + d.getDate() + "";',
'}',
'else{',
'    datestamp = datestamp + "0" + d.getDate();',
'}',
'generateReport("SOA_EOM_MAIN_XLS", "xlsx", { ',
'    fileName: $v("P147_LEGAL_NAME") + "_Main Account Summary Report_" + datestamp + ".xlsx",',
'    mode : "export",',
'    parameters : {',
'        P_CUSTOMER_ID : $v("P147_CUSTOMER_ID"),',
'        P_PRINT_TYPE: "graphic"',
'    }',
'});'))
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'$v("P147_PRINT_FORMAT") == ''export'' && $v("P147_PRINT_TYPE") == ''main'''
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45600206057188028)
,p_event_id=>wwv_flow_imp.id(45599863502188024)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'Export ageing'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var d = new Date();',
'var datestamp = d.getFullYear() + "";',
'if( (d.getMonth() + 1) >= 10){',
'    datestamp = datestamp + (d.getMonth() + 1) + "";',
'}',
'else{',
'    datestamp = datestamp + "0" + (d.getMonth() + 1);',
'}',
'if( (d.getDate() + 1) >= 10){',
'    datestamp = datestamp + d.getDate() + "";',
'}',
'else{',
'    datestamp = datestamp + "0" + d.getDate();',
'}',
'generateReport("SOA_EOM_CUSTOMERS_XLS", "xlsx", { ',
'    fileName: $v("P147_LEGAL_NAME") + "_Collections Ageing Summary Report_" + datestamp + ".xlsx",',
'    mode : "export",',
'    parameters : {',
'        P_CUSTOMER_ID : $v("P147_CUSTOMER_ID"),',
'        P_PRINT_TYPE: "graphic"',
'    }',
'});'))
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'$v("P147_PRINT_FORMAT") == ''export'' && $v("P147_PRINT_TYPE") == ''ageing'''
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45600435145188030)
,p_event_id=>wwv_flow_imp.id(45599863502188024)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'Print main'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var d = new Date();',
'var datestamp = d.getFullYear() + "";',
'if( (d.getMonth() + 1) >= 10){',
'    datestamp = datestamp + (d.getMonth() + 1) + "";',
'}',
'else{',
'    datestamp = datestamp + "0" + (d.getMonth() + 1);',
'}',
'if( (d.getDate() + 1) >= 10){',
'    datestamp = datestamp + d.getDate() + "";',
'}',
'else{',
'    datestamp = datestamp + "0" + d.getDate();',
'}',
'generateReport("SOA_EOM_MAIN", "pdf", { ',
'    fileName: $v("P147_LEGAL_NAME") + "_Main Account Summary Report_" + datestamp + ".pdf",',
'    mode : "export",',
'    parameters : {',
'        P_CUSTOMER_ID : $v("P147_CUSTOMER_ID"),',
'        P_PRINT_TYPE: "graphic"',
'    }',
'});'))
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'$v("P147_PRINT_FORMAT") == ''print'' && $v("P147_PRINT_TYPE") == ''main'''
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45600760183188033)
,p_event_id=>wwv_flow_imp.id(45599863502188024)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>'Print ageing'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var d = new Date();',
'var datestamp = d.getFullYear() + "";',
'if( (d.getMonth() + 1) >= 10){',
'    datestamp = datestamp + (d.getMonth() + 1) + "";',
'}',
'else{',
'    datestamp = datestamp + "0" + (d.getMonth() + 1);',
'}',
'if( (d.getDate() + 1) >= 10){',
'    datestamp = datestamp + d.getDate() + "";',
'}',
'else{',
'    datestamp = datestamp + "0" + d.getDate();',
'}',
'generateReport("SOA_EOM_CUSTOMERS", "pdf", { ',
'    fileName: $v("P147_LEGAL_NAME") + "_Collections Ageing Summary Report_" + datestamp + ".pdf",',
'    mode : "export",',
'    parameters : {',
'        P_CUSTOMER_ID : $v("P147_CUSTOMER_ID"),',
'        P_PRINT_TYPE: "graphic"',
'    }',
'});'))
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'$v("P147_PRINT_FORMAT") == ''print'' && $v("P147_PRINT_TYPE") == ''ageing'''
);
wwv_flow_imp.component_end;
end;
/
