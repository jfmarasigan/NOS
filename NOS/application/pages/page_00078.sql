prompt --application/pages/page_00078
begin
--   Manifest
--     PAGE: 00078
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
 p_id=>78
,p_name=>'Summary of Invoices'
,p_alias=>'SUMMARY-OF-INVOICES'
,p_step_title=>'Summary of Invoices'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#js/cmn#MIN#.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p78KeyMapMenu = {',
'    escape : (v) => {',
'        $("#esc").trigger("click");',
'    },',
'    c : (v) => {',
'        $("#c").trigger("click");',
'    },',
'    d : (v) => {',
'        $("#d").trigger("click");',
'    },',
'    n : (v) => {',
'        $("#n").trigger("click");',
'    },',
'    p : (v) => {',
'        $("#p").trigger("click");',
'    },',
'    h : (v) => {',
'        $("#h").trigger("click");',
'    },',
'    home : (v) => {',
'        $("#home").trigger("click");',
'    },',
'    end : (v) => {',
'        $("#end").trigger("click");',
'    }',
'}',
'function mapP78KeysMenu() {',
'    $(document).off(''keydown.p78keyevents'');',
'    $(document).on(''keydown.p78keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p78KeyMapMenu[key]) {',
'            ev.preventDefault();',
'            p78KeyMapMenu[key]();',
'        }',
'    });',
'}',
'',
'const p78KeyMapDBA = {',
'    escape : (v) => {',
'        $("#esc").trigger("click");',
'    }',
'}',
'function mapP78KeysDBA() {',
'    $(document).off(''keydown.p78keyevents'');',
'    $(document).on(''keydown.p78keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p78KeyMapDBA[key]) {',
'            ev.preventDefault();',
'            p78KeyMapDBA[key]();',
'        }',
'    });',
'}',
'',
'const p78KeyMapPrint = {',
'    a : (v) => {',
'        $("#dot").click();',
'    },',
'    b : (v) => {',
'        $("#graphic").click();',
'    },',
'    escape : (v) => {',
'        mapP78KeysMenu();',
'    }',
'}',
'',
'function mapP78KeysPrint() {',
'    $(document).off(''keydown.p78keyevents'');',
'    $(document).on(''keydown.p78keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p78KeyMapPrint[key]) {',
'            ev.preventDefault();',
'            p78KeyMapPrint[key]();',
'        }',
'    });',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTitle("Summary of Invoices");',
'$x(''P78_DBA'').focus();',
'// mapP78KeysMenu();'))
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
'#dba-and-date label {',
'    font-size: 1.125rem;',
'    color: white;',
'}',
'#dba-and-date input {',
'    font-size: 1.125rem;',
'}',
'',
'.t-Form-labelContainer:has(> #P78_DBA_LABEL),',
'.t-Form-labelContainer:has(> #P78_DATE_FROM_LABEL) {',
'    text-align: start;',
'}',
'.t-Form-labelContainer:has(> #P78_DATE_TO_LABEL) {',
'    text-align: center;',
'}',
'',
'',
'#invoices .a-IG,',
'#credit-memos .a-IG {',
'    height: calc(60vh + 2px) !important;',
'} ',
'',
'#invoices .a-IG-contentContainer,',
'#credit-memos .a-IG-contentContainer {',
'    height: 60vh !important;',
'}',
'',
'#invoices .a-IG-gridView.a-GV, ',
'#credit-memos .a-IG-gridView.a-GV {',
'    height: 60vh !important;',
'}',
'',
'#invoices .a-GV-bdy,',
'#credit-memos .a-GV-bdy {',
'    height: calc(60vh - 2.5625rem) !important;',
'}',
'',
'.t-Header .t-Header-branding {',
'    background-color: white !important;',
'    color: rgb(30, 58, 138) !important;',
'}',
'',
'#esc {',
'    display: none;',
'}',
'',
'body {',
'    background-color: rgb(30, 58, 138);',
'}',
'',
'.text-left {',
'    text-align: left;',
'}',
'',
'#invoices table,',
'#invoices tr,',
'#invoices td,',
'#invoices th,',
'#credit-memos table,',
'#credit-memos tr,',
'#credit-memos td,',
'#credit-memos th {',
'    font-size: 1.125rem;',
'}',
'',
'#invoices_ig, ',
'#credit-memos_ig {',
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
'/* .ui-dialog-title{',
'    font-size: 1.5rem;',
'}',
'',
'.ui-dialog-titlebar-close {',
'    display:none;',
'} */',
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
'}',
'',
'#printing-options .t-DialogRegion-body{',
'    background-color: #056AC8;',
'}',
'',
'.ui-resizable-s{',
'    background-color: #056AC8;',
'}'))
,p_step_template=>wwv_flow_imp.id(5671392681337017)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(25314193024942606)
,p_plug_name=>'Buttons'
,p_plug_display_sequence=>80
,p_plug_grid_row_css_classes=>'buttons-row'
,p_plug_grid_column_span=>10
,p_plug_display_column=>2
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(25314297244942607)
,p_plug_name=>'DBA & Date'
,p_region_name=>'dba-and-date'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>30
,p_plug_grid_column_span=>10
,p_plug_display_column=>2
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(25314830452942613)
,p_plug_name=>'Invoices'
,p_region_name=>'invoices'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>4
,p_plug_display_column=>2
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  TO_CHAR(a.INVOICE_ID, ''000000'') AS INVOICE_NUMBER, ',
'        a.DATE_CREATED AS INVOICE_DATE,',
'        TO_CHAR(a.TOTAL_AMOUNT, ''999G999G990D99'') AS AMOUNT',
'FROM NPT001 a, NPT009 b',
'WHERE   ',
'    :P78_DBA IS NOT NULL AND',
'    :P78_DATE_FROM IS NOT NULL AND',
'    :P78_DATE_TO IS NOT NULL AND',
'    a.CUSTOMER_ID = b.CUSTOMER_ID AND',
'    UPPER(b.DBA) = UPPER(:P78_DBA) AND',
'    a.DATE_CREATED >= TO_DATE(:P78_DATE_FROM, ''MM/DD/YYYY'') AND',
'    a.DATE_CREATED <= TO_DATE(:P78_DATE_TO, ''MM/DD/YYYY'')',
'-- UNION',
'-- SELECT  TO_CHAR(c.CASH_INVOICE_ID, ''000000'') AS INVOICE_NUMBER, ',
'--         c.DATE_CREATED AS INVOICE_DATE,',
'--         TO_CHAR(c.TOTAL_AMOUNT, ''999G999G990D99'') AS AMOUNT',
'-- FROM NPT033 c, NPT009 d',
'-- WHERE ',
'--     :P78_DBA IS NOT NULL AND',
'--     :P78_DATE_FROM IS NOT NULL AND',
'--     :P78_DATE_TO IS NOT NULL AND',
'--     c.CUSTOMER_ID = d.CUSTOMER_ID AND',
'--     UPPER(d.DBA) = UPPER(:P78_DBA) AND',
'--     c.DATE_CREATED >= TO_DATE(:P78_DATE_FROM, ''MM/DD/YYYY'') AND',
'--     c.DATE_CREATED <= TO_DATE(:P78_DATE_TO, ''MM/DD/YYYY'')',
'',
'-- SELECT TO_CHAR(1, ''000000'') AS INVOICE_NUMBER,',
'--        ''09/21/2024'' AS INVOICE_DATE,',
'--        TO_CHAR(13.90, ''999G999G990D99'') AS AMOUNT',
'-- FROM DUAL'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P78_DBA,P78_DATE_FROM,P78_DATE_TO'
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
 p_id=>wwv_flow_imp.id(25315058027942615)
