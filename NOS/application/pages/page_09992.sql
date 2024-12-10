prompt --application/pages/page_09992
begin
--   Manifest
--     PAGE: 09992
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
 p_id=>9992
,p_name=>'Inquire Inventory Balance'
,p_alias=>'INQUIRE-INVENTORY-BALANCE1'
,p_step_title=>'Inquire Inventory Balance'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#js/cmn#MIN#.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p6KeyMap = {',
'    p : (v) => {',
'        $("#p").trigger("click");',
'    },',
'    w : (v) => {',
'        $("#w").trigger("click");',
'    },',
'    v : (v) => {',
'        $("#v").trigger("click");',
'    },',
'    i : (v) => {',
'        $("#i").trigger("click");',
'    },',
'    r : (v) => {',
'        $("#r").trigger("click");',
'    },',
'    o : (v) => {',
'        $("#o").trigger("click");',
'    },',
'    s : (v) => {',
'        $("#s").trigger("click");',
'    },',
'    escape : (v) => {',
'        $("#exit").trigger("click");',
'    },',
'    home: (v) => {',
'        $("#top").trigger("click");',
'    },',
'    end: (v) => {',
'        $("#bottom").trigger("click");',
'    }',
'}',
'',
'function mapP6Keys() {',
'    $(document).off(''keydown.p6keyevents'');',
'    $(document).on(''keydown.p6keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p6KeyMap[key]) {',
'            ev.preventDefault();',
'            p6KeyMap[key]();',
'        }',
'    });',
'}',
'',
'function customEvent(event, data){',
'    mapP6Keys();',
'}',
'',
'function moveButtons() {',
'    $("#exit").prependTo(".buttons-row5");',
'    $("#bottom").prependTo(".buttons-row5");',
'    $("#top").prependTo(".buttons-row5");',
'    $("#s").prependTo(".buttons-row5");',
'    $("#p").prependTo(".buttons-row5");',
'    $("#d").prependTo(".buttons-row5");',
'    $("#h").prependTo(".buttons-row5");',
'    $("#w").prependTo(".buttons-row5");',
'    $("#o").prependTo(".buttons-row5");',
'    $("#r").prependTo(".buttons-row5");',
'    $("#i").prependTo(".buttons-row5");',
'    $("#v").prependTo(".buttons-row5");',
'    $("#p").prependTo(".buttons-row5");',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP6Keys();',
'moveButtons();'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#table {',
'    table, tr, td, th {',
'        font-size: 1rem;',
'    }',
'}',
'',
'.btns {',
'    font-size: 1rem;',
'}',
'',
'.text-left {',
'    text-align: left;',
'}',
'',
'.width-18 {',
'    width: 18rem;',
'}',
'',
'.margin-right {',
'    margin-right: 2.5rem;',
'}',
'',
'.ms-1 {',
'    margin-left: 2rem;',
'}',
'',
'.content-block {',
'    font-size: 1.25rem;',
'    display: flex;',
'    justify-content: space-between;',
'    font-weight: 700;',
'}',
'',
'.a-GV-header a, th.a-GV-header {',
'    background-color: #046BC8;',
'    color: white;',
'    pointer-events: none;',
'}',
'',
'.a-IG,',
'.a-GV-table .a-GV-cell, th.a-GV-header{',
'    border-color: 	black !important;',
'}',
'',
'.ui-dialog-titlebar {',
'    display: none !important;',
'}',
'',
'.ui-dialog.pr-li {',
'   left: 80% !important;',
'}',
'',
'.ui-dialog.inv-bby-w {',
'    left: 78% !important;',
'}',
'',
'.ui-dialog.ship-his {',
'    left: 50% !important;',
'}',
'',
'.ui-dialog.pur-order,',
'.ui-dialog.inc-ship {',
'    left: 45% !important;',
'}',
'',
'.ui-dialog.res {',
'    left: 32% !important;',
'}',
'',
'.ui-widget-overlay.ui-front {',
'    background-color: transparent !important;',
'    opacity: 0 !important;',
'}',
'',
'#table .a-GV-table {',
'    width: 100% !important;',
'}',
'',
'#table .a-GV-table colgroup col:nth-child(4) {',
'    width: 26rem;',
'}',
'',
'#table .a-GV-table colgroup col:nth-child(5) {',
'    width: 7rem;',
'}',
'',
'.buttons-row5 {',
'    display: flex;',
'    width: 100%;',
'    flex-wrap: wrap;',
'}',
'',
'.buttons-row5 button {',
'    width: 20%;',
'}'))
,p_step_template=>wwv_flow_imp.id(5671392681337017)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21126618020183037)
,p_plug_name=>'Header'
,p_plug_display_sequence=>50
,p_plug_grid_column_css_classes=>'ms-1'
,p_location=>null
,p_plug_source=>'<h1>Inquire Inventory Balance</h1>'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21126768636183038)
,p_plug_name=>'Buttons'
,p_region_name=>'buttons'
,p_plug_display_sequence=>70
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="buttons-row5">',
'</div>'))
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21131073214183081)
,p_plug_name=>'Inquire Inventory Balance'
,p_region_name=>'table'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>60
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    nit001.item_id as "ITEM_ID",',
'    nit001.item_num as "ITEM_NUM",',
'    nit002.upc as "UPC",',
'    nim022.brand_name as "BRAND_NAME",',
'    nit001.item_desc as "ITEM_DESC",',
'    TO_CHAR((nit002.quantity * nit004.qty) / (SELECT MAX(nit2.quantity) FROM NIT002 nit2 WHERE nit2.item_id = nit001.item_id), ''99.99'') AS "TOTAL_CS",',
'    (nit002.quantity * nit004.qty) AS "TOTAL_UNITS",',
'    ''Dummy'' AS "RESERVE_CS",',
'    ''Dummy'' AS "RESERVE_UNITS"',
'FROM',
'    NIT001 nit001',
'JOIN',
'    NIT004 nit004 ON nit004.item_id = nit001.item_id',
'JOIN',
'    NIT002 nit002 ON nit001.item_id = nit002.item_id',
'    AND',
'    nit002.uom_id = nit004.uom_id',
'JOIN',
'    NIM022 nim022 ON nit001.brand_id = nim022.brand_id',
'-- JOIN',
'--     NPT019 npt019 ON nit001.item_id = npt019.item_id',
'WHERE',
'    (:P9992_ITEM_NUM IS NOT NULL AND UPPER(nit001.item_num) LIKE ''%'' || UPPER(:P9992_ITEM_NUM) || ''%'')',
'    OR',
'    (:P9992_ITEM_NUM IS NULL AND :P9992_UPC IS NOT NULL AND UPPER(nit002.upc) LIKE ''%'' || UPPER(:P9992_UPC) || ''%'')',
'    OR',
'    (:P9992_ITEM_NUM IS NULL AND :P9992_UPC IS NULL AND :P9992_ITEM_DESC IS NOT NULL AND UPPER(nit001.item_desc) LIKE ''%'' || UPPER(:P9992_ITEM_DESC) || ''%'')',
'',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P9992_ITEM_NUM,P9992_UPC,P9992_ITEM_DESC'
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
 p_id=>wwv_flow_imp.id(21131372121183084)
