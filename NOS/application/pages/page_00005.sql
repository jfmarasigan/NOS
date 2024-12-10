prompt --application/pages/page_00005
begin
--   Manifest
--     PAGE: 00005
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
 p_id=>5
,p_name=>'Vendor Masterfile'
,p_alias=>'VENDOR-MASTERFILE'
,p_step_title=>'Vendor Masterfile'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#js/cmn#MIN#.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTitle("Vendor Masterfile")',
'',
'const p5KeyMap = {',
'    a : (v) => {',
'        $("#a").trigger("click");',
'    },',
'    u : (v) => {',
'        $("#u").trigger("click");',
'    },',
'    i : (v) => {',
'        $("#i").trigger("click");',
'    },',
'    s : (v) => {',
'        $("#s").trigger("click");',
'    },',
'    escape : (v) => {',
'        $("#esc").trigger("click");',
'    },',
'    home : (v) => {',
'        $("#home").trigger("click");',
'    },',
'    end : (v) => {',
'        $("#end").trigger("click");',
'    },',
'    p : (v) => {',
'        $("#p").trigger("click");',
'    },',
'    h : (v) => {',
'        $("#h").trigger("click");',
'    }',
'}',
'',
'function mapP5Keys() {',
'    $(document).off(''keydown.p5keyevents'');',
'    $(document).on(''keydown.p5keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p5KeyMap[key]) {',
'            ev.preventDefault();',
'            p5KeyMap[key]();',
'        }',
'    });',
'}',
'',
'function customEvent(event, data){',
'    mapP5Keys();',
'}',
'',
'const exportKeyMap = {',
'    escape : (v) => {',
'        mapP5Keys();',
'    },',
'    d: (v) => {',
'        $(".ui-button--hot").trigger("click");',
'    }',
'}',
'',
'function mapExportKeys(){',
'    $(document).off(''keydown.p5keyevents'');',
'    $(document).on(''keydown.p5keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (exportKeyMap[key]) {',
'            ev.preventDefault();',
'            exportKeyMap[key]();',
'        }',
'    });',
'}',
'',
'function exportDialogOpened() {',
'    $(".ui-button--hot").removeClass("ui-button ui-corner-all ui-widget").addClass("t-Button--noUI t-Button");',
'    $(".ui-button--hot").html("<u>D</u> - Download");',
'    $(".ui-button-help").remove();',
'    $(".ui-button").addClass("t-Button--noUI t-Button");',
'    $(".ui-button").html("<u>Esc</u> - Cancel");',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP5Keys();',
'$("#s").trigger("click");'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Header .t-Header-branding {',
'    background-color: white !important;',
'    color: rgb(30, 58, 138) !important;',
'}',
'',
'body {',
'    background-color: rgb(30, 58, 138);',
'}',
'',
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
'#esc {',
'    display: none;',
'}',
'',
'#sample1 .a-IG {',
'    height: calc(75vh + 2px) !important;',
'} ',
'',
'#sample1 .a-IG-contentContainer {',
'    height: 75vh !important;',
'}',
'',
'#sample1 .a-IG-gridView.a-GV {',
'    height: 75vh !important;',
'}',
'',
'#sample1 .a-GV-bdy {',
'    height: calc(75vh - 2.5625rem) !important;',
'}',
'',
'.t-Header .t-Header-branding {',
'    background-color: white !important;',
'    color: rgb(30, 58, 138) !important;',
'}',
'',
'.text-left {',
'    text-align: left;',
'}',
'',
'#sample1 table,',
'#sample1 tr,',
'#sample1 td,',
'#sample1 th {',
'    font-size: 1.125rem;',
'}',
'',
'#sample1_ig{',
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
'    background-color: #056AC8;',
'    color: white;',
'}',
'',
'.ui-dialog{',
'    border: 2px solid black;',
'    border-radius: 0.75rem;',
'    box-shadow: 0 0.625rem 0.625rem -0.25rem rgba(0,0,0,0.2);',
'}',
'',
'.ui-dialog-title{',
'    font-size: 1.5rem;',
'}',
'',
'.ui-dialog-titlebar-close {',
'    display:none;',
'}',
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
'/* Hide scrollbar for IE, Edge and Firefox */',
'html {',
'  -ms-overflow-style: none;  /* IE and Edge */',
'  scrollbar-width: none;  /* Firefox */',
'} ',
'',
' /* Hide scrollbar for Chrome, Safari and Opera */',
'.a-GV-w-scroll::-webkit-scrollbar {',
'  display: none;',
'}',
'',
'/* Hide scrollbar for IE, Edge and Firefox */',
'.a-GV-w-scroll {',
'  -ms-overflow-style: none;  /* IE and Edge */',
'  scrollbar-width: none;  /* Firefox */',
'}'))
,p_step_template=>wwv_flow_imp.id(5671392681337017)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6042569232733001)
,p_plug_name=>'Header'
,p_plug_display_sequence=>30
,p_plug_grid_column_span=>10
,p_plug_display_column=>2
,p_location=>null
,p_plug_source=>'<h1 style="color:white">Vendor Masterfile</h1>'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6044103588733017)
,p_plug_name=>'Buttons'
,p_plug_display_sequence=>100
,p_plug_grid_row_css_classes=>'buttons-row'
,p_plug_grid_column_span=>10
,p_plug_display_column=>2
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6480433320850443)
,p_plug_name=>'Vendor Grid'
,p_region_name=>'sample1'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>90
,p_plug_grid_column_span=>10
,p_plug_display_column=>2
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  ',
'    VENDOR_ID,',
'    VENDOR_CODE,',
'    VENDOR_NAME, ',
'    CONTACT_PERSON, ',
'    PHONE_NUMBER, ',
'    EMAIL_ADDRESS1, ',
'    PAYMENT_TERM, ',
'    ''DUMMY'' AS OS_BALANCE, ',
'    ''DUMMY'' AS OS_CREDIT_MEMO',
'FROM NIT006',
'WHERE   ',
'        (:P5_SEARCH_CODE IS NULL AND :P5_SEARCH_NAME IS NULL AND :P5_ENABLE_ALL IS NOT NULL) OR',
'        (:P5_SEARCH_CODE IS NOT NULL AND :P5_SEARCH_NAME IS NULL ',
'            AND UPPER(VENDOR_CODE) LIKE ''%'' || UPPER(:P5_SEARCH_CODE) || ''%'') OR',
'        (:P5_SEARCH_CODE IS NULL AND :P5_SEARCH_NAME IS NOT NULL ',
'            AND UPPER(VENDOR_NAME) LIKE ''%'' || UPPER(:P5_SEARCH_NAME) || ''%'') OR',
'        (:P5_SEARCH_CODE IS NOT NULL AND :P5_SEARCH_NAME IS NOT NULL ',
'            AND UPPER(VENDOR_CODE) LIKE ''%'' || UPPER(:P5_SEARCH_CODE) || ''%'')'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P5_SEARCH_CODE,P5_SEARCH_NAME,P5_ENABLE_ALL'
,p_prn_content_disposition=>'ATTACHMENT'
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
 p_id=>wwv_flow_imp.id(6480616510850445)
