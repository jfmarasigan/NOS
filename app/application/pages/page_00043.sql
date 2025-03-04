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
,p_step_title=>'Payment Summary'
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
'    escape: (ev) => {',
'        console.log("here1");',
'        ev.preventDefault();',
'        ev.stopPropagation();',
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
'            p43KeyMap[key](ev);',
'        }',
'    });',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// const options = {',
'//     parameters: {',
'',
'//     },',
'//     mode : "CASHERING_SHORT_INVOICE_COURIER_NEW",    ',
'//     printerCallback : (filePath) => {',
'//         qzprint(defaultPrinter, filePath);',
'//     }',
'// };',
'',
'// generateReport("CASHERING_SHORT_INVOICE_COURIER_NEW", "pdf", options);',
'',
'mapP43Keys();'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Dialog-body {',
'    background-color: #056AC8;',
'    /* color: white; */',
'}',
'',
'.t-Dialog-body label, .t-Dialog-body input {',
'    font-size: 1.125rem;',
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
'/* .a-GV-headerLabel a, th.a-GV-header {',
'    background-color: #046BC8;',
'    color: white;',
'} */',
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
'    color: black;',
'    font-size: 1.125rem;',
'    font-family: Arial;',
'    background-color: white;',
'}',
'',
'#payment-summ-reg {',
'    background-color: #046BC8;',
'    color: white;',
'}',
'',
'.t-Form-fieldContainer.rel-col, .t-Form-fieldContainer.rel-col .t-Form-label {',
'    flex-direction: row !important;',
'    color: white;',
'}',
'',
'.t-Form-fieldContainer .t-Form-labelContainer {',
'    padding-block-end: var(--ut-field-padding-y, .5rem) !important;',
'}',
'',
'.t-Form-fieldContainer .t-Form-inputContainer {',
'    padding-block-start: var(--ut-field-padding-y, .5rem) !important;',
'    justify-content: end;',
'}'))
,p_step_template=>wwv_flow_imp.id(4231087530083996)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'450'
,p_dialog_attributes=>'closeOnEscape: false'
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
'SELECT c001 AS Payment_Method, SUM(n001) AS Amount',
'FROM apex_collections',
'WHERE collection_name = ''PAYMENT''',
'AND n001 IS NOT NULL',
'GROUP BY c001;'))
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
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
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
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_attribute_04=>'decimal'
,p_format_mask=>'999G999G999G999G990D00'
,p_is_required=>false
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>false
,p_include_in_export=>false
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
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridViewOptions = {',
'        pagination: {',
'            scroll: true,',
'            virtual: true,',
'            loadMore: false',
'        },',
'        resizeColumns: false,',
'        reorderColumns: false,',
'        footer: false',
'    };',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}',
''))
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
,p_region_name=>'payment-summ-reg'
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
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--primary:t-Button--simple:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>ENTER</u> - End Transaction'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns'
,p_grid_new_row=>'Y'
,p_grid_column_span=>5
,p_grid_column=>5
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(21026507861805150)
,p_button_sequence=>60
,p_button_name=>'Print-Big'
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19653764199695420)
,p_name=>'P43_PAID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(21023794601805122)
,p_prompt=>'<b>Amount Paid: </b>'
,p_format_mask=>'999G999G999G999G990D00'
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
,p_format_mask=>'999G999G999G999G990D00'
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
,p_format_mask=>'999G999G999G999G990D00'
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
 p_id=>wwv_flow_imp.id(28599135406578245)
,p_name=>'P43_CUSTOMER'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(21023794601805122)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70340126897069520)
,p_name=>'P43_INVOICE_NO'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(21023794601805122)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(72263443467359915)
,p_name=>'P43_URL'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(21023794601805122)
,p_use_cache_before_default=>'NO'
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
 p_id=>wwv_flow_imp.id(70340246634069521)