,p_name=>'INVOICE_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INVOICE_NUMBER'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Invoice Number'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>7
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
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(25315112732942616)
,p_name=>'INVOICE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INVOICE_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Invoice Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>10
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
 p_id=>wwv_flow_imp.id(25315293347942617)
,p_name=>'AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AMOUNT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Amount'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'RIGHT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>25
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(25314936660942614)
,p_internal_uid=>25314936660942614
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
 p_id=>wwv_flow_imp.id(30061489325508387)
,p_interactive_grid_id=>wwv_flow_imp.id(25314936660942614)
,p_static_id=>'300615'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(30061628897508387)
,p_report_id=>wwv_flow_imp.id(30061489325508387)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(30062139502508395)
,p_view_id=>wwv_flow_imp.id(30061628897508387)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(25315058027942615)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(30063070543508404)
,p_view_id=>wwv_flow_imp.id(30061628897508387)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(25315112732942616)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(30063954134508410)
,p_view_id=>wwv_flow_imp.id(30061628897508387)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(25315293347942617)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(25315388491942618)
,p_plug_name=>'Credit Memos'
,p_region_name=>'credit-memos'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>70
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>4
,p_plug_display_column=>7
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- SELECT 1 FROM DUAL',
'',
'SELECT ',
'    TO_CHAR(a.CREDIT_MEMO_ID, ''000000'') AS CM_NUMBER, ',
'    a.DATE_CREATED AS CM_DATE,',
'    TO_CHAR(a.TOTAL_AMOUNT, ''999G999G990D99'') AS AMOUNT',
'FROM NPT015 a, NPT009 b',
'WHERE ',
'    :P78_DBA IS NOT NULL AND',
'    :P78_DATE_FROM IS NOT NULL AND',
'    :P78_DATE_TO IS NOT NULL AND',
'    a.CUSTOMER_ID = b.CUSTOMER_ID AND',
'    UPPER(b.DBA) = UPPER(:P78_DBA) AND',
'    a.DATE_CREATED >= TO_DATE(:P78_DATE_FROM, ''MM/DD/YYYY'') AND',
'    a.DATE_CREATED <= TO_DATE(:P78_DATE_TO, ''MM/DD/YYYY'')',
'',
'-- SELECT ',
'--         TO_CHAR(e.CREDIT_MEMO_ID, ''000000'') AS CM_NUMBER, ',
'--         e.DATE_CREATED AS CM_DATE,',
'--         TO_CHAR(e.TOTAL_AMOUNT, ''999G999G990D99'') AS AMOUNT',
'-- FROM NPT001 a, NPT009 b, NPT002 c, NPT016 d, NPT015 e',
'-- WHERE',
'--     :P78_DBA IS NOT NULL AND',
'--     :P78_DATE_FROM IS NOT NULL AND',
'--     :P78_DATE_TO IS NOT NULL AND',
'--     a.CUSTOMER_ID = b.CUSTOMER_ID AND',
'--     UPPER(b.DBA) = UPPER(:P78_DBA) AND',
'--     a.INVOICE_ID = c.INVOICE_ID AND',
'--     c.ITEM_INVOICE_ID = d.ITEM_INVOICE_ID AND',
'--     d.REFUND_ID = e.REFUND_ID AND',
'--     e.DATE_CREATED >= TO_DATE(:P78_DATE_FROM, ''MM/DD/YYYY'') AND',
'--     e.DATE_CREATED <= TO_DATE(:P78_DATE_TO, ''MM/DD/YYYY'')',
'',
'-- SELECT TO_CHAR(1, ''000000'') AS CM_NUMBER,',
'--        ''09/02/2024'' AS CM_DATE,',
'--        TO_CHAR(50, ''999G999G990D99'') AS AMOUNT',
'-- FROM DUAL'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P78_DBA,P78_DATE_FROM,P78_DATE_TO'
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
 p_id=>wwv_flow_imp.id(43478748909172825)
