prompt --application/pages/page_00081
begin
--   Manifest
--     PAGE: 00081
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
 p_id=>81
,p_name=>'Charge COD Invoicing Creation'
,p_alias=>'CHARGE-COD-INVOICING-CREATION'
,p_step_title=>'Charge/COD Invoicing Creation'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APP_FILES#onscan.min.js',
'#APP_FILES#onscan#MIN#.js',
'#APP_FILES#js/cmn#MIN#.js',
''))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p81KeyMap = {',
'    s : (v) => {',
'        $("#s").click();',
'    },',
'    r : (v) => {',
'        $("#r").click();',
'    },',
'    i : (v) => {',
'        $("#i").click();',
'    },',
'    p : (v) => {',
'        $("#p").click();',
'    },',
'    home: (v) => {',
'        $("#to-top").trigger("click");',
'    },',
'    end: (v) => {',
'        $("#to-bottom").trigger("click");',
'    }',
'',
'',
'}',
'',
'function mapP81Keys() {',
'    $(document).off(''keydown.p81keyevents'');',
'    $(document).on(''keydown.p81keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p81KeyMap[key]) {',
'            ev.preventDefault();',
'            p81KeyMap[key]();',
'        }',
'    });',
'}',
'',
'function customEvent(event, data){',
'    mapP81Keys();',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP81Keys();',
'',
'$(document).on("keydown.posevent", function(ev) {',
'    var eventBlacklist = {',
'        ''input'': true,',
'        ''textarea'': true,',
'        ''select'': true',
'    };',
'',
'    var tagName = document.activeElement.tagName.toLowerCase();',
'    var id = document.activeElement.id;',
'    var shortcut = ev.code;',
'',
'    if (tagName === ''input'' && ev.key === ''Enter'' && id === ''quantity'') {',
'        document.activeElement.blur();',
'    }',
'',
'',
'});',
'',
'onScan.attachTo(document, {onScan: function(sScancode, iQuantity){',
'    apex.item("P81_BARCODE").setValue(JSON.parse(sScancode));',
'    console.log(JSON.parse(sScancode))',
'}});',
'',
'setTitle("Charge/COD Invoicing Creation")'))
,p_css_file_urls=>'#APP_FILES#wholesale-invoicing#MIN#.css'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'body, #button-region {',
'    background-color: rgb(30, 58, 138);',
'}',
'',
'.t-Header .t-Header-branding {',
'    background-color: white !important;',
'    color: rgb(30, 58, 138) !important;',
'}',
'',
'#wholesale table, #wholesale tr, #wholesale td, #wholesale th {',
'     font-size: 1.125rem;',
'}',
'',
'',
'.btns {',
'    font-size: 1.125rem;',
'    color: white;',
'}',
'',
'.hiddenbtn {',
'    display: none;',
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
'.ui-dialog-title{',
'    font-size: 1.5rem;',
'}',
'',
'.ui-dialog.inv-qby-w {',
'   left: 50% !important; ',
'}',
'',
'.ui-dialog-titlebar-close{',
'    display: none;',
'}',
'',
'.a-GV-hdr .a-GV-table {',
'    width: 100% !important;',
'}',
'',
'.ui-widget-overlay.ui-front {',
'    background-color: transparent !important;',
'    opacity: 0 !important;',
'}',
'',
'',
'.buttons-row {',
'    position: absolute;',
'    width: 98vw;',
'    bottom: 1rem;',
'}',
'',
'#wholesale .a-IG {',
'    height: calc(60vh) !important;',
'} ',
'',
'#wholesale .a-IG-contentContainer {',
'    height: 60vh !important;',
'}',
'',
'#itemwholesale .a-IG-gridView.a-GV {',
'    height: 60vh !important;',
'}',
'',
'#wholesale .a-GV-bdy {',
'    height: calc(60) !important;',
'}',
'',
'.t-Form-label {',
'    font-size: 1.125rem;',
'    color: white;',
'    font-weight: 700;',
'    white-space: nowrap;',
'}',
'',
'.apex-item-display-only {',
'    font-size: 1.125rem;',
'    font-family: Arial;',
'    color: white;',
'}',
'',
'.t-Form-labelContainer{',
'    text-align: start;',
'}'))
,p_step_template=>wwv_flow_imp.id(5671392681337017)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31951566036124815)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>50
,p_plug_grid_row_css_classes=>'buttons-row'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(37204271487281207)
,p_plug_name=>'Table'
,p_region_name=>'wholesale'
,p_region_template_options=>'#DEFAULT#:margin-top-none'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT n001 ITEM_NO, ',
'       c001 CO,',
'       c002 ITEM_DESCRIPTION, ',
'       n002 QTY, ',
'       n003 REG_PRICE,',
'       c003 UOM,',
'       n004 DISC,',
'       c004 DT,',
'       c005 NET_PRICE,',
'       n005 EXTENDED_PRICE',
'FROM apex_collections',
'WHERE collection_name = ''WHOLESALE INVOICING''',
'',
''))
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
 p_id=>wwv_flow_imp.id(37204481036281209)