,p_event_id=>wwv_flow_imp.id(28596085345578214)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_name=>'INVOICE NO'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P43_INVOICE_NO'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT n004',
'  FROM apex_collections',
' WHERE collection_name = ''ORDERS'''))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28596192554578215)
,p_event_id=>wwv_flow_imp.id(28596085345578214)
,p_event_result=>'TRUE'
,p_action_sequence=>20
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
'   AND seq_id = 1'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28596293969578216)
,p_event_id=>wwv_flow_imp.id(28596085345578214)
,p_event_result=>'TRUE'
,p_action_sequence=>30
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
'   AND seq_id = 2'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77862164982642520)
,p_event_id=>wwv_flow_imp.id(28596085345578214)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_name=>'PAYMENT 3'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P43_PAYMENT_3'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT c001 ',
'  FROM apex_collections',
' WHERE collection_name = ''PAYMENT''',
'   AND seq_id = 3'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72262053889359901)
,p_event_id=>wwv_flow_imp.id(28596085345578214)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_name=>'PAYMENT TOTAL 1'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P43_PAYMENT_2'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT n001 ',
'  FROM apex_collections',
' WHERE collection_name = ''PAYMENT''',
'   AND seq_id = 2'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72262112471359902)
,p_event_id=>wwv_flow_imp.id(28596085345578214)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_name=>'PAYMENT TOTAL 2'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P43_PAYMENT_2'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT n001 ',
'  FROM apex_collections',
' WHERE collection_name = ''PAYMENT''',
'   AND seq_id = 2'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77862257405642521)
,p_event_id=>wwv_flow_imp.id(28596085345578214)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_name=>'PAYMENT TOTAL 3'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P43_PAYMENT_TOTAL3'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT n001 ',
'  FROM apex_collections',
' WHERE collection_name = ''PAYMENT''',
'   AND seq_id = 3'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28599597194578249)
,p_event_id=>wwv_flow_imp.id(28596085345578214)
,p_event_result=>'TRUE'
,p_action_sequence=>80
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
 p_id=>wwv_flow_imp.id(70340400518069523)
,p_event_id=>wwv_flow_imp.id(28596085345578214)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'Y'
,p_name=>'ORDER WRITER'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P43_ORDER_WRITER'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'v(''APP_USER'')'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25493033470440436)
,p_name=>'Set Value'
,p_event_sequence=>11
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
'SELECT TO_CHAR(SUM(n001), ''FM999G999G999G999D00'')',
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
'SELECT TO_CHAR(n004, ''FM999G999G999G999D00'')',
'  FROM apex_collections',
' WHERE collection_name = ''PAYMENT''',
'   AND seq_id = 1;'))
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
'TO_CHAR(',
'    ROUND(TO_NUMBER(REPLACE(REPLACE(:P43_PAID, ''$'', ''''), '','', '''')), 2) - ',
'    ROUND(TO_NUMBER(REPLACE(REPLACE(:P43_TOTAL, ''$'', ''''), '','', '''')), 2), ',
'    ''FM999999990.00''',
')',
'',
'',
''))
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
 p_id=>wwv_flow_imp.id(70339204199069511)