,p_name=>'CM_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CM_NUMBER'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'CM Number'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>7
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
 p_id=>wwv_flow_imp.id(43478800824172826)
,p_name=>'CM_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CM_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'CM Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
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
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43478986891172827)
,p_name=>'AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AMOUNT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Amount'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'RIGHT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>15
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(25315479599942619)
,p_internal_uid=>25315479599942619
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
 p_id=>wwv_flow_imp.id(30067180083530060)
,p_interactive_grid_id=>wwv_flow_imp.id(25315479599942619)
,p_static_id=>'300672'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(30067327547530060)
,p_report_id=>wwv_flow_imp.id(30067180083530060)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43710712313623010)
,p_view_id=>wwv_flow_imp.id(30067327547530060)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(43478748909172825)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43711605259623020)
,p_view_id=>wwv_flow_imp.id(30067327547530060)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(43478800824172826)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43712584062623029)
,p_view_id=>wwv_flow_imp.id(30067327547530060)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(43478986891172827)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(25316061359942625)
,p_plug_name=>'Invoices Header'
,p_plug_display_sequence=>40
,p_plug_grid_column_span=>4
,p_plug_display_column=>2
,p_location=>null
,p_plug_source=>'<h3 style="color:white;font-size:1.125rem;margin:0">Invoices</h3>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(25316256414942627)
,p_plug_name=>'Credit Memos Header'
,p_plug_display_sequence=>60
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>4
,p_plug_display_column=>7
,p_location=>null
,p_plug_source=>'<h3 style="color:white;font-size:1.125rem;margin:0">Credit Memos</h3>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(88418735576896537)
,p_plug_name=>'Printing Options'
,p_title=>'Printing Options'
,p_region_name=>'printing-options'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size480x320'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>90
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(25316703645942632)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(25314193024942606)
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
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(25316825364942633)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(25314193024942606)
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
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(25316920158942634)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(25314193024942606)
,p_button_name=>'Print'
,p_button_static_id=>'p'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>P</u> - Print'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'has_access(:APP_USER, 9, 34) = ''Y'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(44940328871723710)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(88418735576896537)
,p_button_name=>'Dotmatrix'
,p_button_static_id=>'dot'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'A - Dotmatrix'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(25317096200942635)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(25314193024942606)
,p_button_name=>'Export'
,p_button_static_id=>'h'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>H</u> - Export'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'has_access(:APP_USER, 9, 35) = ''Y'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(44939970091723709)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(88418735576896537)
,p_button_name=>'Graphic'
,p_button_static_id=>'graphic'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'B - Graphic Printer'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(25317103721942636)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(25314193024942606)
,p_button_name=>'Navigate'
,p_button_static_id=>'n'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>N</u> - Navigate to another table'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(25317224874942637)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(25314193024942606)
,p_button_name=>'Top'
,p_button_static_id=>'home'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>Home</u> - Top'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(25317358033942638)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(25314193024942606)
,p_button_name=>'Bottom'
,p_button_static_id=>'end'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
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
 p_id=>wwv_flow_imp.id(25317416638942639)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(25314193024942606)
