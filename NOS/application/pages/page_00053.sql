prompt --application/pages/page_00053
begin
--   Manifest
--     PAGE: 00053
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
 p_id=>53
,p_name=>'Inquire Transfer Details'
,p_alias=>'INQUIRE-TRANSFER-DETAILS'
,p_page_mode=>'MODAL'
,p_step_title=>'Transfer Details'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function mapP53Keys(){',
'    $(document).on(''keydown.p53keyevents'', (ev) => {',
'        apex.navigation.dialog.close(true);',
'        $(document).off(''keydown.p53keyevents'');',
'    });',
'}',
''))
,p_javascript_code_onload=>'mapP53Keys();'
,p_css_file_urls=>'#APP_FILES#css/p27_css#MIN#.css'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.text-size{',
'    font-size: 1.125rem;',
'    font-family: Arial;',
'}',
'',
'.a-GV-header a, th.a-GV-header {',
'    background-color: #056BC9;',
'    color: white;',
'}',
'',
'.a-GV-hdr .a-GV-table {',
'    width: 100% !important;',
'}',
'',
'.t-Form-inputContainer{',
'    margin-top: 0;',
'    margin-bottom: 0;',
'    padding-top: 0;',
'    padding-bottom: 0;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'50rem'
,p_dialog_css_classes=>'modal-dialog--pullout'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19933139413828634)
,p_plug_name=>'Content'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22461926405151325)
,p_plug_name=>'Transfer Details'
,p_region_name=>'content'
,p_parent_plug_id=>wwv_flow_imp.id(19933139413828634)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    nit1.ITEM_NUM AS "Item Number",',
'    nit2.UPC AS "UPC",',
'    nit1.ITEM_DESC AS "Item Description",',
'    nit11.QTY || ''/'' || nim26.UOM_CODE AS "Quantity/UOM"',
'FROM',
'    NIT001 nit1,',
'    NIT002 nit2,',
'    NIT011 nit11,',
'    NIM026 nim26',
'WHERE',
'    nit11.transfer_id = :P53_TRANSFER_ID AND',
'    nit2.item_id = nit11.item_id AND',
'    nit1.item_id = nit2.item_id AND',
'    nit2.uom_id = nit11.uom_id AND',
'    nit2.uom_id = nim26.uom_id; '))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P53_TRANSFER_ID'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12125563269406411)
,p_name=>'Item Number'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'Item Number'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Item Number'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>40
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12125635256406412)
,p_name=>'UPC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPC'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'UPC'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>56
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12125719920406413)
,p_name=>'Item Description'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'Item Description'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Item Description'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>120
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12126891253406424)
,p_name=>'Quantity/UOM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'Quantity/UOM'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Quantity&#x2F;UOM'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'RIGHT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>57
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(22461976889151326)
,p_internal_uid=>22461976889151326
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>false
,p_toolbar_buttons=>null
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>362
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultModelOptions = {',
'        pageSize: 1000',
'    };',
'    options.defaultGridViewOptions = {',
'        pagination: {',
'            scroll: true,',
'            virtual: true,',
'            loadMore: false',
'        },',
'        resizeColumns: false,',
'        reorderColumns: false,',
'        // stickyFooter: true',
'        footer: false',
'    };',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(22830933631699813)
,p_interactive_grid_id=>wwv_flow_imp.id(22461976889151326)
,p_static_id=>'105867'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(22831206688699813)
,p_report_id=>wwv_flow_imp.id(22830933631699813)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12288339665011148)
,p_view_id=>wwv_flow_imp.id(22831206688699813)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(12125563269406411)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>146
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12289183647011157)
,p_view_id=>wwv_flow_imp.id(22831206688699813)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(12125635256406412)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>178.675
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12290001686011165)
,p_view_id=>wwv_flow_imp.id(22831206688699813)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(12125719920406413)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>239.85
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12304838880082525)
,p_view_id=>wwv_flow_imp.id(22831206688699813)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(12126891253406424)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>163.7
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12244695498702240)
,p_button_sequence=>40
,p_button_name=>'Exit'
,p_button_static_id=>'exit'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'press any key to exit'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12125963568406415)
,p_name=>'P53_DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(19933139413828634)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Date'
,p_pre_element_text=>'<p class="text-size">Date:</p>'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    TRANSFER_DATE',
'FROM',
'    NIT010',
'WHERE',
'    TRANSFER_ID = :P53_TRANSFER_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'text-size'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_column=>1
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4381902469084273)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--preTextBlock:margin-top-none:t-Form-fieldContainer--normalDisplay'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12126144820406417)
,p_name=>'P53_FROMWAREHOUSE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(19933139413828634)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Transfer From Location:'
,p_pre_element_text=>'<p class="text-size">Transfer From Location:</p>'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    FROMWAREHOUSE_ID',
'FROM',
'    NIT010',
'WHERE',
'    TRANSFER_ID = :P53_TRANSFER_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'text-size'
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_grid_column=>4
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4381902469084273)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--preTextBlock:margin-bottom-none:t-Form-fieldContainer--normalDisplay'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12126299520406418)
,p_name=>'P53_TOWAREHOUSE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(19933139413828634)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Transfer Destination Location:'
,p_pre_element_text=>'<p class="text-size">Transfer Destination Location:</p>'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    TOWAREHOUSE_ID',
'FROM',
'    NIT010',
'WHERE',
'    TRANSFER_ID = :P53_TRANSFER_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'text-size'
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_grid_column=>4
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4381902469084273)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--preTextBlock:margin-top-none:t-Form-fieldContainer--normalDisplay'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12126391326406419)
,p_name=>'P53_DELIVERYMAN'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(19933139413828634)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Delivery Man'
,p_pre_element_text=>'<p class="text-size">Delivery Man:</p>'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    DELIVERY_NAME',
'FROM',
'    NIT010',
'WHERE',
'    TRANSFER_ID = :P53_TRANSFER_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'text-size'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_column=>9
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4381902469084273)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--preTextBlock:margin-bottom-none:t-Form-fieldContainer--normalDisplay'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12126420149406420)
,p_name=>'P53_RECEIVER'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(19933139413828634)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Receiver'
,p_pre_element_text=>'<p class="text-size">Receiver:</p>'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    RECEIVER',
'FROM',
'    NIT010',
'WHERE',
'    TRANSFER_ID = :P53_TRANSFER_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'text-size'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_column=>9
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4381902469084273)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--preTextBlock:margin-top-none:t-Form-fieldContainer--normalDisplay'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12126555882406421)
,p_name=>'P53_ITEM_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(19933139413828634)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    ITEM_ID',
'FROM',
'    NIT011',
'WHERE',
'    TRANSFER_ID = :P53_TRANSFER_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12126643353406422)
,p_name=>'P53_QTY'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(19933139413828634)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    QTY',
'FROM',
'    NIT011',
'WHERE',
'    TRANSFER_ID = :P53_TRANSFER_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12126771238406423)
,p_name=>'P53_UOM'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(19933139413828634)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    UOM_ID',
'FROM',
'    NIT011',
'WHERE',
'    TRANSFER_ID = :P53_TRANSFER_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19436244207594496)
,p_name=>'P53_TRANSFER_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(19933139413828634)
,p_prompt=>'Transfer ID:'
,p_pre_element_text=>'<p class="text-size">Transfer ID:</p>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'text-size'
,p_colspan=>3
,p_grid_column=>1
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4381902469084273)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--preTextBlock:margin-bottom-none:t-Form-fieldContainer--normalDisplay'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12249608607702310)
,p_name=>'Exit'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(12244695498702240)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12250173298702314)
,p_event_id=>wwv_flow_imp.id(12249608607702310)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12250598642702314)
,p_name=>'New'
,p_event_sequence=>20
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12251008601702315)
,p_event_id=>wwv_flow_imp.id(12250598642702314)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12251477674702315)
,p_name=>'New_1'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12251952370702315)
,p_event_id=>wwv_flow_imp.id(12251477674702315)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'jQuery("#exit").focus();'
);
wwv_flow_imp.component_end;
end;
/