,p_name=>'Insert'
,p_event_sequence=>12
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70339364507069512)
,p_event_id=>wwv_flow_imp.id(70339204199069511)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Discount ID'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_discount_seq  VARCHAR(1);',
'    v_discount_id   NUMBER;',
'BEGIN',
'    WITH price_summary AS (',
'    SELECT REPLACE(collection_name, ''DISCOUNT_'', '''') AS collection_name,',
'           SUM(n005 - (NVL(n004, 0) * n001)) AS TOTAL_EXTENDED_PRICE',
'    FROM apex_collections',
'    WHERE collection_name IN (''DISCOUNT_A'', ''DISCOUNT_B'', ''DISCOUNT_C'', ''DISCOUNT_D'')',
'    GROUP BY collection_name',
')',
'SELECT collection_name',
'INTO v_discount_seq',
'FROM price_summary',
'WHERE TOTAL_EXTENDED_PRICE = (SELECT MIN(TOTAL_EXTENDED_PRICE)',
'                                FROM price_summary)',
'FETCH FIRST 1 ROW ONLY;',
'BEGIN',
'SELECT n001',
'  INTO v_discount_id',
'  FROM apex_collections',
' WHERE collection_name = ''AVAILABLE_DISCOUNTS''',
'   AND c001 = v_discount_seq;',
'EXCEPTION',
'WHEN NO_DATA_FOUND THEN',
'    v_discount_id := NULL;',
'END;',
'',
'UPDATE NPT033',
'   SET DISCOUNT_ID = CASE ',
'                       WHEN V_DISCOUNT_ID = 0 THEN NULL ',
'                       ELSE V_DISCOUNT_ID ',
'                     END',
' WHERE DISCOUNT_ID = :P35_INVOICE_NO;',
'',
'END;'))
,p_attribute_02=>'P35_INVOICE_NO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70339410617069513)
,p_event_id=>wwv_flow_imp.id(70339204199069511)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'Insert to Table'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_INVOICE_ID    NUMBER;',
'    V_CUSTOMER_ID   NUMBER;',
'BEGIN',
'    SELECT MAX(CASH_INVOICE_ID) INTO V_INVOICE_ID',
'      FROM NPT033 ',
'     WHERE TOTAL_AMOUNT IS NULL',
'       AND USER_CREATED = v(''APP_USER''); ',
'     ',
'    SELECT customer_id INTO V_CUSTOMER_ID',
'      FROM NPT009 ',
'      WHERE DBA = :P35_CUSTOMER_FIELD;',
'',
'    UPDATE NPT033',
'      SET TOTAL_AMOUNT = TO_NUMBER(REPLACE(:P41_TOTAL, '','', '''')),',
'          SUB_TOTAL = TO_NUMBER(REPLACE(:P35_SUB, '','', '''')),',
'          TOTAL_DISCOUNT = TO_NUMBER(REPLACE(:P35_DISCOUNT, '','', '''')),',
'          USER_UPDATE = v(''APP_USER''),',
'          DATE_UPDATED = SYSDATE,',
'          CUSTOMER_ID = V_CUSTOMER_ID',
'      WHERE CASH_INVOICE_ID = V_INVOICE_ID;',
'    ',
'    FOR pay_rec IN (SELECT c001 AS payment_method, n001 AS payment_amount ',
'                  FROM apex_collections',
'                  WHERE collection_name = ''PAYMENT'') ',
'    LOOP',
'    INSERT INTO NPT039 (CASH_INVOICE_ID, PAYMENT_METHOD, AMOUNT)',
'    VALUES (v_invoice_id, pay_rec.payment_method, pay_rec.payment_amount);',
'    END LOOP;',
'    ',
'    FOR d IN (WITH COLLECTION_SUMS AS (',
'    SELECT ''DISCOUNT_A'' AS collection_name, SUM(NVL(n004, 0) * n001) AS TOTAL_EXTENDED_PRICE',
'    FROM apex_collections',
'    WHERE collection_name = ''DISCOUNT_A''',
' ',
'    UNION ALL',
' ',
'    SELECT ''DISCOUNT_B'' AS collection_name, SUM(NVL(n004, 0) * n001) AS TOTAL_EXTENDED_PRICE',
'    FROM apex_collections',
'    WHERE collection_name = ''DISCOUNT_B''',
' ',
'    UNION ALL',
' ',
'    SELECT ''DISCOUNT_C'' AS collection_name, SUM(NVL(n004, 0) * n001) AS TOTAL_EXTENDED_PRICE',
'    FROM apex_collections',
'    WHERE collection_name = ''DISCOUNT_C''',
' ',
'    UNION ALL',
' ',
'    SELECT ''DISCOUNT_D'' AS collection_name, SUM(NVL(n004, 0) * n001) AS TOTAL_EXTENDED_PRICE',
'    FROM apex_collections',
'    WHERE collection_name = ''DISCOUNT_D''',
'),',
'LOWEST_SUM AS (',
'    SELECT collection_name',
'    FROM COLLECTION_SUMS',
'    WHERE TOTAL_EXTENDED_PRICE = (SELECT MAX(TOTAL_EXTENDED_PRICE) FROM COLLECTION_SUMS)',
'    FETCH FIRST 1 ROW ONLY',
')',
'SELECT ',
'    ac.c001 AS ITEM_NO, ',
'    ac.c002 AS CO, ',
'    ac.c003 AS ITEM_DESCRIPTION, ',
'    ac.n001 AS QTY, ',
'    ac.n002 AS REG_PRICE, ',
'    ac.c004 AS UOM, ',
'    NVL(ac.n004, 0) AS DISCOUNTED_PRICE,',
'    NVL(ac.n003, 0) AS DISCOUNT_VALUE, ',
'    CASE ',
'        WHEN ac.n003 <> 0 THEN ''S''',
'        ELSE ''N''',
'    END AS DT,',
'    COALESCE(nm.uom_id, 0) AS uom_id,',
'    ac.n002 - NVL(ac.n004, 0) AS NET_PRICE,',
'    (ac.n002 - NVL(ac.n004, 0)) * ac.n001 AS EXTENDED_PRICE,',
'    ac.c006 AS BARCODE,',
'    ac.c007 AS ITEM_ID',
'FROM apex_collections ac',
'JOIN NIM026 nm ON ac.c004 = UPPER(nm.UOM_CODE)',
'WHERE ac.collection_name IN (SELECT collection_name FROM LOWEST_SUM))',
'        LOOP',
'    INSERT INTO NPT002(',
'        QUANTITY, ',
'        USER_CREATED, ',
'        DATE_CREATED, ',
'        WAREHOUSE_ID, ',
'        ITEM_PRICE, ',
'        UOM_ID, ',
'        ITEM_NUM, ',
'        UOM_CODE, ',
'        BRAND_CODE, ',
'        ITEM_DESC, ',
'        DS, ',
'        DISCOUNTED_PRICE,',
'        DISCOUNT_VALUE,',
'        CASH_INVOICE_ID,',
'        ITEM_ID',
'    )',
'    VALUES (',
'        d.QTY, ',
'        v(''APP_USER''), ',
'        SYSDATE, ',
'        1, ',
'        d.REG_PRICE, ',
'        d.uom_id, ',
'        d.ITEM_NO, ',
'        d.UOM, ',
'        d.CO, ',
'        d.ITEM_DESCRIPTION, ',
'        d.DT, ',
'        NVL(d.DISCOUNTED_PRICE, 0),',
'        d.DISCOUNT_VALUE,',
'        V_INVOICE_ID,',
'        d.ITEM_ID',
'    );',
'   END LOOP;',
'  ',
'END;'))
,p_attribute_02=>'P35_INVOICE_NO,P35_CUSTOMER_FIELD,P35_SUB,P35_DISCOUNT,P35_TOTAL'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72262723374359908)
,p_event_id=>wwv_flow_imp.id(70339204199069511)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>'Update NIT004'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_qty NUMBER;',
'    v_item_id NUMBER;',
'    v_uom_id    NUMBER;',
'    v_inv_no    VARCHAR2(30);',
'BEGIN',
'    FOR rec IN (SELECT n001 AS qty,',
'                       COALESCE(nm.uom_id, 0) AS uom_id,',
'                       c007 AS item_id',
'                  FROM apex_collections ac',
'                  JOIN NIM026 nm ON ac.c004 = UPPER(nm.UOM_CODE)',
'                 WHERE collection_name = ''DISCOUNT_A'')',
'    LOOP',
'        MERGE INTO nit004',
'        USING dual',
'           ON (item_id = rec.item_id AND uom_id = rec.uom_id AND warehouse_id = 1)',
'        WHEN NOT MATCHED THEN',
'            INSERT (item_id, uom_id, warehouse_id, create_user, create_date, update_user, update_date, qty)',
'            VALUES (rec.item_id, rec.uom_id, 1, :APP_USER, sysdate, :APP_USER, sysdate, ABS(rec.qty) * -1)',
'        WHEN MATCHED THEN ',
'            UPDATE SET qty = qty - rec.qty;',
'',
'        v_inv_no := ''CA '' || LPAD(REPLACE(:P43_INVOICE_NO, '','', ''''), 6, ''0'');',
'        item_trans_pkg.log_item_transaction(rec.item_id, 1, rec.uom_id, v_inv_no, SYSDATE, ''O'', null, rec.qty);',
'    END LOOP;',
'END;',
''))
,p_attribute_02=>'P43_INVOICE_NO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72263716901359918)
,p_event_id=>wwv_flow_imp.id(70339204199069511)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_name=>'delay 1sec'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(function() {',
'}, 1000);',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72263632409359917)
,p_event_id=>wwv_flow_imp.id(70339204199069511)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var paidAmount = parseFloat($v("P43_PAID") || 0).toFixed(2);',
'var change = parseFloat($v("P43_CHANGE") || 0).toFixed(2);',
'',
'',
'generateReport("CASHERING_SHORT_INVOICE_COURIER_NEW", "pdf", { ',
'    fileName: "CASHERING_SHORT_INVOICE_COURIER_NEW.pdf",',
'    mode : "print",',
'    parameters : {',
'        P_INVOICE_NO: $v("P43_INVOICE_NO").replace(/,/g, ''''), ',
'        P_CUSTOMER: $v("P43_CUSTOMER"),',
'        P_PAID: paidAmount,',
'        P_CHANGE: change',
'    }',
'});',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(70339849652069517)
,p_name=>'Redirect'
,p_event_sequence=>32
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(21026432234805149)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72263328923359914)
,p_event_id=>wwv_flow_imp.id(70339849652069517)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P43_URL := apex_page.get_url(',
'        p_page        => 35, ',
'        p_clear_cache => ''30,31,35,36,41,43,45,46,47,49,61,62''',
'    );',
'END;',
''))
,p_attribute_03=>'P43_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72263573240359916)
,p_event_id=>wwv_flow_imp.id(70339849652069517)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P43_URL");',
'apex.navigation.redirect(url);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(70341254010069531)
,p_name=>'Print Big Invoice'
,p_event_sequence=>42
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(21026507861805150)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70341320153069532)
,p_event_id=>wwv_flow_imp.id(70341254010069531)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'generateReport("CASHERING_BIG_INVOICE_COURIER_NEW", "pdf", { ',
'    fileName: "CASHIERING_BIG_INVOICE_COURIER_NEW.pdf",',
'    mode : "print",',
'    parameters : {',
'        P_INVOICE_NO: $v("P43_INVOICE_NO").replace(/,/g, ''''), ',
'    }',
'});',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(80850670197851103)
,p_name=>'Show Header'
,p_event_sequence=>52
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80850746434851104)
,p_event_id=>wwv_flow_imp.id(80850670197851103)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(".topless-dialog .ui-dialog-titlebar").css({"display" : "block"});'
);
wwv_flow_imp.component_end;
end;
/
