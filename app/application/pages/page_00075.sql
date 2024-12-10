prompt --application/pages/page_00075
begin
--   Manifest
--     PAGE: 00075
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
 p_id=>75
,p_name=>'Collections Entry'
,p_alias=>'COLLECTIONS-ENTRY'
,p_step_title=>'Collections Entry'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#js/cmn#MIN#.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p75KeyMap = {',
'    c : (v) => {',
'        $("#c").trigger("click");',
'    },',
'    i : (v) => {',
'        $("#i").trigger("click");',
'    },',
'    a : (v) => {',
'        $("#a").trigger("click");',
'    },',
'    escape : (v) => {',
'        if($("#makeCollection").is(":visible")) {',
'            $("#close-collection").trigger("click");',
'        } else if($("#inquire").is(":visible")) {',
'            $("#close-inquire").trigger("click");',
'        } else {',
'            $("#exit").trigger("click");',
'        }',
'    }',
'}',
'',
'function mapP75Keys() {',
'    $(document).off(''keydown.p75keyevents'');',
'    $(document).on(''keydown.p75keyevents'', (ev) => {',
'',
'        const focusedElement = document.activeElement;',
'        if (focusedElement.tagName === "INPUT" || focusedElement.tagName === "TEXTAREA") {',
'            return;',
'        }',
'',
'        var key = ev.key?.toLowerCase();',
'        if (p75KeyMap[key]) {',
'            ev.preventDefault();',
'            p75KeyMap[key]();',
'        }',
'    });',
'}',
'',
'function customEvent(event, data){',
'    mapP75Keys();',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP75Keys();',
'setTitle("Collections Entry");',
'// $("#s").trigger("click");',
'// setTimeout(() => {',
'//     $( document ).ready(function() {',
'//         $(".t-Button--closeAlert").trigger("click");',
'//     });',
'// }, "5000");',
'',
'const dateFields = [''P75_COLLECT_DATE_FROM'', ''P75_COLLECT_DATE_TO''];',
'',
'dateFields.forEach((fieldId) => {',
'  const dateField = document.getElementById(fieldId);',
'',
'  dateField.addEventListener(''input'', function () {',
'    let value = dateField.value.replace(/\D/g, '''');',
'',
'    if (value.length > 2) {',
'      value = value.substring(0, 2) + ''/'' + value.substring(2);',
'    }',
'    if (value.length > 5) {',
'      value = value.substring(0, 5) + ''/'' + value.substring(5, 9);',
'    }',
'',
'    if (value.length > 10) {',
'      value = value.substring(0, 10);',
'    }',
'',
'    dateField.value = value;',
'  });',
'});',
'',
'$(document).ready(function() { ',
'    $("#P75_COLLECT_DATE_FROM, #P75_COLLECT_DATE_TO").on("keydown", function(event) {',
'        if (event.key === "Enter" || event.keyCode === 13) {',
'            console.log("CLICKED")',
'            $.event.trigger(''validateDates'');',
'            event.preventDefault();',
'        }',
'    });',
'});'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#filter span.t-Form-itemText,',
'#filter span.display_only {',
'    font-size: 1.125rem !important;',
'    color: white !important;',
'}',
'',
'.t-Region#filter {',
'    background-color: rgb(30, 58, 138);',
'}',
'',
'.formLabel::after {',
'    content: "*" !important;',
'    color: red;',
'}',
'',
'#P75_SEARCH_DBA_CONTAINER .t-Form-itemText {',
'    background-color: transparent;',
'    border: none;',
'    font-size: 1.125rem;',
'    margin-left: 2.5rem;',
'}',
'',
'.ui-dialog-titlebar {',
'    display: none !important;',
'}',
'',
'.t-Region#add-header {',
'    background-color: #056AC8;',
'    border-radius: 12px 12px 0 0;',
'}',
'',
'#makeCollection .t-Region-body {',
'    border-radius: 12px;',
'}',
'',
'#makeCollection.t-DialogRegion {',
'    min-height: auto !important;',
'    background-color: white;',
'    border-radius: 12px;',
'}',
'',
'.ui-dialog:not(.ui-dialog-autocomplete) {',
'    background-color: #056AC8;',
'}',
'',
'.t-DialogRegion-bodyWrapperOut {',
'    overflow: hidden !important;',
'}',
'',
'#inquire .a-GV-cell,',
'#inquire .a-GV-header {',
'    pointer-events: none;',
'}',
'',
'.text-red {',
'    color: red;',
'}',
'',
'#filter span div#P75_COLLECT_DATE_FROM_error {',
'    margin-left: 15.3rem;',
'}',
'#filter span div#P75_COLLECT_DATE_TO_error {',
'    margin-left: 2.1rem;',
'}',
'',
'.t-Form-error {',
'    color: #FFD700 !important;',
'}',
'/*----------------*/',
'',
'.btns {',
'    font-size: 1.125rem;',
'    color: white;',
'}',
'',
'#table .a-IG {',
'    height: calc(70vh + 2px) !important;',
'} ',
'',
'#table .a-IG-contentContainer {',
'    height: 705vh !important;',
'}',
'',
'#table .a-IG-gridView.a-GV {',
'    height: 70vh !important;',
'}',
'',
'#table .a-GV-bdy {',
'    height: calc(70vh - 2.5625rem) !important;',
'}',
'',
'.t-Header .t-Header-branding {',
'    background-color: white !important;',
'    color: rgb(30, 58, 138) !important;',
'}',
'',
'.hide {',
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
'#table table, #inquire table,',
'#table tr, #inquire tr,',
'#table th, #inquire th {',
'    font-size: 1rem;',
'}',
'',
'',
'#table td, #table td {',
'    font-size: 1.125rem;',
'}',
'',
'.a-IG,',
'.a-GV-table .a-GV-cell, th.a-GV-header{',
'    border-color: 	black !important;',
'}',
'',
'#table .a-GV-header a, #table th.a-GV-header {',
'    background-color: #046BC8;',
'    color: white;',
'    pointer-events: none;',
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
'}',
'',
'#table .a-GV-table {',
'    width: 100% !important;',
'}',
'',
'#table .a-GV-table colgroup col:nth-child(1),',
'#table .a-GV-table colgroup col:nth-child(8) {',
'    width: 3rem;',
'}',
'',
'#table .a-GV-table colgroup col:nth-child(3) {',
'    width: 17rem;',
'}',
'',
'#table .a-GV-table colgroup col:nth-child(2),',
'#table .a-GV-table colgroup col:nth-child(5),',
'#table .a-GV-table colgroup col:nth-child(6),',
'#table .a-GV-table colgroup col:nth-child(7) {',
'    width: 8rem;',
'}',
'',
'#table .a-GV-table colgroup col:nth-child(4) {',
'    width: 7rem;',
'}'))
,p_step_template=>wwv_flow_imp.id(5671392681337017)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22495299283163640)
,p_plug_name=>'Collection Grid'
,p_region_name=>'table'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>40
,p_plug_grid_column_span=>10
,p_plug_display_column=>2
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    CASE WHEN npt005.posted = ''Y'' THEN ''P'' ELSE NULL END AS "POST",',
'    npt005.collection_id AS "COLLECTION_ID",',
'    npt009."DBA" AS "DBA",',
'    npt005.amount AS "AMOUNT",',
'    npt005.cashcheck AS "CHECK_NO",',
'    npt022.check_date AS "CHECK_DATE",',
'    npt005.or_no AS "OR_NO",',
'    npm015.collection_type_code AS "TYPE"',
'FROM',
'    NPT005 npt005',
'JOIN',
'    NPT038 npt038 ON NPT005.collection_id = npt038.collection_id',
'JOIN',
'    NPT001 npt001 ON npt038.invoice_id = npt001.invoice_id',
'JOIN',
'    NPT009 npt009 ON npt001.customer_id = npt009.customer_id',
'LEFT JOIN',
'    NPT022 npt022 ON npt009.customer_id = npt022.customer_id',
'LEFT JOIN',
'    NPM015 npm015 ON npt005.collection_type_id = npm015.collection_type_id',
'WHERE',
'    (',
'        (:P75_COLLECT_DATE_FROM IS NOT NULL AND :P75_COLLECT_DATE_TO IS NULL AND npt005.date_created = :P75_COLLECT_DATE_FROM)',
'        OR',
'        (:P75_COLLECT_DATE_FROM IS NOT NULL AND :P75_COLLECT_DATE_TO IS NOT NULL AND npt005.date_created BETWEEN :P75_COLLECT_DATE_FROM AND :P75_COLLECT_DATE_TO)',
'    )',
'    AND (:P75_COLLECT_DATE_FROM IS NOT NULL OR :P75_COLLECT_DATE_TO IS NOT NULL)'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P75_COLLECT_DATE_FROM,P75_COLLECT_DATE_TO'
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
 p_id=>wwv_flow_imp.id(43600379563093303)
,p_name=>'POST'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POST'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Post'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>false
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
 p_id=>wwv_flow_imp.id(43600452086093304)
,p_name=>'COLLECTION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COLLECTION_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Collection ID'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
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
 p_id=>wwv_flow_imp.id(43600537368093305)
,p_name=>'DBA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DBA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Customer Name (DBA)'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(43600649001093306)
,p_name=>'AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AMOUNT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Paid Amount'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'RIGHT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
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
 p_id=>wwv_flow_imp.id(43600794344093307)
,p_name=>'CHECK_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CHECK_NO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Check No'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(43600821922093308)
,p_name=>'CHECK_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CHECK_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Check Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
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
 p_id=>wwv_flow_imp.id(43600922692093309)
,p_name=>'OR_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OR_NO'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'OR No'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
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
 p_id=>wwv_flow_imp.id(43601082890093310)
,p_name=>'TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Type'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(22495460824163642)
,p_internal_uid=>22495460824163642
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
,p_enable_download=>false
,p_download_formats=>null
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
 p_id=>wwv_flow_imp.id(24829357872558904)
,p_interactive_grid_id=>wwv_flow_imp.id(22495460824163642)
,p_static_id=>'248294'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(24829576395558906)
,p_report_id=>wwv_flow_imp.id(24829357872558904)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43619391779259006)
,p_view_id=>wwv_flow_imp.id(24829576395558906)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(43600379563093303)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43620257299259017)
,p_view_id=>wwv_flow_imp.id(24829576395558906)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(43600452086093304)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43621114611259025)
,p_view_id=>wwv_flow_imp.id(24829576395558906)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(43600537368093305)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43622028608259032)
,p_view_id=>wwv_flow_imp.id(24829576395558906)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(43600649001093306)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43622910846259045)
,p_view_id=>wwv_flow_imp.id(24829576395558906)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(43600794344093307)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43623861132259054)
,p_view_id=>wwv_flow_imp.id(24829576395558906)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(43600821922093308)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43624729778259062)
,p_view_id=>wwv_flow_imp.id(24829576395558906)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(43600922692093309)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43625626326259071)
,p_view_id=>wwv_flow_imp.id(24829576395558906)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(43601082890093310)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(24859249164616226)
,p_plug_name=>'Make Collection'
,p_region_name=>'makeCollection'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:t-DialogRegion--noPadding:js-dialog-nosize'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>80
,p_plug_display_point=>'REGION_POSITION_04'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(43601921230093319)
,p_plug_name=>'Header'
,p_region_name=>'add-header'
,p_parent_plug_id=>wwv_flow_imp.id(24859249164616226)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>20
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="background-color: #056AC8; font-size: 1.5rem; color: white; padding: .50rem 0 .50rem 0; margin-left: 1rem;"',
'     id="add-header">',
'    Add Collection Entry',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(44254389736146506)
,p_plug_name=>'errorArea'
,p_parent_plug_id=>wwv_flow_imp.id(24859249164616226)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--hiddenOverflow:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>30
,p_location=>null
,p_plug_source=>'<span id="errorArea" class="hide text-red" style="margin-left: 3rem;"></span>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38695553248196554)
,p_plug_name=>'Buttons'
,p_plug_display_sequence=>60
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
 p_id=>wwv_flow_imp.id(43600247903093302)
,p_plug_name=>'Filter'
,p_region_name=>'filter'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--hiddenOverflow:margin-bottom-md:margin-left-md:margin-right-md'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>30
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(43601244102093312)
,p_plug_name=>'Inquire'
,p_region_name=>'inquire'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>90
,p_plug_display_point=>'REGION_POSITION_04'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    NULL AS "INVOICE_NO",',
'    NULL AS "P_AMOUNT",',
'    NULL AS "INVOICE_DATE"',
'FROM',
'    DUAL'))
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
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="font-size: 1.125rem; font-weight: 600; margin-bottom: 1rem; color: white;">',
'    Collection ID: SAMPLE-321',
'</div>'))
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43601482406093314)
,p_name=>'INVOICE_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INVOICE_NO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Invoice Number'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
,p_value_alignment=>'CENTER'
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
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43601593229093315)
,p_name=>'P_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'P_AMOUNT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Paid Amount'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'RIGHT'
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
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43601698257093316)
,p_name=>'INVOICE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INVOICE_DATE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Invoice Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'RIGHT'
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
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(43601361016093313)
,p_internal_uid=>43601361016093313
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>false
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>false
,p_toolbar_buttons=>null
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>false
,p_define_chart_view=>false
,p_enable_download=>false
,p_download_formats=>null
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>200
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
 p_id=>wwv_flow_imp.id(43726938186678412)
,p_interactive_grid_id=>wwv_flow_imp.id(43601361016093313)
,p_static_id=>'437270'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(43727136375678414)
,p_report_id=>wwv_flow_imp.id(43726938186678412)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43727635065678418)
,p_view_id=>wwv_flow_imp.id(43727136375678414)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(43601482406093314)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43728599353678425)
,p_view_id=>wwv_flow_imp.id(43727136375678414)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(43601593229093315)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43729465116678431)
,p_view_id=>wwv_flow_imp.id(43727136375678414)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(43601698257093316)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(43602729860093327)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(43601244102093312)
,p_button_name=>'CLOSE_INQUIRE'
,p_button_static_id=>'close-inquire'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Close Inquire'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'hide'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(35235292010472418)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(38695553248196554)
,p_button_name=>'CHANGE_DATE'
,p_button_static_id=>'c'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>C</u> - Change Collection Date'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'Y'
,p_grid_column_span=>3
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(24837174509564057)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(38695553248196554)
,p_button_name=>'MAKE_COLLECTION'
,p_button_static_id=>'a'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>A</u> - Make Collection'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>3
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(35235637111472422)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(38695553248196554)
,p_button_name=>'UPDATE'
,p_button_static_id=>'u'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>U</u> - Update'
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(24838386068564060)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(38695553248196554)
,p_button_name=>'INQUIRE'
,p_button_static_id=>'i'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>I</u> - Inquire'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(43602340685093323)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(24859249164616226)
,p_button_name=>'CLOSE_COLLECTION'
,p_button_static_id=>'close-collection'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Close Collection'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'hide'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(43601171438093311)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(38695553248196554)
,p_button_name=>'POST'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>P</u> -Post'
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(43602218630093322)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(38695553248196554)
,p_button_name=>'Exit'
,p_button_static_id=>'exit'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Exit'
,p_button_redirect_url=>'f?p=&APP_ID.:306:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'hide'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22495308494163641)
,p_name=>'P75_COLLECT_DATE_FROM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(43600247903093302)
,p_placeholder=>'MM/DD/YYYY'
,p_pre_element_text=>'<div class="formLabel" style="margin-left: 5.5rem;">Collection Date</div>:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>4
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24859492356616228)
,p_name=>'P75_SEARCH_DBA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(24859249164616226)
,p_use_cache_before_default=>'NO'
,p_pre_element_text=>'<div id="dba">DBA:&nbsp;&nbsp;&nbsp;</div>'
,p_post_element_text=>'<div style="margin-right: .1rem;"></div>'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>'SELECT DBA FROM NPT009'
,p_cSize=>30
,p_colspan=>12
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:margin-bottom-md'
,p_warn_on_unsaved_changes=>'I'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'Y'
,p_attribute_05=>'7'
,p_attribute_09=>'1'
,p_attribute_10=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35235968182472425)
,p_name=>'P75_PREPARED_URL'
,p_item_sequence=>50
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43600182907093301)
,p_name=>'P75_COLLECT_DATE_TO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(43600247903093302)
,p_placeholder=>'MM/DD/YYYY'
,p_pre_element_text=>'To&nbsp;&nbsp;&nbsp;'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44255537365146518)
,p_name=>'P75_COLLECTION_ID'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24859590679616229)
,p_name=>'Open Make Collection'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(24837174509564057)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43602178804093321)
,p_event_id=>wwv_flow_imp.id(24859590679616229)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("#makeCollection").dialog("option", "width", 600);'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24859644009616230)
,p_event_id=>wwv_flow_imp.id(24859590679616229)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(24859249164616226)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(35235303327472419)
,p_name=>'ON C press'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(35235292010472418)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(35235451033472420)
,p_event_id=>wwv_flow_imp.id(35235303327472419)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P75_COLLECT_DATE_FROM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(35235763219472423)
,p_name=>'Go to Create Collection'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P75_SEARCH_DBA'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.key?.toLowerCase() === ''enter'';'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keyup'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(35235830618472424)
,p_event_id=>wwv_flow_imp.id(35235763219472423)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P75_PREPARED_URL := apex_page.get_url(',
'    p_clear_cache => 77,',
'    p_page => 77,',
'    p_items => ''P77_DBA'',',
'    p_values => :P75_SEARCH_DBA',
');'))
,p_attribute_02=>'P75_SEARCH_DBA'
,p_attribute_03=>'P75_PREPARED_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44254469108146507)
,p_event_id=>wwv_flow_imp.id(35235763219472423)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'async function searchDBA() {',
'    const searchDBA = $v("P75_SEARCH_DBA");',
'',
'    try {',
'        await doesDBAExists(searchDBA);',
'',
'        let url = $v("P75_PREPARED_URL");',
'        apex.navigation.redirect(url);',
'    } catch (error) {',
'        errorArea.style.display = "block";',
'        errorArea.innerText = error;',
'        document.getElementById("P75_SEARCH_DBA").focus();',
'    }',
'}',
'',
'async function doesDBAExists(searchDBA) {',
'    const response = await apex.server.process(''DBA_EXISTS'', {',
'        pageItems: ''#P75_SEARCH_DBA'',',
'        x01: searchDBA',
'    }, {',
'        dataType: ''json''',
'    });',
'    if (response.success) {',
'        return true;',
'    } else {',
'        throw ''The entered DBA does not exist.''',
'    }',
'}',
'',
'searchDBA();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(43601725347093317)
,p_name=>'Open Inquire'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(24838386068564060)
,p_condition_element=>'P75_COLLECTION_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43602677114093326)
,p_event_id=>wwv_flow_imp.id(43601725347093317)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#inquire").dialog({',
'  width: 600,',
'  position: { my: "right", at: "right-140", of: window }',
'});'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43601843240093318)
,p_event_id=>wwv_flow_imp.id(43601725347093317)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(43601244102093312)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44255914566146522)
,p_event_id=>wwv_flow_imp.id(43601725347093317)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).off(''keydown.p75keyevents'');',
'$(document).on(''keydown.p75keyevents'', (ev) => {',
'    $(''#inquire'').dialog("close")',
'});',
'',
'$("#inquire").on("dialogbeforeclose", function(event, ui) {',
'    setTimeout(mapP75Keys, 0);',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(43602444578093324)
,p_name=>'Close Make Collection'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(43602340685093323)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43602552474093325)
,p_event_id=>wwv_flow_imp.id(43602444578093324)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(24859249164616226)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(43602802142093328)
,p_name=>'Close Inquire'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(43602729860093327)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43602974386093329)
,p_event_id=>wwv_flow_imp.id(43602802142093328)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(43601244102093312)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44254640401146509)
,p_name=>'Validate Dates'
,p_event_sequence=>100
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'validateDates'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44254705361146510)
,p_event_id=>wwv_flow_imp.id(44254640401146509)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var dateFrom = $v(''P75_COLLECT_DATE_FROM'');',
'var dateTo = $v(''P75_COLLECT_DATE_TO'');',
'var currentDate = new Date();',
'',
'apex.message.clearErrors();',
'',
'var hasErrors = false;',
'',
'function isDateValid(dateString) {',
'    var datePattern = /^(0[1-9]|1[0-2])\/(0[1-9]|[12][0-9]|3[01])\/\d{4}$/;',
'',
'    if (!dateString.match(datePattern)) {',
'        return false;',
'    }',
'',
'    var parts = dateString.split("/");',
'    var month = parseInt(parts[0], 10);',
'    var day = parseInt(parts[1], 10);',
'    var year = parseInt(parts[2], 10);',
'',
'    var date = new Date(year, month - 1, day);',
'    return (date.getFullYear() === year && date.getMonth() === (month - 1) && date.getDate() === day);',
'}',
'',
'function parseDate(dateString) {',
'    var parts = dateString.split("/");',
'    return new Date(parts[2], parts[0] - 1, parts[1]);',
'}',
'',
'var dateFromParsed = parseDate(dateFrom);',
'var dateToParsed = parseDate(dateTo);',
'',
'if (dateFrom == "") {',
'    apex.message.showErrors([{',
'        type: "error",location: ["inline"],',
'        pageItem: "P75_COLLECT_DATE_FROM",',
'        message: "Collection Date is required",',
'        unsafe: false',
'    }])',
'    hasErrors = true;',
'} else if (!isDateValid(dateFrom)) {',
'    apex.message.showErrors([{',
'        type: "error",location: ["inline"],',
'        pageItem: "P75_COLLECT_DATE_FROM",',
'        message: "Please Enter a valid date",',
'        unsafe: false',
'    }])',
'    hasErrors = true;',
'} else if (dateTo !== "" && dateFromParsed > dateToParsed) {',
'    apex.message.showErrors([{',
'        type: "error",',
'        location: ["inline"],',
'        pageItem: "P75_COLLECT_DATE_FROM",',
'        message: "Date must be earlier than Date To",',
'        unsafe: false',
'    }]);',
'    hasErrors = true;',
'}',
'',
'if (!isDateValid(dateTo) && dateTo !== "") {',
'    apex.message.showErrors([{',
'        type: "error",location: ["inline"],',
'        pageItem: "P75_COLLECT_DATE_TO",',
'        message: "Please Enter a valid date",',
'        unsafe: false',
'    }])',
'    hasErrors = true;',
'} else if (dateToParsed > currentDate) {',
'    apex.message.showErrors([{',
'        type: "error",',
'        location: ["inline"],',
'        pageItem: "P75_COLLECT_DATE_TO",',
'        message: "Date cannot exceed today''s date",',
'        unsafe: false',
'    }]);',
'    hasErrors = true;',
'}',
'',
'if (hasErrors) {',
'    return false;',
'}',
'',
'apex.message.clearErrors();'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44254879911146511)
,p_event_id=>wwv_flow_imp.id(44254640401146509)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(22495299283163640)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44255661027146519)
,p_event_id=>wwv_flow_imp.id(44254640401146509)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// setTimeout(function() {',
'//     $(".a-GV-cell").first().trigger("click");',
'// }, 500);',
'',
'// var igStaticId = "table";',
'',
'// var igRegion = apex.region(igStaticId);',
'',
'// if (igRegion) {',
'//     var igView = igRegion.widget().interactiveGrid("getViews", "grid");',
'//     var igModel = igView.model;',
'',
'//     igModel.subscribe({',
'//         onDataChange: function() {',
'//             console.log("Interactive Grid data refreshed.");',
'',
'//             $(".a-GV-cell").first().trigger("click");',
'//         }',
'//     });',
'// }'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44255309866146516)
,p_name=>'Selection Change'
,p_event_sequence=>110
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(22495299283163640)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44255426957146517)
,p_event_id=>wwv_flow_imp.id(44255309866146516)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (this.data.selectedRecords && this.data.selectedRecords.length > 0) {',
'    let collectionIdSelected = this.data.selectedRecords[0][1];',
'    apex.item("P75_COLLECTION_ID").setValue(collectionIdSelected);',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44256052353146523)
,p_name=>'Select First Cell'
,p_event_sequence=>120
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(22495299283163640)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|gridpagechange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44256144525146524)
,p_event_id=>wwv_flow_imp.id(44256052353146523)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(".a-GV-cell").first().trigger("click");'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(44254568427146508)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DBA_EXISTS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_exists NUMBER;',
'BEGIN',
'    SELECT COUNT(*)',
'    INTO v_exists',
'    FROM NPT009',
'    WHERE "DBA" = apex_application.g_x01;',
'',
'    IF v_exists = 0 THEN',
'        HTP.P(''{"success": false}'');',
'    ELSE',
'        HTP.P(''{"success": true}'');',
'    END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>44254568427146508
);
wwv_flow_imp.component_end;
end;
/