,p_name=>'VENDOR_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VENDOR_CODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Vendor Code'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>12
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
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6480762214850446)
,p_name=>'VENDOR_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VENDOR_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Vendor Name'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>200
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
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6480830902850447)
,p_name=>'CONTACT_PERSON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CONTACT_PERSON'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Contact Person'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
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
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6480972262850448)
,p_name=>'PHONE_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PHONE_NUMBER'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Phone Number'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
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
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6481011385850449)
,p_name=>'EMAIL_ADDRESS1'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMAIL_ADDRESS1'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Email Address'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
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
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6481175531850450)
,p_name=>'PAYMENT_TERM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PAYMENT_TERM'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Payment Terms'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>40
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
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6688308491653701)
,p_name=>'OS_BALANCE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OS_BALANCE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'OS Balance'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>5
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
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6688443249653702)
,p_name=>'OS_CREDIT_MEMO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OS_CREDIT_MEMO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'OS Credit Memo'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'RIGHT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>5
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
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6691004243653728)
,p_name=>'VENDOR_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VENDOR_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'Y'
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
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(6480505268850444)
,p_internal_uid=>6480505268850444
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
,p_enable_flashback=>false
,p_define_chart_view=>false
,p_enable_download=>true
,p_download_formats=>'PDF:XLSX'
,p_download_filename=>'aaa'
,p_enable_mail_download=>false
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>600
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
 p_id=>wwv_flow_imp.id(6694200451654300)
