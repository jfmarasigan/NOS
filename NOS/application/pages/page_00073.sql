prompt --application/pages/page_00073
begin
--   Manifest
--     PAGE: 00073
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
 p_id=>73
,p_name=>'Payables Entry/Update Add/Edit'
,p_alias=>'PAYABLES-ENTRY-UPDATE-ADD-EDIT'
,p_step_title=>'Payables Entry/Update Add/Edit'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#js/cmn/#MIN#.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p73KeyMap = {',
'    escape : (v) => {',
'        console.log(''escape'');',
'        apex.navigation.redirect($(''#P73_RETURN_TO_MAIN'').val());',
'    }',
'}',
'',
'function mapP73Keys(){',
'    $(document).off(''keydown.p73keyevents'');',
'    $(document).on(''keydown.p73keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if(p73KeyMap[key]){',
'            ev.preventDefault();',
'            p73KeyMap[key]();',
'        } ',
'    });',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTitle(''Add New Payables Entry/Update'');',
'mapP73Keys();'))
,p_css_file_urls=>'#APP_FILES#css/cmn#MIN#.css'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Header .t-Header-branding {',
'    background-color: white !important;',
'    color: rgb(30, 58, 138) !important;',
'}',
' ',
'.title-header {',
'    display: flex;',
'    justify-content: center;',
'    margin-top: 1.5rem;',
'    color: white;',
'    font-size: 2rem;',
'    font-weight: 700;',
'    line-height: normal;',
'}',
' ',
'body{',
'    background-color: rgb(30, 58, 138);',
'}',
'',
'.btns{',
'    font-size: 1.125rem;',
'    color: white;',
'}',
'',
'.text-left {',
'    text-align: left;',
'}',
'',
'.text-right {',
'    text-align: right;',
'}',
'',
'.content-block {',
'    font-size: 1.25rem;',
'    display: flex;',
'    justify-content: space-between;',
'    font-weight: 700;',
'}',
'',
'/* set modal header to a different background and font color */',
'.ui-dialog .ui-dialog-titlebar {',
'    background-color: #046BC8;',
'    color: white;',
'}',
'.ui-dialog-titlebar-close{',
'    display: none;',
'}',
'.ui-dialog-title{',
'    font-size : 1.25rem;',
'}',
'.text-white{',
'    color:white;',
'}',
'.text-black{',
'    color: black;',
'}',
'.t-Form-labelContainer.col.col-1{',
'        text-align: start;',
'}',
'.t-Form-label{',
'    font-size:1.125rem;',
'    /* color:white; */',
'}',
'/* #P28_INVOICE_NUMBER_LABEL{',
'    font-size:1.125rem;',
'    color:black;',
'} */',
'',
'.ui-dialog.payables-inquire{',
'    left: 50% !important;',
'}',
'.t-Form-label::before{',
'    display: none;',
'}'))
,p_step_template=>wwv_flow_imp.id(5671392681337017)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21255229171923137)
,p_plug_name=>'Add/Update Form'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody:t-Form--leftLabels:margin-bottom-none'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>10
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(25230709228376509)
,p_branch_action=>'f?p=&APP_ID.:72:&SESSION.::&DEBUG.:72::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21255353830923138)
,p_name=>'P73_AP_NUMBER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(21255229171923137)
,p_prompt=>'Accounts Payable Number:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'fs-1125'
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21255433657923139)
,p_name=>'P73_VENDOR'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(21255229171923137)
,p_prompt=>'Vendor Name:'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT VENDOR_NAME d, VENDOR_ID r FROM NIT006'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Vendor'
,p_cHeight=>1
,p_tag_css_classes=>'fs-1125'
,p_field_template=>wwv_flow_imp.id(15621067564319309)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23699207401654001)
,p_name=>'P73_DOC_NO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(21255229171923137)
,p_prompt=>'Document Number'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'fs-1125'
,p_field_template=>wwv_flow_imp.id(15621067564319309)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23699351735654002)
,p_name=>'P73_DOC_DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(21255229171923137)
,p_prompt=>'Document Date'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'fs-1125'
,p_field_template=>wwv_flow_imp.id(15621067564319309)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23699427469654003)
,p_name=>'P73_EXPENSE_PERIOD'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(21255229171923137)
,p_prompt=>'Expense Period Mo/Year'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'fs-1125'
,p_field_template=>wwv_flow_imp.id(15621067564319309)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23699555071654004)
,p_name=>'P73_DOC_TYPE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(21255229171923137)
,p_prompt=>'Document Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Display1;1,Display2;2'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_tag_css_classes=>'fs-1125'
,p_field_template=>wwv_flow_imp.id(15621067564319309)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23699628897654005)
,p_name=>'P73_AMOUNT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(21255229171923137)
,p_prompt=>'Amount'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'fs-1125'
,p_field_template=>wwv_flow_imp.id(15621067564319309)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'0'
,p_attribute_03=>'right'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23699755343654006)
,p_name=>'P73_EXPENSE_DESC'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(21255229171923137)
,p_prompt=>'Expense Description'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'fs-1125'
,p_field_template=>wwv_flow_imp.id(15621067564319309)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23700334834654012)
,p_name=>'P73_CONTAINER_NO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(21255229171923137)
,p_prompt=>'Container No.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'fs-1125'
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23700465542654013)
,p_name=>'P73_ATA_DATE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(21255229171923137)
,p_prompt=>'ATA Date'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'fs-1125'
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23700570221654014)
,p_name=>'P73_EXPENSE_CLASS'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(21255229171923137)
,p_prompt=>'Expense Class'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT PRICING_TYPE_CODE, PRICING_TYPE_ID FROM NIM032'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_tag_css_classes=>'fs-1125'
,p_field_template=>wwv_flow_imp.id(15621067564319309)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23700689689654015)
,p_name=>'P73_EXPENSE_CODE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(21255229171923137)
,p_prompt=>'COA Expense Code'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'fs-1125'
,p_field_template=>wwv_flow_imp.id(15621067564319309)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23700724737654016)
,p_name=>'P73_SCHED_GRP'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(21255229171923137)
,p_prompt=>'Audit Schedule Group'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT ASG_CODE, ASG_ID FROM NIM041'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_tag_css_classes=>'fs-1125'
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25230827193376510)
,p_name=>'P73_RETURN_TO_MAIN'
,p_item_sequence=>20
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_PAGE.GET_URL(',
'    p_clear_cache => ''72'',',
'    p_page => ''72''',
')'))
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25230506588376507)
,p_name=>'On press Enter'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P73_EXPENSE_CODE'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.key?.toLowerCase() === ''enter'';'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25230602135376508)
,p_event_id=>wwv_flow_imp.id(25230506588376507)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'ADD'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(25230357174376505)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add Data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'INSERT INTO NIT019(--AP_ID, ',
'AMOUNT, VENDOR_ID, DOCUMENT_NUMBER, DOCUMENT_DATE, --EXPENSE_PERIOD_MONTH, EXPENSE_PERIOD_YEAR, ',
'--DOC_TYPE_ID, ',
'EXPENSE_DESCRIPTION, CONTAINER_NO, ATA, EXPENSE_CLASS_ID,',
'--COA_EXPENSE_ID, --ASG_ID, ',
'CREATE_USER, CREATE_DATE, UPDATE_USER, UPDATE_DATE)',
'VALUES(--:P73_AP_NUMBER, ',
':P73_AMOUNT, :P73_VENDOR, :P73_DOC_NO, :P73_DOC_DATE, --:P73_EXPENSE_PERIOD, :P73_EXPENSE_PERIOD, ',
'--:P73_DOC_TYPE, ',
':P73_EXPENSE_DESC, :P73_CONTAINER_NO, :P73_ATA_DATE, :P73_EXPENSE_CLASS,',
'--:P73_EXPENSE_CODE, --:P73_SCHED_GRP, ',
':APP_USER, SYSDATE, :APP_USER, SYSDATE);'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'ADD'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_internal_uid=>25230357174376505
);
wwv_flow_imp.component_end;
end;
/
