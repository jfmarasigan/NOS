prompt --application/pages/page_00150
begin
--   Manifest
--     PAGE: 00150
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
 p_id=>150
,p_name=>'Payments Map (Customer)'
,p_alias=>'PAYMENTS-MAP-CUSTOMER'
,p_step_title=>'Payments Map (Customer)'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#js/cmn#MIN#.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p150KeyMapMenu = {',
'    escape : (v) => {',
'        $("#esc").trigger("click");',
'    },',
'    c : (v) => {',
'        $("#c").trigger("click");',
'    },',
'    d : (v) => {',
'        $("#d").trigger("click");',
'    },',
'    p : (v) => {',
'        $("#print").trigger("click");',
'    },',
'    n : (v) => {',
'        $("#navigate").trigger("click");',
'    },',
'    h : (v) => {',
'        $("#export").trigger("click");',
'    },',
'    enter : (v) => {',
'        $("#refresh").trigger("click");',
'    }',
'}',
'',
'',
'function mapP150KeysMenu() {',
'    $(document).off(''keydown.p150keyevents'');',
'    $(document).on(''keydown.p150keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p150KeyMapMenu[key]) {',
'            ev.preventDefault();',
'            p150KeyMapMenu[key]();',
'        }',
'    });',
'}',
'',
'',
'function handleTabNavigation() {',
'',
'    $("#P150_DBA, #P150_DATE_FROM, #P150_DATE_TO").attr("tabindex", 0);',
'    $(":focusable").not("#P150_DBA, #P150_DATE_FROM, #P150_DATE_TO").attr("tabindex", -1);',
'    ',
'    const firstTableCells = $("#payment_ig_grid_vc .a-GV-cell");',
'    const secondTableCells = $("#invoice-list_ig_grid_vc .a-GV-cell");',
'',
'    firstTableCells.on("keydown", function (event) {',
'    if (event.key === "tab" && !event.shiftKey) { ',
'        event.preventDefault(); ',
'        secondTableCells.first().trigger("click").focus(); ',
'    }',
'});',
'',
'    secondTableCells.on("keydown", function (event) {',
'    if (event.key === "tab" && event.shiftKey) { ',
'        event.preventDefault(); ',
'        firstTableCells.last().trigger("click").focus(); ',
'    }',
'});',
'',
'}',
'',
'',
'function isValidDate(dateString) {',
'    const dateFormatRegex = /^(0[1-9]|1[0-2])\/(0[1-9]|[12][0-9]|3[01])\/\d{4}$/;',
'    if (!dateFormatRegex.test(dateString)) {',
'        return false;',
'    }',
'',
'    const [month, day, year] = dateString.split("/").map(Number);',
'    const date = new Date(year, month - 1, day);',
'',
'    return date.getFullYear() === year &&',
'           date.getMonth() === month - 1 &&',
'           date.getDate() === day;',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP150KeysMenu();',
'',
'setTitle("Payments Map");',
'$x(''P150_DBA'').focus();',
'',
'handleTabNavigation();',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.btns {',
'    font-size: 1.125rem;',
'    color: white;',
'}',
'',
'.buttons-row {',
'    position: absolute;',
'    width: 98vw;',
'    bottom: 1.75rem;',
'}',
'',
'#dba-and-date label, #summary label, #summary span {',
'    font-size: 1.125rem;',
'    color: white;',
'}',
'#dba-and-date input {',
'    font-size: 1.125rem;',
'}',
'',
'.t-Form-labelContainer:has(> #P150_DBA_LABEL),',
'.t-Form-labelContainer:has(> #P150_DATE_FROM_LABEL),',
'.t-Form-labelContainer:has(> #P150_TOTAL_PAYMENT_LABEL),',
'.t-Form-labelContainer:has(> #P150_TOTAL_CREDIT_MEMO_LABEL) {',
'    text-align: start;',
'}',
'.t-Form-labelContainer:has(> #P150_DATE_TO_LABEL) {',
'    text-align: center;',
'}',
'',
'/*',
'#invoice-list .a-IG {',
'    height: calc(50vh + 2px) !important;',
'} ',
'',
'#invoice-list .a-IG-contentContainer,',
'#invoice-list .a-IG-gridView.a-GV {',
'    height: 50vh !important;',
'}',
'',
'#invoice-list .a-GV-bdy {',
'    height: calc(50vh - 2.5625rem) !important;',
'}',
'*/',
'',
'',
'#payment .a-IG, #invoice-list .a-IG {',
'    height: calc(55vh + 2px) !important;',
'} ',
'',
'#payment .a-IG-contentContainer,',
'#payment .a-IG-gridView.a-GV,',
'#invoice-list .a-IG-contentContainer,',
'#invoice-list .a-IG-gridView.a-GV {',
'    height: 55vh !important;',
'}',
'',
'#payment .a-GV-bdy,',
'#invoice-list .a-GV-bdy{',
'    height: calc(55vh - 2.5625rem) !important;',
'}',
'',
'',
'',
'.t-Header .t-Header-branding {',
'    background-color: white !important;',
'    color: rgb(30, 58, 138) !important;',
'}',
'',
'',
'body {',
'    background-color: rgb(30, 58, 138);',
'}',
'',
'.text-left {',
'    text-align: left;',
'}',
'',
'#payment table,',
'#payment tr,',
'#payment td,',
'#payment th,',
'#invoice-list table,',
'#invoice-list tr,',
'#invoice-list td,',
'#invoice-list th {',
'    font-size: 1.125rem;',
'}',
'',
'#payment_ig, ',
'#invoice-list_ig {',
'    border: 0.0625rem solid black;',
'}',
'',
'.a-GV-table .a-GV-cell, th.a-GV-header {',
'    border-color: black;',
'}',
'',
'.a-GV-header a, th.a-GV-header {',
'    background-color: #046BC8;',
'    color: white;',
'}',
'',
'.ui-dialog .ui-dialog-titlebar {',
'    background-color: #046BC8;',
'    color: white;',
'}',
'',
'',
'.a-GV-hdr .a-GV-table {',
'    width: 100% !important;',
'}',
'',
' /* Hide scrollbar for Chrome, Safari and Opera */',
'html::-webkit-scrollbar {',
'  display: none;',
'}',
'',
'',
'html {',
'  -ms-overflow-style: none;',
'  scrollbar-width: none; ',
'} ',
'',
'.a-GV-w-scroll::-webkit-scrollbar {',
'  display: none;',
'}',
' ',
'.a-GV-w-scroll {',
'  -ms-overflow-style: none;  ',
'  scrollbar-width: none; ',
'}',
'',
'.text-white {',
'    color: white;',
'}',
'',
'.label-font-size {',
'    font-size: 1.125rem;',
'}',
'',
'.hiddenbtn {',
'    display: none;',
'}',
'',
'.t-Form-error {',
'    color: #FFD700;',
'}',
'',
'#P150_DATE_FROM_error_placeholder, P150_DATE_TO_error_placeholder {',
'    display: inline !important;',
'}'))
,p_step_template=>wwv_flow_imp.id(5671392681337017)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19847714298977041)
,p_plug_name=>'Summary'
,p_region_name=>'summary'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody:margin-bottom-none'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>60
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>4
,p_plug_display_column=>8
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41787619939876147)
,p_plug_name=>'Customer Payment'
,p_region_name=>'payment'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>90
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>5
,p_plug_display_column=>2
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    NPT005.date_created AS "Date Paid",',
'    NPT005.cashcheck AS "Cash/Check",',
'    NPT005.amount AS "Paid Amount",',
'    NPT005.OR_NO AS "OR No.",',
'    NPM015.collection_type_name AS "Type",',
'    NPT005.collection_id AS "Collection ID",',
'    NPT001.customer_id AS "Customer ID"',
'FROM',
'    NPT005',
'JOIN ',
'    NPM015 ON NPT005.collection_type_id = NPM015.collection_type_id',
'JOIN ',
'    NPT038 ON NPT005.collection_id = NPT038.collection_id',
'JOIN',
'    NPT001 ON NPT038.invoice_id = NPT001.invoice_id',
'JOIN ',
'    NPT009 ON NPT001.customer_id = NPT009.customer_id',
'WHERE',
'    UPPER(NPT009.DBA) = UPPER(:P150_DBA)',
'AND',
'    TRUNC(NPT005.DATE_CREATED) BETWEEN :P150_DATE_FROM AND :P150_DATE_TO;',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P150_DBA,P150_DATE_FROM,P150_DATE_TO'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(41787887924876149)
,p_name=>'Date Paid'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'Date Paid'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Date Paid'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_is_required=>true
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    };',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(41787998166876150)
,p_name=>'Cash/Check'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'Cash/Check'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cash&#x2F;check'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>52
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    };',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(42954249005722501)
,p_name=>'Paid Amount'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'Paid Amount'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Paid Amount'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>true
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    };',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(42954357661722502)
,p_name=>'OR No.'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OR No.'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Or No.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'CENTER'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>false
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    };',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(42954488806722503)
,p_name=>'Type'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'Type'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Type'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>80
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    };',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(42955821343722517)
,p_name=>'Customer ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'Customer ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>80
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(42956634971722525)
,p_name=>'Collection ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'Collection ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(41787738197876148)
,p_internal_uid=>41787738197876148
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>false
,p_show_toolbar=>false
,p_toolbar_buttons=>null
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>false
,p_define_chart_view=>false
,p_enable_download=>false
,p_download_formats=>null
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>400
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
'        footer: false',
'    };',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(42960748934723179)
,p_interactive_grid_id=>wwv_flow_imp.id(41787738197876148)
,p_static_id=>'429608'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(42960943908723181)
,p_report_id=>wwv_flow_imp.id(42960748934723179)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(42961429956723187)
,p_view_id=>wwv_flow_imp.id(42960943908723181)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(41787887924876149)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>101.55
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(42962378040723214)
,p_view_id=>wwv_flow_imp.id(42960943908723181)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(41787998166876150)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>152.033
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(42963278552723223)
,p_view_id=>wwv_flow_imp.id(42960943908723181)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(42954249005722501)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>130.817
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(42964166991723232)
,p_view_id=>wwv_flow_imp.id(42960943908723181)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(42954357661722502)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>127.8
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(42965029782723243)
,p_view_id=>wwv_flow_imp.id(42960943908723181)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(42954488806722503)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43889476092462814)
,p_view_id=>wwv_flow_imp.id(42960943908723181)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(42955821343722517)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(44371113169899698)
,p_view_id=>wwv_flow_imp.id(42960943908723181)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(42956634971722525)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(42958205511722541)
,p_plug_name=>'Payment Empty Header'
,p_plug_display_sequence=>70
,p_plug_grid_column_span=>5
,p_plug_display_column=>2
,p_location=>null
,p_plug_source=>'<h3 style="visibility: hidden;color:white;font-size:1.125rem;">Payment</h3>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(58726409560579468)
,p_plug_name=>'Buttons'
,p_plug_display_sequence=>120
,p_plug_grid_row_css_classes=>'buttons-row'
,p_plug_grid_column_span=>10
,p_plug_display_column=>2
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(58726513780579469)
,p_plug_name=>'DBA & Date'
,p_region_name=>'dba-and-date'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody:margin-bottom-none'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>50
,p_plug_grid_column_span=>5
,p_plug_display_column=>2
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(58727605027579480)
,p_plug_name=>'Invoice List'
,p_region_name=>'invoice-list'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>110
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>4
,p_plug_display_column=>8
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'NPT001.date_created AS Invoice_Date,',
'NPT001.invoice_id AS Invoice_No,',
'NPT001.total_amount AS Amount_Paid',
'FROM NPT001',
'JOIN NPT038 ON NPT038.INVOICE_ID = NPT001.INVOICE_ID',
'WHERE NPT038.COLLECTION_ID = :P150_SELECTED_COLLECTION_ID',
'AND NPT001.CUSTOMER_ID = :P150_SELECTED_CUSTOMER_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P150_SELECTED_COLLECTION_ID,P150_SELECTED_CUSTOMER_ID'
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
 p_id=>wwv_flow_imp.id(19847467544977038)
