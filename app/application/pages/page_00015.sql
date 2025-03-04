prompt --application/pages/page_00015
begin
--   Manifest
--     PAGE: 00015
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
 p_id=>15
,p_name=>'Item Transaction Map'
,p_alias=>'ITEM-TRANSACTION-MAP'
,p_step_title=>'Item Transaction Map'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#js/cmn#MIN#.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let isPrintDialogActive = false;',
'',
'const p15KeyMap = {',
'    p : (v) => {',
'        $("#p").trigger("click");',
'    },',
'    h : (v) => {',
'        $("#h").trigger("click");',
'    },',
'    escape : (v) => {',
'        if (isPrintDialogActive) {',
'            $.event.trigger("CLOSE_PRINTING_OPTIONS");',
'        } else {',
'            apex.navigation.redirect($(''#P15_EXIT_URL'').val());',
'        }',
'    },',
'    s : (v) => {',
'        $("#s").trigger("click");',
'    },',
'    home : (v) => {',
'        $(''#to-top'').trigger("click");',
'    },',
'    end : (v) => {',
'        $(''#to-bottom'').trigger("click");',
'    },',
'    a : (v) => {',
'        if (isPrintDialogActive) {',
'            $.event.trigger("PRINT_OPTION_A");',
'        }',
'    },',
'    b : (v) => {',
'        if (isPrintDialogActive) {',
'            $.event.trigger("PRINT_OPTION_B");',
'        }',
'    }',
'}',
'',
'function mapP15Keys() {',
'    $(document).off(''keydown.p15keyevents'');',
'    $(document).on(''keydown.p15keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p15KeyMap[key]) {',
'            ev.preventDefault();',
'            p15KeyMap[key]();',
'        }',
'    });',
'    console.log(''done mapping'');',
'}',
'',
'function convertDate(pDate){',
'    const months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", ',
'    "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"];',
'',
'    const date = new Date(pDate);',
'',
'    const newDate = `${date.getDate()}-${months[date.getMonth()]}-${date.getFullYear()}`;',
'',
'    return newDate; ',
'}',
''))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP15Keys();',
'setTitle("Item Transaction Map");',
'$(''#s'').trigger(''click'');'))
,p_css_file_urls=>'#APP_FILES#css/cmn#MIN#.css'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.buttons-row {',
'    position: absolute;',
'    width: 90vw;',
'    bottom: 1.75rem;',
'}',
'',
'.a-GV-table tr.is-selected {',
'    --a-gv-background-color: #F5DC1C !important;',
'}',
'',
'#itm-list .a-IG {',
'    height: calc(60vh + 2px) !important;',
'} ',
'',
'#itm-list .a-IG-contentContainer {',
'    height: 60vh !important;',
'}',
'',
'#itm-list .a-IG-gridView.a-GV {',
'    height: 60vh !important;',
'}',
'',
'#itm-list .a-GV-bdy {',
'    height: calc(60vh - 2.5625rem) !important;',
'}',
'',
'',
'#itm-list table, ',
'#itm-list tr, ',
'#item-list td{',
'    font-size: 1.125rem;',
'    border: 0.0625rem solid black;',
'}',
'    ',
'#itm-list th{',
'    font-size: 1rem;',
'}',
'',
'.a-GV-table .a-GV-cell, th.a-GV-header{',
'    border-color: black;',
'}',
'',
'.a-GV-hdr .a-GV-table {',
'    width: 100% !important;',
'}',
'',
'.a-GV-w-scroll {',
'    overflow-x: hidden;',
'}',
'',
'.btns{',
'    font-size: 1.125rem;',
'    color: white;',
'}',
'',
'.text-left {',
'    text-align: left;',
'}',
'',
'.text-right {',
'    text-align: right;',
'}',
'',
'.content-block {',
'    font-size: 1.25rem;',
'    display: flex;',
'    justify-content: space-between;',
'    font-weight: 700;',
'}',
'',
'.t-Header .t-Header-branding {',
'    background-color: white !important;',
'    color: rgb(30, 58, 138) !important;',
'}',
' ',
'.title-header {',
'    display: flex;',
'    justify-content: center;',
'    margin-top: 1.5rem;',
'    /* color: #056BC9; */',
'    color: white;',
'    font-size: 2rem;',
'    font-weight: 700;',
'    line-height: normal;',
'}',
' ',
'body{',
'    background-color: rgb(30, 58, 138);',
'}',
'',
'.a-GV-header a, th.a-GV-header {',
'    background-color: #046BC8;',
'    color: white;',
'}',
'',
'/* set modal header to a different background and font color */',
'.ui-dialog .ui-dialog-titlebar {',
'    /* background-color: #226597; */',
'    background-color: #056AC8;',
'    color: white;',
'}',
'',
'.ui-dialog.inv-qby-w {',
'   left: 50% !important; ',
'}',
'',
'#search-dialog{',
'    background-color: #056BC9;',
'}',
'.ui-dialog-titlebar-close{',
'    display: none;',
'}',
'.ui-dialog-title{',
'    font-size : 1.5rem;',
'    padding-top: .2rem;',
'    padding-bottom: .2rem;',
'}',
'.text-general{',
'    font-size: 1.125rem;',
'    color:white;',
'}',
'.t-Form-labelContainer.col.col-1{',
'    /* #P15_ITEM_NUM_LABEL{ */',
'        text-align: start;',
'    /* } */',
'}',
'.t-Form-label{',
'    font-size:1.125rem;',
'    color:white;',
'}',
'',
'.printing-option-boxes {',
'    display: flex;',
'    flex-wrap: wrap;',
'    background-color: white;',
'}',
'',
'.printing-option-boxes .printing-option-option {',
'    font-size: 1.125rem;',
'    width: 100%;',
'    padding: 0.75rem 0.5rem;',
'    box-sizing: border-box;',
'    font-weight: 600;',
'}',
'',
'.printing-options {',
'    background-color: #056AC8;',
'}',
''))
,p_step_template=>wwv_flow_imp.id(5671392681337017)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10497244830417919)
,p_plug_name=>'Item Transaction Map'
,p_region_name=>'itm-list'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>110
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH item_tran_map AS (',
'    SELECT a.transaction_id as "rownum", a.io, ',
'    	   a.reference_id inv_ship_no, ',
'    	   a.reference_date inv_date_eta,',
'           a.qty_cs, a.qty_units, ',
'           a.balance_after_transaction balance,',
'           CASE WHEN a.cost IS NOT NULL ',
'                THEN TO_CHAR(a.cost, ''fm999G999G999G999G990D00'') || ''/'' || b.uom_code ',
'                ELSE null',
'                END costs, ',
'           c.warehouse_location whse',
'      FROM nit022 a,',
'           nim026 b,',
'           nim027 c',
'     WHERE a.uom_id = b.uom_id',
'       AND a.warehouse_id = c.warehouse_id',
'       AND a.item_id IN (SELECT TO_NUMBER(column_value)',
'                           FROM TABLE (string_fnc.split_string_pipelined(:P15_ITEM_ID, '','')))',
'       AND a.reference_date BETWEEN TO_DATE(:P15_MONTH_FROM, ''MM/DD/YYYY'') AND TO_DATE(:P15_MONTH_TO, ''MM/DD/YYYY'')',
' ORDER BY a.transaction_id DESC',
')',
'SELECT * FROM item_tran_map'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P15_ITEM_ID,P15_MONTH_FROM,P15_MONTH_TO'
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
 p_id=>wwv_flow_imp.id(14279866742795926)
,p_name=>'IO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'I/O'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>1
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true,',
'        width: 100',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14280089312795928)
,p_name=>'INV_DATE_ETA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INV_DATE_ETA'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Invoice Date/ETA'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
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
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14280113249795929)
,p_name=>'QTY_CS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QTY_CS'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Qty (in Cs)'
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
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14280248600795930)
,p_name=>'QTY_UNITS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QTY_UNITS'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Qty (in units)'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
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
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14280394967795931)
,p_name=>'BALANCE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BALANCE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Balance (in units)'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
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
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14280439085795932)
,p_name=>'COSTS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COSTS'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Cost/UOM'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_format_mask=>'999G999G999G999G990D00'
,p_is_required=>false
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
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14280570295795933)
,p_name=>'WHSE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WHSE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Whse'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>true
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
'        noHeaderActivate: true,',
'        width: 100',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(72037180503713102)
,p_name=>'rownum'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'rownum'
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
 p_id=>wwv_flow_imp.id(72037233534713103)
