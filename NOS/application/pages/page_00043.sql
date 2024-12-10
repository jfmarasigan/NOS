prompt --application/pages/page_00043
begin
--   Manifest
--     PAGE: 00043
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
 p_id=>43
,p_name=>'POS Cashiering - Payment Summary'
,p_alias=>'POS-CASHIERING-PAYMENT-SUMMARY'
,p_page_mode=>'MODAL'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APP_FILES#js/qz-tray.min.js',
'#APP_FILES#js/print.min.js'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let printer;',
'let lastSelected = null;',
'',
'const p43KeyMap = {',
'    enter: (v) => {',
'        $("#enter").trigger("click");',
'    },',
'',
'    escape: (v) => {',
'      //',
'    },',
'',
'    p: (v) => {',
'        $("#p").trigger("click");',
'    },',
'',
'}',
'',
'function mapP43Keys() {',
'    $(document).off(''keydown.p43keyevents'');',
'    $(document).on(''keydown.p43keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p43KeyMap[key]) {',
'            ev.preventDefault();',
'            p43KeyMap[key]();',
'        }',
'    });',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const options = {',
'    parameters: {',
'        P_ITEM_DESC: $v("P41_ITEM_DESC"),',
'        P_ITEM_PRICE: $v("P41_ITEM_PRICE"),',
'        P_ITEM_TOTAL: $v("P41_ITEM_TOTAL"),',
'        P_SUB_TOTAL: $v("P43_SUB_TOTAL"),',
'        P_DISCOUNT: $v("P41_DISCOUNT"),',
'        P_OVERALL_TOTAL: $v("P41_OVERALL_TOTAL"),',
'        P_CUSTOMER: $v("P41_CUSTOMER"),',
'        P_PAYMENT1: $v("P43_PAYMENT_1"),',
'        P_PAYMENT2: $v("P43_PAYMENT_2"),',
'        P_CHANGE: $v("P43_CHANGE")',
'    },',
'    mode : "print",    ',
'    printerCallback : (filePath) => {',
'        qzprint(defaultPrinter, filePath);',
'    }',
'};',
'',
'generateReport("NOS_SMALL", "pdf", options);',
'',
'mapP43Keys();'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Dialog-body{',
'    label, input {',
'        font-size: 1.125rem;',
'    }',
'    padding-bottom: 0;',
'    padding-left: 0;',
'}',
'',
'#payment-summary table, ',
'#payment-summary tr,',
'#payment-summary td,',
'#payment-summary th {',
'    font-size: 1.125rem;',
'    font-family: Arial;',
'}',
'',
'.a-GV-hdr .a-GV-table {',
'    width: 100% !important;',
'}',
'',
'.a-GV-headerLabel a, th.a-GV-header {',
'    background-color: #046BC8;',
'    color: white;',
'}',
'',
'.apex-item-display-only {',
'    font-size: 1.125rem;',
'    font-family: Arial;',
'}',
'',
'.align-right {',
'    text-align: right;',
'    display: block; /* Ensures it takes the full width */',
'}',
'',
'.btns {',
'    text-align: center;',
'    color: blue;',
'    font-size: 1.125rem;',
'    font-family: Arial;',
'}'))
,p_step_template=>wwv_flow_imp.id(4231087530083996)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21022301303805108)
,p_plug_name=>'Payment Summary'
,p_region_name=>'payment-summary'
,p_region_template_options=>'#DEFAULT#:margin-left-sm'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT c001 Payment_Method, n001 Amount',
'  FROM apex_collections',
' WHERE collection_name = ''PAYMENT'';'))
,p_plug_source_type=>'NATIVE_IG'
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(21022558219805110)
,p_name=>'PAYMENT_METHOD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PAYMENT_METHOD'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Payment Method'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>10
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(21022656674805111)
,p_name=>'AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AMOUNT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Amount'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>20
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_attribute_04=>'decimal'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(21022442258805109)
,p_internal_uid=>21022442258805109
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
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(21287326443283387)
,p_interactive_grid_id=>wwv_flow_imp.id(21022442258805109)
,p_static_id=>'212874'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(21287595559283390)
,p_report_id=>wwv_flow_imp.id(21287326443283387)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(21288062955283401)
,p_view_id=>wwv_flow_imp.id(21287595559283390)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(21022558219805110)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(21288941947283410)
,p_view_id=>wwv_flow_imp.id(21287595559283390)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(21022656674805111)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21023794601805122)
,p_plug_name=>'Payment'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>40
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(21026432234805149)
,p_button_sequence=>50
,p_button_name=>'End'
,p_button_static_id=>'enter'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--primary:t-Button--simple:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>ENTER</u> - End Transaction'
,p_button_redirect_url=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.:35,41,43,47,36,45::'
,p_button_css_classes=>'btns'
,p_grid_new_row=>'Y'
,p_grid_column_span=>5
,p_grid_column=>5
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(21026507861805150)
,p_button_sequence=>60
,p_button_name=>'Print'
,p_button_static_id=>'p'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--primary:t-Button--simple:t-Button--stretch:t-Button--padTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>P</u> - Print Big Invoice'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns'
,p_grid_new_row=>'Y'
,p_grid_column_span=>5
,p_grid_column=>5
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(38715362799254534)
,p_branch_action=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.:35,36,41,43,47::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19653764199695420)
,p_name=>'P43_PAID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(21023794601805122)
,p_prompt=>'<b>Amount Paid: </b>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19653954520695422)
,p_name=>'P43_TOTAL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(21023794601805122)
,p_prompt=>'<b>Total Amount: </b>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--postTextBlock:t-Form-fieldContainer--boldDisplay'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19654091943695423)
,p_name=>'P43_CHANGE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(21023794601805122)
,p_prompt=>'<b>Change: </b>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28594959845578203)
,p_name=>'P43_PAYMENT_1'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(21023794601805122)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28595021203578204)
,p_name=>'P43_PAYMENT_2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(21023794601805122)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28595981246578213)
,p_name=>'P43_SUB_TOTAL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(21023794601805122)
,p_use_cache_before_default=>'NO'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28598779318578241)
,p_name=>'P43_ITEM_DESC'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(21023794601805122)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28598806018578242)
,p_name=>'P43_ITEM_PRICE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(21023794601805122)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28598968027578243)
,p_name=>'P43_OVERALL_TOTAL'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(21023794601805122)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28599096203578244)
,p_name=>'P43_ITEM_TOTAL'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(21023794601805122)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28599135406578245)
,p_name=>'P43_CUSTOMER'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(21023794601805122)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28599617600578250)
,p_name=>'P43_DISCOUNT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(21023794601805122)
,p_use_cache_before_default=>'NO'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28596085345578214)
,p_name=>'Set Value Hidden Items'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28596192554578215)
,p_event_id=>wwv_flow_imp.id(28596085345578214)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_name=>'PAYMENT 1'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P43_PAYMENT_1'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT c001 ',
'  FROM apex_collections',
' WHERE collection_name = ''PAYMENT''',
'   AND seq_id = (SELECT MIN(seq_id) ',
'                   FROM apex_collections',
'                  WHERE collection_name = ''PAYMENT'');'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28596293969578216)
,p_event_id=>wwv_flow_imp.id(28596085345578214)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_name=>'PAYMENT 2'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P43_PAYMENT_2'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT c001 ',
'  FROM apex_collections',
' WHERE collection_name = ''PAYMENT''',
'   AND seq_id = (SELECT MAX(seq_id) ',
'                   FROM apex_collections',
'                  WHERE collection_name = ''PAYMENT'');'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28599205116578246)
,p_event_id=>wwv_flow_imp.id(28596085345578214)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_name=>'ITEM DESC'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P43_ITEM_DESC'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT c003',
'  FROM apex_collections',
' WHERE collection_name = ''PURCHASE'''))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28599396146578247)
,p_event_id=>wwv_flow_imp.id(28596085345578214)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_name=>'ITEM PRICE'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P43_ITEM_PRICE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TO_CHAR( NVL(n002, 0),''L999G999G990D99'' ) ',
'  FROM apex_collections',
' WHERE collection_name = ''PURCHASE'''))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28596343206578217)
,p_event_id=>wwv_flow_imp.id(28596085345578214)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_name=>'SUB-TOTAL'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P43_SUB_TOTAL'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TO_CHAR( NVL(n001, 0),''L999G999G990D99'' ) ',
'  FROM apex_collections',
' WHERE collection_name = ''ORDERS''',
' AND seq_id = (SELECT MAX(seq_id) ',
'                   FROM apex_collections',
'                  WHERE collection_name = ''ORDERS'');'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28599409401578248)
,p_event_id=>wwv_flow_imp.id(28596085345578214)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_name=>'OVERALL TOTAL'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P43_OVERALL_TOTAL'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TO_CHAR( NVL(n003, 0),''L999G999G990D99'' ) ',
'  FROM apex_collections',
' WHERE collection_name = ''ORDERS'''))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28599597194578249)
,p_event_id=>wwv_flow_imp.id(28596085345578214)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_name=>'CUSTOMER'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P43_CUSTOMER'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT c001',
'  FROM apex_collections',
' WHERE collection_name = ''ORDERS'''))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29424343421978924)
,p_event_id=>wwv_flow_imp.id(28596085345578214)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'Y'
,p_name=>'DISCOUNT'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P43_DISCOUNT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TO_CHAR( NVL(n002, ''''),''L999G999G990D99'' ) ',
'  FROM apex_collections',
' WHERE collection_name = ''ORDERS'''))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25493033470440436)
,p_name=>'Set Value'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25493187883440437)
,p_event_id=>wwv_flow_imp.id(25493033470440436)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_name=>'Paid'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P43_PAID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TO_CHAR(SUM(n001), ''FM999999999.00'')',
'  FROM apex_collections',
' WHERE collection_name = ''PAYMENT'''))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40393533430268840)
,p_event_id=>wwv_flow_imp.id(25493033470440436)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_name=>'Total'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P43_TOTAL'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TO_CHAR(SUM(n004), ''FM999999999.00'')',
'  FROM apex_collections',
' WHERE collection_name = ''PAYMENT'''))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25493230632440438)
,p_event_id=>wwv_flow_imp.id(25493033470440436)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_name=>'Change'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P43_CHANGE'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- TO_CHAR(',
'--     TO_NUMBER(REPLACE(REPLACE(:P43_PAID, ''$'', ''''), '','', '''')) ',
'--   - TO_NUMBER(REPLACE(REPLACE(:P43_TOTAL, ''$'', ''''), '','', '''')), ',
'--   ''FM9999.00''',
'-- )',
'TO_CHAR(:P43_PAID - :P43_TOTAL, ''FM9990.00'' )'))
,p_attribute_07=>'P43_PAID,P43_TOTAL'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23635085373246311)
,p_event_id=>wwv_flow_imp.id(25493033470440436)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(21023794601805122)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25492553851440431)
,p_event_id=>wwv_flow_imp.id(25493033470440436)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(21022301303805108)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27426919697078119)
,p_name=>'Print Small Ticket'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(21026507861805150)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27427037970078120)
,p_event_id=>wwv_flow_imp.id(27426919697078119)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Print'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const options = {',
'    parameters: {',
'        P_ITEM_DESC: $v("P41_ITEM_DESC"),',
'        P_ITEM_PRICE: $v("P41_ITEM_PRICE"),',
'        P_ITEM_TOTAL: $v("P41_ITEM_TOTAL"),',
'        P_SUB_TOTAL: $v("P43_SUB_TOTAL"),',
'        P_DISCOUNT: $v("P41_DISCOUNT"),',
'        P_OVERALL_TOTAL: $v("P41_OVERALL_TOTAL"),',
'        P_CUSTOMER: $v("P41_CUSTOMER"),',
'        P_PAYMENT1: $v("P43_PAYMENT_1"),',
'        P_PAYMENT2: $v("P43_PAYMENT_2"),',
'        P_CHANGE: $v("P43_CHANGE")',
'    },',
'    mode : "print",    ',
'    printerCallback : (filePath) => {',
'        qzprint(defaultPrinter, filePath);',
'    }',
'};',
'',
'generateReport("NOS_SMALL", "pdf", options);'))
,p_build_option_id=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28595378072578207)
,p_event_id=>wwv_flow_imp.id(27426919697078119)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'Export'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'generateReport("NOS_SMALL", "pdf", { ',
'    fileName: "NOS_SMALL.pdf",',
'    mode : "export",',
'    parameters : {',
'        P_ITEM_DESC: $v("P41_ITEM_DESC"),',
'        P_ITEM_PRICE: $v("P43_ITEM_PRICE"),',
'        P_ITEM_TOTAL: $v("P43_ITEM_TOTAL"),',
'        P_SUB_TOTAL: $v("P43_SUB_TOTAL"),',
'        P_DISCOUNT: $v("P43_DISCOUNT"),',
'        P_OVERALL_TOTAL: $v("P43_OVERALL_TOTAL"),',
'        P_CUSTOMER: $v("P43_CUSTOMER"),',
'        P_PAYMENT1: $v("P43_PAYMENT_1"),',
'        P_PAYMENT2: $v("P43_PAYMENT_2"),',
'        P_CHANGE: $v("P43_CHANGE")',
'    }',
'});',
'',
'console.log("P_ITEM_DESC: ", $v("P41_ITEM_DESC"));',
'console.log("P_ITEM_PRICE: ", $v("P43_ITEM_PRICE"));',
'console.log("P_ITEM_TOTAL: ", $v("P43_ITEM_TOTAL"));',
'console.log("P_SUB_TOTAL: ", $v("P43_SUB_TOTAL"));',
'console.log("P_DISCOUNT: ", $v("P43_DISCOUNT"));',
'console.log("P_OVERALL_TOTAL: ", $v("P43_OVERALL_TOTAL"));',
'console.log("P_CUSTOMER: ", $v("P43_CUSTOMER"));',
'console.log("P_PAYMENT1: ", $v("P43_PAYMENT_1"));',
'console.log("P_PAYMENT2: ", $v("P43_PAYMENT_2"));',
'console.log("P_CHANGE: ", $v("P43_CHANGE"));',
''))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(29422030652978901)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'INSERT TO TABLE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    CURSOR c_collections IS',
'        SELECT c001, c002, c003, c004, c005, n001, n002, n003',
'        FROM apex_collections',
'        WHERE collection_name = ''PURCHASE'';',
'',
'    v_item_id      VARCHAR2(50);',
'    v_invoice_id   NUMBER;',
'    v_item_cd      NUMBER;',
'    v_item_desc    VARCHAR2(50);',
'    v_uom          VARCHAR2(10);',
'    v_class        VARCHAR2(10);',
'    v_qty          NUMBER;',
'    v_price        NUMBER;',
'    v_total        NUMBER;',
'    v_total_price   NUMBER;',
'    v_change        NUMBER;',
'BEGIN',
'    FOR r IN c_collections LOOP',
'        v_invoice_id := r.c001;   -- Assuming this is your invoice ID',
'        v_item_cd := r.c002;      -- Adjust accordingly',
'        v_item_desc := r.c003;    -- Adjust accordingly',
'        v_uom := r.c004;          -- Adjust accordingly',
'        v_class := r.c005;        -- Adjust accordingly',
'        v_qty := r.n001;          -- Adjust accordingly',
'        v_price := r.n002;        -- Adjust accordingly',
'        v_total := r.n003;        -- Adjust accordingly',
'',
'    ',
'    SELECT n003 into v_total_price',
'      FROM apex_collections',
'     WHERE collection_name = ''ORDERS'';',
'',
'     SELECT sum(n001) - sum(n002) INTO v_change',
'       FROM apex_collections',
'      WHERE collection_name = ''PAYMENT'';',
'',
'        INSERT INTO NPT001 (',
'            invoice_id,',
'            customer_id,',
'            invoice_type_id,',
'            quotation_id,',
'            tax_id,',
'            discount_id,',
'            total_price,',
'            net_price,',
'            change,',
'            user_created,',
'            date_created',
'        )',
'        VALUES (',
'            v_invoice_id,',
'            '''',   ',
'            v_invoice_id,',
'            '''',',
'            '''',',
'            '''',',
'            v_total_price,',
'            v_price,',
'            v_change,',
'            USER,',
'            SYSDATE',
'        );',
'        -- Insert the fetched values into NPT002 table',
'        INSERT INTO NPT002 (',
'            item_invoice_id,',
'            invoice_id,',
'            item_id,',
'            quantity,',
'            item_price,',
'            user_created,',
'            date_created,',
'            warehouse_id',
'        )',
'        VALUES (',
'            v_invoice_id,',
'            v_invoice_id,   -- Confirm if this is intended',
'            v_item_cd,',
'            v_qty,',
'            v_price,',
'            USER,',
'            SYSDATE,',
'            v_invoice_id    -- Confirm if this is intended',
'        );',
'    END LOOP;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        -- Handle errors',
'        RAISE_APPLICATION_ERROR(-20001, ''Error inserting data: '' || SQLERRM);',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
,p_internal_uid=>29422030652978901
);
wwv_flow_imp.component_end;
end;
/
