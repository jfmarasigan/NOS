prompt --application/pages/page_00074
begin
--   Manifest
--     PAGE: 00074
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
 p_id=>74
,p_name=>'Payables Entry/Update Inquire'
,p_alias=>'PAYABLES-ENTRY-UPDATE-INQUIRE'
,p_page_mode=>'MODAL'
,p_step_title=>'Payables Entry/Update Details'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#js/cmn#MIN#.js'
,p_css_file_urls=>'#APP_FILES#css/cmn#MIN#.css'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Dialog{',
'    background-color: #056BC9;',
'}',
'.text-white{',
'    color:white;',
'}',
'.btns{',
'    font-size: 1rem;',
'}',
'.t-Form-label{',
'    font-size: 1.125rem;',
'}',
'.t-Dialog-body{',
'    padding-top: 0;',
'    padding-bottom: 0;',
'}',
'#exit{',
'    padding-top: 0;',
'    padding-bottom: 0.075rem;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(23701043657654019)
,p_plug_name=>'Inquire Body'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody:t-Form--slimPadding:t-Form--leftLabels'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>10
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(23702531747654034)
,p_button_sequence=>20
,p_button_name=>'EXIT'
,p_button_static_id=>'exit'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Press any key to exit'
,p_button_css_classes=>'btns text-white'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23701195931654020)
,p_name=>'P74_AP_NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(23701043657654019)
,p_prompt=>'Accounts Payable Number:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'fs-1125'
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:margin-top-none:margin-bottom-none'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23701236375654021)
,p_name=>'P74_VENDOR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(23701043657654019)
,p_prompt=>'Vendor Name:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'fs-1125'
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:margin-top-none:margin-bottom-none'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23701493212654023)
,p_name=>'P74_DOC_NO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(23701043657654019)
,p_prompt=>'Document Number:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'fs-1125'
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:margin-top-none:margin-bottom-none'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23701521534654024)
,p_name=>'P74_DOC_DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(23701043657654019)
,p_prompt=>'Document Date:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'fs-1125'
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:margin-top-none:margin-bottom-none'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23701600821654025)
,p_name=>'P74_EXPENSE_PERIOD'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(23701043657654019)
,p_prompt=>'Expense Period Mo/Year:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'fs-1125'
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:margin-top-none:margin-bottom-none'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23701705800654026)
,p_name=>'P74_DOC_TYPE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(23701043657654019)
,p_prompt=>'Document Type:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'fs-1125'
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:margin-top-none:margin-bottom-none'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23701809242654027)
,p_name=>'P74_AMOUNT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(23701043657654019)
,p_prompt=>'Amount:'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'fs-1125'
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:margin-top-none:margin-bottom-none'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23701930642654028)
,p_name=>'P74_EXPENSE_DESC'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(23701043657654019)
,p_prompt=>'Expense Description:'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'fs-1125'
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:margin-top-none:margin-bottom-none'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23702003974654029)
,p_name=>'P74_CONTAINER_NO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(23701043657654019)
,p_prompt=>'Container Number:'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'fs-1125'
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:margin-top-none:margin-bottom-none'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23702108568654030)
,p_name=>'P74_ATA_DATE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(23701043657654019)
,p_prompt=>'ATA Date:'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'fs-1125'
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:margin-top-none:margin-bottom-none'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23702218649654031)
,p_name=>'P74_EXPENSE_CLASS'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(23701043657654019)
,p_prompt=>'Expense Class:'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'fs-1125'
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:margin-top-none:margin-bottom-none'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23702393369654032)
,p_name=>'P74_EXPENSE_CODE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(23701043657654019)
,p_prompt=>'COA Expense Code:'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'fs-1125'
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:margin-top-none:margin-bottom-none'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23702447255654033)
,p_name=>'P74_SCHED_GRP'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(23701043657654019)
,p_prompt=>'Audit Schedule Group:'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'fs-1125'
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:margin-top-none:margin-bottom-none'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp.component_end;
end;
/