,p_name=>'INVOICE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INVOICE_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Invoice Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>10
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    };',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19847534790977039)
,p_name=>'INVOICE_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INVOICE_NO'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Invoice No'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    };',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19847610377977040)
,p_name=>'AMOUNT_PAID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AMOUNT_PAID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Amount Paid'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    };',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(58727696135579481)
,p_internal_uid=>58727696135579481
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>false
,p_show_toolbar=>false
,p_toolbar_buttons=>null
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>false
,p_define_chart_view=>false
,p_enable_download=>false
,p_download_formats=>null
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>400
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
'        footer: false',
'    };',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(63479396619166922)
,p_interactive_grid_id=>wwv_flow_imp.id(58727696135579481)
,p_static_id=>'150998'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(63479544083166922)
,p_report_id=>wwv_flow_imp.id(63479396619166922)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(33495789378998415)
,p_view_id=>wwv_flow_imp.id(63479544083166922)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(19847467544977038)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(33496656834998423)
,p_view_id=>wwv_flow_imp.id(63479544083166922)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(19847534790977039)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(33497570307998429)
,p_view_id=>wwv_flow_imp.id(63479544083166922)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(19847610377977040)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(58728472950579489)
,p_plug_name=>'Invoice List Header'
,p_plug_display_sequence=>100
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>4
,p_plug_display_column=>8
,p_location=>null
,p_plug_source=>'<h3 style="color:white;font-size:1.125rem;">Invoice List</h3>'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33414195759636867)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(58726409560579468)
,p_button_name=>'Change_Customer_DBA'
,p_button_static_id=>'c'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>C</u> - Change Customer DBA'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'Y'
,p_grid_column_span=>3
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33414589668636867)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(58726409560579468)
,p_button_name=>'Change_Date'
,p_button_static_id=>'d'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>D</u> - Change Date'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(42958664468722545)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(58726409560579468)
,p_button_name=>'Navigation'
,p_button_static_id=>'navigate'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>N</u> - Navigation'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33414936203636867)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(58726409560579468)
,p_button_name=>'Print'
,p_button_static_id=>'print'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>P</u> - Print'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33415379272636868)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(58726409560579468)
,p_button_name=>'Export'
,p_button_static_id=>'export'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>H</u> - Export'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(42954532750722504)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(58726409560579468)
,p_button_name=>'Enter'
,p_button_static_id=>'refresh'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Enter'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'hiddenbtn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33416973736636870)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(58726409560579468)
,p_button_name=>'Escape'
,p_button_static_id=>'esc'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'-'
,p_button_redirect_url=>'f?p=&APP_ID.:306:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'hiddenbtn'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19847827011977042)
,p_name=>'P150_TOTAL_PAYMENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(19847714298977041)
,p_item_default=>'0.00'
,p_prompt=>'Total Payment Received:'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>6
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19847963950977043)
,p_name=>'P150_TOTAL_CREDIT_MEMO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(19847714298977041)
,p_item_default=>'0.00'
,p_prompt=>'Total Credit Memo Used:'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>6
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42955677676722515)
,p_name=>'P150_SYSDATE'
,p_item_sequence=>20
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42955934410722518)
,p_name=>'P150_SELECTED_COLLECTION_ID'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42956065964722519)
,p_name=>'P150_SELECTED_CUSTOMER_ID'
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58727245135579473)
,p_name=>'P150_DBA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(58726513780579469)
,p_prompt=>'DBA<span style="color:red;">*</span>: '
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>7
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58727333736579474)
,p_name=>'P150_DATE_FROM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(58726513780579469)
,p_prompt=>'Date<span style="color:red;">*</span>:  '
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>10
,p_colspan=>5
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58727492050579475)
,p_name=>'P150_DATE_TO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(58726513780579469)
,p_prompt=>'To'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>10
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33423843382636884)
,p_name=>'Refresh Tables'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P150_DATE_TO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33424889699636885)
,p_event_id=>wwv_flow_imp.id(33423843382636884)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(41787619939876147)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42954939448722508)
,p_name=>'Get Focus'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P150_DBA'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusin'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42955061406722509)
,p_event_id=>wwv_flow_imp.id(42954939448722508)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).off(''keydown.p150keyevents'');',
'',
'$(".ui-dialog-datepicker").css("display", "none");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33426170615636887)
,p_name=>'Lose Focus'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P150_DBA'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42955300119722512)
,p_event_id=>wwv_flow_imp.id(33426170615636887)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mapP150KeysMenu();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45404839257371509)
,p_event_id=>wwv_flow_imp.id(33426170615636887)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let field1 = $v("P150_DBA");',
'',
'if (!field1) {',
'    apex.message.showErrors({',
'        type: "error",',
'        location: "inline",',
'        pageItem: "P150_DBA",',
'        message: "Field cannot be empty."',
'    });',
'    $("#P150_DBA").addClass("error-highlight");',
'    hasError = true;',
'} else {',
'    apex.message.clearErrors("P150_DBA");',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33427175657636887)
,p_event_id=>wwv_flow_imp.id(33426170615636887)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(41787619939876147)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45404628486371507)
,p_event_id=>wwv_flow_imp.id(33426170615636887)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P150_TOTAL_PAYMENT'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_total_paid NUMBER := 0;',
'BEGIN',
'    SELECT ',
'        SUM(NPT005.amount)',
'    INTO',
'        v_total_paid',
'    FROM',
'        NPT005',
'    JOIN ',
'        NPT038 ON NPT005.collection_id = NPT038.collection_id',
'    JOIN',
'        NPT001 ON NPT038.invoice_id = NPT001.invoice_id',
'    JOIN ',
'        NPT009 ON NPT001.customer_id = NPT009.customer_id',
'    WHERE',
'        UPPER(NPT009.DBA) = UPPER(:P150_DBA)',
'    AND',
'        TRUNC(NPT005.DATE_CREATED) BETWEEN :P150_DATE_FROM AND :P150_DATE_TO',
'    AND',
'        UPPER(NPT005.CASHCHECK) NOT LIKE ''%CMEMO%'';',
'',
'    RETURN NVL(TO_CHAR(v_total_paid, ''FM999990.00''), ''0.00'');',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        RETURN ''0.00'';',
'',
'END;'))
,p_attribute_07=>'P150_DBA,P150_DATE_FROM,P150_DATE_TO'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P150_DATE_FROM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45404751789371508)
,p_event_id=>wwv_flow_imp.id(33426170615636887)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P150_TOTAL_CREDIT_MEMO'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_total_credit NUMBER := 0;',
'BEGIN',
'    SELECT ',
'        SUM(NPT005.amount)',
'    INTO',
'        v_total_credit',
'    FROM',
'        NPT005',
'    JOIN ',
'        NPT038 ON NPT005.collection_id = NPT038.collection_id',
'    JOIN',
'        NPT001 ON NPT038.invoice_id = NPT001.invoice_id',
'    JOIN ',
'        NPT009 ON NPT001.customer_id = NPT009.customer_id',
'    WHERE',
'        UPPER(NPT009.DBA) = UPPER(:P150_DBA)',
'    AND',
'        TRUNC(NPT005.DATE_CREATED) BETWEEN :P150_DATE_FROM AND :P150_DATE_TO',
'    AND',
'        UPPER(NPT005.CASHCHECK) LIKE ''%CMEMO%'';',
'',
'    RETURN NVL(TO_CHAR(v_total_credit, ''FM999990.00''), ''0.00'');',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        RETURN ''0.00'';',
'',
'END;'))
,p_attribute_07=>'P150_DBA,P150_DATE_FROM,P150_DATE_TO'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P150_DATE_FROM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33428096881636890)
,p_name=>'Focus on DBA'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(33414195759636867)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33428580018636890)
,p_event_id=>wwv_flow_imp.id(33428096881636890)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P150_DBA'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33428954822636892)
,p_name=>'Focus on Date'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(33414589668636867)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33429401470636892)
,p_event_id=>wwv_flow_imp.id(33428954822636892)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P150_DATE_FROM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42954642430722505)
,p_name=>'Click Enter'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(42954532750722504)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42956307454722522)
,p_event_id=>wwv_flow_imp.id(42954642430722505)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.message.clearErrors();',
'',
'let field1 = $v("P150_DBA");',
'let field2 = $v("P150_DATE_FROM");',
'let field3 = $v("P150_DATE_TO");',
'',
'let hasError = false;',
'',
'',
'if (!field1) {',
'    apex.message.showErrors({',
'        type: "error",',
'        location: "inline",',
'        pageItem: "P150_DBA",',
'        message: "Field cannot be empty."',
'    });',
'    $("#P150_DBA").addClass("error-highlight");',
'    hasError = true;',
'}',
'',
'',
'if (!field2) {',
'    apex.message.showErrors({',
'        type: "error",',
'        location: "inline",',
'        pageItem: "P150_DATE_FROM",',
'        message: "Field cannot be empty."',
'    });',
'    $("#P150_DATE_FROM").addClass("error-highlight");',
'    hasError = true;',
'} else if (!isValidDate(field2)) {',
'    apex.message.showErrors({',
'        type: "error",',
'        location: "inline",',
'        pageItem: "P150_DATE_FROM",',
'        message: "Invalid date format."',
'    });',
'    $("#P150_DATE_FROM").addClass("error-highlight");',
'    hasError = true;',
'}',
'',
'',
'if (!field3) {',
'    apex.message.showErrors({',
'        type: "error",',
'        location: "inline",',
'        pageItem: "P150_DATE_TO",',
'        message: "Field cannot be empty."',
'    });',
'    $("#P150_DATE_TO").addClass("error-highlight");',
'    hasError = true;',
'} else if (!isValidDate(field3)) {',
'    apex.message.showErrors({',
'        type: "error",',
'        location: "inline",',
'        pageItem: "P150_DATE_TO",',
'        message: "Invalid date format."',
'    });',
'    $("#P150_DATE_TO").addClass("error-highlight");',
'    hasError = true;',
'}',
'',
'',
'if (hasError){',
'    apex.da.cancel();',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45405930702371520)
,p_event_id=>wwv_flow_imp.id(42954642430722505)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(41787619939876147)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42957219709722531)
,p_event_id=>wwv_flow_imp.id(42954642430722505)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P150_TOTAL_PAYMENT'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_total_paid NUMBER := 0;',
'BEGIN',
'    SELECT ',
'        SUM(NPT005.amount)',
'    INTO',
'        v_total_paid',
'    FROM',
'        NPT005',
'    JOIN ',
'        NPT038 ON NPT005.collection_id = NPT038.collection_id',
'    JOIN',
'        NPT001 ON NPT038.invoice_id = NPT001.invoice_id',
'    JOIN ',
'        NPT009 ON NPT001.customer_id = NPT009.customer_id',
'    WHERE',
'        UPPER(NPT009.DBA) = UPPER(:P150_DBA)',
'    AND',
'        TRUNC(NPT005.DATE_CREATED) BETWEEN :P150_DATE_FROM AND :P150_DATE_TO',
'    AND',
'        UPPER(NPT005.CASHCHECK) NOT LIKE ''%CMEMO%'';',
'',
'    RETURN NVL(TO_CHAR(v_total_paid, ''FM999990.00''), ''0.00'');',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        RETURN ''0.00'';',
'',
'END;'))
,p_attribute_07=>'P150_DBA,P150_DATE_FROM,P150_DATE_TO'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42957760702722536)
,p_event_id=>wwv_flow_imp.id(42954642430722505)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P150_TOTAL_CREDIT_MEMO'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_total_credit NUMBER := 0;',
'BEGIN',
'    SELECT ',
'        SUM(NPT005.amount)',
'    INTO',
'        v_total_credit',
'    FROM',
'        NPT005',
'    JOIN ',
'        NPT038 ON NPT005.collection_id = NPT038.collection_id',
'    JOIN',
'        NPT001 ON NPT038.invoice_id = NPT001.invoice_id',
'    JOIN ',
'        NPT009 ON NPT001.customer_id = NPT009.customer_id',
'    WHERE',
'        UPPER(NPT009.DBA) = UPPER(:P150_DBA)',
'    AND',
'        TRUNC(NPT005.DATE_CREATED) BETWEEN :P150_DATE_FROM AND :P150_DATE_TO',
'    AND',
'        UPPER(NPT005.CASHCHECK) LIKE ''%CMEMO%'';',
'',
'    RETURN NVL(TO_CHAR(v_total_credit, ''FM999990.00''), ''0.00'');',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        RETURN ''0.00'';',
'',
'END;'))
,p_attribute_07=>'P150_DBA,P150_DATE_FROM,P150_DATE_TO'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45406506979371526)
,p_event_id=>wwv_flow_imp.id(42954642430722505)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const interval = setInterval(() => {',
'    if ($("#payment_ig_grid_vc .a-GV-cell").length > 0) {',
'        clearInterval(interval);',
'        $("#payment_ig_grid_vc .a-GV-cell").first().trigger("click");',
'',
'',
'        const waitForValue = setInterval(() => {',
'            if ($v("P150_SELECTED_COLLECTION_ID")) { ',
'                clearInterval(waitForValue); ',
'                apex.region("invoice-list").refresh(); ',
'            }',
'        }, 100); ',
'    }',
'}, 100); ',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42956108715722520)
,p_name=>'Selection Change'
,p_event_sequence=>100
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(41787619939876147)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42956226289722521)
,p_event_id=>wwv_flow_imp.id(42956108715722520)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let selectedRecords = this.data.selectedRecords;',
'',
'',
'if (selectedRecords.length > 0) {',
'',
'    let collectionIDSelected = selectedRecords[0][6];',
'    let customerIDSelected = selectedRecords[0][5];',
'',
'    $("#P150_SELECTED_COLLECTION_ID").val(collectionIDSelected);',
'    $("#P150_SELECTED_CUSTOMER_ID").val(customerIDSelected);',
'',
'    console.log("Collection: " + collectionIDSelected);',
'    console.log("Customer: " + customerIDSelected);',
'',
'} ',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42958949820722548)
,p_event_id=>wwv_flow_imp.id(42956108715722520)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    let grid = apex.region("invoice-list").widget().interactiveGrid("getViews", "grid");',
'    let totalRows = grid.model.getTotalRecords(); ',
'    let displayedRows = grid.model._data.length; ',
'',
'    let button = $("#navigate");',
'',
'    if (totalRows > displayedRows) {',
'        $("#navigate").removeClass("apex_disabled");',
'        $("#navigate").attr("disabled", false);',
'    } else {',
'        $("#navigate").addClass("apex_disabled");',
'        $("#navigate").attr("disabled", true); ',
'    }'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42956411888722523)
,p_event_id=>wwv_flow_imp.id(42956108715722520)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(58727605027579480)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42957343775722532)
,p_name=>'Change'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P150_DATE_FROM'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42957615754722535)
,p_event_id=>wwv_flow_imp.id(42957343775722532)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(41787619939876147)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45404443200371505)
,p_event_id=>wwv_flow_imp.id(42957343775722532)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P150_TOTAL_PAYMENT'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_total_paid NUMBER := 0;',
'BEGIN',
'    SELECT ',
'        SUM(NPT005.amount)',
'    INTO',
'        v_total_paid',
'    FROM',
'        NPT005',
'    JOIN ',
'        NPT038 ON NPT005.collection_id = NPT038.collection_id',
'    JOIN',
'        NPT001 ON NPT038.invoice_id = NPT001.invoice_id',
'    JOIN ',
'        NPT009 ON NPT001.customer_id = NPT009.customer_id',
'    WHERE',
'        UPPER(NPT009.DBA) = UPPER(:P150_DBA)',
'    AND',
'        TRUNC(NPT005.DATE_CREATED) BETWEEN :P150_DATE_FROM AND :P150_DATE_TO',
'    AND',
'        UPPER(NPT005.CASHCHECK) NOT LIKE ''%CMEMO%'';',
'',
'    RETURN NVL(TO_CHAR(v_total_paid, ''FM999990.00''), ''0.00'');',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        RETURN ''0.00'';',
'',
'END;'))
,p_attribute_07=>'P150_DBA,P150_DATE_FROM,P150_DATE_TO'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P150_DBA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45404589968371506)
,p_event_id=>wwv_flow_imp.id(42957343775722532)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P150_TOTAL_CREDIT_MEMO'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_total_credit NUMBER := 0;',
'BEGIN',
'    SELECT ',
'        SUM(NPT005.amount)',
'    INTO',
'        v_total_credit',
'    FROM',
'        NPT005',
'    JOIN ',
'        NPT038 ON NPT005.collection_id = NPT038.collection_id',
'    JOIN',
'        NPT001 ON NPT038.invoice_id = NPT001.invoice_id',
'    JOIN ',
'        NPT009 ON NPT001.customer_id = NPT009.customer_id',
'    WHERE',
'        UPPER(NPT009.DBA) = UPPER(:P150_DBA)',
'    AND',
'        TRUNC(NPT005.DATE_CREATED) BETWEEN :P150_DATE_FROM AND :P150_DATE_TO',
'    AND',
'        UPPER(NPT005.CASHCHECK) LIKE ''%CMEMO%'';',
'',
'    RETURN NVL(TO_CHAR(v_total_credit, ''FM999990.00''), ''0.00'');',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        RETURN ''0.00'';',
'',
'END;'))
,p_attribute_07=>'P150_DBA,P150_DATE_FROM,P150_DATE_TO'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P150_DBA'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42957835258722537)
,p_name=>'Click Print'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(33414936203636867)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42957981632722538)
,p_event_id=>wwv_flow_imp.id(42957835258722537)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const currentDate = new Date();',
'const formattedDate = currentDate.toISOString().slice(0, 10).replace(/-/g, "");',
'',
'generateReport("PAYMENTS_MAP_PDF_COURIER_NEW", "pdf", { ',
'    fileName: `PaymentsMap_${formattedDate}.pdf`,',
'    mode : "print",',
'    parameters : {',
'        P_DBA : $v("P150_DBA"),',
'        P_DATE_FROM : $v("P150_DATE_FROM"),',
'        P_DATE_TO : $v("P150_DATE_TO")',
'    },',
'    spinnerEnabled : true',
'});'))
,p_build_option_id=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42958085211722539)
,p_name=>'Click Export'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(33415379272636868)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42958123345722540)
,p_event_id=>wwv_flow_imp.id(42958085211722539)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const currentDate = new Date();',
'const formattedDate = currentDate.toISOString().slice(0, 10).replace(/-/g, "");',
'',
'generateReport("PAYMENTS_MAP_XLSX", "xlsx", { ',
'    fileName: `PaymentsMap_${formattedDate}.xlsx`,',
'    mode : "print",',
'    parameters : {',
'        P_DBA : $v("P150_DBA"),',
'        P_DATE_FROM : $v("P150_DATE_FROM"),',
'        P_DATE_TO : $v("P150_DATE_TO")',
'    },',
'    spinnerEnabled : true',
'});'))
,p_build_option_id=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(45404053412371501)
,p_name=>'Page load button'
,p_event_sequence=>140
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45404103837371502)
,p_event_id=>wwv_flow_imp.id(45404053412371501)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#navigate").addClass("apex_disabled");',
'$("#navigate").attr("disabled", true);',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(45404921576371510)
,p_name=>'Lose Focus FROM'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P150_DATE_FROM'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45405147247371512)
,p_event_id=>wwv_flow_imp.id(45404921576371510)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let field2 = $v("P150_DATE_FROM");',
'',
'',
'if (!field2) {',
'    apex.message.showErrors({',
'        type: "error",',
'        location: "inline",',
'        pageItem: "P150_DATE_FROM",',
'        message: "Field cannot be empty."',
'    });',
'    $("#P150_DATE_FROM").addClass("error-highlight");',
'    hasError = true;',
'} else if (!isValidDate(field2)) {',
'    apex.message.showErrors({',
'        type: "error",',
'        location: "inline",',
'        pageItem: "P150_DATE_FROM",',
'        message: "Invalid date format. Use MM/DD/YYYY."',
'    });',
'    $("#P150_DATE_FROM").addClass("error-highlight");',
'    hasError = true;',
'} else {',
'    apex.message.clearErrors("P150_DATE_FROM");',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(45405255019371513)
,p_name=>'Lose Focus TO'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P150_DATE_TO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45405423837371515)
,p_event_id=>wwv_flow_imp.id(45405255019371513)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let field3 = $v("P150_DATE_TO");',
'',
'if (!field3) {',
'    apex.message.showErrors({',
'        type: "error",',
'        location: "inline",',
'        pageItem: "P150_DATE_TO",',
'        message: "Field cannot be empty."',
'    });',
'    $("#P150_DATE_TO").addClass("error-highlight");',
'    hasError = true;',
'} else if (!isValidDate(field3)) {',
'    apex.message.showErrors({',
'        type: "error",',
'        location: "inline",',
'        pageItem: "P150_DATE_TO",',
'        message: "Invalid date format. Use MM/DD/YYYY."',
'    });',
'    $("#P150_DATE_TO").addClass("error-highlight");',
'    hasError = true;',
'} else {',
'    apex.message.clearErrors("P150_DATE_TO");',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(45405750592371518)
,p_name=>'Navigate Click'
,p_event_sequence=>170
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(42958664468722545)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45405854722371519)
,p_event_id=>wwv_flow_imp.id(45405750592371518)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var isPaymentSelected = $("#payment_ig_grid_vc .a-GV-bdy").find(".is-focused").length;',
'console.log(isPaymentSelected)',
'if(isPaymentSelected >= 1) {',
'    $("#invoice-list_ig_grid_vc .a-GV-bdy .a-GV-cell").first().trigger("click");',
'} else {',
'    $("#payment_ig_grid_vc .a-GV-bdy .a-GV-cell").first().trigger("click");',
'}'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(42956506581722524)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Session'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_internal_uid=>42956506581722524
);
wwv_flow_imp.component_end;
end;
/