,p_interactive_grid_id=>wwv_flow_imp.id(6480505268850444)
,p_static_id=>'66943'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(6694485167654300)
,p_report_id=>wwv_flow_imp.id(6694200451654300)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6694909470654310)
,p_view_id=>wwv_flow_imp.id(6694485167654300)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(6480616510850445)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6695823703654321)
,p_view_id=>wwv_flow_imp.id(6694485167654300)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(6480762214850446)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6696721414654328)
,p_view_id=>wwv_flow_imp.id(6694485167654300)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(6480830902850447)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6697669828654334)
,p_view_id=>wwv_flow_imp.id(6694485167654300)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(6480972262850448)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6698588786654340)
,p_view_id=>wwv_flow_imp.id(6694485167654300)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(6481011385850449)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6699476240654348)
,p_view_id=>wwv_flow_imp.id(6694485167654300)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(6481175531850450)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6700342647654354)
,p_view_id=>wwv_flow_imp.id(6694485167654300)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(6688308491653701)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6701171200654359)
,p_view_id=>wwv_flow_imp.id(6694485167654300)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(6688443249653702)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7066643336712070)
,p_view_id=>wwv_flow_imp.id(6694485167654300)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(6691004243653728)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6044294971733018)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(6044103588733017)
,p_button_name=>'Add'
,p_button_static_id=>'a'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>A</u> - Add'
,p_button_redirect_url=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:::'
,p_button_condition=>'has_access(:APP_USER, 2, 6) = ''Y'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6688506251653703)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(6044103588733017)
,p_button_name=>'Update'
,p_button_static_id=>'u'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>U</u> - Update'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'has_access(:APP_USER, 2, 7) = ''Y'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6688633717653704)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(6044103588733017)
,p_button_name=>'Inquire'
,p_button_static_id=>'i'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>I</u> - Inquire'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6689306061653711)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(6044103588733017)
,p_button_name=>'Export'
,p_button_static_id=>'h'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>H</u> - Export'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'has_access(:APP_USER, 2, 9) = ''Y'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11484690956867022)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(6044103588733017)
,p_button_name=>'Export_all'
,p_button_static_id=>'e'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>E</u> - Export All'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6688751439653705)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(6044103588733017)
,p_button_name=>'Print'
,p_button_static_id=>'p'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>P</u> - Print'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'has_access(:APP_USER, 2, 8) = ''Y'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6688986312653707)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(6044103588733017)
,p_button_name=>'Search'
,p_button_static_id=>'s'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>S</u> - Search'
,p_button_redirect_url=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6689029756653708)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(6044103588733017)
,p_button_name=>'Top'
,p_button_static_id=>'home'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>Home</u> - Top'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6689172075653709)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(6044103588733017)
,p_button_name=>'Bottom'
,p_button_static_id=>'end'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>End</u> - Bottom'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6689219250653710)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(6044103588733017)
,p_button_name=>'To_Exit'
,p_button_static_id=>'esc'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'-'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6691184166653729)
,p_name=>'P5_SELECTED_VAL'
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6692432520653742)
,p_name=>'P5_PREPARED_URL'
,p_item_sequence=>50
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8967535751281309)
,p_name=>'P5_SEARCH_CODE'
,p_item_sequence=>60
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8970152293281335)
,p_name=>'P5_SEARCH_NAME'
,p_item_sequence=>70
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11486164197867037)
,p_name=>'P5_ENABLE_ALL'
,p_item_sequence=>80
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6689454091653712)
,p_name=>'Selection Change'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(6480433320850443)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6689595145653713)
,p_event_id=>wwv_flow_imp.id(6689454091653712)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (this.data.selectedRecords.length > 0) {',
'    let itemNoSelected = this.data.selectedRecords[0][0];',
'    apex.item("P5_SELECTED_VAL").setValue(itemNoSelected);',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6692215612653740)
,p_name=>'Redirect to Update'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(6688506251653703)
,p_condition_element=>'P5_SELECTED_VAL'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6692396037653741)
,p_event_id=>wwv_flow_imp.id(6692215612653740)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P5_PREPARED_URL := apex_page.get_url(',
'       p_page   => 6,',
'       p_items  => ''P6_VENDOR_ID,P6_VENDOR_ID_BILLING,P6_ADDRESS_TYPE_ID,P6_VENDOR_ID_SHIPPING_1,P6_ADDRESS_TYPE_ID_1'',',
'       p_values => :P5_SELECTED_VAL ||'',''|| :P5_SELECTED_VAL ||'',''|| 1 ||'',''|| :P5_SELECTED_VAL ||'',''|| 2',
'     );',
'END;'))
,p_attribute_02=>'P5_SELECTED_VAL'
,p_attribute_03=>'P5_PREPARED_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6692508910653743)
,p_event_id=>wwv_flow_imp.id(6692215612653740)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P5_PREPARED_URL");',
'apex.navigation.redirect(url);'))
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P5_PREPARED_URL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7711725050207210)
,p_name=>'Reset keys'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(6688633717653704)
,p_condition_element=>'P5_SELECTED_VAL'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7711875096207211)
,p_event_id=>wwv_flow_imp.id(7711725050207210)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).off(''keydown.p5keyevents'');',
'$(document).on(''keydown.p5keyevents'', (ev) => {',
'    apex.navigation.dialog.close(true);',
'});',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6692658850653744)
,p_name=>'Redirect to Inquire'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(6688633717653704)
,p_condition_element=>'P5_SELECTED_VAL'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6692797196653745)
,p_event_id=>wwv_flow_imp.id(6692658850653744)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P5_PREPARED_URL := apex_page.get_url(',
'       p_page   => 7,',
'       p_items  => ''P7_VENDOR_ID'',',
'       p_values => :P5_SELECTED_VAL',
'     );',
'END;'))
,p_attribute_02=>'P5_SELECTED_VAL'
,p_attribute_03=>'P5_PREPARED_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6692926231653747)
,p_event_id=>wwv_flow_imp.id(6692658850653744)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P5_PREPARED_URL");',
'apex.navigation.redirect(url);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6693289052653750)
,p_name=>'Go to Top'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(6689029756653708)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11484371922867019)
,p_event_id=>wwv_flow_imp.id(6693289052653750)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'focusOnIGFirstRecordFirstCell("sample1", "VENDOR_CODE");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7710997854207202)
,p_name=>'Go to Bottom'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(6689172075653709)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11484415438867020)
,p_event_id=>wwv_flow_imp.id(7710997854207202)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'focusOnIGLastRecordFirstCell("sample1");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8967047416281304)
,p_name=>'Reset Keys'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(6688986312653707)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8967117377281305)
,p_event_id=>wwv_flow_imp.id(8967047416281304)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(document).off(''keydown.p5keyevents'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8968022789281314)
,p_name=>'When Dialog Closed'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(6688986312653707)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8968161857281315)
,p_event_id=>wwv_flow_imp.id(8968022789281314)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_SEARCH_CODE'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P8_SEARCH_CODE'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8970594786281339)
,p_event_id=>wwv_flow_imp.id(8968022789281314)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_SEARCH_NAME'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P8_SEARCH_NAME'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8970017566281334)
,p_event_id=>wwv_flow_imp.id(8968022789281314)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(6480433320850443)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8970626643281340)
,p_event_id=>wwv_flow_imp.id(8968022789281314)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(() => {',
'    $( document ).ready(function() {',
'        $(".a-GV-cell").first().trigger("click");',
'    });',
'}, "500");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8969863059281332)
,p_name=>'When Closed or Canceled'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(6688986312653707)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8969943767281333)
,p_event_id=>wwv_flow_imp.id(8969863059281332)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Reset Keys'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mapP5Keys();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11485074150867026)
,p_name=>'Export Report'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(6689306061653711)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11485820086867034)
,p_event_id=>wwv_flow_imp.id(11485074150867026)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_PRINT_REPORT'
,p_attribute_01=>wwv_flow_imp.id(13475822217852560)
,p_attribute_02=>'AAA'
,p_attribute_03=>'INLINE'
,p_attribute_04=>'P5_SEARCH_CODE,P5_SEARCH_NAME'
,p_build_option_id=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11486088666867036)
,p_event_id=>wwv_flow_imp.id(11485074150867026)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.region( "sample1" ).widget().interactiveGrid( "getActions" ).invoke( "show-download-dialog" );',
'mapExportKeys();',
'exportDialogOpened();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11486202311867038)
,p_name=>'Export All Report'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11484690956867022)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11486383095867039)
,p_event_id=>wwv_flow_imp.id(11486202311867038)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_SEARCH_CODE,P5_SEARCH_NAME'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11486477609867040)
,p_event_id=>wwv_flow_imp.id(11486202311867038)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_ENABLE_ALL'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'1'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11486544969867041)
,p_event_id=>wwv_flow_imp.id(11486202311867038)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(6480433320850443)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11486610578867042)
,p_event_id=>wwv_flow_imp.id(11486202311867038)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.region( "sample1" ).widget().interactiveGrid( "getActions" ).invoke( "show-download-dialog" );',
'mapExportKeys();',
'exportDialogOpened();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(17193645911817140)
,p_name=>'Print'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(6688751439653705)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'($v(''P5_SEARCH_CODE'').length > 0 || $v(''P5_SEARCH_NAME'').length > 0);'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17193763421817141)
,p_event_id=>wwv_flow_imp.id(17193645911817140)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var searchContext;',
'var searchVal;',
'var d = new Date();',
'if($v("P5_SEARCH_CODE").length > 0){',
'    searchContext = "CODE";',
'    searchVal = $v("P5_SEARCH_CODE");',
'} else {',
'    searchContext = "NAME";',
'    searchVal = $v("P5_SEARCH_NAME");',
'}',
'var fileDate = d.getFullYear() + ',
'    ( (d.getMonth() + 1) >= 10 ? ( d.getMonth() + 1) + "" : "0" + (d.getMonth() + 1)) + ',
'    (d.getDate >= 10 ? (d.getDate() + "") : "0" + d.getDate() );',
'',
'generateReport("VENDOR_MASTERFILE_COURIER_NEW_PDF", "pdf", { ',
'    fileName: "VendorMasterfile_"+fileDate+".pdf",',
'    mode : "print",',
'    parameters : {',
'        P_SEARCH_CONTEXT : searchContext,',
'        P_SEARCH_VALUE : searchVal',
'    }',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(17193804966817142)
,p_name=>'Export'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(6689306061653711)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'($v(''P5_SEARCH_CODE'').length > 0 || $v(''P5_SEARCH_NAME'').length > 0);'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17193921466817143)
,p_event_id=>wwv_flow_imp.id(17193804966817142)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var searchContext;',
'var searchVal;',
'var d = new Date();',
'if($v("P5_SEARCH_CODE").length > 0){',
'    searchContext = "CODE";',
'    searchVal = $v("P5_SEARCH_CODE");',
'} else {',
'    searchContext = "NAME";',
'    searchVal = $v("P5_SEARCH_NAME");',
'}',
'',
'var fileDate = d.getFullYear() + ',
'    ( (d.getMonth() + 1) >= 10 ? ( d.getMonth() + 1) + "" : "0" + (d.getMonth() + 1)) + ',
'    (d.getDate >= 10 ? (d.getDate() + "") : "0" + d.getDate() );',
'',
'generateReport("VENDOR_MASTERFILE_XLSX", "xlsx", { ',
'    fileName: "VendorMasterfile_"+fileDate+".xlsx",',
'    mode : "export",',
'    parameters : {',
'        P_SEARCH_CONTEXT : searchContext,',
'        P_SEARCH_VALUE : searchVal',
'    }',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(17194041212817144)
,p_name=>'Export All'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11484690956867022)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17194118715817145)
,p_event_id=>wwv_flow_imp.id(17194041212817144)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var d = new Date();',
'var fileDate = d.getFullYear() + ',
'    ( (d.getMonth() + 1) >= 10 ? ( d.getMonth() + 1) + "" : "0" + (d.getMonth() + 1)) + ',
'    (d.getDate >= 10 ? (d.getDate() + "") : "0" + d.getDate() );',
'generateReport("VENDOR_MASTERFILE_XLSX", "xlsx", { ',
'    fileName: "VendorMasterfile_"+fileDate+".xlsx",',
'    mode : "export",',
'    parameters : {',
'        P_SEARCH_CONTEXT : "ALL"',
'    }',
'});'))
);
wwv_flow_imp.component_end;
end;
/