,p_name=>'ITEM_NUM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEM_NUM'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Item Number'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
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
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    };',
'    return options;',
'}'))
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(21131387231183085)
,p_name=>'UPC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'UPC'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
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
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    };',
'    return options;',
'}'))
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(21608253421406536)
,p_name=>'BRAND_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BRAND_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Brand Name'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>200
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    };',
'    return options;',
'}'))
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(21608304942406537)
,p_name=>'ITEM_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEM_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Item Description'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
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
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    };',
'    return options;',
'}'))
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(24198641187322469)
,p_name=>'ITEM_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEM_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(24198777612322470)
,p_name=>'TOTAL_CS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOTAL_CS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Total # of CS'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'RIGHT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>5
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
 p_id=>wwv_flow_imp.id(24198786823322471)
,p_name=>'TOTAL_UNITS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOTAL_UNITS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Total # of Units'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'RIGHT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>5
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
 p_id=>wwv_flow_imp.id(24826509488133958)
,p_name=>'RESERVE_CS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RESERVE_CS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Reserve # of CS'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'RIGHT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>5
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
 p_id=>wwv_flow_imp.id(24826666047133959)
,p_name=>'RESERVE_UNITS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RESERVE_UNITS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Reserve # of Units'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'RIGHT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>5
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
 p_id=>wwv_flow_imp.id(21131148710183082)
,p_internal_uid=>21131148710183082
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
 p_id=>wwv_flow_imp.id(21614124225414961)