,p_name=>'INV_SHIP_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INV_SHIP_NO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Invoice/Shipment No'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>43
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(10497354213417920)
,p_internal_uid=>10497354213417920
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
,p_fixed_header_max_height=>460
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
 p_id=>wwv_flow_imp.id(11650312869426934)
,p_interactive_grid_id=>wwv_flow_imp.id(10497354213417920)
,p_static_id=>'116504'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(11650598378426934)
,p_report_id=>wwv_flow_imp.id(11650312869426934)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15645177848476753)
,p_view_id=>wwv_flow_imp.id(11650598378426934)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(14279866742795926)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15646988327476765)
,p_view_id=>wwv_flow_imp.id(11650598378426934)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(14280089312795928)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15647771625476771)
,p_view_id=>wwv_flow_imp.id(11650598378426934)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(14280113249795929)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>200
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15648670604476778)
,p_view_id=>wwv_flow_imp.id(11650598378426934)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(14280248600795930)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>200
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15649545274476785)
,p_view_id=>wwv_flow_imp.id(11650598378426934)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(14280394967795931)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>200
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15650483442476792)
,p_view_id=>wwv_flow_imp.id(11650598378426934)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(14280439085795932)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>200
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15651389438476798)
,p_view_id=>wwv_flow_imp.id(11650598378426934)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(14280570295795933)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(72073986111250150)
,p_view_id=>wwv_flow_imp.id(11650598378426934)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(72037180503713102)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(72074776726250159)
,p_view_id=>wwv_flow_imp.id(11650598378426934)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(72037233534713103)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10497569521417922)
,p_plug_name=>'Page Controls'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>120
,p_plug_grid_row_css_classes=>'buttons-row'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(72037366561713104)
,p_plug_name=>'Print Options'
,p_region_css_classes=>' js-dialog-size480x130 printing-options'
,p_region_template_options=>'js-dialog-autoheight:js-modal:js-draggable:js-dialog-size480x320'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_04'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="printing-option-boxes">',
'    <div class="printing-option-option" data-value="1">A - Dot Matrix Printer</div>',
'    <div class="printing-option-option" data-value="2">B - Graphics Printer</div>',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10497673043417923)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(10497569521417922)
,p_button_name=>'PRINT'
,p_button_static_id=>'p'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>P</u> - Print'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'has_access(:APP_USER, 4, 14) = ''Y'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10497716274417924)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(10497569521417922)
,p_button_name=>'Export'
,p_button_static_id=>'h'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>H</u> - Export'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'has_access(:APP_USER, 4, 15) = ''Y'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10497816331417925)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(10497569521417922)
,p_button_name=>'SEARCH'
,p_button_static_id=>'s'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>S</u> - Search'
,p_button_redirect_url=>'f?p=&APP_ID.:40:&SESSION.::&DEBUG.:40::'
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10497906003417926)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(10497569521417922)
,p_button_name=>'TOP'
,p_button_static_id=>'to-top'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>Home</u> - To Top'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10498091162417927)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(10497569521417922)
,p_button_name=>'BOTTOM'
,p_button_static_id=>'to-bottom'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>End</u> - To Bottom'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10498827233417935)
,p_name=>'P15_ITEM_NUM'
,p_item_sequence=>40
,p_item_default=>'-'
,p_prompt=>'Item Number:'
,p_source=>'SELECT ITEM_NUM FROM NIT001 WHERE ITEM_ID =:P15_ITEM_ID;'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'text-general'
,p_colspan=>3
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10498948935417936)
,p_name=>'P15_UPC'
,p_item_sequence=>60
,p_item_default=>'-'
,p_prompt=>'UPC:'
,p_source=>'SELECT UPC FROM NIT002 WHERE ITEM_ID = :P15_ITEM_ID;'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'text-general'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10499053075417937)
,p_name=>'P15_ITEM_DESC'
,p_item_sequence=>70
,p_item_default=>'-'
,p_prompt=>'Item Description:'
,p_source=>'SELECT ITEM_DESC FROM NIT001 WHERE ITEM_ID = :P15_ITEM_ID;'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'text-general'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10499239348417939)
,p_name=>'P15_ITEM_ID'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16110289110770130)
,p_name=>'P15_MONTH_FROM'
,p_item_sequence=>80
,p_item_default=>'SELECT TO_CHAR(SYSDATE, ''MM/DD/YYYY'') FROM DUAL'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Month From:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'text-general'
,p_colspan=>3
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16110381557770131)
,p_name=>'P15_MONTH_TO'
,p_item_sequence=>90
,p_item_default=>'SELECT TO_CHAR(SYSDATE, ''MM/DD/YYYY'') FROM DUAL'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Month To:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'text-general'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16110467742770132)
,p_name=>'P15_EXIT_URL'
,p_item_sequence=>100
,p_source=>'APEX_PAGE.GET_URL(p_page => 3)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(12390206129815816)
,p_computation_sequence=>10
,p_computation_item=>'P15_ITEM_ID'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'FUNCTION_BODY'
,p_computation_language=>'PLSQL'
,p_computation=>'RETURN NULL;'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(14282099180795948)
,p_computation_sequence=>20
,p_computation_item=>'P15_ITEM_NUM'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'NULL'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(14282188972795949)
,p_computation_sequence=>30
,p_computation_item=>'P15_UPC'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'NULL'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(14282204844795950)
,p_computation_sequence=>40
,p_computation_item=>'P15_ITEM_DESC'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'NULL'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(16111075610770138)
,p_computation_sequence=>50
,p_computation_item=>'P15_MONTH_FROM'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'NULL'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(16111187798770139)
,p_computation_sequence=>60
,p_computation_item=>'P15_MONTH_TO'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'NULL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10500091561417947)
,p_name=>'On Search Dialog Close'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(10497816331417925)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14281465355795942)
,p_event_id=>wwv_flow_imp.id(10500091561417947)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'Set Item Num'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P15_ITEM_NUM'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P40_ITEM_NUM'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14281541608795943)
,p_event_id=>wwv_flow_imp.id(10500091561417947)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'Set UPC'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P15_UPC'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P40_UPC'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14281643743795944)
,p_event_id=>wwv_flow_imp.id(10500091561417947)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>'Set Item Desc'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P15_ITEM_DESC'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P40_ITEM_DESC'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16111211974770140)
,p_event_id=>wwv_flow_imp.id(10500091561417947)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_name=>'Set Month From'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P15_MONTH_FROM'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P40_DATE_FROM'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48719062602541716)
,p_event_id=>wwv_flow_imp.id(10500091561417947)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_name=>'Set Month From'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P15_MONTH_FROM := SUBSTR(:P15_MONTH_FROM,1,2) || ''/01/'' || SUBSTR(:P15_MONTH_FROM,4,4);',
'END;'))
,p_attribute_02=>'P15_MONTH_FROM'
,p_attribute_03=>'P15_MONTH_FROM'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16111399465770141)
,p_event_id=>wwv_flow_imp.id(10500091561417947)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_name=>'Set Month To'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P15_MONTH_TO'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P40_DATE_TO'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48719106073541717)
,p_event_id=>wwv_flow_imp.id(10500091561417947)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_name=>'Set Month To'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P15_MONTH_TO := SUBSTR(:P15_MONTH_TO,1,2) || ''/01/'' || SUBSTR(:P15_MONTH_TO,4,4);',
'    :P15_MONTH_TO := TO_CHAR(LAST_DAY(:P15_MONTH_TO), ''MM/DD/YYYY'');',
'END;'))
,p_attribute_02=>'P15_MONTH_TO'
,p_attribute_03=>'P15_MONTH_TO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16107437597770102)
,p_event_id=>wwv_flow_imp.id(10500091561417947)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_name=>'Set Item ID using Item Num'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P15_ITEM_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'SELECT ITEM_ID FROM NIT001 WHERE UPPER(ITEM_NUM) = UPPER(:P15_ITEM_NUM)'
,p_attribute_07=>'P15_ITEM_NUM'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P15_ITEM_NUM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16107535132770103)
,p_event_id=>wwv_flow_imp.id(10500091561417947)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_name=>'Set ID Using UPC'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P15_ITEM_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'SELECT ITEM_ID FROM NIT002 WHERE UPC = :P15_UPC AND UOM_ID = 4'
,p_attribute_07=>'P15_UPC'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P15_UPC'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16107679570770104)
,p_event_id=>wwv_flow_imp.id(10500091561417947)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_name=>'Set ID Using Item Desc'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P15_ITEM_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'SELECT ITEM_ID FROM NIT001 WHERE UPPER(ITEM_DESC) = UPPER(:P15_ITEM_DESC)'
,p_attribute_07=>'P15_ITEM_DESC'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P15_ITEM_DESC'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10500351369417950)
,p_event_id=>wwv_flow_imp.id(10500091561417947)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'N'
,p_name=>'Finalize Item Num'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P15_ITEM_NUM'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'SELECT return_item FROM (item_trans_pkg.set_item_no(:P15_ITEM_ID))'
,p_attribute_07=>'P15_ITEM_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P15_ITEM_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12390042647815814)
,p_event_id=>wwv_flow_imp.id(10500091561417947)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'N'
,p_name=>'Finalize UPC'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P15_UPC'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'SELECT return_item FROM (item_trans_pkg.set_upc(:P15_ITEM_ID))'
,p_attribute_07=>'P15_ITEM_ID'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P15_ITEM_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12390152506815815)
,p_event_id=>wwv_flow_imp.id(10500091561417947)
,p_event_result=>'TRUE'
,p_action_sequence=>140
,p_execute_on_page_init=>'N'
,p_name=>'Finalize Item Desc'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P15_ITEM_DESC'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'SELECT return_item FROM (item_trans_pkg.set_item_desc(:P15_ITEM_ID))'
,p_attribute_07=>'P15_ITEM_ID'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P15_ITEM_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10500197469417948)
,p_event_id=>wwv_flow_imp.id(10500091561417947)
,p_event_result=>'TRUE'
,p_action_sequence=>150
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(10497244830417919)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14277495108795902)
,p_event_id=>wwv_flow_imp.id(10500091561417947)
,p_event_result=>'TRUE'
,p_action_sequence=>160
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(() => {',
'    $( document ).ready(function() {',
'        $(".a-GV-cell").first().trigger("click");',
'    });',
'},"500");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12389069533815804)
,p_name=>'On P Press'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(10497673043417923)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72037801884713109)
,p_event_id=>wwv_flow_imp.id(12389069533815804)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(72037366561713104)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16110668540770134)
,p_event_id=>wwv_flow_imp.id(12389069533815804)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'isPrintDialogActive = true;'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12390996554815823)
,p_name=>'On Home Click'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(10497906003417926)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12391006324815824)
,p_event_id=>wwv_flow_imp.id(12390996554815823)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'focusOnIGFirstRecordFirstCell(''itm-list'', ''IO'');',
'var ig = apex.region(''itm-list'').widget().interactiveGrid("getViews","grid");',
'    var rec = ig.model.recordAt(0);',
'    console.log(ig);',
'    console.log(rec[0]);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12391176716815825)
,p_name=>'On End Click'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(10498091162417927)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12391268239815826)
,p_event_id=>wwv_flow_imp.id(12391176716815825)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'focusOnIGLastRecordFirstCell(''itm-list'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12391387376815827)
,p_name=>'On H click'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(10497716274417924)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12391453793815828)
,p_event_id=>wwv_flow_imp.id(12391387376815827)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var d = new Date();',
'var datestamp = d.getFullYear() + "";',
'if( (d.getMonth() + 1) >= 10){',
'    datestamp = datestamp + (d.getMonth() + 1) + "";',
'}',
'else{',
'    datestamp = datestamp + "0" + (d.getMonth() + 1);',
'}',
'if( (d.getDate() + 1) >= 10){',
'    datestamp = datestamp + d.getDate() + "";',
'}',
'else{',
'    datestamp = datestamp + "0" + d.getDate();',
'}',
'generateReport("ITM_EXCEL", "xlsx", { ',
'    fileName: "ItemTransactionMap_" + datestamp + ".xlsx",',
'    mode : "export",',
'    parameters : {',
'        P_ITEM_ID : $v("P15_ITEM_ID"),',
'        P_ITEM_NO : $v("P15_ITEM_NUM"),',
'        P_UPC : $v("P15_UPC"),',
'        P_ITEM_DESC : $v("P15_ITEM_DESC"),',
'        P_MONTH_FROM : convertDate($v("P15_MONTH_FROM")),',
'        P_MONTH_TO: convertDate($v("P15_MONTH_TO"))',
'    }',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(72037445572713105)
,p_name=>'EXEC PRINT OPTION A'
,p_event_sequence=>60
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'PRINT_OPTION_A'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72037512128713106)
,p_event_id=>wwv_flow_imp.id(72037445572713105)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var d = new Date();',
'var datestamp = d.getFullYear() + "";',
'if ((d.getMonth() + 1) >= 10) {',
'    datestamp = datestamp + (d.getMonth() + 1) + "";',
'} else {',
'    datestamp = datestamp + "0" + (d.getMonth() + 1);',
'}',
'',
'if ((d.getDate() + 1) >= 10) {',
'    datestamp = datestamp + d.getDate() + "";',
'} else {',
'    datestamp = datestamp + "0" + d.getDate();',
'}',
'',
'const monthFrom = convertDate($v("P15_MONTH_FROM"));',
'const monthTo = convertDate($v("P15_MONTH_TO"));',
'',
'generateReport("ITM_PDF_COURIER_NEW", "pdf", { ',
'    fileName: "ItemTransactionMap_" + datestamp + ".pdf",',
'    mode : "print",',
'    parameters : {',
'        P_ITEM_ID : $v("P15_ITEM_ID"),',
'        P_ITEM_NO : $v("P15_ITEM_NUM"),',
'        P_UPC : $v("P15_UPC"),',
'        P_ITEM_DESC : $v("P15_ITEM_DESC"),',
'        P_MONTH_FROM : monthFrom,',
'        P_MONTH_TO: monthTo',
'    },',
'    printCallback : function () {',
'        $.event.trigger("CLOSE_PRINTING_OPTIONS");',
'    }',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(72037694573713107)
,p_name=>'EXEC PRINT OPTION B'
,p_event_sequence=>70
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'PRINT_OPTION_B'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72037743476713108)
,p_event_id=>wwv_flow_imp.id(72037694573713107)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var d = new Date();',
'var datestamp = d.getFullYear() + "";',
'if ((d.getMonth() + 1) >= 10) {',
'    datestamp = datestamp + (d.getMonth() + 1) + "";',
'} else {',
'    datestamp = datestamp + "0" + (d.getMonth() + 1);',
'}',
'',
'if ((d.getDate() + 1) >= 10) {',
'    datestamp = datestamp + d.getDate() + "";',
'} else {',
'    datestamp = datestamp + "0" + d.getDate();',
'}',
'',
'const monthFrom = convertDate($v("P15_MONTH_FROM"));',
'const monthTo = convertDate($v("P15_MONTH_TO"));',
'',
'generateReport("ITM_PDF", "pdf", { ',
'    fileName: "ItemTransactionMap_" + datestamp + ".pdf",',
'    mode : "print",',
'    parameters : {',
'        P_ITEM_ID : $v("P15_ITEM_ID"),',
'        P_ITEM_NO : $v("P15_ITEM_NUM"),',
'        P_UPC : $v("P15_UPC"),',
'        P_ITEM_DESC : $v("P15_ITEM_DESC"),',
'        P_MONTH_FROM : monthFrom,',
'        P_MONTH_TO: monthTo',
'    },',
'    printCallback : function () {',
'        $.event.trigger("CLOSE_PRINTING_OPTIONS");',
'    }',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(72037964377713110)
,p_name=>'Close Print Dialog'
,p_event_sequence=>80
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'CLOSE_PRINTING_OPTIONS'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72038060320713111)
,p_event_id=>wwv_flow_imp.id(72037964377713110)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'isPrintDialogActive = false;'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72038164726713112)
,p_event_id=>wwv_flow_imp.id(72037964377713110)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(72037366561713104)
);
wwv_flow_imp.component_end;
end;
/