,p_name=>'ITEM_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEM_NO'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Item No'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(37204562943281210)
,p_name=>'CO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Co'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_imp.id(37204644668281211)
,p_name=>'ITEM_DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEM_DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Item Description'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_imp.id(37204772735281212)
,p_name=>'QTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Qty'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(37204876492281213)
,p_name=>'REG_PRICE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REG_PRICE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Reg Price'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(37204975200281214)
,p_name=>'UOM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UOM'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'UOM'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_imp.id(37205090702281215)
,p_name=>'DISC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISC'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Disc %'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(37205124339281216)
,p_name=>'DT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'DT'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_imp.id(37205204824281217)
,p_name=>'NET_PRICE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NET_PRICE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Net Price'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_imp.id(37205395960281218)
,p_name=>'EXTENDED_PRICE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXTENDED_PRICE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Extended Price'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
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
 p_id=>wwv_flow_imp.id(37204306075281208)
,p_internal_uid=>37204306075281208
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
 p_id=>wwv_flow_imp.id(37632165897114129)
,p_interactive_grid_id=>wwv_flow_imp.id(37204306075281208)
,p_static_id=>'376322'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(37632306152114131)
,p_report_id=>wwv_flow_imp.id(37632165897114129)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(37632728789114145)
,p_view_id=>wwv_flow_imp.id(37632306152114131)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(37204481036281209)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(37633672297114179)
,p_view_id=>wwv_flow_imp.id(37632306152114131)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(37204562943281210)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(37634527876114190)
,p_view_id=>wwv_flow_imp.id(37632306152114131)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(37204644668281211)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(37635408397114196)
,p_view_id=>wwv_flow_imp.id(37632306152114131)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(37204772735281212)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(37636350770114204)
,p_view_id=>wwv_flow_imp.id(37632306152114131)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(37204876492281213)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(37637251138114215)
,p_view_id=>wwv_flow_imp.id(37632306152114131)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(37204975200281214)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(37638108841114228)
,p_view_id=>wwv_flow_imp.id(37632306152114131)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(37205090702281215)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(37638950195114239)
,p_view_id=>wwv_flow_imp.id(37632306152114131)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(37205124339281216)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(37639842878114248)
,p_view_id=>wwv_flow_imp.id(37632306152114131)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(37205204824281217)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(37640700306114257)
,p_view_id=>wwv_flow_imp.id(37632306152114131)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(37205395960281218)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(37205606116281221)
,p_plug_name=>'Header'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody:t-Form--noPadding:margin-top-none'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_08'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31951678027124816)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(31951566036124815)
,p_button_name=>'Search'
,p_button_static_id=>'s'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>F2</u> - Search Item'
,p_button_redirect_url=>'f?p=&APP_ID.:87:&SESSION.::&DEBUG.:87::'
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'Y'
,p_grid_column=>1
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31951730442124817)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(31951566036124815)
,p_button_name=>'Qty'
,p_button_static_id=>'r'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>F3</u> - Change Qty'
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_column=>3
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31951890094124818)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(31951566036124815)
,p_button_name=>'Discount'
,p_button_static_id=>'i'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>F5</u> - Add Discount'
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_column=>5
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31951961515124819)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(31951566036124815)
,p_button_name=>'Instructions'
,p_button_static_id=>'p'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>F6</u> - Add Special Instructions'
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_column=>7
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(37205449839281219)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(31951566036124815)
,p_button_name=>'Create'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>F7</u> - Create'
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_column=>10
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(37205596567281220)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(31951566036124815)
,p_button_name=>'Print'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>F8</u> - Print Invoice'
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_column=>11
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30808596767808246)
,p_name=>'P81_CUSTOMER_CODE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(37205606116281221)
,p_prompt=>'Customer Code:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>3
,p_grid_column=>1
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:margin-top-sm:margin-left-md'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30808643780808247)
,p_name=>'P81_DBA'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(37205606116281221)
,p_prompt=>'Customer (DBA):'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>3
,p_grid_column=>1
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:margin-top-sm:margin-left-md'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30808709177808248)
,p_name=>'P81_INVOICE_NO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(37205606116281221)
,p_prompt=>'Invoice No:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_column=>8
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:margin-top-sm'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30808818432808249)
,p_name=>'P81_INVOICE_DATE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(37205606116281221)
,p_prompt=>'Invoice Date:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_column=>8
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:margin-top-sm'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30808941514808250)
,p_name=>'P81_PAYMENT_TERMS'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(37205606116281221)
,p_prompt=>'Payment Terms:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_column=>8
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:margin-top-sm'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31950330378124803)
,p_name=>'P81_SPECIAL_INSTRUCTIONS'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(37205606116281221)
,p_prompt=>'Special Instructions:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:margin-top-sm:margin-left-md'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31952188708124821)
,p_name=>'P81_BARCODE'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37203897816281203)
,p_name=>'P81_BILLING_ADDRESS'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(37205606116281221)
,p_prompt=>'Billing Address:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:margin-top-sm:margin-left-md'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37203961036281204)
,p_name=>'P81_ORDER_WRITER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(37205606116281221)
,p_prompt=>'Order Writer:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:margin-top-sm'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37204078144281205)
,p_name=>'P81_CUST_PO'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(37205606116281221)
,p_prompt=>'Cust PO#:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:margin-top-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37204148290281206)
,p_name=>'P81_QUOTATION_NO'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(37205606116281221)
,p_prompt=>'Quotation #:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:margin-top-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(31952294536124822)
,p_name=>'Insert into Table'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P81_BARCODE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31952395319124823)
,p_event_id=>wwv_flow_imp.id(31952294536124822)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_seq_id number;',
'    v_item_id number;',
'    v_item varchar(35);',
'    v_item_code number;',
'    v_uom varchar(10);',
'    v_stock number;',
'    v_price number;',
'    v_qty number;',
'    v_total number;',
'',
'BEGIN',
'    BEGIN',
'        SELECT a.item_id, a.item_desc, b.upc, UPPER(c.uom_code), d.qty, b.price, b.price total  INTO v_item_id, v_item, v_item_code, v_uom, v_stock, v_price, v_total',
'          FROM NIT001 a, NIT002 b, NIM026 c, NIT004 d',
'         WHERE a.item_id = b.item_id',
'           AND b.item_id = d.item_id',
'           AND b.uom_id = c.uom_id',
'           AND b.uom_id = d.uom_Id',
'           AND b.upc = :P81_BARCODE;',
'     ',
'    SELECT seq_id, n003 INTO v_seq_id, v_qty ',
'    FROM apex_collections',
'    WHERE collection_name = ''WHOLESALE INVOICING''',
'    AND c002 = :P81_BARCODE;',
'    EXCEPTION WHEN NO_DATA_FOUND THEN v_seq_id := 0; END;',
'    ',
'    IF v_seq_id != 0 THEN',
'        v_qty := v_qty + 1;',
'        v_total := v_price * v_qty;',
'    ',
'            apex_collection.update_member_attribute (',
'                p_collection_name => ''WHOLESALE INVOICING'',',
'                p_seq => v_seq_id,',
'                p_attr_number => 3,',
'                p_number_value => v_qty',
'                );',
'',
'            apex_collection.update_member_attribute (',
'                p_collection_name => ''WHOLESALE INVOICING'',',
'                p_seq => v_seq_id,',
'                p_attr_number => 4,',
'                p_number_value => v_total',
'                );',
'',
'    ELSIF v_seq_id = 0 AND v_item_id IS NOT NULL THEN',
'        apex_collection.add_member(',
'            p_collection_name => ''WHOLESALE INVOICING'',',
'            p_c001 => v_item,',
'            p_c002 => :P81_BARCODE,',
'            p_c003 => v_uom,',
'            p_n001 => v_stock,',
'            p_n002 => v_price,',
'            p_n003 => 1,',
'            p_n004 => v_total,',
'            p_c005 => '''',',
'            p_c006 => v_item_id);',
'END IF;',
'END;',
''))
,p_attribute_02=>'P81_BARCODE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(34401471276626209)
,p_name=>'Close Search Dialog'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(31951678027124816)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34401521095626210)
,p_event_id=>wwv_flow_imp.id(34401471276626209)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P81_BARCODE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT c001',
'FROM apex_collections',
'WHERE collection_name = ''INVOICE SEARCH''',
'  AND seq_id = (SELECT MAX(seq_id)',
'                  FROM apex_collections',
'                 WHERE collection_name = ''INVOICE SEARCH'') '))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34402703472626222)
,p_event_id=>wwv_flow_imp.id(34401471276626209)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P81_BARCODE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34402638835626221)
,p_event_id=>wwv_flow_imp.id(34401471276626209)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P81_BARCODE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31952403458124824)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create Invoice Collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(',
'        p_collection_name => ''WHOLESALE INVOICING'');'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>31952403458124824
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(34401644706626211)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create Invoice Search'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(',
'        p_collection_name => ''INVOICE SEARCH'');'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>34401644706626211
);
wwv_flow_imp.component_end;
end;
/