,p_button_name=>'Escape'
,p_button_static_id=>'esc'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'-'
,p_button_redirect_url=>'f?p=&APP_ID.:305:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25314415578942609)
,p_name=>'P78_DBA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(25314297244942607)
,p_prompt=>'DBA:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>6
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
 p_id=>wwv_flow_imp.id(25314504179942610)
,p_name=>'P78_DATE_FROM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(25314297244942607)
,p_prompt=>'Date: '
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_colspan=>3
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25314662493942611)
,p_name=>'P78_DATE_TO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(25314297244942607)
,p_prompt=>'To'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'ITEM'
,p_attribute_05=>'P78_DATE_FROM'
,p_attribute_06=>'ITEM'
,p_attribute_08=>'P78_DATE_TODAY'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36261903978538813)
,p_name=>'P78_DATE_TODAY'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39840608551908902)
,p_name=>'P78_CUSTOMER_CODE'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(36262001698538814)
,p_computation_sequence=>10
,p_computation_item=>'P78_DATE_TODAY'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>'SELECT SYSDATE FROM DUAL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25317569217942640)
,p_name=>'Navigate to Other Table'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(25317103721942636)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25317639473942641)
,p_event_id=>wwv_flow_imp.id(25317569217942640)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var isInvoicesSelected = $("#invoices_ig_grid_vc .a-GV-bdy").find(".is-focused").length;',
'console.log(isInvoicesSelected)',
'if(isInvoicesSelected >= 1) {',
'    $("#credit-memos_ig_grid_vc .a-GV-bdy .a-GV-cell").first().trigger("click");',
'} else {',
'    $("#invoices_ig_grid_vc .a-GV-bdy .a-GV-cell").first().trigger("click");',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25318034685942645)
,p_name=>'Refresh Tables'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P78_DATE_TO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25318110482942646)
,p_event_id=>wwv_flow_imp.id(25318034685942645)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(25314830452942613)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25318212064942647)
,p_event_id=>wwv_flow_imp.id(25318034685942645)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(25315388491942618)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25318361726942648)
,p_name=>'Get Focus'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P78_DBA'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusin'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25318494881942649)
,p_event_id=>wwv_flow_imp.id(25318361726942648)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mapP78KeysDBA();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30857269991955701)
,p_name=>'Lose Focus'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P78_DBA'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30857355580955702)
,p_event_id=>wwv_flow_imp.id(30857269991955701)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mapP78KeysMenu();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30857827732955707)
,p_event_id=>wwv_flow_imp.id(30857269991955701)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(25314830452942613)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30857971514955708)
,p_event_id=>wwv_flow_imp.id(30857269991955701)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(25315388491942618)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30857470298955703)
,p_name=>'Focus on DBA'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(25316703645942632)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30857520270955704)
,p_event_id=>wwv_flow_imp.id(30857470298955703)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P78_DBA'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30857631998955705)
,p_name=>'Focus on Date'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(25316825364942633)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30857793655955706)
,p_event_id=>wwv_flow_imp.id(30857631998955705)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P78_DATE_FROM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30858079270955709)
,p_name=>'To Top Cell'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(25317224874942637)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30858126320955710)
,p_event_id=>wwv_flow_imp.id(30858079270955709)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var isInvoicesSelected = $("#invoices_ig_grid_vc .a-GV-bdy").find(".is-focused").length;',
'console.log(isInvoicesSelected)',
'if(isInvoicesSelected >= 1) {',
'    focusOnIGFirstRecordFirstCell("invoices", "INVOICE_NUMBER");',
'    // $("#credit-memos_ig_grid_vc .a-GV-bdy .a-GV-cell").first().trigger("click");',
'} else {',
'    focusOnIGFirstRecordFirstCell("credit-memos", "CM_NUMBER");',
'    // $("#invoices_ig_grid_vc .a-GV-bdy .a-GV-cell").first().trigger("click");',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30858220118955711)
,p_name=>'To Bottom Cell'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(25317358033942638)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30858339092955712)
,p_event_id=>wwv_flow_imp.id(30858220118955711)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var isInvoicesSelected = $("#invoices_ig_grid_vc .a-GV-bdy").find(".is-focused").length;',
'console.log(isInvoicesSelected)',
'if(isInvoicesSelected >= 1) {',
'    focusOnIGLastRecordFirstCell("invoices");',
'    // $("#credit-memos_ig_grid_vc .a-GV-bdy .a-GV-cell").first().trigger("click");',
'} else {',
'    focusOnIGLastRecordFirstCell("credit-memos");',
'    // $("#invoices_ig_grid_vc .a-GV-bdy .a-GV-cell").first().trigger("click");',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30858540374955714)
,p_name=>'Print'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(25316920158942634)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'($v(''P78_DBA'').length > 0 && $v(''P78_DATE_FROM'').length > 0 && $v(''P78_DATE_TO'').length > 0);'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30858652486955715)
,p_event_id=>wwv_flow_imp.id(30858540374955714)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var c_code = $(''#P78_CUSTOMER_CODE'').val();',
'console.log($(''#P78_CUSTOMER_CODE'').val())',
'var d = new Date();',
'var fileDate = d.getFullYear() + ',
'    ( (d.getMonth() + 1) >= 10 ? ( d.getMonth() + 1) + "" : "0" + (d.getMonth() + 1)) + ',
'    (d.getDate >= 10 ? (d.getDate() + "") : "0" + d.getDate() );',
'',
'generateReport("SUMMARY_OF_INVOICES_COURIER_NEW_PDF", "pdf", { ',
'    fileName: c_code+"_Inv_List_"+fileDate+".pdf",',
'    mode : "print",',
'    parameters : {',
'        P_SEARCH_DBA : $v("P78_DBA"),',
'        P_DATE_FROM : $v("P78_DATE_FROM"),',
'        P_DATE_TO : $v("P78_DATE_TO")',
'    }',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30858798002955716)
,p_name=>'Export'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(25317096200942635)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'($v(''P78_DBA'').length > 0 && $v(''P78_DATE_FROM'').length > 0 && $v(''P78_DATE_TO'').length > 0);'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39840830486908904)
,p_event_id=>wwv_flow_imp.id(30858798002955716)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P78_CUSTOMER_CODE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT CUSTOMER_CODE',
'FROM NPT009',
'WHERE UPPER(DBA) = UPPER(:P78_DBA)'))
,p_attribute_07=>'P78_DBA'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30858835159955717)
,p_event_id=>wwv_flow_imp.id(30858798002955716)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var c_code = $(''#P78_CUSTOMER_CODE'').val();',
'var d = new Date();',
'var fileDate = d.getFullYear() + ',
'    ( (d.getMonth() + 1) >= 10 ? ( d.getMonth() + 1) + "" : "0" + (d.getMonth() + 1)) + ',
'    (d.getDate >= 10 ? (d.getDate() + "") : "0" + d.getDate() );',
'',
'generateReport("SUMMARY_OF_INVOICES_XLSX", "xlsx", { ',
'    fileName: c_code+"_Inv_List_"+fileDate+".xlsx",',
'    mode : "export",',
'    parameters : {',
'        P_SEARCH_DBA : $v("P78_DBA"),',
'        P_DATE_FROM : $v("P78_DATE_FROM"),',
'        P_DATE_TO : $v("P78_DATE_TO")',
'    }',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44876055656477222)
,p_name=>'Open Print Options'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(25316920158942634)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39840728575908903)
,p_event_id=>wwv_flow_imp.id(44876055656477222)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P78_CUSTOMER_CODE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT CUSTOMER_CODE',
'FROM NPT009',
'WHERE UPPER(DBA) = UPPER(:P78_DBA)'))
,p_attribute_07=>'P78_DBA'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44876148088477223)
,p_event_id=>wwv_flow_imp.id(44876055656477222)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(88418735576896537)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44876269948477224)
,p_event_id=>wwv_flow_imp.id(44876055656477222)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mapP78KeysPrint();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44876386518477225)
,p_name=>'Courier New'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(44940328871723710)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44876488019477226)
,p_event_id=>wwv_flow_imp.id(44876386518477225)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var c_code = $(''#P78_CUSTOMER_CODE'').val();',
'console.log($(''#P78_CUSTOMER_CODE'').val())',
'var d = new Date();',
'var fileDate = d.getFullYear() + ',
'    ( (d.getMonth() + 1) >= 10 ? ( d.getMonth() + 1) + "" : "0" + (d.getMonth() + 1)) + ',
'    (d.getDate >= 10 ? (d.getDate() + "") : "0" + d.getDate() );',
'',
'generateReport("SUMMARY_OF_INVOICES_COURIER_NEW_PDF", "pdf", { ',
'    fileName: c_code+"_Inv_List_"+fileDate+".pdf",',
'    mode : "print",',
'    parameters : {',
'        P_SEARCH_DBA : $v("P78_DBA"),',
'        P_DATE_FROM : $v("P78_DATE_FROM"),',
'        P_DATE_TO : $v("P78_DATE_TO")',
'    }',
'});'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44876515003477227)
,p_event_id=>wwv_flow_imp.id(44876386518477225)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(88418735576896537)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44876627610477228)
,p_event_id=>wwv_flow_imp.id(44876386518477225)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mapP78KeysMenu();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44876763090477229)
,p_name=>'Arial'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(44939970091723709)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44876814238477230)
,p_event_id=>wwv_flow_imp.id(44876763090477229)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var c_code = $(''#P78_CUSTOMER_CODE'').val();',
'console.log($(''#P78_CUSTOMER_CODE'').val())',
'var d = new Date();',
'var fileDate = d.getFullYear() + ',
'    ( (d.getMonth() + 1) >= 10 ? ( d.getMonth() + 1) + "" : "0" + (d.getMonth() + 1)) + ',
'    (d.getDate >= 10 ? (d.getDate() + "") : "0" + d.getDate() );',
'',
'generateReport("SUMMARY_OF_INVOICES_ARIAL_PDF", "pdf", { ',
'    fileName: c_code+"_Inv_List_"+fileDate+".pdf",',
'    mode : "print",',
'    parameters : {',
'        P_SEARCH_DBA : $v("P78_DBA"),',
'        P_DATE_FROM : $v("P78_DATE_FROM"),',
'        P_DATE_TO : $v("P78_DATE_TO")',
'    }',
'});'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44876937309477231)
,p_event_id=>wwv_flow_imp.id(44876763090477229)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(88418735576896537)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44877024021477232)
,p_event_id=>wwv_flow_imp.id(44876763090477229)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mapP78KeysMenu();'
);
wwv_flow_imp.component_end;
end;
/
