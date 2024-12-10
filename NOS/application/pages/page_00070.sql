prompt --application/pages/page_00070
begin
--   Manifest
--     PAGE: 00070
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
 p_id=>70
,p_name=>'Invoice Details - Delivery Details'
,p_alias=>'INVOICE-DETAILS1'
,p_page_mode=>'MODAL'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'parent.$(''.ui-dialog-title'').html(''Delivery Log Batch '' + $v(''P70_DELIVERY_BATCH'') + '' - Invoice '' + $v(''P70_INVOICE_NO''));'
,p_css_file_urls=>'#APP_FILES#css/min#MIN#.css'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Dialog{',
'    background-color: #056AC8;',
'}',
'.text-white{',
'    color:white;',
'}',
'.btns{',
'    font-size: 1.125rem;',
'}',
'.text-general{',
'    font-size: 1.125rem;',
'}',
'.t-Form-label{',
'    font-size: 1.125rem;',
'}',
'.t-Dialog-body{',
'    padding-top: 0;',
'}',
'.t-Form-labelContainer{',
'    text-align: start;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_css_classes=>'delivery-details'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33672264876716423)
,p_plug_name=>'Check Out Details'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody:margin-bottom-none'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>60
,p_location=>null
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33672754723716428)
,p_plug_name=>'Post Delivery Details'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>80
,p_location=>null
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(44051491464431034)
,p_plug_name=>'Delivery Details'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>90
,p_query_type=>'TABLE'
,p_query_table=>'NPT012'
,p_include_rowid_column=>false
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(44052970978431049)
,p_plug_name=>'Check-Out Details'
,p_parent_plug_id=>wwv_flow_imp.id(44051491464431034)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>30
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(44053030306431050)
,p_plug_name=>'Post-Delivery Details'
,p_parent_plug_id=>wwv_flow_imp.id(44051491464431034)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>50
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33672804147716429)
,p_name=>'P70_DELIVERY_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(33672264876716423)
,p_prompt=>'Delivery Date: '
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'fs-1125'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33672959065716430)
,p_name=>'P70_CHECKER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(33672264876716423)
,p_prompt=>'Checker: '
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'fs-1125'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33673059851716431)
,p_name=>'P70_DELIVERY_MAN'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(33672264876716423)
,p_prompt=>'Delivery Man:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'fs-1125'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33673134998716432)
,p_name=>'P70_DEPARTURE_TIME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(33672264876716423)
,p_prompt=>'Departure Time:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'fs-1125'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33673217329716433)
,p_name=>'P70_VAN_NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(33672264876716423)
,p_prompt=>'Van Number:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'fs-1125'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33673391469716434)
,p_name=>'P70_ARRIVAL_TIME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(33672754723716428)
,p_prompt=>'Arrival Time:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'fs-1125'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33673538352716436)
,p_name=>'P70_HEADER_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(44051491464431034)
,p_source=>'Check Out Details'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'fs-1125 text-white'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35233992610472405)
,p_name=>'P70_INVOICE_NO'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35234097715472406)
,p_name=>'P70_DELIVERY_BATCH'
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44051622678431036)
,p_name=>'P70_DELIVERY_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(44052970978431049)
,p_item_source_plug_id=>wwv_flow_imp.id(44051491464431034)
,p_source=>'DELIVERY_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44051716164431037)
,p_name=>'P70_DELIVERY_MAN_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(44052970978431049)
,p_item_source_plug_id=>wwv_flow_imp.id(44051491464431034)
,p_prompt=>'Delivery Man:'
,p_source=>'DELIVERY_MAN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'fs-1125'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44051838120431038)
,p_name=>'P70_DELIVERY_DATE_1'
,p_source_data_type=>'DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(44052970978431049)
,p_item_source_plug_id=>wwv_flow_imp.id(44051491464431034)
,p_prompt=>'Delivery Date:'
,p_source=>'DELIVERY_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'fs-1125'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44052444718431044)
,p_name=>'P70_CHECKER_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(44052970978431049)
,p_item_source_plug_id=>wwv_flow_imp.id(44051491464431034)
,p_prompt=>'Checker:'
,p_source=>'CHECKER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'fs-1125'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44052559423431045)
,p_name=>'P70_DEP_TIME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(44052970978431049)
,p_item_source_plug_id=>wwv_flow_imp.id(44051491464431034)
,p_prompt=>'Departure Time:'
,p_source=>'DEP_TIME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'fs-1125'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44052683988431046)
,p_name=>'P70_ARV_TIME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(44053030306431050)
,p_item_source_plug_id=>wwv_flow_imp.id(44051491464431034)
,p_prompt=>'Arrival Time:'
,p_source=>'ARV_TIME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'fs-1125'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44052789292431047)
,p_name=>'P70_VAN_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(44052970978431049)
,p_item_source_plug_id=>wwv_flow_imp.id(44051491464431034)
,p_prompt=>'Van Number:'
,p_source=>'VAN_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'fs-1125'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44052850569431048)
,p_name=>'P70_RECEIVED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(44053030306431050)
,p_item_source_plug_id=>wwv_flow_imp.id(44051491464431034)
,p_prompt=>'Received By:'
,p_source=>'RECEIVED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'fs-1125'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44651605269346301)
,p_name=>'P70_HEADER_2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(44051491464431034)
,p_prompt=>'Header 2'
,p_source=>'Post Delivery Details'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'fs-1125 text-white'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(44051599089431035)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(44051491464431034)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Invoice Details - Delivery Details'
,p_internal_uid=>44051599089431035
);
wwv_flow_imp.component_end;
end;
/