,p_interactive_grid_id=>wwv_flow_imp.id(21131148710183082)
,p_static_id=>'72553'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(21614304242414961)
,p_report_id=>wwv_flow_imp.id(21614124225414961)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(21616157913414972)
,p_view_id=>wwv_flow_imp.id(21614304242414961)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(21131372121183084)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(21616956982414977)
,p_view_id=>wwv_flow_imp.id(21614304242414961)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(21131387231183085)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(21617843414414983)
,p_view_id=>wwv_flow_imp.id(21614304242414961)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(21608253421406536)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(21618719211414989)
,p_view_id=>wwv_flow_imp.id(21614304242414961)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(21608304942406537)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(24711766387489128)
,p_view_id=>wwv_flow_imp.id(21614304242414961)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(24198641187322469)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(24744817102638670)
,p_view_id=>wwv_flow_imp.id(21614304242414961)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(24198777612322470)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(24745743488638678)
,p_view_id=>wwv_flow_imp.id(21614304242414961)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(24198786823322471)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(25801486987655616)
,p_view_id=>wwv_flow_imp.id(21614304242414961)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(24826509488133958)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(25802394976655630)
,p_view_id=>wwv_flow_imp.id(21614304242414961)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(24826666047133959)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14359771811171601)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(21126768636183038)
,p_button_name=>'PRICE_LIST'
,p_button_static_id=>'p'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>P</u> - Pricelist'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14360112130171603)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(21126768636183038)
,p_button_name=>'PREV_SHIPMENTS'
,p_button_static_id=>'v'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>V</u> - Previous Shipments'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'has_access(:APP_USER, 5, 16) = ''Y'' OR',
'has_access(:APP_USER, 5, 28) = ''Y'''))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14360586742171603)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(21126768636183038)
,p_button_name=>'INC_SHIPMENTS'
,p_button_static_id=>'i'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>I</u> - Incoming Shipments'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'has_access(:APP_USER, 5, 17) = ''Y'' OR',
'has_access(:APP_USER, 5, 29) = ''Y'''))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14360903575171603)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(21126768636183038)
,p_button_name=>'RESERVATIONS'
,p_button_static_id=>'r'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>R</u> - Reservations'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14361387209171604)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(21126768636183038)
,p_button_name=>'PUR_ORDER'
,p_button_static_id=>'o'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>O</u> - Purchase Orders'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'has_access(:APP_USER, 5, 18) = ''Y'' OR',
'has_access(:APP_USER, 5, 30) = ''Y'''))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14361753942171604)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(21126768636183038)
,p_button_name=>'INV_BAL'
,p_button_static_id=>'w'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>W</u> - Inventory Balance by Whs'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14362132608171604)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(21126768636183038)
,p_button_name=>'EXP_INV_BAL'
,p_button_static_id=>'h'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>H</u> - Export Inventory Balance'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14362576576171606)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(21126768636183038)
,p_button_name=>'CHANGE_SCR'
,p_button_static_id=>'d'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>D</u> - Change Screen to Different Whs'
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14362946684171606)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(21126768636183038)
,p_button_name=>'PRT_INV_BAL'
,p_button_static_id=>'p'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>P</u> - Print Inventory Balance'
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14363328231171606)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(21126768636183038)
,p_button_name=>'SEARCH'
,p_button_static_id=>'s'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>S</u> - Search'
,p_button_redirect_url=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14363712096171607)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(21126768636183038)
,p_button_name=>'TOP'
,p_button_static_id=>'top'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>Home</u> - Top'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14364135477171607)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_imp.id(21126768636183038)
,p_button_name=>'BOTTOM'
,p_button_static_id=>'bottom'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>End</u> - Bottom'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14364599547171607)
,p_button_sequence=>140
,p_button_plug_id=>wwv_flow_imp.id(21126768636183038)
,p_button_name=>'EXIT'
,p_button_static_id=>'exit'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>Esc</u> - To Exit'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21619619241406639)
,p_name=>'P9992_ITEM_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(21131073214183081)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21621043124406653)
,p_name=>'P9992_URL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(21131073214183081)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24207646093322568)
,p_name=>'P9992_ITEM_NUM'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24207763497322569)
,p_name=>'P9992_UPC'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24207850573322570)
,p_name=>'P9992_ITEM_DESC'
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14374191782171667)
,p_name=>'Reset P Key'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(14359771811171601)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14374637124171667)
,p_event_id=>wwv_flow_imp.id(14374191782171667)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mapP6Keys();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14379682861171671)
,p_name=>'On Pricelist Click'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(14359771811171601)
,p_condition_element=>'P9992_ITEM_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14380128096171673)
,p_event_id=>wwv_flow_imp.id(14379682861171671)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P9992_URL := apex_page.get_url(',
'       p_page   => 13,',
'       p_items  => ''P13_ITEM_ID'',',
'       p_values => :P9992_ITEM_ID',
'     );',
'END;'))
,p_attribute_02=>'P9992_ITEM_ID'
,p_attribute_03=>'P9992_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14380651940171673)
,p_event_id=>wwv_flow_imp.id(14379682861171671)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9992_ITEM_ID'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P9992_URL");',
'apex.navigation.redirect(url);',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14381102987171673)
,p_event_id=>wwv_flow_imp.id(14379682861171671)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).off(''keydown.p6keyevents'');',
'$(document).on(''keydown.p6keyevents'', (ev) => {',
'    apex.navigation.dialog.close(true);',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14375044359171667)
,p_name=>'Reset V Key'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(14360112130171603)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14375520693171668)
,p_event_id=>wwv_flow_imp.id(14375044359171667)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mapP6Keys();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14381578429171673)
,p_name=>'On Home Click'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(14363712096171607)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14382075218171675)
,p_event_id=>wwv_flow_imp.id(14381578429171673)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var ign = apex.region("table").widget().interactiveGrid("getViews","grid");',
'ign.view$.grid("gotoCell", 0, "ITEM_NUM");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14382489158171675)
,p_name=>'On End Click'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(14364135477171607)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14382931130171675)
,p_event_id=>wwv_flow_imp.id(14382489158171675)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var ign = apex.region("table").widget().interactiveGrid("getViews","grid");',
'var model = ign.model;',
'var rowCount = model.getTotalRecords();',
'ign.view$.grid("gotoCell", rowCount - 1, "ITEM_NUM");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14383334797171676)
,p_name=>'On Shipment History Click'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(14360112130171603)
,p_condition_element=>'P9992_ITEM_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14383883035171676)
,p_event_id=>wwv_flow_imp.id(14383334797171676)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P9992_URL := apex_page.get_url(',
'       p_page   => 16,',
'       p_items  => ''P16_ITEM_ID'',',
'       p_values => :P9992_ITEM_ID',
'     );',
'END;'))
,p_attribute_02=>'P9992_ITEM_ID'
,p_attribute_03=>'P9992_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14384318086171676)
,p_event_id=>wwv_flow_imp.id(14383334797171676)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9992_ITEM_ID'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P9992_URL");',
'apex.navigation.redirect(url);'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14384823687171676)
,p_event_id=>wwv_flow_imp.id(14383334797171676)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).off(''keydown.p6keyevents'');',
'$(document).on(''keydown.p6keyevents'', (ev) => {',
'    apex.navigation.dialog.close(true);',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14371355940171662)
,p_name=>'Selection Item Change'
,p_event_sequence=>100
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(21131073214183081)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14371831468171664)
,p_event_id=>wwv_flow_imp.id(14371355940171662)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9992_ITEM_ID'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (this.data.selectedRecords && this.data.selectedRecords.length > 0) {',
'    let itemNoSelected = this.data.selectedRecords[0][0];',
'    apex.item("P9992_ITEM_ID").setValue(itemNoSelected);',
'}',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14378728773171671)
,p_name=>'Reset O Key'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(14361387209171604)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14379281771171671)
,p_event_id=>wwv_flow_imp.id(14378728773171671)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mapP6Keys();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14376832769171668)
,p_name=>'On Purchase Order Click'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(14361387209171604)
,p_condition_element=>'P9992_ITEM_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14377375087171670)
,p_event_id=>wwv_flow_imp.id(14376832769171668)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P9992_URL := apex_page.get_url(',
'       p_page   => 24,',
'       p_items  => ''P24_ITEM_ID'',',
'       p_values => :P9992_ITEM_ID',
'     );',
'END;'))
,p_attribute_02=>'P9992_ITEM_ID'
,p_attribute_03=>'P9992_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14377821101171670)
,p_event_id=>wwv_flow_imp.id(14376832769171668)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9992_ITEM_ID'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P9992_URL");',
'apex.navigation.redirect(url);'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14378302608171671)
,p_event_id=>wwv_flow_imp.id(14376832769171668)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).off(''keydown.p6keyevents'');',
'$(document).on(''keydown.p6keyevents'', (ev) => {',
'    apex.navigation.dialog.close(true);',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14375990845171668)
,p_name=>'Reset W Key'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(14361753942171604)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14376416627171668)
,p_event_id=>wwv_flow_imp.id(14375990845171668)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mapP6Keys();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14372213468171665)
,p_name=>'On Inv_Bal Click'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(14361753942171604)
,p_condition_element=>'P9992_ITEM_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14372727341171665)
,p_event_id=>wwv_flow_imp.id(14372213468171665)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P9992_URL := apex_page.get_url(',
'       p_page   => 14,',
'       p_items  => ''P14_ITEM_ID'',',
'       p_values => :P9992_ITEM_ID',
'     );',
'END;'))
,p_attribute_02=>'P9992_ITEM_ID'
,p_attribute_03=>'P9992_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14373214713171665)
,p_event_id=>wwv_flow_imp.id(14372213468171665)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9992_ITEM_ID'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P9992_URL");',
'apex.navigation.redirect(url);'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14373760351171665)
,p_event_id=>wwv_flow_imp.id(14372213468171665)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).off(''keydown.p6keyevents'');',
'$(document).on(''keydown.p6keyevents'', (ev) => {',
'    apex.navigation.dialog.close(true);',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14386143364171678)
,p_name=>'Reset I Key'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(14360586742171603)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14386633946171679)
,p_event_id=>wwv_flow_imp.id(14386143364171678)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mapP6Keys();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14387003549171679)
,p_name=>'On Incoming Shipments Click'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(14360586742171603)
,p_condition_element=>'P9992_ITEM_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14387540094171679)
,p_event_id=>wwv_flow_imp.id(14387003549171679)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P9992_URL := apex_page.get_url(',
'       p_page   => 17,',
'       p_items  => ''P17_ITEM_ID'',',
'       p_values => :P9992_ITEM_ID',
'     );',
'END;'))
,p_attribute_02=>'P9992_ITEM_ID'
,p_attribute_03=>'P9992_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14388054219171681)
,p_event_id=>wwv_flow_imp.id(14387003549171679)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9992_ITEM_ID'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P9992_URL");',
'apex.navigation.redirect(url);'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14388548592171681)
,p_event_id=>wwv_flow_imp.id(14387003549171679)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).off(''keydown.p6keyevents'');',
'$(document).on(''keydown.p6keyevents'', (ev) => {',
'    apex.navigation.dialog.close(true);',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14392727852171685)
,p_name=>'Reset R Key'
,p_event_sequence=>160
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(14360903575171603)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14393278883171685)
,p_event_id=>wwv_flow_imp.id(14392727852171685)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mapP6Keys();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14393684676171687)
,p_name=>'On Reservations Click'
,p_event_sequence=>170
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(14360903575171603)
,p_condition_element=>'P9992_ITEM_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14394149130171687)
,p_event_id=>wwv_flow_imp.id(14393684676171687)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P9992_URL := apex_page.get_url(',
'       p_page   => 19,',
'       p_items  => ''P19_ITEM_ID'',',
'       p_values => :P9992_ITEM_ID',
'     );',
'END;'))
,p_attribute_02=>'P9992_ITEM_ID'
,p_attribute_03=>'P9992_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14394609163171687)
,p_event_id=>wwv_flow_imp.id(14393684676171687)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9992_ITEM_ID'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P9992_URL");',
'apex.navigation.redirect(url);'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14395144030171689)
,p_event_id=>wwv_flow_imp.id(14393684676171687)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).off(''keydown.p6keyevents'');',
'$(document).on(''keydown.p6keyevents'', (ev) => {',
'    apex.navigation.dialog.close(true);',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14388956002171681)
,p_name=>'Reset S Key'
,p_event_sequence=>180
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(14363328231171606)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14389490031171682)
,p_event_id=>wwv_flow_imp.id(14388956002171681)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mapP6Keys();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14385241403171678)
,p_name=>'Load Search Modal'
,p_event_sequence=>200
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14385703756171678)
,p_event_id=>wwv_flow_imp.id(14385241403171678)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#s").trigger("click");',
'$("div.ui-widget-overlay.ui-front").css("background-color", "transparent");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14389850250171682)
,p_name=>'On Search'
,p_event_sequence=>210
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(14363328231171606)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14391877584171685)
,p_event_id=>wwv_flow_imp.id(14389850250171682)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9992_ITEM_NUM'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P23_ITEM_NUM'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14391395926171684)
,p_event_id=>wwv_flow_imp.id(14389850250171682)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9992_UPC'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P23_UPC'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14392392953171685)
,p_event_id=>wwv_flow_imp.id(14389850250171682)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9992_ITEM_DESC'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P23_ITEM_DESC'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14390335592171684)
,p_event_id=>wwv_flow_imp.id(14389850250171682)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(21131073214183081)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14390886420171684)
,p_event_id=>wwv_flow_imp.id(14389850250171682)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(function() {',
'    $(".a-GV-cell").first().trigger("click");',
'}, 500);',
'',
''))
);
wwv_flow_imp.component_end;
end;
/
