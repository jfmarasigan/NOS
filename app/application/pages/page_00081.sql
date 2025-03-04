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
'    f2 : (v) => {',
'        $("#f2").click();',
'    },',
'    f3 : (v) => {',
'        $("#f3").click();',
'    },',
'    f5 : (v) => {',
'        $("#f5").click();',
'    },',
'    f6 : (v) => {',
'        $("#f6").click();',
'    },',
'    f7: (v) => {',
'        $("#f7").trigger("click");',
'    },',
'    f8: (v) => {',
'        $("#f8").trigger("click");',
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
,p_plug_display_sequence=>170
,p_plug_grid_row_css_classes=>'buttons-row'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(62596023723570821)
,p_plug_name=>'Header 2'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody:t-Form--noPadding:margin-top-none'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>160
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(63541202037289245)
,p_plug_name=>'Wholesale Invoice'
,p_region_name=>'wholesale'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH COLLECTION_SUMS AS (',
'    SELECT ''INVOICE_A'' AS collection_name, SUM(n002 - NVL(n004, 0)) AS TOTAL_EXTENDED_PRICE',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_A''',
' ',
'    UNION ALL',
' ',
'    SELECT ''INVOICE_B'' AS collection_name, SUM(n002 - NVL(n004, 0)) AS TOTAL_EXTENDED_PRICE',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_B''',
' ',
'    UNION ALL',
' ',
'    SELECT ''INVOICE_C'' AS collection_name, SUM(n002 - NVL(n004, 0)) AS TOTAL_EXTENDED_PRICE',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_C''',
' ',
'    UNION ALL',
' ',
'    SELECT ''INVOICE_D'' AS collection_name, SUM(n002 - NVL(n004, 0)) AS TOTAL_EXTENDED_PRICE',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_D''',
'),',
'LOWEST_SUM AS (',
'    SELECT collection_name',
'    FROM COLLECTION_SUMS',
'    WHERE TOTAL_EXTENDED_PRICE = (SELECT MIN(TOTAL_EXTENDED_PRICE) FROM COLLECTION_SUMS)',
'    FETCH FIRST 1 ROW ONLY',
')',
'SELECT ',
'    ROWNUM AS "Primary Key",',
'    c001 AS ITEM_NO, ',
'    c002 AS CO, ',
'    c003 AS ITEM_DESCRIPTION, ',
'    n001 AS QTY, ',
'    n002 AS REG_PRICE, ',
'    c004 AS UOM, ',
'    NVL(n003, 0) AS DISC, ',
'    CASE ',
'        WHEN n003 <> 0 THEN ''S''',
'        ELSE ''N''',
'    END AS DT,',
'    n002 - NVL(n004, 0) AS NET_PRICE,',
'    n005 - NVL(n004, 0) * n001 AS EXTENDED_PRICE,',
'    c006 AS BARCODE,',
'    c007 as ITEM_ID',
'FROM apex_collections',
'WHERE collection_name IN (SELECT collection_name FROM LOWEST_SUM);'))
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
 p_id=>wwv_flow_imp.id(63541422572289247)
,p_name=>'Primary Key'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'Primary Key'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(63541515293289248)
,p_name=>'ITEM_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEM_NO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_AUTO_COMPLETE'
,p_heading=>'Item No'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'Y'
,p_attribute_05=>'7'
,p_attribute_09=>'1'
,p_attribute_10=>'Y'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a.item_num || '' - '' || UPPER(c.uom_code)',
'  FROM NIT001 a, NIT002 b, NIM026 c, NIM022 d',
' WHERE a.item_id = b.item_id',
'   AND b.uom_id = c.uom_id',
'   AND a.brand_id = d.brand_id',
'',
'UNION ALL',
'',
'SELECT b.upc',
'  FROM NIT001 a, NIT002 b, NIM026 c, NIM022 d',
' WHERE a.item_id = b.item_id',
'   AND b.uom_id = c.uom_id',
'   AND a.brand_id = d.brand_id;'))
,p_lov_display_extra=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(63541672031289249)
,p_name=>'CO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Co'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
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
 p_id=>wwv_flow_imp.id(63541709808289250)
,p_name=>'ITEM_DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEM_DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Item Description'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
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
 p_id=>wwv_flow_imp.id(63612357699597901)
,p_name=>'QTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Qty'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>80
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
 p_id=>wwv_flow_imp.id(63612459456597902)
,p_name=>'REG_PRICE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REG_PRICE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Reg Price'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>90
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
 p_id=>wwv_flow_imp.id(63612546217597903)
,p_name=>'UOM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UOM'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Uom'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
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
 p_id=>wwv_flow_imp.id(63612636556597904)
,p_name=>'DISC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISC'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Disc'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>110
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
 p_id=>wwv_flow_imp.id(63612789941597905)
,p_name=>'DT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Dt'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>1
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
 p_id=>wwv_flow_imp.id(63612834243597906)
,p_name=>'NET_PRICE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NET_PRICE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Net Price'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>130
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
 p_id=>wwv_flow_imp.id(63612950060597907)
,p_name=>'EXTENDED_PRICE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXTENDED_PRICE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Extended Price'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>140
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
 p_id=>wwv_flow_imp.id(63613075604597908)
,p_name=>'BARCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BARCODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>150
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(63613182712597909)
,p_name=>'ITEM_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEM_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(63541397279289246)
,p_internal_uid=>63541397279289246
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>false
,p_submit_checked_rows=>false
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
 p_id=>wwv_flow_imp.id(63618748265608804)
,p_interactive_grid_id=>wwv_flow_imp.id(63541397279289246)
,p_static_id=>'636188'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(63618907631608806)
,p_report_id=>wwv_flow_imp.id(63618748265608804)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(63619429543608814)
,p_view_id=>wwv_flow_imp.id(63618907631608806)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(63541422572289247)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(63620329720608821)
,p_view_id=>wwv_flow_imp.id(63618907631608806)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(63541515293289248)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(63621282682608829)
,p_view_id=>wwv_flow_imp.id(63618907631608806)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(63541672031289249)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(63622196745608837)
,p_view_id=>wwv_flow_imp.id(63618907631608806)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(63541709808289250)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(63623036618608845)
,p_view_id=>wwv_flow_imp.id(63618907631608806)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(63612357699597901)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(63623987308608853)
,p_view_id=>wwv_flow_imp.id(63618907631608806)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(63612459456597902)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(63624807363608860)
,p_view_id=>wwv_flow_imp.id(63618907631608806)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(63612546217597903)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(63625789045608868)
,p_view_id=>wwv_flow_imp.id(63618907631608806)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(63612636556597904)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(63626505196608875)
,p_view_id=>wwv_flow_imp.id(63618907631608806)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(63612789941597905)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(63627485914608881)
,p_view_id=>wwv_flow_imp.id(63618907631608806)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(63612834243597906)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(63628391323608887)
,p_view_id=>wwv_flow_imp.id(63618907631608806)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(63612950060597907)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(63629287928608895)
,p_view_id=>wwv_flow_imp.id(63618907631608806)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(63613075604597908)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(63630142417608901)
,p_view_id=>wwv_flow_imp.id(63618907631608806)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(63613182712597909)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31951678027124816)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(31951566036124815)
,p_button_name=>'Search'
,p_button_static_id=>'f2'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>F2</u> - Search Item'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'Y'
,p_grid_column=>1
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31951730442124817)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(31951566036124815)
,p_button_name=>'Qty'
,p_button_static_id=>'f3'
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
,p_button_static_id=>'f5'
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
,p_button_static_id=>'f6'
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
,p_button_static_id=>'f7'
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
,p_button_static_id=>'f8'
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
,p_prompt=>'Barcode:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(62596132266570822)
,p_name=>'P81_QOH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(62596023723570821)
,p_prompt=>'<b>QOH</b>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>2
,p_grid_column=>1
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--postTextBlock'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(62596239210570823)
,p_name=>'P81_SUB'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(62596023723570821)
,p_prompt=>'<b>Sub-Total:</b>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_column=>7
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--postTextBlock'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(62596378972570824)
,p_name=>'P81_DISCOUNT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(62596023723570821)
,p_prompt=>'<b>Total Discount:</b>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_column=>9
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--postTextBlock'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(62596442566570825)
,p_name=>'P81_TOTAL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(62596023723570821)
,p_prompt=>'<b>Total Amount:</b>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_column=>11
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--postTextBlock'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(62596559125570826)
,p_name=>'P81_QTY'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(62596023723570821)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>1
,p_grid_column=>2
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--postTextBlock'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(62596679536570827)
,p_name=>'P81_LOC_1'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(62596023723570821)
,p_prompt=>'<span class="btns">LOC #&P377_WH_1.</span>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(4382138690084278)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(62596768222570828)
,p_name=>'P81_LOC_2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(62596023723570821)
,p_prompt=>'<span class="btns">LOC #2</span>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(4382138690084278)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(62596859692570829)
,p_name=>'P81_LOC_3'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(62596023723570821)
,p_prompt=>'<span class="btns">LOC #3</span>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(4382138690084278)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63613799860597915)
,p_name=>'P81_SEARCHED_UPC'
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63613987734597917)
,p_name=>'P81_UPC_SEARCH'
,p_item_sequence=>50
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63614398660597921)
,p_name=>'P81_SELECTED_QTY'
,p_item_sequence=>60
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63614595106597923)
,p_name=>'P81_SELECTED_ITEM_NO'
,p_item_sequence=>70
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63614643871597924)
,p_name=>'P81_SELECTED_ITEM_ID'
,p_item_sequence=>80
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63614727404597925)
,p_name=>'P81_SELECTED_PRICE'
,p_item_sequence=>90
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63614837430597926)
,p_name=>'P81_SELECTED_UOM'
,p_item_sequence=>100
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63614967509597927)
,p_name=>'P81_SELECTED_INDEX'
,p_item_sequence=>110
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63615111762597929)
,p_name=>'P81_CLICKED_SEARCH_F2'
,p_item_sequence=>120
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63615327461597931)
,p_name=>'P81_WH_1'
,p_item_sequence=>130
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63615477404597932)
,p_name=>'P81_WH_3'
,p_item_sequence=>150
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63615590595597933)
,p_name=>'P81_WH_2'
,p_item_sequence=>140
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
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
,p_name=>'Search Item'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(31951678027124816)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63615095731597928)
,p_event_id=>wwv_flow_imp.id(34401471276626209)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let clickedF2 = ''yes'';',
'apex.item("P81_CLICKED_SEARCH_F2").setValue(clickedF2);'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63615265973597930)
,p_event_id=>wwv_flow_imp.id(34401471276626209)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region("wholesale").widget().interactiveGrid("getActions").invoke("selection-add-row");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(63509937569049767)
,p_name=>'Scan Item'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P81_BARCODE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63513342260049787)
,p_event_id=>wwv_flow_imp.id(63509937569049767)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Scan Item'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_seq_id number;',
'    v_item_id number;',
'    v_item_num VARCHAR2(50);',
'    v_product_name varchar(35);    ',
'    v_price number;',
'    v_qty number;',
'    v_total number;',
'    v_brand varchar(10);',
'    v_uom varchar(10);',
'    v_discounted NUMBER;',
'',
'',
'BEGIN',
'    BEGIN',
'        SELECT a.item_num, a.item_id, a.item_desc, b.price, b.price total, UPPER(c.uom_code), d.brand_code INTO v_item_num, v_item_id, v_product_name, v_price, v_total, v_uom, v_brand',
'          FROM NIT001 a, NIT002 b, NIM026 c, NIM022 d',
'         WHERE a.item_id = b.item_id',
'           AND b.uom_id = c.uom_id',
'           AND a.brand_id = d.brand_id',
'           AND b.upc = :P81_BARCODE;      ',
'',
'        SELECT seq_id, n001, n004 INTO v_seq_id, v_qty, v_discounted',
'          FROM apex_collections',
'         WHERE collection_name = ''DISCOUNT_A''',
'           AND c006 = :P81_BARCODE;',
'        EXCEPTION WHEN NO_DATA_FOUND THEN v_seq_id := 0; END;',
'',
'        IF v_seq_id != 0 THEN',
'            v_qty := v_qty + 1;',
'            v_total := v_price * v_qty;',
'            v_discounted := v_discounted * v_qty;',
'        ',
'            apex_collection.update_member_attribute (',
'                p_collection_name => ''DISCOUNT_A'',',
'                p_seq => v_seq_id,',
'                p_attr_number => 1,',
'                p_number_value => v_qty',
'                ); ',
'',
'            apex_collection.update_member_attribute (',
'                p_collection_name => ''DISCOUNT_A'',',
'                p_seq => v_seq_id,',
'                p_attr_number => 5,',
'                p_number_value => v_total',
'                );',
'',
'        ELSIF v_seq_id = 0 AND v_item_id IS NOT NULL THEN',
'            apex_collection.add_member(',
'                p_collection_name => ''DISCOUNT_A'',',
'                p_c001 => v_item_num,',
'                p_c002 => v_brand,',
'                p_c003 => v_product_name,',
'                p_n001 => 1,',
'                p_n002 => v_price,',
'                p_c004 => v_uom,',
'                p_n005 => v_total,',
'                p_c006 => :P81_BARCODE,',
'                p_c007 => v_item_id);',
'END IF;',
'END;'))
,p_attribute_02=>'P81_BARCODE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63514315555049789)
,p_event_id=>wwv_flow_imp.id(63509937569049767)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'Discount A'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_disc NUMBER;',
'    v_seq_id NUMBER;',
'    v_seq NUMBER;',
'    v_id NUMBER := 0;',
'    v_bc VARCHAR(50);',
'BEGIN',
'BEGIN',
'    WITH discount_data AS (',
'    SELECT npt028.discount_id, npt028.discount_value',
'    FROM NPT028 npt028',
'    JOIN NPT008 npt008 ON npt028.discount_id = npt008.discount_id',
'    JOIN NPT032 npt032 ON npt028.discount_id = npt032.discount_id',
'    JOIN NPT009 npt009 ON npt009.customer_id = npt032.customer_id',
'    JOIN NIT001 nit001 ON npt028.sic_id = nit001.sic_id',
'    JOIN NIT002 nit002 ON nit001.item_id = nit002.item_id',
'   WHERE npt009.dba = :P81_DBA',
'     AND npt008.date_to >= SYSDATE',
'     AND npt008.date_from <= SYSDATE',
'     AND nit002.upc = :P81_BARCODE',
'UNION ALL',
'  SELECT npt029.discount_id, npt029.discount_value',
'    FROM NPT029 npt029',
'    JOIN NPT008 npt008 ON npt029.discount_id = npt008.discount_id',
'    JOIN NPT032 npt032 ON npt029.discount_id = npt032.discount_id',
'    JOIN NPT009 npt009 ON npt009.customer_id = npt032.customer_id',
'    JOIN NIT001 nit001 ON npt029.dept_id = nit001.dept_id',
'    JOIN NIT002 nit002 ON nit001.item_id = nit002.item_id',
'   WHERE npt009.dba = :P81_DBA',
'     AND npt008.date_to >= SYSDATE',
'     AND npt008.date_from <= SYSDATE',
'     AND nit002.upc = :P81_BARCODE',
'UNION ALL',
'    SELECT npt030.discount_id, npt030.discount_value',
'    FROM NPT030 npt030',
'    JOIN NPT008 npt008 ON npt030.discount_id = npt008.discount_id',
'    JOIN NPT032 npt032 ON npt030.discount_id = npt032.discount_id',
'    JOIN NPT009 npt009 ON npt009.customer_id = npt032.customer_id',
'    JOIN NIT001 nit001 ON npt030.class_id = nit001.class_id',
'    JOIN NIT002 nit002 ON nit001.item_id = nit002.item_id',
'   WHERE npt009.dba = :P81_DBA',
'     AND npt008.date_to >= SYSDATE',
'     AND npt008.date_from <= SYSDATE     ',
'     AND nit002.upc = :P81_BARCODE',
'UNION ALL',
'    SELECT DISTINCT 0, np09.standard_discount_value',
'     FROM NPT009 np09, NIT001 nt01, NPT032 np032, NIT002 nt02',
'     WHERE np09.class_id = nt01.class_id',
'      AND np09.customer_id = np032.customer_id ',
'      AND np09.dba = :P81_DBA',
'      AND nt01.item_id = nt02.item_id',
'      AND nt02.upc = :P81_BARCODE',
')',
'',
'    SELECT NVL(discount_id, 0), NVL(MAX(discount_value), 0) AS max_discount_value',
'    INTO v_id, v_disc',
'    FROM discount_data',
'    GROUP BY discount_id',
'    ORDER BY discount_id',
'    OFFSET 0 ROWS',
'    FETCH NEXT 1 ROWS ONLY;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_id := -1;',
'END;',
'',
'BEGIN',
'    SELECT seq_id INTO v_seq',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_DISCOUNTS''',
'      AND n001 = NVL(v_id, 0)',
'      AND c001 = ''A'';',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq := 0; ',
'END;',
'',
'BEGIN',
'    SELECT seq_id INTO v_seq_id',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_A''',
'      AND c006 = :P81_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq_id := 0;',
'END;',
'',
'BEGIN',
'    SELECT a.item_num INTO v_bc',
'    FROM NIT001 a, NIT002 b',
'    WHERE a.item_id = b.item_id',
'      AND b.upc = :P81_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_bc := NULL;',
'        END;',
'',
'    IF v_seq = 1 AND v_bc IS NOT NULL AND v_seq_id != 0 THEN',
'        apex_collection.update_member_attribute (',
'                p_collection_name => ''INVOICE_A'',',
'                p_seq => v_seq_id,',
'                p_attr_number => 3,',
'                p_number_value => v_disc',
'                );',
'    ',
'    END IF;',
'',
'END;',
''))
,p_attribute_02=>'P81_BARCODE,P81_DBA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63516349108049793)
,p_event_id=>wwv_flow_imp.id(63509937569049767)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_name=>'Discount B'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_disc NUMBER;',
'    v_seq_id NUMBER;',
'    v_seq NUMBER;',
'    v_id NUMBER := 0;',
'    v_bc VARCHAR(50);',
'BEGIN',
'BEGIN',
'    WITH discount_data AS (',
'    SELECT npt028.discount_id, npt028.discount_value',
'    FROM NPT028 npt028',
'    JOIN NPT008 npt008 ON npt028.discount_id = npt008.discount_id',
'    JOIN NPT032 npt032 ON npt028.discount_id = npt032.discount_id',
'    JOIN NPT009 npt009 ON npt009.customer_id = npt032.customer_id',
'    JOIN NIT001 nit001 ON npt028.sic_id = nit001.sic_id',
'    JOIN NIT002 nit002 ON nit001.item_id = nit002.item_id',
'   WHERE npt009.dba = :P81_DBA',
'     AND npt008.date_to >= SYSDATE',
'     AND npt008.date_from <= SYSDATE',
'     AND nit002.upc = :P81_BARCODE',
'UNION ALL',
'  SELECT npt029.discount_id, npt029.discount_value',
'    FROM NPT029 npt029',
'    JOIN NPT008 npt008 ON npt029.discount_id = npt008.discount_id',
'    JOIN NPT032 npt032 ON npt029.discount_id = npt032.discount_id',
'    JOIN NPT009 npt009 ON npt009.customer_id = npt032.customer_id',
'    JOIN NIT001 nit001 ON npt029.dept_id = nit001.dept_id',
'    JOIN NIT002 nit002 ON nit001.item_id = nit002.item_id',
'   WHERE npt009.dba = :P81_DBA',
'     AND npt008.date_to >= SYSDATE',
'     AND npt008.date_from <= SYSDATE',
'     AND nit002.upc = :P81_BARCODE',
'UNION ALL',
'    SELECT npt030.discount_id, npt030.discount_value',
'    FROM NPT030 npt030',
'    JOIN NPT008 npt008 ON npt030.discount_id = npt008.discount_id',
'    JOIN NPT032 npt032 ON npt030.discount_id = npt032.discount_id',
'    JOIN NPT009 npt009 ON npt009.customer_id = npt032.customer_id',
'    JOIN NIT001 nit001 ON npt030.class_id = nit001.class_id',
'    JOIN NIT002 nit002 ON nit001.item_id = nit002.item_id',
'   WHERE npt009.dba = :P81_DBA',
'     AND npt008.date_to >= SYSDATE',
'     AND npt008.date_from <= SYSDATE     ',
'     AND nit002.upc = :P81_BARCODE',
'UNION ALL',
'    SELECT DISTINCT 0, np09.standard_discount_value',
'     FROM NPT009 np09, NIT001 nt01, NPT032 np032, NIT002 nt02',
'     WHERE np09.class_id = nt01.class_id',
'      AND np09.customer_id = np032.customer_id ',
'      AND np09.dba = :P81_DBA',
'      AND nt01.item_id = nt02.item_id',
'      AND nt02.upc = :P81_BARCODE',
')',
'',
'    SELECT NVL(discount_id, 0), NVL(MAX(discount_value), 0) AS max_discount_value',
'    INTO v_id, v_disc',
'    FROM discount_data',
'    GROUP BY discount_id',
'    ORDER BY discount_id',
'    OFFSET 0 ROWS',
'    FETCH NEXT 1 ROWS ONLY;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_id := 0;',
'END;',
'',
'BEGIN',
'    SELECT seq_id INTO v_seq',
'    FROM apex_collections',
'    WHERE collection_name = ''AVAILABLE_DISCOUNTS''',
'      AND n001 = NVL(v_id, 0)',
'      AND c001 = ''B'';',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq := 0; ',
'END;',
'',
'BEGIN',
'    SELECT seq_id INTO v_seq_id',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_A''',
'      AND c006 = :P81_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq_id := 0;',
'END;',
'',
'BEGIN',
'    SELECT a.item_num INTO v_bc',
'    FROM NIT001 a, NIT002 b',
'    WHERE a.item_id = b.item_id',
'      AND b.upc = :P81_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_bc := NULL;',
'        END;',
'',
'    IF v_seq = 2 AND v_bc IS NOT NULL AND v_seq_id != 0 THEN',
'        apex_collection.update_member_attribute (',
'                p_collection_name => ''INVOICE_B'',',
'                p_seq => v_seq_id,',
'                p_attr_number => 3,',
'                p_number_value => v_disc',
'                );',
'    END IF;',
'',
'END;',
''))
,p_attribute_02=>'P81_BARCODE,P81_DBA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63516860939049793)
,p_event_id=>wwv_flow_imp.id(63509937569049767)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_name=>'Discount C'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_disc NUMBER;',
'    v_seq_id NUMBER;',
'    v_seq NUMBER;',
'    v_id NUMBER := 0;',
'    v_bc VARCHAR(50);',
'BEGIN',
'BEGIN',
'    WITH discount_data AS (',
'    SELECT npt028.discount_id, npt028.discount_value',
'    FROM NPT028 npt028',
'    JOIN NPT008 npt008 ON npt028.discount_id = npt008.discount_id',
'    JOIN NPT032 npt032 ON npt028.discount_id = npt032.discount_id',
'    JOIN NPT009 npt009 ON npt009.customer_id = npt032.customer_id',
'    JOIN NIT001 nit001 ON npt028.sic_id = nit001.sic_id',
'    JOIN NIT002 nit002 ON nit001.item_id = nit002.item_id',
'   WHERE npt009.dba = :P81_DBA',
'     AND npt008.date_to >= SYSDATE',
'     AND npt008.date_from <= SYSDATE',
'     AND nit002.upc = :P81_BARCODE',
'UNION ALL',
'  SELECT npt029.discount_id, npt029.discount_value',
'    FROM NPT029 npt029',
'    JOIN NPT008 npt008 ON npt029.discount_id = npt008.discount_id',
'    JOIN NPT032 npt032 ON npt029.discount_id = npt032.discount_id',
'    JOIN NPT009 npt009 ON npt009.customer_id = npt032.customer_id',
'    JOIN NIT001 nit001 ON npt029.dept_id = nit001.dept_id',
'    JOIN NIT002 nit002 ON nit001.item_id = nit002.item_id',
'   WHERE npt009.dba = :P81_DBA',
'     AND npt008.date_to >= SYSDATE',
'     AND npt008.date_from <= SYSDATE',
'     AND nit002.upc = :P81_BARCODE',
'UNION ALL',
'    SELECT npt030.discount_id, npt030.discount_value',
'    FROM NPT030 npt030',
'    JOIN NPT008 npt008 ON npt030.discount_id = npt008.discount_id',
'    JOIN NPT032 npt032 ON npt030.discount_id = npt032.discount_id',
'    JOIN NPT009 npt009 ON npt009.customer_id = npt032.customer_id',
'    JOIN NIT001 nit001 ON npt030.class_id = nit001.class_id',
'    JOIN NIT002 nit002 ON nit001.item_id = nit002.item_id',
'   WHERE npt009.dba = :P81_DBA',
'     AND npt008.date_to >= SYSDATE',
'     AND npt008.date_from <= SYSDATE     ',
'     AND nit002.upc = :P81_BARCODE',
'UNION ALL',
'    SELECT DISTINCT 0, np09.standard_discount_value',
'     FROM NPT009 np09, NIT001 nt01, NPT032 np032, NIT002 nt02',
'     WHERE np09.class_id = nt01.class_id',
'      AND np09.customer_id = np032.customer_id ',
'      AND np09.dba = :P81_DBA',
'      AND nt01.item_id = nt02.item_id',
'      AND nt02.upc = :P81_BARCODE',
')',
'',
'    SELECT NVL(discount_id, 0), NVL(MAX(discount_value), 0) AS max_discount_value',
'    INTO v_id, v_disc',
'    FROM discount_data',
'    GROUP BY discount_id',
'    ORDER BY discount_id',
'    OFFSET 0 ROWS',
'    FETCH NEXT 1 ROWS ONLY;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_id := -1; ',
'END;',
'',
'BEGIN',
'    SELECT seq_id INTO v_seq',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_DISCOUNTS''',
'      AND n001 = NVL(v_id, 0)',
'      AND c001 = ''C'';',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq := 0; ',
'END;',
'',
'BEGIN',
'    SELECT seq_id INTO v_seq_id',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_A''',
'      AND c006 = :P81_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq_id := 0;',
'END;',
'',
'BEGIN',
'    SELECT a.item_num INTO v_bc',
'    FROM NIT001 a, NIT002 b',
'    WHERE a.item_id = b.item_id',
'      AND b.upc = :P81_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_bc := NULL;',
'        END;',
'',
'    IF v_seq = 3 AND v_bc IS NOT NULL AND v_seq_id != 0 THEN',
'        apex_collection.update_member_attribute (',
'                p_collection_name => ''INVOICE_C'',',
'                p_seq => v_seq_id,',
'                p_attr_number => 3,',
'                p_number_value => v_disc',
'                );',
'    END IF;',
'',
'END;',
''))
,p_attribute_02=>'P81_BARCODE,P81_DBA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63513892748049789)
,p_event_id=>wwv_flow_imp.id(63509937569049767)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_name=>'Discount D'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_disc NUMBER;',
'    v_seq_id NUMBER;',
'    v_seq NUMBER;',
'    v_id NUMBER := 0;',
'    v_bc VARCHAR(50);',
'BEGIN',
'BEGIN',
'    WITH discount_data AS (',
'    SELECT npt028.discount_id, npt028.discount_value',
'    FROM NPT028 npt028',
'    JOIN NPT008 npt008 ON npt028.discount_id = npt008.discount_id',
'    JOIN NPT032 npt032 ON npt028.discount_id = npt032.discount_id',
'    JOIN NPT009 npt009 ON npt009.customer_id = npt032.customer_id',
'    JOIN NIT001 nit001 ON npt028.sic_id = nit001.sic_id',
'    JOIN NIT002 nit002 ON nit001.item_id = nit002.item_id',
'   WHERE npt009.dba = :P81_DBA',
'     AND npt008.date_to >= SYSDATE',
'     AND npt008.date_from <= SYSDATE',
'     AND nit002.upc = :P81_BARCODE',
'UNION ALL',
'  SELECT npt029.discount_id, npt029.discount_value',
'    FROM NPT029 npt029',
'    JOIN NPT008 npt008 ON npt029.discount_id = npt008.discount_id',
'    JOIN NPT032 npt032 ON npt029.discount_id = npt032.discount_id',
'    JOIN NPT009 npt009 ON npt009.customer_id = npt032.customer_id',
'    JOIN NIT001 nit001 ON npt029.dept_id = nit001.dept_id',
'    JOIN NIT002 nit002 ON nit001.item_id = nit002.item_id',
'   WHERE npt009.dba = :P81_DBA',
'     AND npt008.date_to >= SYSDATE',
'     AND npt008.date_from <= SYSDATE',
'     AND nit002.upc = :P81_BARCODE',
'UNION ALL',
'    SELECT npt030.discount_id, npt030.discount_value',
'    FROM NPT030 npt030',
'    JOIN NPT008 npt008 ON npt030.discount_id = npt008.discount_id',
'    JOIN NPT032 npt032 ON npt030.discount_id = npt032.discount_id',
'    JOIN NPT009 npt009 ON npt009.customer_id = npt032.customer_id',
'    JOIN NIT001 nit001 ON npt030.class_id = nit001.class_id',
'    JOIN NIT002 nit002 ON nit001.item_id = nit002.item_id',
'   WHERE npt009.dba = :P81_DBA',
'     AND npt008.date_to >= SYSDATE',
'     AND npt008.date_from <= SYSDATE     ',
'     AND nit002.upc = :P81_BARCODE',
'UNION ALL',
'    SELECT DISTINCT 0, np09.standard_discount_value',
'     FROM NPT009 np09, NIT001 nt01, NPT032 np032, NIT002 nt02',
'     WHERE np09.class_id = nt01.class_id',
'      AND np09.customer_id = np032.customer_id ',
'      AND np09.dba = :P81_DBA',
'      AND nt01.item_id = nt02.item_id',
'      AND nt02.upc = :P81_BARCODE',
')',
'    SELECT NVL(discount_id, 0), NVL(MAX(discount_value), 0) AS max_discount_value',
'    INTO v_id, v_disc',
'    FROM discount_data',
'    GROUP BY discount_id',
'    ORDER BY discount_id',
'    OFFSET 0 ROWS',
'    FETCH NEXT 1 ROWS ONLY;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_id := -1;',
'END;',
'',
'BEGIN',
'    SELECT seq_id INTO v_seq',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_DISCOUNTS''',
'      AND n001 = NVL(v_id, 0)',
'      AND c001 = ''D'';',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq := 0; ',
'END;',
'',
'BEGIN',
'    SELECT seq_id INTO v_seq_id',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_A''',
'      AND c006 = :P81_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq_id := 0;',
'END;',
'',
'BEGIN',
'    SELECT a.item_num INTO v_bc',
'    FROM NIT001 a, NIT002 b',
'    WHERE a.item_id = b.item_id',
'      AND b.upc = :P81_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_bc := NULL;',
'        END;',
'',
'    IF v_seq = 4 AND v_bc IS NOT NULL AND v_seq_id != 0 THEN',
'        apex_collection.update_member_attribute (',
'                p_collection_name => ''INVOICE_D'',',
'                p_seq => v_seq_id,',
'                p_attr_number => 3,',
'                p_number_value => v_disc',
'                );',
'    END IF;',
'',
'END;',
''))
,p_attribute_02=>'P81_BARCODE,P81_DBA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63510399128049782)
,p_event_id=>wwv_flow_imp.id(63509937569049767)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_name=>'Discounted Price A'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_discounted NUMBER;',
'    v_seq_id NUMBER;',
'    v_seq NUMBER;',
'    v_id NUMBER;',
'    v_bc VARCHAR(50);',
'    v_qty NUMBER;',
'BEGIN',
'BEGIN',
'    WITH discount_data AS (',
'    SELECT np028.discount_id AS discount_id, ',
'    NVL(CASE WHEN np08.type = ''Percent'' THEN nt02.price * (np028.discount_value/100)',
'        WHEN np08.type = ''Fixed'' THEN np028.discount_value ',
'        ELSE nt02.price END, 0) AS discounted_price',
'     FROM NPT028 np028, NPT032 np032, NPT008 np08, NPT009 np09, NIT001 nt01, NIT002 nt02',
'    WHERE np09.dba = :P81_DBA',
'      AND np08.discount_id = np028.discount_id',
'      AND np028.discount_id = np032.discount_id',
'      AND np09.customer_id = np032.customer_id',
'      AND np028.sic_id = nt01.sic_id',
'      AND nt01.item_id = nt02.item_id',
'      AND np08.date_to >= SYSDATE',
'      AND np08.date_from <= SYSDATE',
'      AND nt02.upc = :P81_BARCODE',
'UNION ALL',
'    SELECT np029.discount_id AS discount_id, ',
'    NVL(CASE WHEN np08.type = ''Percent'' THEN nt02.price * (np029.discount_value / 100)',
'            WHEN np08.type = ''Fixed'' THEN np029.discount_value ',
'            ELSE nt02.price END, 0) AS discounted_price',
'     FROM NPT029 np029, NPT032 np032, NPT008 np08, NPT009 np09, NIT001 nt01, NIT002 nt02',
'    WHERE np09.dba = :P81_DBA',
'      AND np08.discount_id = np029.discount_id',
'      AND np029.discount_id = np032.discount_id',
'      AND np09.customer_id = np032.customer_id',
'      AND np029.dept_id = nt01.dept_id',
'      AND nt01.item_id = nt02.item_id',
'      AND np08.date_to >= SYSDATE',
'      AND np08.date_from <= SYSDATE',
'      AND nt02.upc = :P81_BARCODE',
'UNION ALL',
'    SELECT np030.discount_id AS discount_id, ',
'    NVL(CASE WHEN np08.type = ''Percent'' THEN nt02.price * (np030.discount_value / 100)',
'            WHEN np08.type = ''Fixed'' THEN np030.discount_value ',
'            ELSE nt02.price END, 0) AS discounted_price',
'     FROM NPT030 np030, NPT032 np032, NPT008 np08, NPT009 np09, NIT001 nt01, NIT002 nt02',
'    WHERE np09.dba = :P81_DBA',
'      AND np08.discount_id = np030.discount_id',
'      AND np030.discount_id = np032.discount_id',
'      AND np09.customer_id = np032.customer_id',
'      AND np030.class_id = nt01.class_id',
'      AND nt01.item_id = nt02.item_id',
'      AND np08.date_to >= SYSDATE',
'      AND np08.date_from <= SYSDATE',
'      AND nt02.upc = :P81_BARCODE',
'UNION ALL',
'     SELECT DISTINCT 0 AS discount_id, NVL(nt02.price * (np09.standard_discount_value / 100), 0) AS discounted_price',
'      FROM NPT009 np09, NPT032 np032, NIT001 nt01, NIT002 nt02',
'     WHERE np09.dba = :P81_DBA',
'       AND nt02.upc = :P81_BARCODE',
'       AND np09.customer_id = np032.customer_id',
'       AND np09.class_id = nt01.class_id',
'       AND nt02.item_id = nt01.item_id',
')',
'    SELECT NVL(discount_id, 0), NVL(MAX(discounted_price), 0) AS discounted_price',
'      INTO v_id, v_discounted',
'      FROM discount_data',
'  GROUP BY discount_id',
'  ORDER BY discount_id',
'  OFFSET 0 ROWS',
'    FETCH NEXT 1 ROWS ONLY;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_id := -1;',
'END;',
'',
'BEGIN',
'    SELECT seq_id INTO v_seq',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_DISCOUNTS''',
'      AND n001 = NVL(v_id, 0)',
'      AND c001 = ''A'';',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq := 0; ',
'END;',
'',
'BEGIN',
'    SELECT seq_id, n001 INTO v_seq_id, v_qty',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_A''',
'      AND c006 = :P81_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq_id := 0;',
'END;',
'',
'BEGIN',
'    SELECT a.item_num INTO v_bc',
'    FROM NIT001 a, NIT002 b',
'    WHERE a.item_id = b.item_id',
'      AND b.upc = :P81_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_bc := NULL;',
'        END;',
'',
'    IF v_seq = 1 AND v_bc IS NOT NULL AND v_seq_id != 0 THEN',
'        apex_collection.update_member_attribute (',
'                p_collection_name => ''INVOICE_A'',',
'                p_seq => v_seq_id,',
'                p_attr_number => 4,',
'                p_number_value => v_discounted',
'                );',
'    ',
'    END IF;',
'',
'END;'))
,p_attribute_02=>'P81_BARCODE,P81_DBA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63514841462049790)
,p_event_id=>wwv_flow_imp.id(63509937569049767)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'N'
,p_name=>'Discounted Price B'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_discounted NUMBER;',
'    v_seq_id NUMBER;',
'    v_seq NUMBER;',
'    v_id NUMBER;',
'    v_bc VARCHAR(50);',
'    v_qty NUMBER;',
'BEGIN',
'BEGIN',
'    WITH discount_data AS (',
'    SELECT np028.discount_id AS discount_id, ',
'    NVL(CASE WHEN np08.type = ''Percent'' THEN nt02.price * (np028.discount_value / 100)',
'            WHEN np08.type = ''Fixed'' THEN np028.discount_value ',
'            ELSE nt02.price END, 0) AS discounted_price',
'     FROM NPT028 np028, NPT032 np032, NPT008 np08, NPT009 np09, NIT001 nt01, NIT002 nt02',
'    WHERE np09.dba = :P81_DBA',
'      AND np08.discount_id = np028.discount_id',
'      AND np028.discount_id = np032.discount_id',
'      AND np09.customer_id = np032.customer_id',
'      AND np028.sic_id = nt01.sic_id',
'      AND nt01.item_id = nt02.item_id',
'      AND np08.date_to >= SYSDATE',
'      AND np08.date_from <= SYSDATE',
'      AND nt02.upc = :P81_BARCODE',
'UNION ALL',
'    SELECT np029.discount_id AS discount_id, ',
'    NVL(CASE WHEN np08.type = ''Percent'' THEN nt02.price * (np029.discount_value / 100)',
'            WHEN np08.type = ''Fixed'' THEN np029.discount_value ',
'            ELSE nt02.price END, 0) AS discounted_price',
'     FROM NPT029 np029, NPT032 np032, NPT008 np08, NPT009 np09, NIT001 nt01, NIT002 nt02',
'    WHERE np09.dba = :P81_DBA',
'      AND np08.discount_id = np029.discount_id',
'      AND np029.discount_id = np032.discount_id',
'      AND np09.customer_id = np032.customer_id',
'      AND np029.dept_id = nt01.dept_id',
'      AND nt01.item_id = nt02.item_id',
'      AND np08.date_to >= SYSDATE',
'      AND np08.date_from <= SYSDATE',
'      AND nt02.upc = :P81_BARCODE',
'UNION ALL',
'    SELECT np030.discount_id AS discount_id, ',
'    NVL(CASE WHEN np08.type = ''Percent'' THEN nt02.price * (np030.discount_value / 100)',
'            WHEN np08.type = ''Fixed'' THEN np030.discount_value ',
'            ELSE nt02.price END, 0) AS discounted_price',
'     FROM NPT030 np030, NPT032 np032, NPT008 np08, NPT009 np09, NIT001 nt01, NIT002 nt02',
'    WHERE np09.dba = :P81_DBA',
'      AND np08.discount_id = np030.discount_id',
'      AND np030.discount_id = np032.discount_id',
'      AND np09.customer_id = np032.customer_id',
'      AND np030.class_id = nt01.class_id',
'      AND nt01.item_id = nt02.item_id',
'      AND np08.date_to >= SYSDATE',
'      AND np08.date_from <= SYSDATE',
'      AND nt02.upc = :P81_BARCODE',
'UNION ALL',
'     SELECT DISTINCT 0 AS discount_id, NVL(nt02.price * (np09.standard_discount_value / 100), 0) AS discounted_price',
'      FROM NPT009 np09, NPT032 np032, NIT001 nt01, NIT002 nt02',
'     WHERE np09.dba = :P81_DBA',
'       AND nt02.upc = :P81_BARCODE',
'       AND np09.customer_id = np032.customer_id',
'       AND np09.class_id = nt01.class_id',
'       AND nt02.item_id = nt01.item_id',
')',
'    SELECT NVL(discount_id, 0), NVL(MAX(discounted_price), 0) AS discounted_price',
'      INTO v_id, v_discounted',
'      FROM discount_data',
'  GROUP BY discount_id',
'  ORDER BY discount_id',
'  OFFSET 0 ROWS',
'    FETCH NEXT 1 ROWS ONLY;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_id := -1;',
'END;',
'',
'BEGIN',
'    SELECT seq_id INTO v_seq',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_DISCOUNTS''',
'      AND n001 = NVL(v_id, 0)',
'      AND c001 = ''B'';',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq := 0; ',
'END;',
'',
'BEGIN',
'    SELECT seq_id, n001 INTO v_seq_id, v_qty',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_A''',
'      AND c006 = :P81_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq_id := 0;',
'END;',
'',
'BEGIN',
'    SELECT a.item_num INTO v_bc',
'    FROM NIT001 a, NIT002 b',
'    WHERE a.item_id = b.item_id',
'      AND b.upc = :P81_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_bc := NULL;',
'        END;',
'',
'    IF v_seq = 2 AND v_bc IS NOT NULL AND v_seq_id != 0 THEN',
'        apex_collection.update_member_attribute (',
'                p_collection_name => ''INVOICE_B'',',
'                p_seq => v_seq_id,',
'                p_attr_number => 4,',
'                p_number_value => v_discounted',
'                );',
'    END IF;',
'',
'END;',
''))
,p_attribute_02=>'P81_BARCODE,P81_DBA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63515337035049790)
,p_event_id=>wwv_flow_imp.id(63509937569049767)
,p_event_result=>'TRUE'
,p_action_sequence=>150
,p_execute_on_page_init=>'N'
,p_name=>'Discounted Price C'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_discounted NUMBER;',
'    v_seq_id NUMBER;',
'    v_seq NUMBER;',
'    v_id NUMBER;',
'    v_bc VARCHAR(50);',
'    v_qty NUMBER;',
'BEGIN',
'BEGIN',
'    WITH discount_data AS (',
'    SELECT np028.discount_id AS discount_id, ',
'    NVL(CASE WHEN np08.type = ''Percent'' THEN nt02.price * (np028.discount_value / 100)',
'            WHEN np08.type = ''Fixed'' THEN np028.discount_value ',
'            ELSE nt02.price END, 0) AS discounted_price',
'     FROM NPT028 np028, NPT032 np032, NPT008 np08, NPT009 np09, NIT001 nt01, NIT002 nt02',
'    WHERE np09.dba = :P81_DBA',
'      AND np08.discount_id = np028.discount_id',
'      AND np028.discount_id = np032.discount_id',
'      AND np09.customer_id = np032.customer_id',
'      AND np028.sic_id = nt01.sic_id',
'      AND nt01.item_id = nt02.item_id',
'      AND np08.date_to >= SYSDATE',
'      AND np08.date_from <= SYSDATE',
'      AND nt02.upc = :P81_BARCODE',
'UNION ALL',
'    SELECT np029.discount_id AS discount_id, ',
'    NVL(CASE WHEN np08.type = ''Percent'' THEN nt02.price * (np029.discount_value / 100)',
'            WHEN np08.type = ''Fixed'' THEN np029.discount_value ',
'            ELSE nt02.price END, 0) AS discounted_price',
'     FROM NPT029 np029, NPT032 np032, NPT008 np08, NPT009 np09, NIT001 nt01, NIT002 nt02',
'    WHERE np09.dba = :P81_DBA',
'      AND np08.discount_id = np029.discount_id',
'      AND np029.discount_id = np032.discount_id',
'      AND np09.customer_id = np032.customer_id',
'      AND np029.dept_id = nt01.dept_id',
'      AND nt01.item_id = nt02.item_id',
'      AND np08.date_to >= SYSDATE',
'      AND np08.date_from <= SYSDATE',
'      AND nt02.upc = :P81_BARCODE',
'UNION ALL',
'    SELECT np030.discount_id AS discount_id, ',
'    NVL(CASE WHEN np08.type = ''Percent'' THEN nt02.price * (np030.discount_value / 100)',
'            WHEN np08.type = ''Fixed'' THEN np030.discount_value ',
'            ELSE nt02.price END, 0) AS discounted_price',
'     FROM NPT030 np030, NPT032 np032, NPT008 np08, NPT009 np09, NIT001 nt01, NIT002 nt02',
'    WHERE np09.dba = :P81_DBA',
'      AND np08.discount_id = np030.discount_id',
'      AND np030.discount_id = np032.discount_id',
'      AND np09.customer_id = np032.customer_id',
'      AND np030.class_id = nt01.class_id',
'      AND nt01.item_id = nt02.item_id',
'      AND np08.date_to >= SYSDATE',
'      AND np08.date_from <= SYSDATE',
'      AND nt02.upc = :P81_BARCODE',
'UNION ALL',
'     SELECT DISTINCT 0 AS discount_id, NVL(nt02.price * (np09.standard_discount_value / 100), 0) AS discounted_price',
'      FROM NPT009 np09, NPT032 np032, NIT001 nt01, NIT002 nt02',
'     WHERE np09.dba = :P81_DBA',
'       AND nt02.upc = :P81_BARCODE',
'       AND np09.customer_id = np032.customer_id',
'       AND np09.class_id = nt01.class_id',
'       AND nt02.item_id = nt01.item_id',
')',
'    SELECT NVL(discount_id, 0), NVL(MAX(discounted_price), 0) AS discounted_price',
'      INTO v_id, v_discounted',
'      FROM discount_data',
'  GROUP BY discount_id',
'  ORDER BY discount_id',
'  OFFSET 0 ROWS',
'    FETCH NEXT 1 ROWS ONLY;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_id := -1;',
'END;',
'',
'BEGIN',
'    SELECT seq_id INTO v_seq',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_DISCOUNTS''',
'      AND n001 = NVL(v_id, 0)',
'      AND c001 = ''C'';',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq := 0; ',
'END;',
'',
'BEGIN',
'    SELECT seq_id, n001 INTO v_seq_id, v_qty',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_A''',
'      AND c006 = :P81_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq_id := 0;',
'END;',
'',
'BEGIN',
'    SELECT a.item_num INTO v_bc',
'    FROM NIT001 a, NIT002 b',
'    WHERE a.item_id = b.item_id',
'      AND b.upc = :P81_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_bc := NULL;',
'        END;',
'',
'    IF v_seq = 3 AND v_bc IS NOT NULL AND v_seq_id != 0 THEN',
'        apex_collection.update_member_attribute (',
'                p_collection_name => ''INVOICE_C'',',
'                p_seq => v_seq_id,',
'                p_attr_number => 4,',
'                p_number_value => v_discounted',
'                );',
'    END IF;',
'',
'END;',
''))
,p_attribute_02=>'P81_BARCODE,P81_DBA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63515885375049792)
,p_event_id=>wwv_flow_imp.id(63509937569049767)
,p_event_result=>'TRUE'
,p_action_sequence=>170
,p_execute_on_page_init=>'N'
,p_name=>'Discounted Price D'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_price NUMBER;',
'    v_seq_id NUMBER;',
'    v_seq NUMBER;',
'    v_id NUMBER := 0;',
'    v_bc VARCHAR(50);',
'BEGIN',
'BEGIN',
'    WITH discount_data AS (',
'    SELECT np028.discount_id AS discount_id, ',
'    NVL(CASE WHEN np08.type = ''Percent'' THEN nt02.price * (np028.discount_value / 100)',
'            WHEN np08.type = ''Fixed'' THEN np028.discount_value ',
'            ELSE nt02.price END, 0) AS discounted_price',
'     FROM NPT028 np028, NPT032 np032, NPT008 np08, NPT009 np09, NIT001 nt01, NIT002 nt02',
'    WHERE np09.dba = :P81_DBA',
'      AND np08.discount_id = np028.discount_id',
'      AND np028.discount_id = np032.discount_id',
'      AND np09.customer_id = np032.customer_id',
'      AND np028.sic_id = nt01.sic_id',
'      AND nt01.item_id = nt02.item_id',
'      AND np08.date_to >= SYSDATE',
'      AND np08.date_from <= SYSDATE',
'      AND nt02.upc = :P81_BARCODE',
'UNION ALL',
'    SELECT np029.discount_id AS discount_id, ',
'    NVL(CASE WHEN np08.type = ''Percent'' THEN nt02.price * (np029.discount_value / 100)',
'            WHEN np08.type = ''Fixed'' THEN np029.discount_value ',
'            ELSE nt02.price END, 0) AS discounted_price',
'     FROM NPT029 np029, NPT032 np032, NPT008 np08, NPT009 np09, NIT001 nt01, NIT002 nt02',
'    WHERE np09.dba = :P81_DBA',
'      AND np08.discount_id = np029.discount_id',
'      AND np029.discount_id = np032.discount_id',
'      AND np09.customer_id = np032.customer_id',
'      AND np029.dept_id = nt01.dept_id',
'      AND nt01.item_id = nt02.item_id',
'      AND np08.date_to >= SYSDATE',
'      AND np08.date_from <= SYSDATE',
'      AND nt02.upc = :P81_BARCODE',
'UNION ALL',
'    SELECT np030.discount_id AS discount_id, ',
'    NVL(CASE WHEN np08.type = ''Percent'' THEN nt02.price * (np030.discount_value / 100)',
'            WHEN np08.type = ''Fixed'' THEN np030.discount_value ',
'            ELSE nt02.price END, 0) AS discounted_price',
'     FROM NPT030 np030, NPT032 np032, NPT008 np08, NPT009 np09, NIT001 nt01, NIT002 nt02',
'    WHERE np09.dba = :P81_DBA',
'      AND np08.discount_id = np030.discount_id',
'      AND np030.discount_id = np032.discount_id',
'      AND np09.customer_id = np032.customer_id',
'      AND np030.class_id = nt01.class_id',
'      AND nt01.item_id = nt02.item_id',
'      AND np08.date_to >= SYSDATE',
'      AND np08.date_from <= SYSDATE',
'      AND nt02.upc = :P81_BARCODE',
'UNION ALL',
'     SELECT DISTINCT 0 AS discount_id, NVL(nt02.price * (np09.standard_discount_value / 100), 0) AS discounted_price',
'      FROM NPT009 np09, NPT032 np032, NIT001 nt01, NIT002 nt02',
'     WHERE np09.dba = :P81_DBA',
'       AND nt02.upc = :P81_BARCODE',
'       AND np09.customer_id = np032.customer_id',
'       AND np09.class_id = nt01.class_id',
'       AND nt02.item_id = nt01.item_id',
')',
'    SELECT NVL(discount_id, 0), NVL(MAX(discounted_price), 0) AS discounted_price',
'      INTO v_id, v_price',
'      FROM discount_data',
'  GROUP BY discount_id',
'  ORDER BY discount_id',
'  OFFSET 0 ROWS',
'    FETCH NEXT 1 ROWS ONLY;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_id := -1; ',
'END;',
'',
'BEGIN',
'    SELECT seq_id INTO v_seq',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_DISCOUNTS''',
'      AND n001 = NVL(v_id, 0)',
'      AND c001 = ''D'';',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq := 0; ',
'END;',
'',
'BEGIN',
'    SELECT seq_id INTO v_seq_id',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_A''',
'      AND c006 = :P81_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq_id := 0;',
'END;',
'',
'BEGIN',
'    SELECT a.item_num INTO v_bc',
'    FROM NIT001 a, NIT002 b',
'    WHERE a.item_id = b.item_id',
'      AND b.upc = :P81_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_bc := NULL;',
'        END;',
'',
'    IF v_seq = 4 AND v_bc IS NOT NULL AND v_seq_id != 0 THEN',
'        apex_collection.update_member_attribute (',
'                p_collection_name => ''INVOICE_D'',',
'                p_seq => v_seq_id,',
'                p_attr_number => 4,',
'                p_number_value => v_price',
'                );',
'    END IF;',
'',
'END;',
''))
,p_attribute_02=>'P81_BARCODE,P81_DBA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63510853047049782)
,p_event_id=>wwv_flow_imp.id(63509937569049767)
,p_event_result=>'TRUE'
,p_action_sequence=>180
,p_execute_on_page_init=>'Y'
,p_name=>'Sub-Total'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P81_SUB'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH COLLECTION_SUMS AS (',
'    SELECT ''INVOICE_A'' AS collection_name, SUM(n002 * n001) AS SUB_TOTAL',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_A''',
' ',
'    UNION ALL',
' ',
'    SELECT ''INVOICE_B'' AS collection_name, SUM(n002 * n001) AS SUB_TOTAL',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_B''',
' ',
'    UNION ALL',
' ',
'    SELECT ''INVOICE_C'' AS collection_name, SUM(n002 * n001) AS SUB_TOTAL',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_C''',
' ',
'    UNION ALL',
' ',
'    SELECT ''INVOICE_D'' AS collection_name, SUM(n002 * n001) AS SUB_TOTAL',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_D''',
'),',
'LOWEST_SUM AS (',
'    SELECT collection_name',
'    FROM COLLECTION_SUMS',
'    WHERE SUB_TOTAL = (SELECT MIN(SUB_TOTAL) FROM COLLECTION_SUMS)',
'    FETCH FIRST 1 ROW ONLY',
')',
'SELECT TO_CHAR(SUM(n002 * n001), ''FM999G999G999G999D00'' ) ',
'FROM apex_collections',
'WHERE collection_name IN (SELECT collection_name FROM LOWEST_SUM);'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63511899698049785)
,p_event_id=>wwv_flow_imp.id(63509937569049767)
,p_event_result=>'TRUE'
,p_action_sequence=>210
,p_execute_on_page_init=>'Y'
,p_name=>'Discount'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P81_DISCOUNT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH COLLECTION_SUMS AS (',
'    SELECT ''INVOICE_A'' AS collection_name, SUM(n004 * n001) AS TOTAL_INVOICE',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_A''',
' ',
'    UNION ALL',
' ',
'    SELECT ''INVOICE_B'' AS collection_name, SUM(n004 * n001) AS TOTAL_INVOICE',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_B''',
' ',
'    UNION ALL',
' ',
'    SELECT ''INVOICE_C'' AS collection_name, SUM(n004 * n001) AS TOTAL_INVOICE',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_C''',
' ',
'    UNION ALL',
' ',
'    SELECT ''INVOICE_D'' AS collection_name, SUM(n004 * n001) AS TOTAL_INVOICE',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_D''',
'),',
'LOWEST_SUM AS (',
'    SELECT collection_name',
'    FROM COLLECTION_SUMS',
'    WHERE TOTAL_INVOICE = (SELECT MAX(TOTAL_INVOICE) FROM COLLECTION_SUMS)',
'    FETCH FIRST 1 ROW ONLY',
')',
'SELECT TO_CHAR(SUM(n004 * n001), ''FM999G999G999G999D00'' ) ',
'FROM apex_collections',
'WHERE collection_name IN (SELECT collection_name FROM LOWEST_SUM);'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63512305690049787)
,p_event_id=>wwv_flow_imp.id(63509937569049767)
,p_event_result=>'TRUE'
,p_action_sequence=>230
,p_execute_on_page_init=>'Y'
,p_name=>'Total'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P81_TOTAL'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'TO_CHAR(NVL(TO_NUMBER(REPLACE(REPLACE(NVL(:P81_SUB, 0), ''$'', ''''), '','', '''')) - TO_NUMBER(REPLACE(REPLACE(NVL(:P81_DISCOUNT, 0), ''$'', ''''), '','', '''')), 0), ''FM999G999G999G990D00'' ) '
,p_attribute_07=>'P81_SUB,P81_DISCOUNT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63512837275049787)
,p_event_id=>wwv_flow_imp.id(63509937569049767)
,p_event_result=>'TRUE'
,p_action_sequence=>240
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P81_SUB,P81_DISCOUNT,P81_TOTAL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(63536973922289202)
,p_name=>'Scan Item 2'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P81_BARCODE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63537000293289203)
,p_event_id=>wwv_flow_imp.id(63536973922289202)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Scan Item'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_seq_id number;',
'    v_item_id number;',
'    v_item_num VARCHAR2(50);',
'    v_product_name varchar(35);    ',
'    v_price number;',
'    v_qty number;',
'    v_total number;',
'    v_brand varchar(10);',
'    v_uom varchar(10);',
'    v_discounted NUMBER;',
'',
'',
'BEGIN',
'    BEGIN',
'        SELECT a.item_num, a.item_id, a.item_desc, b.price, b.price total, UPPER(c.uom_code), d.brand_code INTO v_item_num, v_item_id, v_product_name, v_price, v_total, v_uom, v_brand',
'          FROM NIT001 a, NIT002 b, NIM026 c, NIM022 d',
'         WHERE a.item_id = b.item_id',
'           AND b.uom_id = c.uom_id',
'           AND a.brand_id = d.brand_id',
'           AND b.upc = :P81_BARCODE;      ',
'',
'        SELECT seq_id, n001, n004 INTO v_seq_id, v_qty, v_discounted',
'          FROM apex_collections',
'         WHERE collection_name = ''INVOICE_B''',
'           AND c006 = :P81_BARCODE;',
'        EXCEPTION WHEN NO_DATA_FOUND THEN v_seq_id := 0; END;',
'',
'        IF v_seq_id != 0 THEN',
'            v_qty := v_qty + 1;',
'            v_total := v_price * v_qty;',
'            v_discounted := v_discounted * v_qty;',
'        ',
'            apex_collection.update_member_attribute (',
'                p_collection_name => ''INVOICE_B'',',
'                p_seq => v_seq_id,',
'                p_attr_number => 1,',
'                p_number_value => v_qty',
'                ); ',
'',
'            apex_collection.update_member_attribute (',
'                p_collection_name => ''INVOICE_B'',',
'                p_seq => v_seq_id,',
'                p_attr_number => 5,',
'                p_number_value => v_total',
'                );',
'',
'        ELSIF v_seq_id = 0 AND v_item_id IS NOT NULL THEN',
'            apex_collection.add_member(',
'                p_collection_name => ''INVOICE_B'',',
'                p_c001 => v_item_num,',
'                p_c002 => v_brand,',
'                p_c003 => v_product_name,',
'                p_n001 => 1,',
'                p_n002 => v_price,',
'                p_c004 => v_uom,',
'                p_n005 => v_total,',
'                p_c006 => :P81_BARCODE,',
'                p_c007 => v_item_id);',
'END IF;',
'END;'))
,p_attribute_02=>'P81_BARCODE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63537193749289204)
,p_event_id=>wwv_flow_imp.id(63536973922289202)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'Discount A'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_disc NUMBER;',
'    v_seq_id NUMBER;',
'    v_seq NUMBER;',
'    v_id NUMBER := 0;',
'    v_bc VARCHAR(50);',
'BEGIN',
'BEGIN',
'    WITH discount_data AS (',
'    SELECT npt028.discount_id, npt028.discount_value',
'    FROM NPT028 npt028',
'    JOIN NPT008 npt008 ON npt028.discount_id = npt008.discount_id',
'    JOIN NPT032 npt032 ON npt028.discount_id = npt032.discount_id',
'    JOIN NPT009 npt009 ON npt009.customer_id = npt032.customer_id',
'    JOIN NIT001 nit001 ON npt028.sic_id = nit001.sic_id',
'    JOIN NIT002 nit002 ON nit001.item_id = nit002.item_id',
'   WHERE npt009.dba = :P81_DBA',
'     AND npt008.date_to >= SYSDATE',
'     AND npt008.date_from <= SYSDATE',
'     AND nit002.upc = :P81_BARCODE',
'UNION ALL',
'  SELECT npt029.discount_id, npt029.discount_value',
'    FROM NPT029 npt029',
'    JOIN NPT008 npt008 ON npt029.discount_id = npt008.discount_id',
'    JOIN NPT032 npt032 ON npt029.discount_id = npt032.discount_id',
'    JOIN NPT009 npt009 ON npt009.customer_id = npt032.customer_id',
'    JOIN NIT001 nit001 ON npt029.dept_id = nit001.dept_id',
'    JOIN NIT002 nit002 ON nit001.item_id = nit002.item_id',
'   WHERE npt009.dba = :P81_DBA',
'     AND npt008.date_to >= SYSDATE',
'     AND npt008.date_from <= SYSDATE',
'     AND nit002.upc = :P81_BARCODE',
'UNION ALL',
'    SELECT npt030.discount_id, npt030.discount_value',
'    FROM NPT030 npt030',
'    JOIN NPT008 npt008 ON npt030.discount_id = npt008.discount_id',
'    JOIN NPT032 npt032 ON npt030.discount_id = npt032.discount_id',
'    JOIN NPT009 npt009 ON npt009.customer_id = npt032.customer_id',
'    JOIN NIT001 nit001 ON npt030.class_id = nit001.class_id',
'    JOIN NIT002 nit002 ON nit001.item_id = nit002.item_id',
'   WHERE npt009.dba = :P81_DBA',
'     AND npt008.date_to >= SYSDATE',
'     AND npt008.date_from <= SYSDATE     ',
'     AND nit002.upc = :P81_BARCODE',
'UNION ALL',
'    SELECT DISTINCT 0, np09.standard_discount_value',
'     FROM NPT009 np09, NIT001 nt01, NPT032 np032, NIT002 nt02',
'     WHERE np09.class_id = nt01.class_id',
'      AND np09.customer_id = np032.customer_id ',
'      AND np09.dba = :P81_DBA',
'      AND nt01.item_id = nt02.item_id',
'      AND nt02.upc = :P81_BARCODE',
')',
'',
'    SELECT NVL(discount_id, 0), NVL(MAX(discount_value), 0) AS max_discount_value',
'    INTO v_id, v_disc',
'    FROM discount_data',
'    GROUP BY discount_id',
'    ORDER BY discount_id',
'    OFFSET 1 ROWS',
'    FETCH NEXT 1 ROWS ONLY;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_id := -1;',
'END;',
'',
'BEGIN',
'    SELECT seq_id INTO v_seq',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_DISCOUNTS''',
'      AND n001 = NVL(v_id, 0)',
'      AND c001 = ''A'';',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq := 0; ',
'END;',
'',
'BEGIN',
'    SELECT seq_id INTO v_seq_id',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_B''',
'      AND c006 = :P81_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq_id := 0;',
'END;',
'',
'BEGIN',
'    SELECT a.item_num INTO v_bc',
'    FROM NIT001 a, NIT002 b',
'    WHERE a.item_id = b.item_id',
'      AND b.upc = :P81_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_bc := NULL;',
'        END;',
'',
'    IF v_seq = 1 AND v_bc IS NOT NULL AND v_seq_id != 0 THEN',
'        apex_collection.update_member_attribute (',
'                p_collection_name => ''INVOICE_A'',',
'                p_seq => v_seq_id,',
'                p_attr_number => 3,',
'                p_number_value => v_disc',
'                );',
'    ',
'    END IF;',
'',
'END;',
''))
,p_attribute_02=>'P81_BARCODE,P81_DBA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63537274054289205)
,p_event_id=>wwv_flow_imp.id(63536973922289202)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'Discount B'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_disc NUMBER;',
'    v_seq_id NUMBER;',
'    v_seq NUMBER;',
'    v_id NUMBER := 0;',
'    v_bc VARCHAR(50);',
'BEGIN',
'BEGIN',
'    WITH discount_data AS (',
'    SELECT npt028.discount_id, npt028.discount_value',
'    FROM NPT028 npt028',
'    JOIN NPT008 npt008 ON npt028.discount_id = npt008.discount_id',
'    JOIN NPT032 npt032 ON npt028.discount_id = npt032.discount_id',
'    JOIN NPT009 npt009 ON npt009.customer_id = npt032.customer_id',
'    JOIN NIT001 nit001 ON npt028.sic_id = nit001.sic_id',
'    JOIN NIT002 nit002 ON nit001.item_id = nit002.item_id',
'   WHERE npt009.dba = :P81_DBA',
'     AND npt008.date_to >= SYSDATE',
'     AND npt008.date_from <= SYSDATE',
'     AND nit002.upc = :P81_BARCODE',
'UNION ALL',
'  SELECT npt029.discount_id, npt029.discount_value',
'    FROM NPT029 npt029',
'    JOIN NPT008 npt008 ON npt029.discount_id = npt008.discount_id',
'    JOIN NPT032 npt032 ON npt029.discount_id = npt032.discount_id',
'    JOIN NPT009 npt009 ON npt009.customer_id = npt032.customer_id',
'    JOIN NIT001 nit001 ON npt029.dept_id = nit001.dept_id',
'    JOIN NIT002 nit002 ON nit001.item_id = nit002.item_id',
'   WHERE npt009.dba = :P81_DBA',
'     AND npt008.date_to >= SYSDATE',
'     AND npt008.date_from <= SYSDATE',
'     AND nit002.upc = :P81_BARCODE',
'UNION ALL',
'    SELECT npt030.discount_id, npt030.discount_value',
'    FROM NPT030 npt030',
'    JOIN NPT008 npt008 ON npt030.discount_id = npt008.discount_id',
'    JOIN NPT032 npt032 ON npt030.discount_id = npt032.discount_id',
'    JOIN NPT009 npt009 ON npt009.customer_id = npt032.customer_id',
'    JOIN NIT001 nit001 ON npt030.class_id = nit001.class_id',
'    JOIN NIT002 nit002 ON nit001.item_id = nit002.item_id',
'   WHERE npt009.dba = :P81_DBA',
'     AND npt008.date_to >= SYSDATE',
'     AND npt008.date_from <= SYSDATE     ',
'     AND nit002.upc = :P81_BARCODE',
'UNION ALL',
'    SELECT DISTINCT 0, np09.standard_discount_value',
'     FROM NPT009 np09, NIT001 nt01, NPT032 np032, NIT002 nt02',
'     WHERE np09.class_id = nt01.class_id',
'      AND np09.customer_id = np032.customer_id ',
'      AND np09.dba = :P81_DBA',
'      AND nt01.item_id = nt02.item_id',
'      AND nt02.upc = :P81_BARCODE',
')',
'',
'    SELECT NVL(discount_id, 0), NVL(MAX(discount_value), 0) AS max_discount_value',
'    INTO v_id, v_disc',
'    FROM discount_data',
'    GROUP BY discount_id',
'    ORDER BY discount_id',
'    OFFSET 1 ROWS',
'    FETCH NEXT 1 ROWS ONLY;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_id := -1;',
'END;',
'',
'BEGIN',
'    SELECT seq_id INTO v_seq',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_DISCOUNTS''',
'      AND n001 = NVL(v_id, 0)',
'      AND c001 = ''B'';',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq := 0; ',
'END;',
'',
'BEGIN',
'    SELECT seq_id INTO v_seq_id',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_B''',
'      AND c006 = :P81_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq_id := 0;',
'END;',
'',
'BEGIN',
'    SELECT a.item_num INTO v_bc',
'    FROM NIT001 a, NIT002 b',
'    WHERE a.item_id = b.item_id',
'      AND b.upc = :P81_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_bc := NULL;',
'        END;',
'',
'    IF v_seq = 2 AND v_bc IS NOT NULL AND v_seq_id != 0 THEN',
'        apex_collection.update_member_attribute (',
'                p_collection_name => ''INVOICE_B'',',
'                p_seq => v_seq_id,',
'                p_attr_number => 3,',
'                p_number_value => v_disc',
'                );',
'    END IF;',
'',
'END;',
''))
,p_attribute_02=>'P81_BARCODE,P81_DBA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63537353230289206)
,p_event_id=>wwv_flow_imp.id(63536973922289202)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>'Discount C'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_disc NUMBER;',
'    v_seq_id NUMBER;',
'    v_seq NUMBER;',
'    v_id NUMBER := 0;',
'    v_bc VARCHAR(50);',
'BEGIN',
'BEGIN',
'    WITH discount_data AS (',
'    SELECT npt028.discount_id, npt028.discount_value',
'    FROM NPT028 npt028',
'    JOIN NPT008 npt008 ON npt028.discount_id = npt008.discount_id',
'    JOIN NPT032 npt032 ON npt028.discount_id = npt032.discount_id',
'    JOIN NPT009 npt009 ON npt009.customer_id = npt032.customer_id',
'    JOIN NIT001 nit001 ON npt028.sic_id = nit001.sic_id',
'    JOIN NIT002 nit002 ON nit001.item_id = nit002.item_id',
'   WHERE npt009.dba = :P81_DBA',
'     AND npt008.date_to >= SYSDATE',
'     AND npt008.date_from <= SYSDATE',
'     AND nit002.upc = :P81_BARCODE',
'UNION ALL',
'  SELECT npt029.discount_id, npt029.discount_value',
'    FROM NPT029 npt029',
'    JOIN NPT008 npt008 ON npt029.discount_id = npt008.discount_id',
'    JOIN NPT032 npt032 ON npt029.discount_id = npt032.discount_id',
'    JOIN NPT009 npt009 ON npt009.customer_id = npt032.customer_id',
'    JOIN NIT001 nit001 ON npt029.dept_id = nit001.dept_id',
'    JOIN NIT002 nit002 ON nit001.item_id = nit002.item_id',
'   WHERE npt009.dba = :P81_DBA',
'     AND npt008.date_to >= SYSDATE',
'     AND npt008.date_from <= SYSDATE',
'     AND nit002.upc = :P81_BARCODE',
'UNION ALL',
'    SELECT npt030.discount_id, npt030.discount_value',
'    FROM NPT030 npt030',
'    JOIN NPT008 npt008 ON npt030.discount_id = npt008.discount_id',
'    JOIN NPT032 npt032 ON npt030.discount_id = npt032.discount_id',
'    JOIN NPT009 npt009 ON npt009.customer_id = npt032.customer_id',
'    JOIN NIT001 nit001 ON npt030.class_id = nit001.class_id',
'    JOIN NIT002 nit002 ON nit001.item_id = nit002.item_id',
'   WHERE npt009.dba = :P81_DBA',
'     AND npt008.date_to >= SYSDATE',
'     AND npt008.date_from <= SYSDATE     ',
'     AND nit002.upc = :P81_BARCODE',
'UNION ALL',
'    SELECT DISTINCT 0, np09.standard_discount_value',
'     FROM NPT009 np09, NIT001 nt01, NPT032 np032, NIT002 nt02',
'     WHERE np09.class_id = nt01.class_id',
'      AND np09.customer_id = np032.customer_id ',
'      AND np09.dba = :P81_DBA',
'      AND nt01.item_id = nt02.item_id',
'      AND nt02.upc = :P81_BARCODE',
')',
'',
'    SELECT NVL(discount_id, 0), NVL(MAX(discount_value), 0) AS max_discount_value',
'    INTO v_id, v_disc',
'    FROM discount_data',
'    GROUP BY discount_id',
'    ORDER BY discount_id',
'    OFFSET 1 ROWS',
'    FETCH NEXT 1 ROWS ONLY;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_id := -1;',
'END;',
'',
'BEGIN',
'    SELECT seq_id INTO v_seq',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_DISCOUNTS''',
'      AND n001 = NVL(v_id, 0)',
'      AND c001 = ''C'';',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq := 0; ',
'END;',
'',
'BEGIN',
'    SELECT seq_id INTO v_seq_id',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_B''',
'      AND c006 = :P81_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq_id := 0;',
'END;',
'',
'BEGIN',
'    SELECT a.item_num INTO v_bc',
'    FROM NIT001 a, NIT002 b',
'    WHERE a.item_id = b.item_id',
'      AND b.upc = :P81_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_bc := NULL;',
'        END;',
'',
'    IF v_seq = 3 AND v_bc IS NOT NULL AND v_seq_id != 0 THEN',
'        apex_collection.update_member_attribute (',
'                p_collection_name => ''INVOICE_C'',',
'                p_seq => v_seq_id,',
'                p_attr_number => 3,',
'                p_number_value => v_disc',
'                );',
'    END IF;',
'',
'END;',
''))
,p_attribute_02=>'P81_BARCODE,P81_DBA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63537460958289207)
,p_event_id=>wwv_flow_imp.id(63536973922289202)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_name=>'Discount D'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_disc NUMBER;',
'    v_seq_id NUMBER;',
'    v_seq NUMBER;',
'    v_id NUMBER := 0;',
'    v_bc VARCHAR(50);',
'BEGIN',
'BEGIN',
'    WITH discount_data AS (',
'    SELECT npt028.discount_id, npt028.discount_value',
'    FROM NPT028 npt028',
'    JOIN NPT008 npt008 ON npt028.discount_id = npt008.discount_id',
'    JOIN NPT032 npt032 ON npt028.discount_id = npt032.discount_id',
'    JOIN NPT009 npt009 ON npt009.customer_id = npt032.customer_id',
'    JOIN NIT001 nit001 ON npt028.sic_id = nit001.sic_id',
'    JOIN NIT002 nit002 ON nit001.item_id = nit002.item_id',
'   WHERE npt009.dba = :P81_DBA',
'     AND npt008.date_to >= SYSDATE',
'     AND npt008.date_from <= SYSDATE',
'     AND nit002.upc = :P81_BARCODE',
'UNION ALL',
'  SELECT npt029.discount_id, npt029.discount_value',
'    FROM NPT029 npt029',
'    JOIN NPT008 npt008 ON npt029.discount_id = npt008.discount_id',
'    JOIN NPT032 npt032 ON npt029.discount_id = npt032.discount_id',
'    JOIN NPT009 npt009 ON npt009.customer_id = npt032.customer_id',
'    JOIN NIT001 nit001 ON npt029.dept_id = nit001.dept_id',
'    JOIN NIT002 nit002 ON nit001.item_id = nit002.item_id',
'   WHERE npt009.dba = :P81_DBA',
'     AND npt008.date_to >= SYSDATE',
'     AND npt008.date_from <= SYSDATE',
'     AND nit002.upc = :P81_BARCODE',
'UNION ALL',
'    SELECT npt030.discount_id, npt030.discount_value',
'    FROM NPT030 npt030',
'    JOIN NPT008 npt008 ON npt030.discount_id = npt008.discount_id',
'    JOIN NPT032 npt032 ON npt030.discount_id = npt032.discount_id',
'    JOIN NPT009 npt009 ON npt009.customer_id = npt032.customer_id',
'    JOIN NIT001 nit001 ON npt030.class_id = nit001.class_id',
'    JOIN NIT002 nit002 ON nit001.item_id = nit002.item_id',
'   WHERE npt009.dba = :P81_DBA',
'     AND npt008.date_to >= SYSDATE',
'     AND npt008.date_from <= SYSDATE     ',
'     AND nit002.upc = :P81_BARCODE',
'UNION ALL',
'    SELECT DISTINCT 0, np09.standard_discount_value',
'     FROM NPT009 np09, NIT001 nt01, NPT032 np032, NIT002 nt02',
'     WHERE np09.class_id = nt01.class_id',
'      AND np09.customer_id = np032.customer_id ',
'      AND np09.dba = :P81_DBA',
'      AND nt01.item_id = nt02.item_id',
'      AND nt02.upc = :P81_BARCODE',
')',
'    SELECT NVL(discount_id, 0), NVL(MAX(discount_value), 0) AS max_discount_value',
'    INTO v_id, v_disc',
'    FROM discount_data',
'    GROUP BY discount_id',
'    ORDER BY discount_id',
'    OFFSET 1 ROWS',
'    FETCH NEXT 1 ROWS ONLY;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_id := -1;',
'END;',
'',
'BEGIN',
'    SELECT seq_id INTO v_seq',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_DISCOUNTS''',
'      AND n001 = NVL(v_id, 0)',
'      AND c001 = ''D'';',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq := 0; ',
'END;',
'',
'BEGIN',
'    SELECT seq_id INTO v_seq_id',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_A''',
'      AND c006 = :P81_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq_id := 0;',
'END;',
'',
'BEGIN',
'    SELECT a.item_num INTO v_bc',
'    FROM NIT001 a, NIT002 b',
'    WHERE a.item_id = b.item_id',
'      AND b.upc = :P81_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_bc := NULL;',
'        END;',
'',
'    IF v_seq = 4 AND v_bc IS NOT NULL AND v_seq_id != 0 THEN',
'        apex_collection.update_member_attribute (',
'                p_collection_name => ''INVOICE_D'',',
'                p_seq => v_seq_id,',
'                p_attr_number => 3,',
'                p_number_value => v_disc',
'                );',
'    END IF;',
'END;'))
,p_attribute_02=>'P81_BARCODE,P81_DBA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63537551398289208)
,p_event_id=>wwv_flow_imp.id(63536973922289202)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_name=>'Discounted Price A'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_discounted NUMBER;',
'    v_seq_id NUMBER;',
'    v_seq NUMBER;',
'    v_id NUMBER;',
'    v_bc VARCHAR(50);',
'    v_qty NUMBER;',
'BEGIN',
'BEGIN',
'    WITH discount_data AS (',
'    SELECT np028.discount_id AS discount_id, ',
'    NVL(CASE WHEN np08.type = ''Percent'' THEN nt02.price * (np028.discount_value/100)',
'        WHEN np08.type = ''Fixed'' THEN np028.discount_value ',
'        ELSE nt02.price END, 0) AS discounted_price',
'     FROM NPT028 np028, NPT032 np032, NPT008 np08, NPT009 np09, NIT001 nt01, NIT002 nt02',
'    WHERE np09.dba = :P81_DBA',
'      AND np08.discount_id = np028.discount_id',
'      AND np028.discount_id = np032.discount_id',
'      AND np09.customer_id = np032.customer_id',
'      AND np028.sic_id = nt01.sic_id',
'      AND nt01.item_id = nt02.item_id',
'      AND np08.date_to >= SYSDATE',
'      AND np08.date_from <= SYSDATE',
'      AND nt02.upc = :P81_BARCODE',
'UNION ALL',
'    SELECT np029.discount_id AS discount_id, ',
'    NVL(CASE WHEN np08.type = ''Percent'' THEN nt02.price * (np029.discount_value / 100)',
'            WHEN np08.type = ''Fixed'' THEN np029.discount_value ',
'            ELSE nt02.price END, 0) AS discounted_price',
'     FROM NPT029 np029, NPT032 np032, NPT008 np08, NPT009 np09, NIT001 nt01, NIT002 nt02',
'    WHERE np09.dba = :P81_DBA',
'      AND np08.discount_id = np029.discount_id',
'      AND np029.discount_id = np032.discount_id',
'      AND np09.customer_id = np032.customer_id',
'      AND np029.dept_id = nt01.dept_id',
'      AND nt01.item_id = nt02.item_id',
'      AND np08.date_to >= SYSDATE',
'      AND np08.date_from <= SYSDATE',
'      AND nt02.upc = :P81_BARCODE',
'UNION ALL',
'    SELECT np030.discount_id AS discount_id, ',
'    NVL(CASE WHEN np08.type = ''Percent'' THEN nt02.price * (np030.discount_value / 100)',
'            WHEN np08.type = ''Fixed'' THEN np030.discount_value ',
'            ELSE nt02.price END, 0) AS discounted_price',
'     FROM NPT030 np030, NPT032 np032, NPT008 np08, NPT009 np09, NIT001 nt01, NIT002 nt02',
'    WHERE np09.dba = :P81_DBA',
'      AND np08.discount_id = np030.discount_id',
'      AND np030.discount_id = np032.discount_id',
'      AND np09.customer_id = np032.customer_id',
'      AND np030.class_id = nt01.class_id',
'      AND nt01.item_id = nt02.item_id',
'      AND np08.date_to >= SYSDATE',
'      AND np08.date_from <= SYSDATE',
'      AND nt02.upc = :P81_BARCODE',
'UNION ALL',
'     SELECT DISTINCT 0 AS discount_id, NVL(nt02.price * (np09.standard_discount_value / 100), 0) AS discounted_price',
'      FROM NPT009 np09, NPT032 np032, NIT001 nt01, NIT002 nt02',
'     WHERE np09.dba = :P81_DBA',
'       AND nt02.upc = :P81_BARCODE',
'       AND np09.customer_id = np032.customer_id',
'       AND np09.class_id = nt01.class_id',
'       AND nt02.item_id = nt01.item_id',
')',
'    SELECT NVL(discount_id, 0), NVL(MAX(discounted_price), 0) AS discounted_price',
'      INTO v_id, v_discounted',
'      FROM discount_data',
'  GROUP BY discount_id',
'  ORDER BY discount_id',
'  OFFSET 1 ROWS',
'    FETCH NEXT 1 ROWS ONLY;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_id := -1;',
'END;',
'',
'BEGIN',
'    SELECT seq_id INTO v_seq',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_DISCOUNTS''',
'      AND n001 = NVL(v_id, 0)',
'      AND c001 = ''A'';',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq := 0; ',
'END;',
'',
'BEGIN',
'    SELECT seq_id, n001 INTO v_seq_id, v_qty',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_B''',
'      AND c006 = :P81_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq_id := 0;',
'END;',
'',
'BEGIN',
'    SELECT a.item_num INTO v_bc',
'    FROM NIT001 a, NIT002 b',
'    WHERE a.item_id = b.item_id',
'      AND b.upc = :P81_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_bc := NULL;',
'        END;',
'',
'    IF v_seq = 1 AND v_bc IS NOT NULL AND v_seq_id != 0 THEN',
'        apex_collection.update_member_attribute (',
'                p_collection_name => ''INVOICE_A'',',
'                p_seq => v_seq_id,',
'                p_attr_number => 4,',
'                p_number_value => v_discounted',
'                );',
'    ',
'    END IF;',
'',
'END;'))
,p_attribute_02=>'P81_BARCODE,P81_DBA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63537646647289209)
,p_event_id=>wwv_flow_imp.id(63536973922289202)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_name=>'Discounted Price B'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_discounted NUMBER;',
'    v_seq_id NUMBER;',
'    v_seq NUMBER;',
'    v_id NUMBER;',
'    v_bc VARCHAR(50);',
'    v_qty NUMBER;',
'BEGIN',
'BEGIN',
'    WITH discount_data AS (',
'    SELECT np028.discount_id AS discount_id, ',
'    NVL(CASE WHEN np08.type = ''Percent'' THEN nt02.price * (np028.discount_value / 100)',
'            WHEN np08.type = ''Fixed'' THEN np028.discount_value ',
'            ELSE nt02.price END, 0) AS discounted_price',
'     FROM NPT028 np028, NPT032 np032, NPT008 np08, NPT009 np09, NIT001 nt01, NIT002 nt02',
'    WHERE np09.dba = :P81_DBA',
'      AND np08.discount_id = np028.discount_id',
'      AND np028.discount_id = np032.discount_id',
'      AND np09.customer_id = np032.customer_id',
'      AND np028.sic_id = nt01.sic_id',
'      AND nt01.item_id = nt02.item_id',
'      AND np08.date_to >= SYSDATE',
'      AND np08.date_from <= SYSDATE',
'      AND nt02.upc = :P81_BARCODE',
'UNION ALL',
'    SELECT np029.discount_id AS discount_id, ',
'    NVL(CASE WHEN np08.type = ''Percent'' THEN nt02.price * (np029.discount_value / 100)',
'            WHEN np08.type = ''Fixed'' THEN np029.discount_value ',
'            ELSE nt02.price END, 0) AS discounted_price',
'     FROM NPT029 np029, NPT032 np032, NPT008 np08, NPT009 np09, NIT001 nt01, NIT002 nt02',
'    WHERE np09.dba = :P81_DBA',
'      AND np08.discount_id = np029.discount_id',
'      AND np029.discount_id = np032.discount_id',
'      AND np09.customer_id = np032.customer_id',
'      AND np029.dept_id = nt01.dept_id',
'      AND nt01.item_id = nt02.item_id',
'      AND np08.date_to >= SYSDATE',
'      AND np08.date_from <= SYSDATE',
'      AND nt02.upc = :P81_BARCODE',
'UNION ALL',
'    SELECT np030.discount_id AS discount_id, ',
'    NVL(CASE WHEN np08.type = ''Percent'' THEN nt02.price * (np030.discount_value / 100)',
'            WHEN np08.type = ''Fixed'' THEN np030.discount_value ',
'            ELSE nt02.price END, 0) AS discounted_price',
'     FROM NPT030 np030, NPT032 np032, NPT008 np08, NPT009 np09, NIT001 nt01, NIT002 nt02',
'    WHERE np09.dba = :P81_DBA',
'      AND np08.discount_id = np030.discount_id',
'      AND np030.discount_id = np032.discount_id',
'      AND np09.customer_id = np032.customer_id',
'      AND np030.class_id = nt01.class_id',
'      AND nt01.item_id = nt02.item_id',
'      AND np08.date_to >= SYSDATE',
'      AND np08.date_from <= SYSDATE',
'      AND nt02.upc = :P81_BARCODE',
'UNION ALL',
'     SELECT DISTINCT 0 AS discount_id, NVL(nt02.price * (np09.standard_discount_value / 100), 0) AS discounted_price',
'      FROM NPT009 np09, NPT032 np032, NIT001 nt01, NIT002 nt02',
'     WHERE np09.dba = :P81_DBA',
'       AND nt02.upc = :P81_BARCODE',
'       AND np09.customer_id = np032.customer_id',
'       AND np09.class_id = nt01.class_id',
'       AND nt02.item_id = nt01.item_id',
')',
'    SELECT NVL(discount_id, 0), NVL(MAX(discounted_price), 0) AS discounted_price',
'      INTO v_id, v_discounted',
'      FROM discount_data',
'  GROUP BY discount_id',
'  ORDER BY discount_id',
'  OFFSET 1 ROWS',
'    FETCH NEXT 1 ROWS ONLY;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_id := -1;',
'END;',
'',
'BEGIN',
'    SELECT seq_id INTO v_seq',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_DISCOUNTS''',
'      AND n001 = NVL(v_id, 0)',
'      AND c001 = ''B'';',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq := 0; ',
'END;',
'',
'BEGIN',
'    SELECT seq_id, n001 INTO v_seq_id, v_qty',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_B''',
'      AND c006 = :P81_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq_id := 0;',
'END;',
'',
'BEGIN',
'    SELECT a.item_num INTO v_bc',
'    FROM NIT001 a, NIT002 b',
'    WHERE a.item_id = b.item_id',
'      AND b.upc = :P81_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_bc := NULL;',
'        END;',
'',
'    IF v_seq = 2 AND v_bc IS NOT NULL AND v_seq_id != 0 THEN',
'        apex_collection.update_member_attribute (',
'                p_collection_name => ''INVOICE_B'',',
'                p_seq => v_seq_id,',
'                p_attr_number => 4,',
'                p_number_value => v_discounted',
'                );',
'    END IF;',
'',
'END;',
''))
,p_attribute_02=>'P81_BARCODE,P81_DBA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63537799564289210)
,p_event_id=>wwv_flow_imp.id(63536973922289202)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_name=>'Discounted Price C'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_discounted NUMBER;',
'    v_seq_id NUMBER;',
'    v_seq NUMBER;',
'    v_id NUMBER;',
'    v_bc VARCHAR(50);',
'    v_qty NUMBER;',
'BEGIN',
'BEGIN',
'    WITH discount_data AS (',
'    SELECT np028.discount_id AS discount_id, ',
'    NVL(CASE WHEN np08.type = ''Percent'' THEN nt02.price * (np028.discount_value / 100)',
'            WHEN np08.type = ''Fixed'' THEN np028.discount_value ',
'            ELSE nt02.price END, 0) AS discounted_price',
'     FROM NPT028 np028, NPT032 np032, NPT008 np08, NPT009 np09, NIT001 nt01, NIT002 nt02',
'    WHERE np09.dba = :P81_DBA',
'      AND np08.discount_id = np028.discount_id',
'      AND np028.discount_id = np032.discount_id',
'      AND np09.customer_id = np032.customer_id',
'      AND np028.sic_id = nt01.sic_id',
'      AND nt01.item_id = nt02.item_id',
'      AND np08.date_to >= SYSDATE',
'      AND np08.date_from <= SYSDATE',
'      AND nt02.upc = :P81_BARCODE',
'UNION ALL',
'    SELECT np029.discount_id AS discount_id, ',
'    NVL(CASE WHEN np08.type = ''Percent'' THEN nt02.price * (np029.discount_value / 100)',
'            WHEN np08.type = ''Fixed'' THEN np029.discount_value ',
'            ELSE nt02.price END, 0) AS discounted_price',
'     FROM NPT029 np029, NPT032 np032, NPT008 np08, NPT009 np09, NIT001 nt01, NIT002 nt02',
'    WHERE np09.dba = :P81_DBA',
'      AND np08.discount_id = np029.discount_id',
'      AND np029.discount_id = np032.discount_id',
'      AND np09.customer_id = np032.customer_id',
'      AND np029.dept_id = nt01.dept_id',
'      AND nt01.item_id = nt02.item_id',
'      AND np08.date_to >= SYSDATE',
'      AND np08.date_from <= SYSDATE',
'      AND nt02.upc = :P81_BARCODE',
'UNION ALL',
'    SELECT np030.discount_id AS discount_id, ',
'    NVL(CASE WHEN np08.type = ''Percent'' THEN nt02.price * (np030.discount_value / 100)',
'            WHEN np08.type = ''Fixed'' THEN np030.discount_value ',
'            ELSE nt02.price END, 0) AS discounted_price',
'     FROM NPT030 np030, NPT032 np032, NPT008 np08, NPT009 np09, NIT001 nt01, NIT002 nt02',
'    WHERE np09.dba = :P81_DBA',
'      AND np08.discount_id = np030.discount_id',
'      AND np030.discount_id = np032.discount_id',
'      AND np09.customer_id = np032.customer_id',
'      AND np030.class_id = nt01.class_id',
'      AND nt01.item_id = nt02.item_id',
'      AND np08.date_to >= SYSDATE',
'      AND np08.date_from <= SYSDATE',
'      AND nt02.upc = :P81_BARCODE',
'UNION ALL',
'     SELECT DISTINCT 0 AS discount_id, NVL(nt02.price * (np09.standard_discount_value / 100), 0) AS discounted_price',
'      FROM NPT009 np09, NPT032 np032, NIT001 nt01, NIT002 nt02',
'     WHERE np09.dba = :P81_DBA',
'       AND nt02.upc = :P81_BARCODE',
'       AND np09.customer_id = np032.customer_id',
'       AND np09.class_id = nt01.class_id',
'       AND nt02.item_id = nt01.item_id',
')',
'    SELECT NVL(discount_id, 0), NVL(MAX(discounted_price), 0) AS discounted_price',
'      INTO v_id, v_discounted',
'      FROM discount_data',
'  GROUP BY discount_id',
'  ORDER BY discount_id',
'  OFFSET 1 ROWS',
'    FETCH NEXT 1 ROWS ONLY;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_id := -1;',
'END;',
'',
'BEGIN',
'    SELECT seq_id INTO v_seq',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_DISCOUNTS''',
'      AND n001 = NVL(v_id, 0)',
'      AND c001 = ''C'';',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq := 0; ',
'END;',
'',
'BEGIN',
'    SELECT seq_id, n001 INTO v_seq_id, v_qty',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_B''',
'      AND c006 = :P81_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq_id := 0;',
'END;',
'',
'BEGIN',
'    SELECT a.item_num INTO v_bc',
'    FROM NIT001 a, NIT002 b',
'    WHERE a.item_id = b.item_id',
'      AND b.upc = :P81_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_bc := NULL;',
'        END;',
'',
'    IF v_seq = 3 AND v_bc IS NOT NULL AND v_seq_id != 0 THEN',
'        apex_collection.update_member_attribute (',
'                p_collection_name => ''INVOICE_C'',',
'                p_seq => v_seq_id,',
'                p_attr_number => 4,',
'                p_number_value => v_discounted',
'                );',
'    END IF;',
'',
'END;',
''))
,p_attribute_02=>'P81_BARCODE,P81_DBA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63537819365289211)
,p_event_id=>wwv_flow_imp.id(63536973922289202)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_name=>'Discounted Price D'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_price NUMBER;',
'    v_seq_id NUMBER;',
'    v_seq NUMBER;',
'    v_id NUMBER := 0;',
'    v_bc VARCHAR(50);',
'BEGIN',
'BEGIN',
'    WITH discount_data AS (',
'    SELECT np028.discount_id AS discount_id, ',
'    NVL(CASE WHEN np08.type = ''Percent'' THEN nt02.price * (np028.discount_value / 100)',
'            WHEN np08.type = ''Fixed'' THEN np028.discount_value ',
'            ELSE nt02.price END, 0) AS discounted_price',
'     FROM NPT028 np028, NPT032 np032, NPT008 np08, NPT009 np09, NIT001 nt01, NIT002 nt02',
'    WHERE np09.dba = :P81_DBA',
'      AND np08.discount_id = np028.discount_id',
'      AND np028.discount_id = np032.discount_id',
'      AND np09.customer_id = np032.customer_id',
'      AND np028.sic_id = nt01.sic_id',
'      AND nt01.item_id = nt02.item_id',
'      AND np08.date_to >= SYSDATE',
'      AND np08.date_from <= SYSDATE',
'      AND nt02.upc = :P81_BARCODE',
'UNION ALL',
'    SELECT np029.discount_id AS discount_id, ',
'    NVL(CASE WHEN np08.type = ''Percent'' THEN nt02.price * (np029.discount_value / 100)',
'            WHEN np08.type = ''Fixed'' THEN np029.discount_value ',
'            ELSE nt02.price END, 0) AS discounted_price',
'     FROM NPT029 np029, NPT032 np032, NPT008 np08, NPT009 np09, NIT001 nt01, NIT002 nt02',
'    WHERE np09.dba = :P81_DBA',
'      AND np08.discount_id = np029.discount_id',
'      AND np029.discount_id = np032.discount_id',
'      AND np09.customer_id = np032.customer_id',
'      AND np029.dept_id = nt01.dept_id',
'      AND nt01.item_id = nt02.item_id',
'      AND np08.date_to >= SYSDATE',
'      AND np08.date_from <= SYSDATE',
'      AND nt02.upc = :P81_BARCODE',
'UNION ALL',
'    SELECT np030.discount_id AS discount_id, ',
'    NVL(CASE WHEN np08.type = ''Percent'' THEN nt02.price * (np030.discount_value / 100)',
'            WHEN np08.type = ''Fixed'' THEN np030.discount_value ',
'            ELSE nt02.price END, 0) AS discounted_price',
'     FROM NPT030 np030, NPT032 np032, NPT008 np08, NPT009 np09, NIT001 nt01, NIT002 nt02',
'    WHERE np09.dba = :P81_DBA',
'      AND np08.discount_id = np030.discount_id',
'      AND np030.discount_id = np032.discount_id',
'      AND np09.customer_id = np032.customer_id',
'      AND np030.class_id = nt01.class_id',
'      AND nt01.item_id = nt02.item_id',
'      AND np08.date_to >= SYSDATE',
'      AND np08.date_from <= SYSDATE',
'      AND nt02.upc = :P81_BARCODE',
'UNION ALL',
'     SELECT DISTINCT 0 AS discount_id, NVL(nt02.price * (np09.standard_discount_value / 100), 0) AS discounted_price',
'      FROM NPT009 np09, NPT032 np032, NIT001 nt01, NIT002 nt02',
'     WHERE np09.dba = :P81_DBA',
'       AND nt02.upc = :P81_BARCODE',
'       AND np09.customer_id = np032.customer_id',
'       AND np09.class_id = nt01.class_id',
'       AND nt02.item_id = nt01.item_id',
')',
'    SELECT NVL(discount_id, 0), NVL(MAX(discounted_price), 0) AS discounted_price',
'      INTO v_id, v_price',
'      FROM discount_data',
'  GROUP BY discount_id',
'  ORDER BY discount_id',
'  OFFSET 1 ROWS',
'    FETCH NEXT 1 ROWS ONLY;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_id := -1;',
'END;',
'',
'BEGIN',
'    SELECT seq_id INTO v_seq',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_DISCOUNTS''',
'      AND n001 = NVL(v_id, 0)',
'      AND c001 = ''D'';',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq := 0; ',
'END;',
'',
'BEGIN',
'    SELECT seq_id INTO v_seq_id',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_B''',
'      AND c006 = :P81_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq_id := 0;',
'END;',
'',
'BEGIN',
'    SELECT a.item_num INTO v_bc',
'    FROM NIT001 a, NIT002 b',
'    WHERE a.item_id = b.item_id',
'      AND b.upc = :P81_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_bc := NULL;',
'        END;',
'',
'    IF v_seq = 4 AND v_bc IS NOT NULL AND v_seq_id != 0 THEN',
'        apex_collection.update_member_attribute (',
'                p_collection_name => ''INVOICE_D'',',
'                p_seq => v_seq_id,',
'                p_attr_number => 4,',
'                p_number_value => v_price',
'                );',
'    END IF;',
'',
'END;',
''))
,p_attribute_02=>'P81_BARCODE,P81_DBA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63537914512289212)
,p_event_id=>wwv_flow_imp.id(63536973922289202)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'Y'
,p_name=>'Sub-Total'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P81_SUB'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH COLLECTION_SUMS AS (',
'    SELECT ''INVOICE_A'' AS collection_name, SUM(n002 * n001) AS SUB_TOTAL',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_A''',
' ',
'    UNION ALL',
' ',
'    SELECT ''INVOICE_B'' AS collection_name, SUM(n002 * n001) AS SUB_TOTAL',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_B''',
' ',
'    UNION ALL',
' ',
'    SELECT ''INVOICE_C'' AS collection_name, SUM(n002 * n001) AS SUB_TOTAL',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_C''',
' ',
'    UNION ALL',
' ',
'    SELECT ''INVOICE_D'' AS collection_name, SUM(n002 * n001) AS SUB_TOTAL',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_D''',
'),',
'LOWEST_SUM AS (',
'    SELECT collection_name',
'    FROM COLLECTION_SUMS',
'    WHERE SUB_TOTAL = (SELECT MIN(SUB_TOTAL) FROM COLLECTION_SUMS)',
'    FETCH FIRST 1 ROW ONLY',
')',
'SELECT TO_CHAR(SUM(n002 * n001), ''FM999G999G999G999D00'' ) ',
'FROM apex_collections',
'WHERE collection_name IN (SELECT collection_name FROM LOWEST_SUM);'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63538004462289213)
,p_event_id=>wwv_flow_imp.id(63536973922289202)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'Y'
,p_name=>'Discount'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P81_DISCOUNT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH COLLECTION_SUMS AS (',
'    SELECT ''INVOICE_A'' AS collection_name, SUM(n004 * n001) AS TOTAL_INVOICE',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_A''',
' ',
'    UNION ALL',
' ',
'    SELECT ''INVOICE_B'' AS collection_name, SUM(n004 * n001) AS TOTAL_INVOICE',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_B''',
' ',
'    UNION ALL',
' ',
'    SELECT ''INVOICE_C'' AS collection_name, SUM(n004 * n001) AS TOTAL_INVOICE',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_C''',
' ',
'    UNION ALL',
' ',
'    SELECT ''INVOICE_D'' AS collection_name, SUM(n004 * n001) AS TOTAL_INVOICE',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_D''',
'),',
'LOWEST_SUM AS (',
'    SELECT collection_name',
'    FROM COLLECTION_SUMS',
'    WHERE TOTAL_INVOICE = (SELECT MAX(TOTAL_INVOICE) FROM COLLECTION_SUMS)',
'    FETCH FIRST 1 ROW ONLY',
')',
'SELECT TO_CHAR(SUM(n004 * n001), ''FM999G999G999G999D00'' ) ',
'FROM apex_collections',
'WHERE collection_name IN (SELECT collection_name FROM LOWEST_SUM);'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63538127101289214)
,p_event_id=>wwv_flow_imp.id(63536973922289202)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'Y'
,p_name=>'Total'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P81_TOTAL'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'TO_CHAR(NVL(TO_NUMBER(REPLACE(REPLACE(NVL(:P81_SUB, 0), ''$'', ''''), '','', '''')) - TO_NUMBER(REPLACE(REPLACE(NVL(:P81_DISCOUNT, 0), ''$'', ''''), '','', '''')), 0), ''FM999G999G999G990D00'' ) '
,p_attribute_07=>'P81_SUB,P81_DISCOUNT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63538210709289215)
,p_event_id=>wwv_flow_imp.id(63536973922289202)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P81_SUB,P81_DISCOUNT,P81_TOTAL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(63538471703289217)
,p_name=>'Scan Item 3'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P81_BARCODE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63538561304289218)
,p_event_id=>wwv_flow_imp.id(63538471703289217)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Scan Item'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_seq_id number;',
'    v_item_id number;',
'    v_item_num VARCHAR2(50);',
'    v_product_name varchar(35);    ',
'    v_price number;',
'    v_qty number;',
'    v_total number;',
'    v_brand varchar(10);',
'    v_uom varchar(10);',
'    v_discounted NUMBER;',
'',
'',
'BEGIN',
'    BEGIN',
'        SELECT a.item_num, a.item_id, a.item_desc, b.price, b.price total, UPPER(c.uom_code), d.brand_code INTO v_item_num, v_item_id, v_product_name, v_price, v_total, v_uom, v_brand',
'          FROM NIT001 a, NIT002 b, NIM026 c, NIM022 d',
'         WHERE a.item_id = b.item_id',
'           AND b.uom_id = c.uom_id',
'           AND a.brand_id = d.brand_id',
'           AND b.upc = :P81_BARCODE;      ',
'',
'        SELECT seq_id, n001, n004 INTO v_seq_id, v_qty, v_discounted',
'          FROM apex_collections',
'         WHERE collection_name = ''INVOICE_C''',
'           AND c006 = :P81_BARCODE;',
'        EXCEPTION WHEN NO_DATA_FOUND THEN v_seq_id := 0; END;',
'',
'        IF v_seq_id != 0 THEN',
'            v_qty := v_qty + 1;',
'            v_total := v_price * v_qty;',
'            v_discounted := v_discounted * v_qty;',
'        ',
'            apex_collection.update_member_attribute (',
'                p_collection_name => ''INVOICE_C'',',
'                p_seq => v_seq_id,',
'                p_attr_number => 1,',
'                p_number_value => v_qty',
'                ); ',
'',
'            apex_collection.update_member_attribute (',
'                p_collection_name => ''INVOICE_C'',',
'                p_seq => v_seq_id,',
'                p_attr_number => 5,',
'                p_number_value => v_total',
'                );',
'',
'        ELSIF v_seq_id = 0 AND v_item_id IS NOT NULL THEN',
'            apex_collection.add_member(',
'                p_collection_name => ''INVOICE_C'',',
'                p_c001 => v_item_num,',
'                p_c002 => v_brand,',
'                p_c003 => v_product_name,',
'                p_n001 => 1,',
'                p_n002 => v_price,',
'                p_c004 => v_uom,',
'                p_n005 => v_total,',
'                p_c006 => :P81_BARCODE,',
'                p_c007 => v_item_id);',
'END IF;',
'END;'))
,p_attribute_02=>'P81_BARCODE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63538623308289219)
,p_event_id=>wwv_flow_imp.id(63538471703289217)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'Discount A'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_disc NUMBER;',
'    v_seq_id NUMBER;',
'    v_seq NUMBER;',
'    v_id NUMBER := 0;',
'    v_bc VARCHAR(50);',
'BEGIN',
'BEGIN',
'    WITH discount_data AS (',
'    SELECT npt028.discount_id, npt028.discount_value',
'    FROM NPT028 npt028',
'    JOIN NPT008 npt008 ON npt028.discount_id = npt008.discount_id',
'    JOIN NPT032 npt032 ON npt028.discount_id = npt032.discount_id',
'    JOIN NPT009 npt009 ON npt009.customer_id = npt032.customer_id',
'    JOIN NIT001 nit001 ON npt028.sic_id = nit001.sic_id',
'    JOIN NIT002 nit002 ON nit001.item_id = nit002.item_id',
'   WHERE npt009.dba = :P81_DBA',
'     AND npt008.date_to >= SYSDATE',
'     AND npt008.date_from <= SYSDATE',
'     AND nit002.upc = :P81_BARCODE',
'UNION ALL',
'  SELECT npt029.discount_id, npt029.discount_value',
'    FROM NPT029 npt029',
'    JOIN NPT008 npt008 ON npt029.discount_id = npt008.discount_id',
'    JOIN NPT032 npt032 ON npt029.discount_id = npt032.discount_id',
'    JOIN NPT009 npt009 ON npt009.customer_id = npt032.customer_id',
'    JOIN NIT001 nit001 ON npt029.dept_id = nit001.dept_id',
'    JOIN NIT002 nit002 ON nit001.item_id = nit002.item_id',
'   WHERE npt009.dba = :P81_DBA',
'     AND npt008.date_to >= SYSDATE',
'     AND npt008.date_from <= SYSDATE',
'     AND nit002.upc = :P81_BARCODE',
'UNION ALL',
'    SELECT npt030.discount_id, npt030.discount_value',
'    FROM NPT030 npt030',
'    JOIN NPT008 npt008 ON npt030.discount_id = npt008.discount_id',
'    JOIN NPT032 npt032 ON npt030.discount_id = npt032.discount_id',
'    JOIN NPT009 npt009 ON npt009.customer_id = npt032.customer_id',
'    JOIN NIT001 nit001 ON npt030.class_id = nit001.class_id',
'    JOIN NIT002 nit002 ON nit001.item_id = nit002.item_id',
'   WHERE npt009.dba = :P81_DBA',
'     AND npt008.date_to >= SYSDATE',
'     AND npt008.date_from <= SYSDATE     ',
'     AND nit002.upc = :P81_BARCODE',
'UNION ALL',
'    SELECT DISTINCT 0, np09.standard_discount_value',
'     FROM NPT009 np09, NIT001 nt01, NPT032 np032, NIT002 nt02',
'     WHERE np09.class_id = nt01.class_id',
'      AND np09.customer_id = np032.customer_id ',
'      AND np09.dba = :P81_DBA',
'      AND nt01.item_id = nt02.item_id',
'      AND nt02.upc = :P81_BARCODE',
')',
'',
'    SELECT NVL(discount_id, 0), NVL(MAX(discount_value), 0) AS max_discount_value',
'    INTO v_id, v_disc',
'    FROM discount_data',
'    GROUP BY discount_id',
'    ORDER BY discount_id',
'    OFFSET 2 ROWS',
'    FETCH NEXT 1 ROWS ONLY;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_id := -1;',
'END;',
'',
'BEGIN',
'    SELECT seq_id INTO v_seq',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_DISCOUNTS''',
'      AND n001 = NVL(v_id, 0)',
'      AND c001 = ''A'';',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq := 0; ',
'END;',
'',
'BEGIN',
'    SELECT seq_id INTO v_seq_id',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_C''',
'      AND c006 = :P81_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq_id := 0;',
'END;',
'',
'BEGIN',
'    SELECT a.item_num INTO v_bc',
'    FROM NIT001 a, NIT002 b',
'    WHERE a.item_id = b.item_id',
'      AND b.upc = :P81_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_bc := NULL;',
'        END;',
'',
'    IF v_seq = 1 AND v_bc IS NOT NULL AND v_seq_id != 0 THEN',
'        apex_collection.update_member_attribute (',
'                p_collection_name => ''INVOICE_A'',',
'                p_seq => v_seq_id,',
'                p_attr_number => 3,',
'                p_number_value => v_disc',
'                );',
'    ',
'    END IF;',
'',
'END;',
''))
,p_attribute_02=>'P81_BARCODE,P81_DBA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63538770811289220)
,p_event_id=>wwv_flow_imp.id(63538471703289217)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'Discount B'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_disc NUMBER;',
'    v_seq_id NUMBER;',
'    v_seq NUMBER;',
'    v_id NUMBER := 0;',
'    v_bc VARCHAR(50);',
'BEGIN',
'BEGIN',
'    WITH discount_data AS (',
'    SELECT npt028.discount_id, npt028.discount_value',
'    FROM NPT028 npt028',
'    JOIN NPT008 npt008 ON npt028.discount_id = npt008.discount_id',
'    JOIN NPT032 npt032 ON npt028.discount_id = npt032.discount_id',
'    JOIN NPT009 npt009 ON npt009.customer_id = npt032.customer_id',
'    JOIN NIT001 nit001 ON npt028.sic_id = nit001.sic_id',
'    JOIN NIT002 nit002 ON nit001.item_id = nit002.item_id',
'   WHERE npt009.dba = :P81_DBA',
'     AND npt008.date_to >= SYSDATE',
'     AND npt008.date_from <= SYSDATE',
'     AND nit002.upc = :P81_BARCODE',
'UNION ALL',
'  SELECT npt029.discount_id, npt029.discount_value',
'    FROM NPT029 npt029',
'    JOIN NPT008 npt008 ON npt029.discount_id = npt008.discount_id',
'    JOIN NPT032 npt032 ON npt029.discount_id = npt032.discount_id',
'    JOIN NPT009 npt009 ON npt009.customer_id = npt032.customer_id',
'    JOIN NIT001 nit001 ON npt029.dept_id = nit001.dept_id',
'    JOIN NIT002 nit002 ON nit001.item_id = nit002.item_id',
'   WHERE npt009.dba = :P81_DBA',
'     AND npt008.date_to >= SYSDATE',
'     AND npt008.date_from <= SYSDATE',
'     AND nit002.upc = :P81_BARCODE',
'UNION ALL',
'    SELECT npt030.discount_id, npt030.discount_value',
'    FROM NPT030 npt030',
'    JOIN NPT008 npt008 ON npt030.discount_id = npt008.discount_id',
'    JOIN NPT032 npt032 ON npt030.discount_id = npt032.discount_id',
'    JOIN NPT009 npt009 ON npt009.customer_id = npt032.customer_id',
'    JOIN NIT001 nit001 ON npt030.class_id = nit001.class_id',
'    JOIN NIT002 nit002 ON nit001.item_id = nit002.item_id',
'   WHERE npt009.dba = :P81_DBA',
'     AND npt008.date_to >= SYSDATE',
'     AND npt008.date_from <= SYSDATE     ',
'     AND nit002.upc = :P81_BARCODE',
'UNION ALL',
'    SELECT DISTINCT 0, np09.standard_discount_value',
'     FROM NPT009 np09, NIT001 nt01, NPT032 np032, NIT002 nt02',
'     WHERE np09.class_id = nt01.class_id',
'      AND np09.customer_id = np032.customer_id ',
'      AND np09.dba = :P81_DBA',
'      AND nt01.item_id = nt02.item_id',
'      AND nt02.upc = :P81_BARCODE',
')',
'',
'    SELECT NVL(discount_id, 0), NVL(MAX(discount_value), 0) AS max_discount_value',
'    INTO v_id, v_disc',
'    FROM discount_data',
'    GROUP BY discount_id',
'    ORDER BY discount_id',
'    OFFSET 2 ROWS',
'    FETCH NEXT 1 ROWS ONLY;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_id := -1;',
'END;',
'',
'BEGIN',
'    SELECT seq_id INTO v_seq',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_DISCOUNTS''',
'      AND n001 = NVL(v_id, 0)',
'      AND c001 = ''B'';',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq := 0; ',
'END;',
'',
'BEGIN',
'    SELECT seq_id INTO v_seq_id',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_C''',
'      AND c006 = :P81_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq_id := 0;',
'END;',
'',
'BEGIN',
'    SELECT a.item_num INTO v_bc',
'    FROM NIT001 a, NIT002 b',
'    WHERE a.item_id = b.item_id',
'      AND b.upc = :P81_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_bc := NULL;',
'        END;',
'',
'    IF v_seq = 2 AND v_bc IS NOT NULL AND v_seq_id != 0 THEN',
'        apex_collection.update_member_attribute (',
'                p_collection_name => ''INVOICE_B'',',
'                p_seq => v_seq_id,',
'                p_attr_number => 3,',
'                p_number_value => v_disc',
'                );',
'    END IF;',
'',
'END;',
''))
,p_attribute_02=>'P81_BARCODE,P81_DBA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63538827207289221)
,p_event_id=>wwv_flow_imp.id(63538471703289217)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>'Discount C'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_disc NUMBER;',
'    v_seq_id NUMBER;',
'    v_seq NUMBER;',
'    v_id NUMBER := 0;',
'    v_bc VARCHAR(50);',
'BEGIN',
'BEGIN',
'    WITH discount_data AS (',
'    SELECT npt028.discount_id, npt028.discount_value',
'    FROM NPT028 npt028',
'    JOIN NPT008 npt008 ON npt028.discount_id = npt008.discount_id',
'    JOIN NPT032 npt032 ON npt028.discount_id = npt032.discount_id',
'    JOIN NPT009 npt009 ON npt009.customer_id = npt032.customer_id',
'    JOIN NIT001 nit001 ON npt028.sic_id = nit001.sic_id',
'    JOIN NIT002 nit002 ON nit001.item_id = nit002.item_id',
'   WHERE npt009.dba = :P81_DBA',
'     AND npt008.date_to >= SYSDATE',
'     AND npt008.date_from <= SYSDATE',
'     AND nit002.upc = :P81_BARCODE',
'UNION ALL',
'  SELECT npt029.discount_id, npt029.discount_value',
'    FROM NPT029 npt029',
'    JOIN NPT008 npt008 ON npt029.discount_id = npt008.discount_id',
'    JOIN NPT032 npt032 ON npt029.discount_id = npt032.discount_id',
'    JOIN NPT009 npt009 ON npt009.customer_id = npt032.customer_id',
'    JOIN NIT001 nit001 ON npt029.dept_id = nit001.dept_id',
'    JOIN NIT002 nit002 ON nit001.item_id = nit002.item_id',
'   WHERE npt009.dba = :P81_DBA',
'     AND npt008.date_to >= SYSDATE',
'     AND npt008.date_from <= SYSDATE',
'     AND nit002.upc = :P81_BARCODE',
'UNION ALL',
'    SELECT npt030.discount_id, npt030.discount_value',
'    FROM NPT030 npt030',
'    JOIN NPT008 npt008 ON npt030.discount_id = npt008.discount_id',
'    JOIN NPT032 npt032 ON npt030.discount_id = npt032.discount_id',
'    JOIN NPT009 npt009 ON npt009.customer_id = npt032.customer_id',
'    JOIN NIT001 nit001 ON npt030.class_id = nit001.class_id',
'    JOIN NIT002 nit002 ON nit001.item_id = nit002.item_id',
'   WHERE npt009.dba = :P81_DBA',
'     AND npt008.date_to >= SYSDATE',
'     AND npt008.date_from <= SYSDATE     ',
'     AND nit002.upc = :P81_BARCODE',
'UNION ALL',
'    SELECT DISTINCT 0, np09.standard_discount_value',
'     FROM NPT009 np09, NIT001 nt01, NPT032 np032, NIT002 nt02',
'     WHERE np09.class_id = nt01.class_id',
'      AND np09.customer_id = np032.customer_id ',
'      AND np09.dba = :P81_DBA',
'      AND nt01.item_id = nt02.item_id',
'      AND nt02.upc = :P81_BARCODE',
')',
'',
'    SELECT NVL(discount_id, 0), NVL(MAX(discount_value), 0) AS max_discount_value',
'    INTO v_id, v_disc',
'    FROM discount_data',
'    GROUP BY discount_id',
'    ORDER BY discount_id',
'    OFFSET 2 ROWS',
'    FETCH NEXT 1 ROWS ONLY;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_id := -1;',
'END;',
'',
'BEGIN',
'    SELECT seq_id INTO v_seq',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_DISCOUNTS''',
'      AND n001 = NVL(v_id, 0)',
'      AND c001 = ''C'';',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq := 0; ',
'END;',
'',
'BEGIN',
'    SELECT seq_id INTO v_seq_id',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_C''',
'      AND c006 = :P81_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq_id := 0;',
'END;',
'',
'BEGIN',
'    SELECT a.item_num INTO v_bc',
'    FROM NIT001 a, NIT002 b',
'    WHERE a.item_id = b.item_id',
'      AND b.upc = :P81_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_bc := NULL;',
'        END;',
'',
'    IF v_seq = 3 AND v_bc IS NOT NULL AND v_seq_id != 0 THEN',
'        apex_collection.update_member_attribute (',
'                p_collection_name => ''INVOICE_C'',',
'                p_seq => v_seq_id,',
'                p_attr_number => 3,',
'                p_number_value => v_disc',
'                );',
'    END IF;',
'',
'END;',
''))
,p_attribute_02=>'P81_BARCODE,P81_DBA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63538969769289222)
,p_event_id=>wwv_flow_imp.id(63538471703289217)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_name=>'Discount D'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_disc NUMBER;',
'    v_seq_id NUMBER;',
'    v_seq NUMBER;',
'    v_id NUMBER := 0;',
'    v_bc VARCHAR(50);',
'BEGIN',
'BEGIN',
'    WITH discount_data AS (',
'    SELECT npt028.discount_id, npt028.discount_value',
'    FROM NPT028 npt028',
'    JOIN NPT008 npt008 ON npt028.discount_id = npt008.discount_id',
'    JOIN NPT032 npt032 ON npt028.discount_id = npt032.discount_id',
'    JOIN NPT009 npt009 ON npt009.customer_id = npt032.customer_id',
'    JOIN NIT001 nit001 ON npt028.sic_id = nit001.sic_id',
'    JOIN NIT002 nit002 ON nit001.item_id = nit002.item_id',
'   WHERE npt009.dba = :P81_DBA',
'     AND npt008.date_to >= SYSDATE',
'     AND npt008.date_from <= SYSDATE',
'     AND nit002.upc = :P81_BARCODE',
'UNION ALL',
'  SELECT npt029.discount_id, npt029.discount_value',
'    FROM NPT029 npt029',
'    JOIN NPT008 npt008 ON npt029.discount_id = npt008.discount_id',
'    JOIN NPT032 npt032 ON npt029.discount_id = npt032.discount_id',
'    JOIN NPT009 npt009 ON npt009.customer_id = npt032.customer_id',
'    JOIN NIT001 nit001 ON npt029.dept_id = nit001.dept_id',
'    JOIN NIT002 nit002 ON nit001.item_id = nit002.item_id',
'   WHERE npt009.dba = :P81_DBA',
'     AND npt008.date_to >= SYSDATE',
'     AND npt008.date_from <= SYSDATE',
'     AND nit002.upc = :P81_BARCODE',
'UNION ALL',
'    SELECT npt030.discount_id, npt030.discount_value',
'    FROM NPT030 npt030',
'    JOIN NPT008 npt008 ON npt030.discount_id = npt008.discount_id',
'    JOIN NPT032 npt032 ON npt030.discount_id = npt032.discount_id',
'    JOIN NPT009 npt009 ON npt009.customer_id = npt032.customer_id',
'    JOIN NIT001 nit001 ON npt030.class_id = nit001.class_id',
'    JOIN NIT002 nit002 ON nit001.item_id = nit002.item_id',
'   WHERE npt009.dba = :P81_DBA',
'     AND npt008.date_to >= SYSDATE',
'     AND npt008.date_from <= SYSDATE     ',
'     AND nit002.upc = :P81_BARCODE',
'UNION ALL',
'    SELECT DISTINCT 0, np09.standard_discount_value',
'     FROM NPT009 np09, NIT001 nt01, NPT032 np032, NIT002 nt02',
'     WHERE np09.class_id = nt01.class_id',
'      AND np09.customer_id = np032.customer_id ',
'      AND np09.dba = :P81_DBA',
'      AND nt01.item_id = nt02.item_id',
'      AND nt02.upc = :P81_BARCODE',
')',
'    SELECT NVL(discount_id, 0), NVL(MAX(discount_value), 0) AS max_discount_value',
'    INTO v_id, v_disc',
'    FROM discount_data',
'    GROUP BY discount_id',
'    ORDER BY discount_id',
'    OFFSET 2 ROWS',
'    FETCH NEXT 1 ROWS ONLY;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_id := -1;',
'END;',
'',
'BEGIN',
'    SELECT seq_id INTO v_seq',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_DISCOUNTS''',
'      AND n001 = NVL(v_id, 0)',
'      AND c001 = ''D'';',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq := 0; ',
'END;',
'',
'BEGIN',
'    SELECT seq_id INTO v_seq_id',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_C''',
'      AND c006 = :P81_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq_id := 0;',
'END;',
'',
'BEGIN',
'    SELECT a.item_num INTO v_bc',
'    FROM NIT001 a, NIT002 b',
'    WHERE a.item_id = b.item_id',
'      AND b.upc = :P81_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_bc := NULL;',
'        END;',
'',
'    IF v_seq = 4 AND v_bc IS NOT NULL AND v_seq_id != 0 THEN',
'        apex_collection.update_member_attribute (',
'                p_collection_name => ''INVOICE_D'',',
'                p_seq => v_seq_id,',
'                p_attr_number => 3,',
'                p_number_value => v_disc',
'                );',
'    END IF;',
'END;'))
,p_attribute_02=>'P81_BARCODE,P81_DBA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63539048616289223)
,p_event_id=>wwv_flow_imp.id(63538471703289217)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_name=>'Discounted Price A'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_discounted NUMBER;',
'    v_seq_id NUMBER;',
'    v_seq NUMBER;',
'    v_id NUMBER;',
'    v_bc VARCHAR(50);',
'    v_qty NUMBER;',
'BEGIN',
'BEGIN',
'    WITH discount_data AS (',
'    SELECT np028.discount_id AS discount_id, ',
'    NVL(CASE WHEN np08.type = ''Percent'' THEN nt02.price * (np028.discount_value/100)',
'        WHEN np08.type = ''Fixed'' THEN np028.discount_value ',
'        ELSE nt02.price END, 0) AS discounted_price',
'     FROM NPT028 np028, NPT032 np032, NPT008 np08, NPT009 np09, NIT001 nt01, NIT002 nt02',
'    WHERE np09.dba = :P81_DBA',
'      AND np08.discount_id = np028.discount_id',
'      AND np028.discount_id = np032.discount_id',
'      AND np09.customer_id = np032.customer_id',
'      AND np028.sic_id = nt01.sic_id',
'      AND nt01.item_id = nt02.item_id',
'      AND np08.date_to >= SYSDATE',
'      AND np08.date_from <= SYSDATE',
'      AND nt02.upc = :P81_BARCODE',
'UNION ALL',
'    SELECT np029.discount_id AS discount_id, ',
'    NVL(CASE WHEN np08.type = ''Percent'' THEN nt02.price * (np029.discount_value / 100)',
'            WHEN np08.type = ''Fixed'' THEN np029.discount_value ',
'            ELSE nt02.price END, 0) AS discounted_price',
'     FROM NPT029 np029, NPT032 np032, NPT008 np08, NPT009 np09, NIT001 nt01, NIT002 nt02',
'    WHERE np09.dba = :P81_DBA',
'      AND np08.discount_id = np029.discount_id',
'      AND np029.discount_id = np032.discount_id',
'      AND np09.customer_id = np032.customer_id',
'      AND np029.dept_id = nt01.dept_id',
'      AND nt01.item_id = nt02.item_id',
'      AND np08.date_to >= SYSDATE',
'      AND np08.date_from <= SYSDATE',
'      AND nt02.upc = :P81_BARCODE',
'UNION ALL',
'    SELECT np030.discount_id AS discount_id, ',
'    NVL(CASE WHEN np08.type = ''Percent'' THEN nt02.price * (np030.discount_value / 100)',
'            WHEN np08.type = ''Fixed'' THEN np030.discount_value ',
'            ELSE nt02.price END, 0) AS discounted_price',
'     FROM NPT030 np030, NPT032 np032, NPT008 np08, NPT009 np09, NIT001 nt01, NIT002 nt02',
'    WHERE np09.dba = :P81_DBA',
'      AND np08.discount_id = np030.discount_id',
'      AND np030.discount_id = np032.discount_id',
'      AND np09.customer_id = np032.customer_id',
'      AND np030.class_id = nt01.class_id',
'      AND nt01.item_id = nt02.item_id',
'      AND np08.date_to >= SYSDATE',
'      AND np08.date_from <= SYSDATE',
'      AND nt02.upc = :P81_BARCODE',
'UNION ALL',
'     SELECT DISTINCT 0 AS discount_id, NVL(nt02.price * (np09.standard_discount_value / 100), 0) AS discounted_price',
'      FROM NPT009 np09, NPT032 np032, NIT001 nt01, NIT002 nt02',
'     WHERE np09.dba = :P81_DBA',
'       AND nt02.upc = :P81_BARCODE',
'       AND np09.customer_id = np032.customer_id',
'       AND np09.class_id = nt01.class_id',
'       AND nt02.item_id = nt01.item_id',
')',
'    SELECT NVL(discount_id, 0), NVL(MAX(discounted_price), 0) AS discounted_price',
'      INTO v_id, v_discounted',
'      FROM discount_data',
'  GROUP BY discount_id',
'  ORDER BY discount_id',
'  OFFSET 2 ROWS',
'    FETCH NEXT 1 ROWS ONLY;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_id := -1;',
'END;',
'',
'BEGIN',
'    SELECT seq_id INTO v_seq',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_DISCOUNTS''',
'      AND n001 = NVL(v_id, 0)',
'      AND c001 = ''A'';',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq := 0; ',
'END;',
'',
'BEGIN',
'    SELECT seq_id, n001 INTO v_seq_id, v_qty',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_C''',
'      AND c006 = :P81_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq_id := 0;',
'END;',
'',
'BEGIN',
'    SELECT a.item_num INTO v_bc',
'    FROM NIT001 a, NIT002 b',
'    WHERE a.item_id = b.item_id',
'      AND b.upc = :P81_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_bc := NULL;',
'        END;',
'',
'    IF v_seq = 1 AND v_bc IS NOT NULL AND v_seq_id != 0 THEN',
'        apex_collection.update_member_attribute (',
'                p_collection_name => ''INVOICE_A'',',
'                p_seq => v_seq_id,',
'                p_attr_number => 4,',
'                p_number_value => v_discounted',
'                );',
'    ',
'    END IF;',
'',
'END;'))
,p_attribute_02=>'P81_BARCODE,P81_DBA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63539127034289224)
,p_event_id=>wwv_flow_imp.id(63538471703289217)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_name=>'Discounted Price B'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_discounted NUMBER;',
'    v_seq_id NUMBER;',
'    v_seq NUMBER;',
'    v_id NUMBER;',
'    v_bc VARCHAR(50);',
'    v_qty NUMBER;',
'BEGIN',
'BEGIN',
'    WITH discount_data AS (',
'    SELECT np028.discount_id AS discount_id, ',
'    NVL(CASE WHEN np08.type = ''Percent'' THEN nt02.price * (np028.discount_value / 100)',
'            WHEN np08.type = ''Fixed'' THEN np028.discount_value ',
'            ELSE nt02.price END, 0) AS discounted_price',
'     FROM NPT028 np028, NPT032 np032, NPT008 np08, NPT009 np09, NIT001 nt01, NIT002 nt02',
'    WHERE np09.dba = :P81_DBA',
'      AND np08.discount_id = np028.discount_id',
'      AND np028.discount_id = np032.discount_id',
'      AND np09.customer_id = np032.customer_id',
'      AND np028.sic_id = nt01.sic_id',
'      AND nt01.item_id = nt02.item_id',
'      AND np08.date_to >= SYSDATE',
'      AND np08.date_from <= SYSDATE',
'      AND nt02.upc = :P81_BARCODE',
'UNION ALL',
'    SELECT np029.discount_id AS discount_id, ',
'    NVL(CASE WHEN np08.type = ''Percent'' THEN nt02.price * (np029.discount_value / 100)',
'            WHEN np08.type = ''Fixed'' THEN np029.discount_value ',
'            ELSE nt02.price END, 0) AS discounted_price',
'     FROM NPT029 np029, NPT032 np032, NPT008 np08, NPT009 np09, NIT001 nt01, NIT002 nt02',
'    WHERE np09.dba = :P81_DBA',
'      AND np08.discount_id = np029.discount_id',
'      AND np029.discount_id = np032.discount_id',
'      AND np09.customer_id = np032.customer_id',
'      AND np029.dept_id = nt01.dept_id',
'      AND nt01.item_id = nt02.item_id',
'      AND np08.date_to >= SYSDATE',
'      AND np08.date_from <= SYSDATE',
'      AND nt02.upc = :P81_BARCODE',
'UNION ALL',
'    SELECT np030.discount_id AS discount_id, ',
'    NVL(CASE WHEN np08.type = ''Percent'' THEN nt02.price * (np030.discount_value / 100)',
'            WHEN np08.type = ''Fixed'' THEN np030.discount_value ',
'            ELSE nt02.price END, 0) AS discounted_price',
'     FROM NPT030 np030, NPT032 np032, NPT008 np08, NPT009 np09, NIT001 nt01, NIT002 nt02',
'    WHERE np09.dba = :P81_DBA',
'      AND np08.discount_id = np030.discount_id',
'      AND np030.discount_id = np032.discount_id',
'      AND np09.customer_id = np032.customer_id',
'      AND np030.class_id = nt01.class_id',
'      AND nt01.item_id = nt02.item_id',
'      AND np08.date_to >= SYSDATE',
'      AND np08.date_from <= SYSDATE',
'      AND nt02.upc = :P81_BARCODE',
'UNION ALL',
'     SELECT DISTINCT 0 AS discount_id, NVL(nt02.price * (np09.standard_discount_value / 100), 0) AS discounted_price',
'      FROM NPT009 np09, NPT032 np032, NIT001 nt01, NIT002 nt02',
'     WHERE np09.dba = :P81_DBA',
'       AND nt02.upc = :P81_BARCODE',
'       AND np09.customer_id = np032.customer_id',
'       AND np09.class_id = nt01.class_id',
'       AND nt02.item_id = nt01.item_id',
')',
'    SELECT NVL(discount_id, 0), NVL(MAX(discounted_price), 0) AS discounted_price',
'      INTO v_id, v_discounted',
'      FROM discount_data',
'  GROUP BY discount_id',
'  ORDER BY discount_id',
'  OFFSET 2 ROWS',
'    FETCH NEXT 1 ROWS ONLY;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_id := -1;',
'END;',
'',
'BEGIN',
'    SELECT seq_id INTO v_seq',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_DISCOUNTS''',
'      AND n001 = NVL(v_id, 0)',
'      AND c001 = ''B'';',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq := 0; ',
'END;',
'',
'BEGIN',
'    SELECT seq_id, n001 INTO v_seq_id, v_qty',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_C''',
'      AND c006 = :P81_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq_id := 0;',
'END;',
'',
'BEGIN',
'    SELECT a.item_num INTO v_bc',
'    FROM NIT001 a, NIT002 b',
'    WHERE a.item_id = b.item_id',
'      AND b.upc = :P81_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_bc := NULL;',
'        END;',
'',
'    IF v_seq = 2 AND v_bc IS NOT NULL AND v_seq_id != 0 THEN',
'        apex_collection.update_member_attribute (',
'                p_collection_name => ''INVOICE_B'',',
'                p_seq => v_seq_id,',
'                p_attr_number => 4,',
'                p_number_value => v_discounted',
'                );',
'    END IF;',
'',
'END;',
''))
,p_attribute_02=>'P81_BARCODE,P81_DBA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63539225367289225)
,p_event_id=>wwv_flow_imp.id(63538471703289217)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_name=>'Discounted Price C'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_discounted NUMBER;',
'    v_seq_id NUMBER;',
'    v_seq NUMBER;',
'    v_id NUMBER;',
'    v_bc VARCHAR(50);',
'    v_qty NUMBER;',
'BEGIN',
'BEGIN',
'    WITH discount_data AS (',
'    SELECT np028.discount_id AS discount_id, ',
'    NVL(CASE WHEN np08.type = ''Percent'' THEN nt02.price * (np028.discount_value / 100)',
'            WHEN np08.type = ''Fixed'' THEN np028.discount_value ',
'            ELSE nt02.price END, 0) AS discounted_price',
'     FROM NPT028 np028, NPT032 np032, NPT008 np08, NPT009 np09, NIT001 nt01, NIT002 nt02',
'    WHERE np09.dba = :P81_DBA',
'      AND np08.discount_id = np028.discount_id',
'      AND np028.discount_id = np032.discount_id',
'      AND np09.customer_id = np032.customer_id',
'      AND np028.sic_id = nt01.sic_id',
'      AND nt01.item_id = nt02.item_id',
'      AND np08.date_to >= SYSDATE',
'      AND np08.date_from <= SYSDATE',
'      AND nt02.upc = :P81_BARCODE',
'UNION ALL',
'    SELECT np029.discount_id AS discount_id, ',
'    NVL(CASE WHEN np08.type = ''Percent'' THEN nt02.price * (np029.discount_value / 100)',
'            WHEN np08.type = ''Fixed'' THEN np029.discount_value ',
'            ELSE nt02.price END, 0) AS discounted_price',
'     FROM NPT029 np029, NPT032 np032, NPT008 np08, NPT009 np09, NIT001 nt01, NIT002 nt02',
'    WHERE np09.dba = :P81_DBA',
'      AND np08.discount_id = np029.discount_id',
'      AND np029.discount_id = np032.discount_id',
'      AND np09.customer_id = np032.customer_id',
'      AND np029.dept_id = nt01.dept_id',
'      AND nt01.item_id = nt02.item_id',
'      AND np08.date_to >= SYSDATE',
'      AND np08.date_from <= SYSDATE',
'      AND nt02.upc = :P81_BARCODE',
'UNION ALL',
'    SELECT np030.discount_id AS discount_id, ',
'    NVL(CASE WHEN np08.type = ''Percent'' THEN nt02.price * (np030.discount_value / 100)',
'            WHEN np08.type = ''Fixed'' THEN np030.discount_value ',
'            ELSE nt02.price END, 0) AS discounted_price',
'     FROM NPT030 np030, NPT032 np032, NPT008 np08, NPT009 np09, NIT001 nt01, NIT002 nt02',
'    WHERE np09.dba = :P81_DBA',
'      AND np08.discount_id = np030.discount_id',
'      AND np030.discount_id = np032.discount_id',
'      AND np09.customer_id = np032.customer_id',
'      AND np030.class_id = nt01.class_id',
'      AND nt01.item_id = nt02.item_id',
'      AND np08.date_to >= SYSDATE',
'      AND np08.date_from <= SYSDATE',
'      AND nt02.upc = :P81_BARCODE',
'UNION ALL',
'     SELECT DISTINCT 0 AS discount_id, NVL(nt02.price * (np09.standard_discount_value / 100), 0) AS discounted_price',
'      FROM NPT009 np09, NPT032 np032, NIT001 nt01, NIT002 nt02',
'     WHERE np09.dba = :P81_DBA',
'       AND nt02.upc = :P81_BARCODE',
'       AND np09.customer_id = np032.customer_id',
'       AND np09.class_id = nt01.class_id',
'       AND nt02.item_id = nt01.item_id',
')',
'    SELECT NVL(discount_id, 0), NVL(MAX(discounted_price), 0) AS discounted_price',
'      INTO v_id, v_discounted',
'      FROM discount_data',
'  GROUP BY discount_id',
'  ORDER BY discount_id',
'  OFFSET 2 ROWS',
'    FETCH NEXT 1 ROWS ONLY;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_id := -1;',
'END;',
'',
'BEGIN',
'    SELECT seq_id INTO v_seq',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_DISCOUNTS''',
'      AND n001 = NVL(v_id, 0)',
'      AND c001 = ''C'';',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq := 0; ',
'END;',
'',
'BEGIN',
'    SELECT seq_id, n001 INTO v_seq_id, v_qty',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_C''',
'      AND c006 = :P81_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq_id := 0;',
'END;',
'',
'BEGIN',
'    SELECT a.item_num INTO v_bc',
'    FROM NIT001 a, NIT002 b',
'    WHERE a.item_id = b.item_id',
'      AND b.upc = :P81_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_bc := NULL;',
'        END;',
'',
'    IF v_seq = 3 AND v_bc IS NOT NULL AND v_seq_id != 0 THEN',
'        apex_collection.update_member_attribute (',
'                p_collection_name => ''INVOICE_C'',',
'                p_seq => v_seq_id,',
'                p_attr_number => 4,',
'                p_number_value => v_discounted',
'                );',
'    END IF;',
'',
'END;',
''))
,p_attribute_02=>'P81_BARCODE,P81_DBA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63539345094289226)
,p_event_id=>wwv_flow_imp.id(63538471703289217)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_name=>'Discounted Price D'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_price NUMBER;',
'    v_seq_id NUMBER;',
'    v_seq NUMBER;',
'    v_id NUMBER := 0;',
'    v_bc VARCHAR(50);',
'BEGIN',
'BEGIN',
'    WITH discount_data AS (',
'    SELECT np028.discount_id AS discount_id, ',
'    NVL(CASE WHEN np08.type = ''Percent'' THEN nt02.price * (np028.discount_value / 100)',
'            WHEN np08.type = ''Fixed'' THEN np028.discount_value ',
'            ELSE nt02.price END, 0) AS discounted_price',
'     FROM NPT028 np028, NPT032 np032, NPT008 np08, NPT009 np09, NIT001 nt01, NIT002 nt02',
'    WHERE np09.dba = :P81_DBA',
'      AND np08.discount_id = np028.discount_id',
'      AND np028.discount_id = np032.discount_id',
'      AND np09.customer_id = np032.customer_id',
'      AND np028.sic_id = nt01.sic_id',
'      AND nt01.item_id = nt02.item_id',
'      AND np08.date_to >= SYSDATE',
'      AND np08.date_from <= SYSDATE',
'      AND nt02.upc = :P81_BARCODE',
'UNION ALL',
'    SELECT np029.discount_id AS discount_id, ',
'    NVL(CASE WHEN np08.type = ''Percent'' THEN nt02.price * (np029.discount_value / 100)',
'            WHEN np08.type = ''Fixed'' THEN np029.discount_value ',
'            ELSE nt02.price END, 0) AS discounted_price',
'     FROM NPT029 np029, NPT032 np032, NPT008 np08, NPT009 np09, NIT001 nt01, NIT002 nt02',
'    WHERE np09.dba = :P81_DBA',
'      AND np08.discount_id = np029.discount_id',
'      AND np029.discount_id = np032.discount_id',
'      AND np09.customer_id = np032.customer_id',
'      AND np029.dept_id = nt01.dept_id',
'      AND nt01.item_id = nt02.item_id',
'      AND np08.date_to >= SYSDATE',
'      AND np08.date_from <= SYSDATE',
'      AND nt02.upc = :P81_BARCODE',
'UNION ALL',
'    SELECT np030.discount_id AS discount_id, ',
'    NVL(CASE WHEN np08.type = ''Percent'' THEN nt02.price * (np030.discount_value / 100)',
'            WHEN np08.type = ''Fixed'' THEN np030.discount_value ',
'            ELSE nt02.price END, 0) AS discounted_price',
'     FROM NPT030 np030, NPT032 np032, NPT008 np08, NPT009 np09, NIT001 nt01, NIT002 nt02',
'    WHERE np09.dba = :P81_DBA',
'      AND np08.discount_id = np030.discount_id',
'      AND np030.discount_id = np032.discount_id',
'      AND np09.customer_id = np032.customer_id',
'      AND np030.class_id = nt01.class_id',
'      AND nt01.item_id = nt02.item_id',
'      AND np08.date_to >= SYSDATE',
'      AND np08.date_from <= SYSDATE',
'      AND nt02.upc = :P81_BARCODE',
'UNION ALL',
'     SELECT DISTINCT 0 AS discount_id, NVL(nt02.price * (np09.standard_discount_value / 100), 0) AS discounted_price',
'      FROM NPT009 np09, NPT032 np032, NIT001 nt01, NIT002 nt02',
'     WHERE np09.dba = :P81_DBA',
'       AND nt02.upc = :P81_BARCODE',
'       AND np09.customer_id = np032.customer_id',
'       AND np09.class_id = nt01.class_id',
'       AND nt02.item_id = nt01.item_id',
')',
'    SELECT NVL(discount_id, 0), NVL(MAX(discounted_price), 0) AS discounted_price',
'      INTO v_id, v_price',
'      FROM discount_data',
'  GROUP BY discount_id',
'  ORDER BY discount_id',
'  OFFSET 2 ROWS',
'    FETCH NEXT 1 ROWS ONLY;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_id := -1;',
'END;',
'',
'BEGIN',
'    SELECT seq_id INTO v_seq',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_DISCOUNTS''',
'      AND n001 = NVL(v_id, 0)',
'      AND c001 = ''D'';',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq := 0; ',
'END;',
'',
'BEGIN',
'    SELECT seq_id INTO v_seq_id',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_C''',
'      AND c006 = :P81_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq_id := 0;',
'END;',
'',
'BEGIN',
'    SELECT a.item_num INTO v_bc',
'    FROM NIT001 a, NIT002 b',
'    WHERE a.item_id = b.item_id',
'      AND b.upc = :P81_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_bc := NULL;',
'        END;',
'',
'    IF v_seq = 4 AND v_bc IS NOT NULL AND v_seq_id != 0 THEN',
'        apex_collection.update_member_attribute (',
'                p_collection_name => ''INVOICE_D'',',
'                p_seq => v_seq_id,',
'                p_attr_number => 4,',
'                p_number_value => v_price',
'                );',
'    END IF;',
'',
'END;',
''))
,p_attribute_02=>'P81_BARCODE,P81_DBA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63539414046289227)
,p_event_id=>wwv_flow_imp.id(63538471703289217)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'Y'
,p_name=>'Sub-Total'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P81_SUB'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH COLLECTION_SUMS AS (',
'    SELECT ''INVOICE_A'' AS collection_name, SUM(n002 * n001) AS SUB_TOTAL',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_A''',
' ',
'    UNION ALL',
' ',
'    SELECT ''INVOICE_B'' AS collection_name, SUM(n002 * n001) AS SUB_TOTAL',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_B''',
' ',
'    UNION ALL',
' ',
'    SELECT ''INVOICE_C'' AS collection_name, SUM(n002 * n001) AS SUB_TOTAL',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_C''',
' ',
'    UNION ALL',
' ',
'    SELECT ''INVOICE_D'' AS collection_name, SUM(n002 * n001) AS SUB_TOTAL',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_D''',
'),',
'LOWEST_SUM AS (',
'    SELECT collection_name',
'    FROM COLLECTION_SUMS',
'    WHERE SUB_TOTAL = (SELECT MIN(SUB_TOTAL) FROM COLLECTION_SUMS)',
'    FETCH FIRST 1 ROW ONLY',
')',
'SELECT TO_CHAR(SUM(n002 * n001), ''FM999G999G999G999D00'' ) ',
'FROM apex_collections',
'WHERE collection_name IN (SELECT collection_name FROM LOWEST_SUM);'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63539584894289228)
,p_event_id=>wwv_flow_imp.id(63538471703289217)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'Y'
,p_name=>'Discount'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P81_DISCOUNT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH COLLECTION_SUMS AS (',
'    SELECT ''INVOICE_A'' AS collection_name, SUM(n004 * n001) AS TOTAL_INVOICE',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_A''',
' ',
'    UNION ALL',
' ',
'    SELECT ''INVOICE_B'' AS collection_name, SUM(n004 * n001) AS TOTAL_INVOICE',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_B''',
' ',
'    UNION ALL',
' ',
'    SELECT ''INVOICE_C'' AS collection_name, SUM(n004 * n001) AS TOTAL_INVOICE',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_C''',
' ',
'    UNION ALL',
' ',
'    SELECT ''INVOICE_D'' AS collection_name, SUM(n004 * n001) AS TOTAL_INVOICE',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_D''',
'),',
'LOWEST_SUM AS (',
'    SELECT collection_name',
'    FROM COLLECTION_SUMS',
'    WHERE TOTAL_INVOICE = (SELECT MAX(TOTAL_INVOICE) FROM COLLECTION_SUMS)',
'    FETCH FIRST 1 ROW ONLY',
')',
'SELECT TO_CHAR(SUM(n004 * n001), ''FM999G999G999G999D00'' ) ',
'FROM apex_collections',
'WHERE collection_name IN (SELECT collection_name FROM LOWEST_SUM);'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63539696635289229)
,p_event_id=>wwv_flow_imp.id(63538471703289217)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'Y'
,p_name=>'Total'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P81_TOTAL'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'TO_CHAR(NVL(TO_NUMBER(REPLACE(REPLACE(NVL(:P81_SUB, 0), ''$'', ''''), '','', '''')) - TO_NUMBER(REPLACE(REPLACE(NVL(:P81_DISCOUNT, 0), ''$'', ''''), '','', '''')), 0), ''FM999G999G999G990D00'' ) '
,p_attribute_07=>'P81_SUB,P81_DISCOUNT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63539707527289230)
,p_event_id=>wwv_flow_imp.id(63538471703289217)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P81_SUB,P81_DISCOUNT,P81_TOTAL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(62597479410570835)
,p_name=>'Set Available Discounts'
,p_event_sequence=>80
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(62597507821570836)
,p_event_id=>wwv_flow_imp.id(62597479410570835)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_count INTEGER := 0; -- Variable to track the number of discounts',
'    v_letter_index INTEGER := 1; -- Counter for assigning letters (A, B, C, D)',
'BEGIN',
'    -- Count the number of discounts',
'    SELECT COUNT(*)',
'    INTO v_count',
'    FROM NPT032 npt032, NPT008 npt008, NPT009 npt009',
'    WHERE npt032.customer_id = npt009.customer_id',
'      AND npt032.discount_id = npt008.discount_id',
'      AND npt009.dba = :P81_DBA;',
'',
'    -- Add discount IDs in order',
'    FOR r IN (',
'        SELECT npt032.discount_id',
'        FROM NPT032 npt032, NPT008 npt008, NPT009 npt009',
'        WHERE npt032.customer_id = npt009.customer_id',
'          AND npt032.discount_id = npt008.discount_id',
'          AND npt009.dba = :P81_DBA',
'        ORDER BY npt032.discount_id',
'    ) LOOP',
'        APEX_COLLECTION.ADD_MEMBER(',
'            p_collection_name => ''INVOICE_DISCOUNTS'',',
'            p_n001 => r.discount_id,',
'            p_c001 => CHR(64 + v_letter_index) -- Dynamically assign ''A'', ''B'', etc.',
'        );',
'        v_letter_index := v_letter_index + 1; -- Increment letter counter',
'    END LOOP;',
'',
'    -- Fill remaining slots with zeros',
'    FOR i IN 1..(4 - v_count) LOOP',
'        APEX_COLLECTION.ADD_MEMBER(',
'            p_collection_name => ''INVOICE_DISCOUNTS'',',
'            p_n001 => 0,',
'            p_c001 => CHR(64 + v_letter_index) -- Assign remaining letters',
'        );',
'        v_letter_index := v_letter_index + 1; -- Increment letter counter',
'    END LOOP;',
'END;',
'',
'',
''))
,p_attribute_02=>'P81_DBA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(63613596227597913)
,p_name=>'Get typed value'
,p_event_sequence=>90
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(63541202037289245)
,p_triggering_element=>'ITEM_NO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63613691322597914)
,p_event_id=>wwv_flow_imp.id(63613596227597913)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let upcSearch = this.triggeringElement.value;',
'apex.item("P81_SEARCHED_UPC").setValue(upcSearch);',
'console.log(upcSearch);',
'',
'',
'setTimeout(() => {',
'    var gridView = apex.region("wholesale").widget().interactiveGrid("getViews").grid;',
'    var model = gridView.model;',
'    apex.region("wholesale").call("getActions").set("edit", false);',
'    model.clearChanges();',
'',
'    $.event.trigger(''Search'');',
'}, 500)'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63613810023597916)
,p_event_id=>wwv_flow_imp.id(63613596227597913)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P81_UPC_SEARCH'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT b.upc',
'  FROM NIT001 a, NIT002 b, NIM026 c, NIM022 d',
' WHERE a.item_id = b.item_id',
'   AND b.uom_id = c.uom_id',
'   AND a.brand_id = d.brand_id',
'   AND a.item_num || '' - '' || UPPER(c.uom_code) = :P35_SEARCHED_UPC',
'',
'UNION ALL',
'',
'SELECT b.upc',
'  FROM NIT001 a, NIT002 b, NIM026 c, NIM022 d',
' WHERE a.item_id = b.item_id',
'   AND b.uom_id = c.uom_id',
'   AND a.brand_id = d.brand_id',
'   AND b.upc = :P35_SEARCHED_UPC'))
,p_attribute_07=>'P81_SEARCHED_UPC'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63614027936597918)
,p_event_id=>wwv_flow_imp.id(63613596227597913)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P81_UPC_SEARCH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(63614148546597919)
,p_name=>'Change Qty'
,p_event_sequence=>100
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(63541202037289245)
,p_triggering_element=>'QTY'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63614276206597920)
,p_event_id=>wwv_flow_imp.id(63614148546597919)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let selectedQty = this.triggeringElement.value;',
'apex.item("P81_SELECTED_QTY").setValue(selectedQty);',
'',
'setTimeout(() => {',
'    var gridView = apex.region("wholesale").widget().interactiveGrid("getViews").grid;',
'    var model = gridView.model;',
'    apex.region("wholesale").call("getActions").set("edit", false);',
'    model.clearChanges();',
'',
'    $.event.trigger(''UpdateQty'');',
'}, 500)'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63614481186597922)
,p_event_id=>wwv_flow_imp.id(63614148546597919)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P81_SELECTED_QTY'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(63656981640639628)
,p_name=>'Searched A'
,p_event_sequence=>110
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'Search'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63664819338639648)
,p_event_id=>wwv_flow_imp.id(63656981640639628)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Search by UPC A'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_seq_id number;',
'    v_item_id number;',
'    v_item_num VARCHAR2(50);',
'    v_product_name varchar(35);    ',
'    v_price number;',
'    v_qty number;',
'    v_total number;',
'    v_brand varchar(10);',
'    v_uom varchar(10);',
'    v_upc number;',
'',
'',
'BEGIN',
'    BEGIN',
'        SELECT a.item_num, b.upc, a.item_id, a.item_desc, b.price, b.price total, UPPER(c.uom_code), d.brand_code INTO v_item_num, v_upc, v_item_id, v_product_name, v_price, v_total, v_uom, v_brand',
'          FROM NIT001 a, NIT002 b, NIM026 c, NIM022 d',
'         WHERE a.item_id = b.item_id',
'           AND b.uom_id = c.uom_id',
'           AND a.brand_id = d.brand_id',
'           AND b.upc = :P81_SEARCHED_UPC;      ',
'',
'        SELECT seq_id, n001 INTO v_seq_id, v_qty',
'          FROM apex_collections',
'         WHERE collection_name = ''INVOICE_A''',
'           AND c006 = :P81_SEARCHED_UPC;',
'        EXCEPTION WHEN NO_DATA_FOUND THEN v_seq_id := 0; END;',
'',
'        IF v_seq_id != 0 THEN',
'            v_qty := v_qty + 1;',
'            v_total := v_price * v_qty;',
'        ',
'            apex_collection.update_member_attribute (',
'                p_collection_name => ''INVOICE_A'',',
'                p_seq => v_seq_id,',
'                p_attr_number => 1,',
'                p_number_value => v_qty',
'                );',
'',
'',
'            apex_collection.update_member_attribute (',
'                p_collection_name => ''INVOICE_A'',',
'                p_seq => v_seq_id,',
'                p_attr_number => 5,',
'                p_number_value => v_total',
'                );',
'',
'        ELSIF v_seq_id = 0 AND v_item_id IS NOT NULL THEN',
'            apex_collection.add_member(',
'                p_collection_name => ''INVOICE_A'',',
'                p_c001 => v_item_num,',
'                p_c002 => v_brand,',
'                p_c003 => v_product_name,',
'                p_n001 => 1,',
'                p_n002 => v_price,',
'                p_c004 => v_uom,',
'                p_n005 => v_total,',
'                p_c006 => :P81_SEARCHED_UPC,',
'                p_c007 => v_item_id);',
'END IF;',
'END;'))
,p_attribute_02=>'P81_SEARCHED_UPC'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63665353292639648)
,p_event_id=>wwv_flow_imp.id(63656981640639628)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'Search by Item number and UOM A'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_item_num_search VARCHAR(20);',
'    v_uom_search VARCHAR(20);',
'    v_item_num VARCHAR(50);',
'    v_seq_id NUMBER;',
'    v_item_id NUMBER;',
'    v_product_name VARCHAR(35);    ',
'    v_price NUMBER;',
'    v_qty NUMBER;',
'    v_total NUMBER;',
'    v_brand VARCHAR(10);',
'    v_uom VARCHAR(10);',
'    v_upc NUMBER;',
'',
'BEGIN',
'    v_item_num_search := SUBSTR (:P81_SEARCHED_UPC, 1, (INSTR(:P81_SEARCHED_UPC, '' - '') - 1));',
'    v_uom_search := SUBSTR (:P81_SEARCHED_UPC, (INSTR(:P81_SEARCHED_UPC, '' - '') + 3));',
'',
'    BEGIN',
'        SELECT a.item_id, a.item_num, b.upc, a.item_desc, b.price, b.price total, UPPER(c.uom_code), d.brand_code INTO v_item_id, v_item_num, v_upc, v_product_name, v_price, v_total, v_uom, v_brand',
'          FROM NIT001 a, NIT002 b, NIM026 c, NIM022 d',
'         WHERE a.item_id = b.item_id',
'           AND b.uom_id = c.uom_id',
'           AND a.brand_id = d.brand_id',
'           AND a.item_num = v_item_num_search',
'           AND c.uom_code = LOWER(v_uom_search);',
'     ',
'    SELECT seq_id, n001 INTO v_seq_id, v_qty ',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_A''',
'    AND c001 = v_item_num_search',
'    AND C004 = v_uom_search;',
'    EXCEPTION WHEN NO_DATA_FOUND THEN v_seq_id := 0; END;',
'    ',
'    IF v_seq_id != 0 THEN',
'        v_qty := v_qty + 1;',
'        v_total := v_price * v_qty;',
'    ',
'            apex_collection.update_member_attribute (',
'                p_collection_name => ''INVOICE_A'',',
'                p_seq => v_seq_id,',
'                p_attr_number => 1,',
'                p_number_value => v_qty',
'                );',
'',
'            apex_collection.update_member_attribute (',
'                p_collection_name => ''INVOICE_A'',',
'                p_seq => v_seq_id,',
'                p_attr_number => 5,',
'                p_number_value => v_total',
'                );',
'',
'    ELSIF v_seq_id = 0 AND v_item_id IS NOT NULL THEN',
'        apex_collection.add_member(',
'            p_collection_name => ''INVOICE_A'',',
'            p_c001 => v_item_num_search,',
'            p_c002 => v_brand,',
'            p_c003 => v_product_name,',
'            p_n001 => 1,',
'            p_n002 => v_price,',
'            p_c004 => v_uom,',
'            p_n005 => v_total,',
'            p_c006 => v_upc,',
'            p_c007 => v_item_id);',
'END IF;',
'END;'))
,p_attribute_02=>'P81_SEARCHED_UPC'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63657370655639629)
,p_event_id=>wwv_flow_imp.id(63656981640639628)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>'Search by Item number and NO UOM A'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_seq_id number;',
'    v_item_id number;',
'    v_item_num varchar(50);',
'    v_product_name varchar(35);    ',
'    v_price number;',
'    v_qty number;',
'    v_total number;',
'    v_brand varchar(10);',
'    v_uom varchar(10);',
'    v_upc NUMBER(12);',
'',
'BEGIN',
'',
'    BEGIN',
'        SELECT a.item_id, a.item_num, b.upc, a.item_desc, b.price, b.price total, UPPER(c.uom_code), d.brand_code INTO v_item_id, v_item_num, v_upc, v_product_name, v_price, v_total, v_uom, v_brand',
'          FROM NIT001 a, NIT002 b, NIM026 c, NIM022 d',
'         WHERE a.item_id = b.item_id',
'           AND b.uom_id = c.uom_id',
'           AND a.brand_id = d.brand_id',
'           AND a.item_num = :P81_SEARCHED_UPC',
'           AND c.uom_code = ''pcs'';',
'     ',
'    SELECT seq_id, n001 INTO v_seq_id, v_qty ',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_A''',
'    AND c001 = :P81_SEARCHED_UPC',
'    AND C004 = ''PCS'';',
'    EXCEPTION WHEN NO_DATA_FOUND THEN v_seq_id := 0; END;',
'    ',
'    IF v_seq_id != 0 THEN',
'        v_qty := v_qty + 1;',
'        v_total := v_price * v_qty;',
'    ',
'            apex_collection.update_member_attribute (',
'                p_collection_name => ''INVOICE_A'',',
'                p_seq => v_seq_id,',
'                p_attr_number => 1,',
'                p_number_value => v_qty',
'                );',
'',
'            apex_collection.update_member_attribute (',
'                p_collection_name => ''INVOICE_A'',',
'                p_seq => v_seq_id,',
'                p_attr_number => 5,',
'                p_number_value => v_total',
'                );',
'',
'    ELSIF v_seq_id = 0 AND v_item_id IS NOT NULL THEN',
'        apex_collection.add_member(',
'            p_collection_name => ''INVOICE_A'',',
'            p_c001 => :P81_SEARCHED_UPC,',
'            p_c002 => v_brand,',
'            p_c003 => v_product_name,',
'            p_n001 => 1,',
'            p_n002 => v_price,',
'            p_c004 => v_uom,',
'            p_n005 => v_total,',
'            p_c006 => v_upc,',
'            p_c007 => v_item_id);',
'END IF;            ',
'END;'))
,p_attribute_02=>'P81_SEARCHED_UPC'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63659803584639635)
,p_event_id=>wwv_flow_imp.id(63656981640639628)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_name=>'Discount A'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_disc NUMBER;',
'    v_seq_id NUMBER;',
'    v_seq NUMBER;',
'    v_id NUMBER := 0;',
'    v_bc VARCHAR(50);',
'BEGIN',
'BEGIN',
'    WITH discount_data AS (',
'    SELECT npt028.discount_id, npt028.discount_value',
'    FROM NPT028 npt028',
'    JOIN NPT008 npt008 ON npt028.discount_id = npt008.discount_id',
'    JOIN NPT032 npt032 ON npt028.discount_id = npt032.discount_id',
'    JOIN NPT009 npt009 ON npt009.customer_id = npt032.customer_id',
'    JOIN NIT001 nit001 ON npt028.sic_id = nit001.sic_id',
'    JOIN NIT002 nit002 ON nit001.item_id = nit002.item_id',
'   WHERE npt009.dba = :P81_DBA',
'     AND npt008.date_to >= SYSDATE',
'     AND npt008.date_from <= SYSDATE',
'     AND nit002.upc = :P81_UPC_SEARCH',
'UNION ALL',
'  SELECT npt029.discount_id, npt029.discount_value',
'    FROM NPT029 npt029',
'    JOIN NPT008 npt008 ON npt029.discount_id = npt008.discount_id',
'    JOIN NPT032 npt032 ON npt029.discount_id = npt032.discount_id',
'    JOIN NPT009 npt009 ON npt009.customer_id = npt032.customer_id',
'    JOIN NIT001 nit001 ON npt029.dept_id = nit001.dept_id',
'    JOIN NIT002 nit002 ON nit001.item_id = nit002.item_id',
'   WHERE npt009.dba = :P81_DBA',
'     AND npt008.date_to >= SYSDATE',
'     AND npt008.date_from <= SYSDATE',
'     AND nit002.upc = :P81_UPC_SEARCH',
'UNION ALL',
'    SELECT npt030.discount_id, npt030.discount_value',
'    FROM NPT030 npt030',
'    JOIN NPT008 npt008 ON npt030.discount_id = npt008.discount_id',
'    JOIN NPT032 npt032 ON npt030.discount_id = npt032.discount_id',
'    JOIN NPT009 npt009 ON npt009.customer_id = npt032.customer_id',
'    JOIN NIT001 nit001 ON npt030.class_id = nit001.class_id',
'    JOIN NIT002 nit002 ON nit001.item_id = nit002.item_id',
'   WHERE npt009.dba = :P81_DBA',
'     AND npt008.date_to >= SYSDATE',
'     AND npt008.date_from <= SYSDATE     ',
'     AND nit002.upc = :P81_UPC_SEARCH',
'UNION ALL',
'    SELECT DISTINCT 0, np09.standard_discount_value',
'     FROM NPT009 np09, NIT001 nt01, NPT032 np032, NIT002 nt02',
'     WHERE np09.class_id = nt01.class_id',
'      AND np09.customer_id = np032.customer_id ',
'      AND np09.dba = :P81_DBA',
'      AND nt01.item_id = nt02.item_id',
'      AND nt02.upc = :P81_UPC_SEARCH',
')',
'',
'    SELECT NVL(discount_id, 0), NVL(MAX(discount_value), 0) AS max_discount_value',
'    INTO v_id, v_disc',
'    FROM discount_data',
'    GROUP BY discount_id',
'    ORDER BY discount_id',
'    OFFSET 0 ROWS',
'    FETCH NEXT 1 ROWS ONLY;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_id := -1;',
'END;',
'',
'BEGIN',
'    SELECT seq_id INTO v_seq',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_DISCOUNTS''',
'      AND n001 = NVL(v_id, 0)',
'      AND c001 = ''A'';',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq := 0; ',
'END;',
'',
'BEGIN',
'    SELECT seq_id INTO v_seq_id',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_A''',
'      AND c006 = :P81_UPC_SEARCH;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq_id := 0;',
'END;',
'',
'BEGIN',
'    SELECT a.item_num INTO v_bc',
'    FROM NIT001 a, NIT002 b',
'    WHERE a.item_id = b.item_id',
'      AND b.upc = :P81_UPC_SEARCH;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_bc := NULL;',
'        END;',
'',
'    IF v_seq = 1 AND v_bc IS NOT NULL AND v_seq_id != 0 THEN',
'        apex_collection.update_member_attribute (',
'                p_collection_name => ''INVOICE_A'',',
'                p_seq => v_seq_id,',
'                p_attr_number => 3,',
'                p_number_value => v_disc',
'                );',
'    ',
'    END IF;',
'',
'END;',
''))
,p_attribute_02=>'P81_UPC_SEARCH,,P81_DBA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63660303572639635)
,p_event_id=>wwv_flow_imp.id(63656981640639628)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_name=>'Discount B'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_disc NUMBER;',
'    v_seq_id NUMBER;',
'    v_seq NUMBER;',
'    v_id NUMBER := 0;',
'    v_bc VARCHAR(50);',
'BEGIN',
'BEGIN',
'    WITH discount_data AS (',
'    SELECT npt028.discount_id, npt028.discount_value',
'    FROM NPT028 npt028',
'    JOIN NPT008 npt008 ON npt028.discount_id = npt008.discount_id',
'    JOIN NPT032 npt032 ON npt028.discount_id = npt032.discount_id',
'    JOIN NPT009 npt009 ON npt009.customer_id = npt032.customer_id',
'    JOIN NIT001 nit001 ON npt028.sic_id = nit001.sic_id',
'    JOIN NIT002 nit002 ON nit001.item_id = nit002.item_id',
'   WHERE npt009.dba = :P81_DBA',
'     AND npt008.date_to >= SYSDATE',
'     AND npt008.date_from <= SYSDATE',
'     AND nit002.upc = :P81_UPC_SEARCH',
'UNION ALL',
'  SELECT npt029.discount_id, npt029.discount_value',
'    FROM NPT029 npt029',
'    JOIN NPT008 npt008 ON npt029.discount_id = npt008.discount_id',
'    JOIN NPT032 npt032 ON npt029.discount_id = npt032.discount_id',
'    JOIN NPT009 npt009 ON npt009.customer_id = npt032.customer_id',
'    JOIN NIT001 nit001 ON npt029.dept_id = nit001.dept_id',
'    JOIN NIT002 nit002 ON nit001.item_id = nit002.item_id',
'   WHERE npt009.dba = :P81_DBA',
'     AND npt008.date_to >= SYSDATE',
'     AND npt008.date_from <= SYSDATE',
'     AND nit002.upc = :P81_UPC_SEARCH',
'UNION ALL',
'    SELECT npt030.discount_id, npt030.discount_value',
'    FROM NPT030 npt030',
'    JOIN NPT008 npt008 ON npt030.discount_id = npt008.discount_id',
'    JOIN NPT032 npt032 ON npt030.discount_id = npt032.discount_id',
'    JOIN NPT009 npt009 ON npt009.customer_id = npt032.customer_id',
'    JOIN NIT001 nit001 ON npt030.class_id = nit001.class_id',
'    JOIN NIT002 nit002 ON nit001.item_id = nit002.item_id',
'   WHERE npt009.dba = :P81_DBA',
'     AND npt008.date_to >= SYSDATE',
'     AND npt008.date_from <= SYSDATE     ',
'     AND nit002.upc = :P81_UPC_SEARCH',
'UNION ALL',
'    SELECT DISTINCT 0, np09.standard_discount_value',
'     FROM NPT009 np09, NIT001 nt01, NPT032 np032, NIT002 nt02',
'     WHERE np09.class_id = nt01.class_id',
'      AND np09.customer_id = np032.customer_id ',
'      AND np09.dba = :P81_DBA',
'      AND nt01.item_id = nt02.item_id',
'      AND nt02.upc = :P81_UPC_SEARCH',
')',
'',
'    SELECT NVL(discount_id, 0), NVL(MAX(discount_value), 0) AS max_discount_value',
'    INTO v_id, v_disc',
'    FROM discount_data',
'    GROUP BY discount_id',
'    ORDER BY discount_id',
'    OFFSET 0 ROWS',
'    FETCH NEXT 1 ROWS ONLY;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_id := -1;',
'END;',
'',
'BEGIN',
'    SELECT seq_id INTO v_seq',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_DISCOUNTS''',
'      AND n001 = NVL(v_id, 0)',
'      AND c001 = ''B'';',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq := 0; ',
'END;',
'',
'BEGIN',
'    SELECT seq_id INTO v_seq_id',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_A''',
'      AND c006 = :P81_UPC_SEARCH;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq_id := 0;',
'END;',
'',
'BEGIN',
'    SELECT a.item_num INTO v_bc',
'    FROM NIT001 a, NIT002 b',
'    WHERE a.item_id = b.item_id',
'      AND b.upc = :P81_UPC_SEARCH;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_bc := NULL;',
'        END;',
'',
'    IF v_seq = 2 AND v_bc IS NOT NULL AND v_seq_id != 0 THEN',
'        apex_collection.update_member_attribute (',
'                p_collection_name => ''INVOICE_B'',',
'                p_seq => v_seq_id,',
'                p_attr_number => 3,',
'                p_number_value => v_disc',
'                );',
'    END IF;',
'',
'END;',
''))
,p_attribute_02=>'P81_UPC_SEARCH,,P81_DBA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63660863174639637)
,p_event_id=>wwv_flow_imp.id(63656981640639628)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_name=>'Discount C'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_disc NUMBER;',
'    v_seq_id NUMBER;',
'    v_seq NUMBER;',
'    v_id NUMBER := 0;',
'    v_bc VARCHAR(50);',
'BEGIN',
'BEGIN',
'    WITH discount_data AS (',
'    SELECT npt028.discount_id, npt028.discount_value',
'    FROM NPT028 npt028',
'    JOIN NPT008 npt008 ON npt028.discount_id = npt008.discount_id',
'    JOIN NPT032 npt032 ON npt028.discount_id = npt032.discount_id',
'    JOIN NPT009 npt009 ON npt009.customer_id = npt032.customer_id',
'    JOIN NIT001 nit001 ON npt028.sic_id = nit001.sic_id',
'    JOIN NIT002 nit002 ON nit001.item_id = nit002.item_id',
'   WHERE npt009.dba = :P81_DBA',
'     AND npt008.date_to >= SYSDATE',
'     AND npt008.date_from <= SYSDATE',
'     AND nit002.upc = :P81_UPC_SEARCH',
'UNION ALL',
'  SELECT npt029.discount_id, npt029.discount_value',
'    FROM NPT029 npt029',
'    JOIN NPT008 npt008 ON npt029.discount_id = npt008.discount_id',
'    JOIN NPT032 npt032 ON npt029.discount_id = npt032.discount_id',
'    JOIN NPT009 npt009 ON npt009.customer_id = npt032.customer_id',
'    JOIN NIT001 nit001 ON npt029.dept_id = nit001.dept_id',
'    JOIN NIT002 nit002 ON nit001.item_id = nit002.item_id',
'   WHERE npt009.dba = :P81_DBA',
'     AND npt008.date_to >= SYSDATE',
'     AND npt008.date_from <= SYSDATE',
'     AND nit002.upc = :P81_UPC_SEARCH',
'UNION ALL',
'    SELECT npt030.discount_id, npt030.discount_value',
'    FROM NPT030 npt030',
'    JOIN NPT008 npt008 ON npt030.discount_id = npt008.discount_id',
'    JOIN NPT032 npt032 ON npt030.discount_id = npt032.discount_id',
'    JOIN NPT009 npt009 ON npt009.customer_id = npt032.customer_id',
'    JOIN NIT001 nit001 ON npt030.class_id = nit001.class_id',
'    JOIN NIT002 nit002 ON nit001.item_id = nit002.item_id',
'   WHERE npt009.dba = :P81_DBA',
'     AND npt008.date_to >= SYSDATE',
'     AND npt008.date_from <= SYSDATE     ',
'     AND nit002.upc = :P81_UPC_SEARCH',
'UNION ALL',
'    SELECT DISTINCT 0, np09.standard_discount_value',
'     FROM NPT009 np09, NIT001 nt01, NPT032 np032, NIT002 nt02',
'     WHERE np09.class_id = nt01.class_id',
'      AND np09.customer_id = np032.customer_id ',
'      AND np09.dba = :P81_DBA',
'      AND nt01.item_id = nt02.item_id',
'      AND nt02.upc = :P81_UPC_SEARCH',
')',
'',
'    SELECT NVL(discount_id, 0), NVL(MAX(discount_value), 0) AS max_discount_value',
'    INTO v_id, v_disc',
'    FROM discount_data',
'    GROUP BY discount_id',
'    ORDER BY discount_id',
'    OFFSET 0 ROWS',
'    FETCH NEXT 1 ROWS ONLY;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_id := -1;  ',
'END;',
'',
'BEGIN',
'    SELECT seq_id INTO v_seq',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_DISCOUNTS''',
'      AND n001 = NVL(v_id, 0)',
'      AND c001 = ''C'';',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq := 0; ',
'END;',
'',
'BEGIN',
'    SELECT seq_id INTO v_seq_id',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_A''',
'      AND c006 = :P81_UPC_SEARCH;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq_id := 0;',
'END;',
'',
'BEGIN',
'    SELECT a.item_num INTO v_bc',
'    FROM NIT001 a, NIT002 b',
'    WHERE a.item_id = b.item_id',
'      AND b.upc = :P81_UPC_SEARCH;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_bc := NULL;',
'        END;',
'',
'    IF v_seq = 3 AND v_bc IS NOT NULL AND v_seq_id != 0 THEN',
'        apex_collection.update_member_attribute (',
'                p_collection_name => ''INVOICE_C'',',
'                p_seq => v_seq_id,',
'                p_attr_number => 3,',
'                p_number_value => v_disc',
'                );',
'    END IF;',
'',
'END;',
''))
,p_attribute_02=>'P81_UPC_SEARCH,,P81_DBA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63661373684639639)
,p_event_id=>wwv_flow_imp.id(63656981640639628)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_name=>'Discount D'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_disc NUMBER;',
'    v_seq_id NUMBER;',
'    v_seq NUMBER;',
'    v_id NUMBER := 0;',
'    v_bc VARCHAR(50);',
'BEGIN',
'BEGIN',
'    WITH discount_data AS (',
'    SELECT npt028.discount_id, npt028.discount_value',
'    FROM NPT028 npt028',
'    JOIN NPT008 npt008 ON npt028.discount_id = npt008.discount_id',
'    JOIN NPT032 npt032 ON npt028.discount_id = npt032.discount_id',
'    JOIN NPT009 npt009 ON npt009.customer_id = npt032.customer_id',
'    JOIN NIT001 nit001 ON npt028.sic_id = nit001.sic_id',
'    JOIN NIT002 nit002 ON nit001.item_id = nit002.item_id',
'   WHERE npt009.dba = :P81_DBA',
'     AND npt008.date_to >= SYSDATE',
'     AND npt008.date_from <= SYSDATE',
'     AND nit002.upc = :P81_UPC_SEARCH',
'UNION ALL',
'  SELECT npt029.discount_id, npt029.discount_value',
'    FROM NPT029 npt029',
'    JOIN NPT008 npt008 ON npt029.discount_id = npt008.discount_id',
'    JOIN NPT032 npt032 ON npt029.discount_id = npt032.discount_id',
'    JOIN NPT009 npt009 ON npt009.customer_id = npt032.customer_id',
'    JOIN NIT001 nit001 ON npt029.dept_id = nit001.dept_id',
'    JOIN NIT002 nit002 ON nit001.item_id = nit002.item_id',
'   WHERE npt009.dba = :P81_DBA',
'     AND npt008.date_to >= SYSDATE',
'     AND npt008.date_from <= SYSDATE',
'     AND nit002.upc = :P81_UPC_SEARCH',
'UNION ALL',
'    SELECT npt030.discount_id, npt030.discount_value',
'    FROM NPT030 npt030',
'    JOIN NPT008 npt008 ON npt030.discount_id = npt008.discount_id',
'    JOIN NPT032 npt032 ON npt030.discount_id = npt032.discount_id',
'    JOIN NPT009 npt009 ON npt009.customer_id = npt032.customer_id',
'    JOIN NIT001 nit001 ON npt030.class_id = nit001.class_id',
'    JOIN NIT002 nit002 ON nit001.item_id = nit002.item_id',
'   WHERE npt009.dba = :P81_DBA',
'     AND npt008.date_to >= SYSDATE',
'     AND npt008.date_from <= SYSDATE     ',
'     AND nit002.upc = :P81_UPC_SEARCH',
'UNION ALL',
'    SELECT DISTINCT 0, np09.standard_discount_value',
'     FROM NPT009 np09, NIT001 nt01, NPT032 np032, NIT002 nt02',
'     WHERE np09.class_id = nt01.class_id',
'      AND np09.customer_id = np032.customer_id ',
'      AND np09.dba = :P81_DBA',
'      AND nt01.item_id = nt02.item_id',
'      AND nt02.upc = :P81_UPC_SEARCH',
')',
'    SELECT NVL(discount_id, 0), NVL(MAX(discount_value), 0) AS max_discount_value',
'    INTO v_id, v_disc',
'    FROM discount_data',
'    GROUP BY discount_id',
'    ORDER BY discount_id',
'    OFFSET 0 ROWS',
'    FETCH NEXT 1 ROWS ONLY;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_id := -1;',
'END;',
'',
'BEGIN',
'    SELECT seq_id INTO v_seq',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_DISCOUNTS''',
'      AND n001 = NVL(v_id, 0)',
'      AND c001 = ''D'';',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq := 0; ',
'END;',
'',
'BEGIN',
'    SELECT seq_id INTO v_seq_id',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_A''',
'      AND c006 = :P81_UPC_SEARCH;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq_id := 0;',
'END;',
'',
'BEGIN',
'    SELECT a.item_num INTO v_bc',
'    FROM NIT001 a, NIT002 b',
'    WHERE a.item_id = b.item_id',
'      AND b.upc = :P81_UPC_SEARCH;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_bc := NULL;',
'        END;',
'',
'    IF v_seq = 4 AND v_bc IS NOT NULL AND v_seq_id != 0 THEN',
'        apex_collection.update_member_attribute (',
'                p_collection_name => ''INVOICE_D'',',
'                p_seq => v_seq_id,',
'                p_attr_number => 3,',
'                p_number_value => v_disc',
'                );',
'    END IF;',
'',
'END;',
''))
,p_attribute_02=>'P81_UPC_SEARCH,,P81_DBA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63661830913639639)
,p_event_id=>wwv_flow_imp.id(63656981640639628)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_name=>'Discounted Price A'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_discounted NUMBER;',
'    v_seq_id NUMBER;',
'    v_seq NUMBER;',
'    v_id NUMBER;',
'    v_bc VARCHAR(50);',
'    v_qty NUMBER;',
'BEGIN',
'BEGIN',
'    WITH discount_data AS (',
'    SELECT np028.discount_id AS discount_id, ',
'    NVL(CASE WHEN np08.type = ''Percent'' THEN nt02.price * (np028.discount_value/100)',
'        WHEN np08.type = ''Fixed'' THEN np028.discount_value ',
'        ELSE nt02.price END, 0) AS discounted_price',
'     FROM NPT028 np028, NPT032 np032, NPT008 np08, NPT009 np09, NIT001 nt01, NIT002 nt02',
'    WHERE np09.dba = :P81_DBA',
'      AND np08.discount_id = np028.discount_id',
'      AND np028.discount_id = np032.discount_id',
'      AND np09.customer_id = np032.customer_id',
'      AND np028.sic_id = nt01.sic_id',
'      AND nt01.item_id = nt02.item_id',
'      AND np08.date_to >= SYSDATE',
'      AND np08.date_from <= SYSDATE',
'      AND nt02.upc = :P81_UPC_SEARCH',
'UNION ALL',
'    SELECT np029.discount_id AS discount_id, ',
'    NVL(CASE WHEN np08.type = ''Percent'' THEN nt02.price * (np029.discount_value / 100)',
'            WHEN np08.type = ''Fixed'' THEN np029.discount_value ',
'            ELSE nt02.price END, 0) AS discounted_price',
'     FROM NPT029 np029, NPT032 np032, NPT008 np08, NPT009 np09, NIT001 nt01, NIT002 nt02',
'    WHERE np09.dba = :P81_DBA',
'      AND np08.discount_id = np029.discount_id',
'      AND np029.discount_id = np032.discount_id',
'      AND np09.customer_id = np032.customer_id',
'      AND np029.dept_id = nt01.dept_id',
'      AND nt01.item_id = nt02.item_id',
'      AND np08.date_to >= SYSDATE',
'      AND np08.date_from <= SYSDATE',
'      AND nt02.upc = :P81_UPC_SEARCH',
'UNION ALL',
'    SELECT np030.discount_id AS discount_id, ',
'    NVL(CASE WHEN np08.type = ''Percent'' THEN nt02.price * (np030.discount_value / 100)',
'            WHEN np08.type = ''Fixed'' THEN np030.discount_value ',
'            ELSE nt02.price END, 0) AS discounted_price',
'     FROM NPT030 np030, NPT032 np032, NPT008 np08, NPT009 np09, NIT001 nt01, NIT002 nt02',
'    WHERE np09.dba = :P81_DBA',
'      AND np08.discount_id = np030.discount_id',
'      AND np030.discount_id = np032.discount_id',
'      AND np09.customer_id = np032.customer_id',
'      AND np030.class_id = nt01.class_id',
'      AND nt01.item_id = nt02.item_id',
'      AND np08.date_to >= SYSDATE',
'      AND np08.date_from <= SYSDATE',
'      AND nt02.upc = :P81_UPC_SEARCH',
'UNION ALL',
'     SELECT DISTINCT 0 AS discount_id, NVL(nt02.price * (np09.standard_discount_value / 100), 0) AS discounted_price',
'      FROM NPT009 np09, NPT032 np032, NIT001 nt01, NIT002 nt02',
'     WHERE np09.dba = :P81_DBA',
'       AND nt02.upc = :P81_UPC_SEARCH',
'       AND np09.customer_id = np032.customer_id',
'       AND np09.class_id = nt01.class_id',
'       AND nt02.item_id = nt01.item_id',
')',
'    SELECT NVL(discount_id, 0), NVL(MAX(discounted_price), 0) AS discounted_price',
'      INTO v_id, v_discounted',
'      FROM discount_data',
'  GROUP BY discount_id',
'  ORDER BY discount_id',
'  OFFSET 0 ROWS',
'    FETCH NEXT 1 ROWS ONLY;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_id := -1;',
'END;',
'',
'BEGIN',
'    SELECT seq_id INTO v_seq',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_DISCOUNTS''',
'      AND n001 = NVL(v_id, 0)',
'      AND c001 = ''A'';',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq := 0; ',
'END;',
'',
'BEGIN',
'    SELECT seq_id, n001 INTO v_seq_id, v_qty',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_A''',
'      AND c006 = :P81_UPC_SEARCH;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq_id := 0;',
'END;',
'',
'BEGIN',
'    SELECT a.item_num INTO v_bc',
'    FROM NIT001 a, NIT002 b',
'    WHERE a.item_id = b.item_id',
'      AND b.upc = :P81_UPC_SEARCH;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_bc := NULL;',
'        END;',
'',
'    IF v_seq = 1 AND v_bc IS NOT NULL AND v_seq_id != 0 THEN',
'        apex_collection.update_member_attribute (',
'                p_collection_name => ''INVOICE_A'',',
'                p_seq => v_seq_id,',
'                p_attr_number => 4,',
'                p_number_value => v_discounted',
'                );',
'    ',
'    END IF;',
'',
'END;'))
,p_attribute_02=>'P81_UPC_SEARCH,,P81_DBA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63662340098639640)
,p_event_id=>wwv_flow_imp.id(63656981640639628)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_name=>'Discounted Price B'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_discounted NUMBER;',
'    v_seq_id NUMBER;',
'    v_seq NUMBER;',
'    v_id NUMBER;',
'    v_bc VARCHAR(50);',
'    v_qty NUMBER;',
'BEGIN',
'BEGIN',
'    WITH discount_data AS (',
'    SELECT np028.discount_id AS discount_id, ',
'    NVL(CASE WHEN np08.type = ''Percent'' THEN nt02.price * (np028.discount_value / 100)',
'            WHEN np08.type = ''Fixed'' THEN np028.discount_value ',
'            ELSE nt02.price END, 0) AS discounted_price',
'     FROM NPT028 np028, NPT032 np032, NPT008 np08, NPT009 np09, NIT001 nt01, NIT002 nt02',
'    WHERE np09.dba = :P81_DBA',
'      AND np08.discount_id = np028.discount_id',
'      AND np028.discount_id = np032.discount_id',
'      AND np09.customer_id = np032.customer_id',
'      AND np028.sic_id = nt01.sic_id',
'      AND nt01.item_id = nt02.item_id',
'      AND np08.date_to >= SYSDATE',
'      AND np08.date_from <= SYSDATE',
'      AND nt02.upc = :P81_UPC_SEARCH',
'UNION ALL',
'    SELECT np029.discount_id AS discount_id, ',
'    NVL(CASE WHEN np08.type = ''Percent'' THEN nt02.price * (np029.discount_value / 100)',
'            WHEN np08.type = ''Fixed'' THEN np029.discount_value ',
'            ELSE nt02.price END, 0) AS discounted_price',
'     FROM NPT029 np029, NPT032 np032, NPT008 np08, NPT009 np09, NIT001 nt01, NIT002 nt02',
'    WHERE np09.dba = :P81_DBA',
'      AND np08.discount_id = np029.discount_id',
'      AND np029.discount_id = np032.discount_id',
'      AND np09.customer_id = np032.customer_id',
'      AND np029.dept_id = nt01.dept_id',
'      AND nt01.item_id = nt02.item_id',
'      AND np08.date_to >= SYSDATE',
'      AND np08.date_from <= SYSDATE',
'      AND nt02.upc = :P81_UPC_SEARCH',
'UNION ALL',
'    SELECT np030.discount_id AS discount_id, ',
'    NVL(CASE WHEN np08.type = ''Percent'' THEN nt02.price * (np030.discount_value / 100)',
'            WHEN np08.type = ''Fixed'' THEN np030.discount_value ',
'            ELSE nt02.price END, 0) AS discounted_price',
'     FROM NPT030 np030, NPT032 np032, NPT008 np08, NPT009 np09, NIT001 nt01, NIT002 nt02',
'    WHERE np09.dba = :P81_DBA',
'      AND np08.discount_id = np030.discount_id',
'      AND np030.discount_id = np032.discount_id',
'      AND np09.customer_id = np032.customer_id',
'      AND np030.class_id = nt01.class_id',
'      AND nt01.item_id = nt02.item_id',
'      AND np08.date_to >= SYSDATE',
'      AND np08.date_from <= SYSDATE',
'      AND nt02.upc = :P81_UPC_SEARCH',
'UNION ALL',
'     SELECT DISTINCT 0 AS discount_id, NVL(nt02.price * (np09.standard_discount_value / 100), 0) AS discounted_price',
'      FROM NPT009 np09, NPT032 np032, NIT001 nt01, NIT002 nt02',
'     WHERE np09.dba = :P81_DBA',
'       AND nt02.upc = :P81_UPC_SEARCH',
'       AND np09.customer_id = np032.customer_id',
'       AND np09.class_id = nt01.class_id',
'       AND nt02.item_id = nt01.item_id',
')',
'    SELECT NVL(discount_id, 0), NVL(MAX(discounted_price), 0) AS discounted_price',
'      INTO v_id, v_discounted',
'      FROM discount_data',
'  GROUP BY discount_id',
'  ORDER BY discount_id',
'  OFFSET 0 ROWS',
'    FETCH NEXT 1 ROWS ONLY;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_id := -1;',
'END;',
'',
'BEGIN',
'    SELECT seq_id INTO v_seq',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_DISCOUNTS''',
'      AND n001 = NVL(v_id, 0)',
'      AND c001 = ''B'';',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq := 0; ',
'END;',
'',
'BEGIN',
'    SELECT seq_id, n001 INTO v_seq_id, v_qty',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_A''',
'      AND c006 = :P81_UPC_SEARCH;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq_id := 0;',
'END;',
'',
'BEGIN',
'    SELECT a.item_num INTO v_bc',
'    FROM NIT001 a, NIT002 b',
'    WHERE a.item_id = b.item_id',
'      AND b.upc = :P81_UPC_SEARCH;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_bc := NULL;',
'        END;',
'',
'    IF v_seq = 2 AND v_bc IS NOT NULL AND v_seq_id != 0 THEN',
'        apex_collection.update_member_attribute (',
'                p_collection_name => ''INVOICE_B'',',
'                p_seq => v_seq_id,',
'                p_attr_number => 4,',
'                p_number_value => v_discounted',
'                );',
'    END IF;',
'',
'END;',
''))
,p_attribute_02=>'P81_UPC_SEARCH,,P81_DBA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63662850246639643)
,p_event_id=>wwv_flow_imp.id(63656981640639628)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_name=>'Discounted Price C'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_discounted NUMBER;',
'    v_seq_id NUMBER;',
'    v_seq NUMBER;',
'    v_id NUMBER;',
'    v_bc VARCHAR(50);',
'    v_qty NUMBER;',
'BEGIN',
'BEGIN',
'    WITH discount_data AS (',
'    SELECT np028.discount_id AS discount_id, ',
'    NVL(CASE WHEN np08.type = ''Percent'' THEN nt02.price * (np028.discount_value / 100)',
'            WHEN np08.type = ''Fixed'' THEN np028.discount_value ',
'            ELSE nt02.price END, 0) AS discounted_price',
'     FROM NPT028 np028, NPT032 np032, NPT008 np08, NPT009 np09, NIT001 nt01, NIT002 nt02',
'    WHERE np09.dba = :P81_DBA',
'      AND np08.discount_id = np028.discount_id',
'      AND np028.discount_id = np032.discount_id',
'      AND np09.customer_id = np032.customer_id',
'      AND np028.sic_id = nt01.sic_id',
'      AND nt01.item_id = nt02.item_id',
'      AND np08.date_to >= SYSDATE',
'      AND np08.date_from <= SYSDATE',
'      AND nt02.upc = :P81_UPC_SEARCH',
'UNION ALL',
'    SELECT np029.discount_id AS discount_id, ',
'    NVL(CASE WHEN np08.type = ''Percent'' THEN nt02.price * (np029.discount_value / 100)',
'            WHEN np08.type = ''Fixed'' THEN np029.discount_value ',
'            ELSE nt02.price END, 0) AS discounted_price',
'     FROM NPT029 np029, NPT032 np032, NPT008 np08, NPT009 np09, NIT001 nt01, NIT002 nt02',
'    WHERE np09.dba = :P81_DBA',
'      AND np08.discount_id = np029.discount_id',
'      AND np029.discount_id = np032.discount_id',
'      AND np09.customer_id = np032.customer_id',
'      AND np029.dept_id = nt01.dept_id',
'      AND nt01.item_id = nt02.item_id',
'      AND np08.date_to >= SYSDATE',
'      AND np08.date_from <= SYSDATE',
'      AND nt02.upc = :P81_UPC_SEARCH',
'UNION ALL',
'    SELECT np030.discount_id AS discount_id, ',
'    NVL(CASE WHEN np08.type = ''Percent'' THEN nt02.price * (np030.discount_value / 100)',
'            WHEN np08.type = ''Fixed'' THEN np030.discount_value ',
'            ELSE nt02.price END, 0) AS discounted_price',
'     FROM NPT030 np030, NPT032 np032, NPT008 np08, NPT009 np09, NIT001 nt01, NIT002 nt02',
'    WHERE np09.dba = :P81_DBA',
'      AND np08.discount_id = np030.discount_id',
'      AND np030.discount_id = np032.discount_id',
'      AND np09.customer_id = np032.customer_id',
'      AND np030.class_id = nt01.class_id',
'      AND nt01.item_id = nt02.item_id',
'      AND np08.date_to >= SYSDATE',
'      AND np08.date_from <= SYSDATE',
'      AND nt02.upc = :P81_UPC_SEARCH',
'UNION ALL',
'     SELECT DISTINCT 0 AS discount_id, NVL(nt02.price * (np09.standard_discount_value / 100), 0) AS discounted_price',
'      FROM NPT009 np09, NPT032 np032, NIT001 nt01, NIT002 nt02',
'     WHERE np09.dba = :P81_DBA',
'       AND nt02.upc = :P81_UPC_SEARCH',
'       AND np09.customer_id = np032.customer_id',
'       AND np09.class_id = nt01.class_id',
'       AND nt02.item_id = nt01.item_id',
')',
'    SELECT NVL(discount_id, 0), NVL(MAX(discounted_price), 0) AS discounted_price',
'      INTO v_id, v_discounted',
'      FROM discount_data',
'  GROUP BY discount_id',
'  ORDER BY discount_id',
'  OFFSET 0 ROWS',
'    FETCH NEXT 1 ROWS ONLY;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_id := -1;',
'END;',
'',
'BEGIN',
'    SELECT seq_id INTO v_seq',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_DISCOUNTS''',
'      AND n001 = NVL(v_id, 0)',
'      AND c001 = ''C'';',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq := 0; ',
'END;',
'',
'BEGIN',
'    SELECT seq_id, n001 INTO v_seq_id, v_qty',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_A''',
'      AND c006 = :P81_UPC_SEARCH;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq_id := 0;',
'END;',
'',
'BEGIN',
'    SELECT a.item_num INTO v_bc',
'    FROM NIT001 a, NIT002 b',
'    WHERE a.item_id = b.item_id',
'      AND b.upc = :P81_UPC_SEARCH;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_bc := NULL;',
'        END;',
'',
'    IF v_seq = 3 AND v_bc IS NOT NULL AND v_seq_id != 0 THEN',
'        apex_collection.update_member_attribute (',
'                p_collection_name => ''INVOICE_C'',',
'                p_seq => v_seq_id,',
'                p_attr_number => 4,',
'                p_number_value => v_discounted',
'                );',
'    END IF;',
'',
'END;',
''))
,p_attribute_02=>'P81_UPC_SEARCH,,P81_DBA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63663355644639645)
,p_event_id=>wwv_flow_imp.id(63656981640639628)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'N'
,p_name=>'Discounted Price D'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_price NUMBER;',
'    v_seq_id NUMBER;',
'    v_seq NUMBER;',
'    v_id NUMBER := 0;',
'    v_bc VARCHAR(50);',
'BEGIN',
'BEGIN',
'    WITH discount_data AS (',
'    SELECT np028.discount_id AS discount_id, ',
'    NVL(CASE WHEN np08.type = ''Percent'' THEN nt02.price * (np028.discount_value / 100)',
'            WHEN np08.type = ''Fixed'' THEN np028.discount_value ',
'            ELSE nt02.price END, 0) AS discounted_price',
'     FROM NPT028 np028, NPT032 np032, NPT008 np08, NPT009 np09, NIT001 nt01, NIT002 nt02',
'    WHERE np09.dba = :P81_DBA',
'      AND np08.discount_id = np028.discount_id',
'      AND np028.discount_id = np032.discount_id',
'      AND np09.customer_id = np032.customer_id',
'      AND np028.sic_id = nt01.sic_id',
'      AND nt01.item_id = nt02.item_id',
'      AND np08.date_to >= SYSDATE',
'      AND np08.date_from <= SYSDATE',
'      AND nt02.upc = :P81_UPC_SEARCH',
'UNION ALL',
'    SELECT np029.discount_id AS discount_id, ',
'    NVL(CASE WHEN np08.type = ''Percent'' THEN nt02.price * (np029.discount_value / 100)',
'            WHEN np08.type = ''Fixed'' THEN np029.discount_value ',
'            ELSE nt02.price END, 0) AS discounted_price',
'     FROM NPT029 np029, NPT032 np032, NPT008 np08, NPT009 np09, NIT001 nt01, NIT002 nt02',
'    WHERE np09.dba = :P81_DBA',
'      AND np08.discount_id = np029.discount_id',
'      AND np029.discount_id = np032.discount_id',
'      AND np09.customer_id = np032.customer_id',
'      AND np029.dept_id = nt01.dept_id',
'      AND nt01.item_id = nt02.item_id',
'      AND np08.date_to >= SYSDATE',
'      AND np08.date_from <= SYSDATE',
'      AND nt02.upc = :P81_UPC_SEARCH',
'UNION ALL',
'    SELECT np030.discount_id AS discount_id, ',
'    NVL(CASE WHEN np08.type = ''Percent'' THEN nt02.price * (np030.discount_value / 100)',
'            WHEN np08.type = ''Fixed'' THEN np030.discount_value ',
'            ELSE nt02.price END, 0) AS discounted_price',
'     FROM NPT030 np030, NPT032 np032, NPT008 np08, NPT009 np09, NIT001 nt01, NIT002 nt02',
'    WHERE np09.dba = :P81_DBA',
'      AND np08.discount_id = np030.discount_id',
'      AND np030.discount_id = np032.discount_id',
'      AND np09.customer_id = np032.customer_id',
'      AND np030.class_id = nt01.class_id',
'      AND nt01.item_id = nt02.item_id',
'      AND np08.date_to >= SYSDATE',
'      AND np08.date_from <= SYSDATE',
'      AND nt02.upc = :P81_UPC_SEARCH',
'UNION ALL',
'     SELECT DISTINCT 0 AS discount_id, NVL(nt02.price * (np09.standard_discount_value / 100), 0) AS discounted_price',
'      FROM NPT009 np09, NPT032 np032, NIT001 nt01, NIT002 nt02',
'     WHERE np09.dba = :P81_DBA',
'       AND nt02.upc = :P81_UPC_SEARCH',
'       AND np09.customer_id = np032.customer_id',
'       AND np09.class_id = nt01.class_id',
'       AND nt02.item_id = nt01.item_id',
')',
'    SELECT NVL(discount_id, 0), NVL(MAX(discounted_price), 0) AS discounted_price',
'      INTO v_id, v_price',
'      FROM discount_data',
'  GROUP BY discount_id',
'  ORDER BY discount_id',
'  OFFSET 0 ROWS',
'    FETCH NEXT 1 ROWS ONLY;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_id := -1;',
'        v_price := 0;',
'END;',
'',
'BEGIN',
'    SELECT seq_id INTO v_seq',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_DISCOUNTS''',
'      AND n001 = NVL(v_id, 0)',
'      AND c001 = ''D'';',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq := 0; ',
'END;',
'',
'BEGIN',
'    SELECT seq_id INTO v_seq_id',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_A''',
'      AND c006 = :P81_UPC_SEARCH;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq_id := 0;',
'END;',
'',
'BEGIN',
'    SELECT a.item_num INTO v_bc',
'    FROM NIT001 a, NIT002 b',
'    WHERE a.item_id = b.item_id',
'      AND b.upc = :P81_UPC_SEARCH;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_bc := NULL;',
'        END;',
'',
'    IF v_seq = 4 AND v_bc IS NOT NULL AND v_seq_id != 0 THEN',
'        apex_collection.update_member_attribute (',
'                p_collection_name => ''INVOICE_D'',',
'                p_seq => v_seq_id,',
'                p_attr_number => 4,',
'                p_number_value => v_price',
'                );',
'    END IF;',
'',
'END;',
''))
,p_attribute_02=>'P81_UPC_SEARCH,,P81_DBA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63657807072639631)
,p_event_id=>wwv_flow_imp.id(63656981640639628)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'Y'
,p_name=>'Sub-Total'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P81_SUB'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH COLLECTION_SUMS AS (',
'    SELECT ''DISCOUNT_A'' AS collection_name, SUM(n002 * n001) AS SUB_TOTAL',
'    FROM apex_collections',
'    WHERE collection_name = ''DISCOUNT_A''',
' ',
'    UNION ALL',
' ',
'    SELECT ''DISCOUNT_B'' AS collection_name, SUM(n002 * n001) AS SUB_TOTAL',
'    FROM apex_collections',
'    WHERE collection_name = ''DISCOUNT_B''',
' ',
'    UNION ALL',
' ',
'    SELECT ''DISCOUNT_C'' AS collection_name, SUM(n002 * n001) AS SUB_TOTAL',
'    FROM apex_collections',
'    WHERE collection_name = ''DISCOUNT_C''',
' ',
'    UNION ALL',
' ',
'    SELECT ''DISCOUNT_D'' AS collection_name, SUM(n002 * n001) AS SUB_TOTAL',
'    FROM apex_collections',
'    WHERE collection_name = ''DISCOUNT_D''',
'),',
'LOWEST_SUM AS (',
'    SELECT collection_name',
'    FROM COLLECTION_SUMS',
'    WHERE SUB_TOTAL = (SELECT MIN(SUB_TOTAL) FROM COLLECTION_SUMS)',
'    FETCH FIRST 1 ROW ONLY',
')',
'SELECT TO_CHAR(SUM(n002 * n001), ''FM999G999G999G999D00'' ) ',
'FROM apex_collections',
'WHERE collection_name IN (SELECT collection_name FROM LOWEST_SUM);'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63658303183639632)
,p_event_id=>wwv_flow_imp.id(63656981640639628)
,p_event_result=>'TRUE'
,p_action_sequence=>150
,p_execute_on_page_init=>'Y'
,p_name=>'Discount'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P81_DISCOUNT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH COLLECTION_SUMS AS (',
'    SELECT ''DISCOUNT_A'' AS collection_name, SUM(n004 * n001) AS TOTAL_DISCOUNT',
'    FROM apex_collections',
'    WHERE collection_name = ''DISCOUNT_A''',
' ',
'    UNION ALL',
' ',
'    SELECT ''DISCOUNT_B'' AS collection_name, SUM(n004 * n001) AS TOTAL_DISCOUNT',
'    FROM apex_collections',
'    WHERE collection_name = ''DISCOUNT_B''',
' ',
'    UNION ALL',
' ',
'    SELECT ''DISCOUNT_C'' AS collection_name, SUM(n004 * n001) AS TOTAL_DISCOUNT',
'    FROM apex_collections',
'    WHERE collection_name = ''DISCOUNT_C''',
' ',
'    UNION ALL',
' ',
'    SELECT ''DISCOUNT_D'' AS collection_name, SUM(n004 * n001) AS TOTAL_DISCOUNT',
'    FROM apex_collections',
'    WHERE collection_name = ''DISCOUNT_D''',
'),',
'LOWEST_SUM AS (',
'    SELECT collection_name',
'    FROM COLLECTION_SUMS',
'    WHERE TOTAL_DISCOUNT = (SELECT MAX(TOTAL_DISCOUNT) FROM COLLECTION_SUMS)',
'    FETCH FIRST 1 ROW ONLY',
')',
'SELECT TO_CHAR(SUM(n004 * n001), ''FM999G999G999G999D00'' ) ',
'FROM apex_collections',
'WHERE collection_name IN (SELECT collection_name FROM LOWEST_SUM);'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63658897704639632)
,p_event_id=>wwv_flow_imp.id(63656981640639628)
,p_event_result=>'TRUE'
,p_action_sequence=>170
,p_execute_on_page_init=>'Y'
,p_name=>'Total'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P81_TOTAL'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'TO_CHAR(NVL(TO_NUMBER(REPLACE(REPLACE(NVL(:P81_SUB, 0), ''$'', ''''), '','', '''')) - TO_NUMBER(REPLACE(REPLACE(NVL(:P81_DISCOUNT, 0), ''$'', ''''), '','', '''')), 0), ''FM999G999G999G990D00'' ) '
,p_attribute_07=>'P81_SUB,P81_DISCOUNT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63659352853639634)
,p_event_id=>wwv_flow_imp.id(63656981640639628)
,p_event_result=>'TRUE'
,p_action_sequence=>190
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P81_SUB,P81_DISCOUNT,P81_TOTAL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63663853117639646)
,p_event_id=>wwv_flow_imp.id(63656981640639628)
,p_event_result=>'TRUE'
,p_action_sequence=>210
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63664342859639646)
,p_event_id=>wwv_flow_imp.id(63656981640639628)
,p_event_result=>'TRUE'
,p_action_sequence=>220
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let disableUPCSearch = ''no'';',
'apex.item("P81_CLICKED_SEARCH_F2").setValue(disableUPCSearch);',
'',
'setTimeout(() => {',
'    $(document).ready(function() {',
'            var gridView = apex.region("orders").widget().interactiveGrid("getViews").grid;',
'            var model = gridView.model;',
'            if (model.getTotalRecords() > 0) {',
'                var editIndex = model.getTotalRecords() - 1;',
'                var recordAt = model.recordAt(editIndex); // record number always start at 0',
'                gridView.view$.grid("gotoCell", recordAt[0], "ITEM_NO"); // focus on ITEM_NO column',
'                gridView.view$.find(".a-GV-cell.is-focused").trigger("dblclick"); // trigger double click on focused cell',
'            }',
'    });',
'}, 1000);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(63666054261641210)
,p_name=>'Update A'
,p_event_sequence=>120
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'UpdateQty'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63668450899641214)
,p_event_id=>wwv_flow_imp.id(63666054261641210)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_seq_id    NUMBER;',
'    v_price     NUMBER;',
'    v_qty       NUMBER;',
'begin',
'    select seq_id',
'      into v_seq_id',
'      from apex_collections ',
'     where collection_name = ''INVOICE_A''',
'       and c001 = :P81_SELECTED_ITEM_NO;',
'       ',
'        APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'            p_collection_name => ''INVOICE_A'',',
'            p_seq => v_seq_id,',
'            p_attr_number => 1,',
'            p_number_value => :P81_SELECTED_QTY);',
'',
'        APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'            p_collection_name => ''INVOICE_A'',',
'            p_seq => v_seq_id,',
'            p_attr_number => 5,',
'            p_number_value => :P81_SELECTED_QTY * :P81_SELECTED_PRICE);',
'',
'    select seq_id, n001',
'      into v_seq_id, v_qty',
'      from apex_collections ',
'     where collection_name = ''INVOICE_A''',
'       and c001 = :P81_SELECTED_ITEM_NO;',
'',
'        IF v_qty = 0 THEN',
'            APEX_COLLECTION.DELETE_MEMBER(',
'            p_collection_name => ''INVOICE_A'',',
'            p_seq => v_seq_id );',
'        END IF;',
'end;'))
,p_attribute_02=>'P81_SELECTED_ITEM_NO,P81_SELECTED_QTY,P81_SELECTED_PRICE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63666922815641212)
,p_event_id=>wwv_flow_imp.id(63666054261641210)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_name=>'Sub-Total'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P81_SUB'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH COLLECTION_SUMS AS (',
'    SELECT ''DISCOUNT_A'' AS collection_name, SUM(n002 * n001) AS SUB_TOTAL',
'    FROM apex_collections',
'    WHERE collection_name = ''DISCOUNT_A''',
' ',
'    UNION ALL',
' ',
'    SELECT ''DISCOUNT_B'' AS collection_name, SUM(n002 * n001) AS SUB_TOTAL',
'    FROM apex_collections',
'    WHERE collection_name = ''DISCOUNT_B''',
' ',
'    UNION ALL',
' ',
'    SELECT ''DISCOUNT_C'' AS collection_name, SUM(n002 * n001) AS SUB_TOTAL',
'    FROM apex_collections',
'    WHERE collection_name = ''DISCOUNT_C''',
' ',
'    UNION ALL',
' ',
'    SELECT ''DISCOUNT_D'' AS collection_name, SUM(n002 * n001) AS SUB_TOTAL',
'    FROM apex_collections',
'    WHERE collection_name = ''DISCOUNT_D''',
'),',
'LOWEST_SUM AS (',
'    SELECT collection_name',
'    FROM COLLECTION_SUMS',
'    WHERE SUB_TOTAL = (SELECT MIN(SUB_TOTAL) FROM COLLECTION_SUMS)',
'    FETCH FIRST 1 ROW ONLY',
')',
'SELECT TO_CHAR(SUM(n002 * n001), ''FM999999999999.00'' ) ',
'FROM apex_collections',
'WHERE collection_name IN (SELECT collection_name FROM LOWEST_SUM);'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63666444137641212)
,p_event_id=>wwv_flow_imp.id(63666054261641210)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_name=>'Discount'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P81_DISCOUNT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH COLLECTION_SUMS AS (',
'    SELECT ''DISCOUNT_A'' AS collection_name, SUM(n004 * n001) AS TOTAL_DISCOUNT',
'    FROM apex_collections',
'    WHERE collection_name = ''DISCOUNT_A''',
' ',
'    UNION ALL',
' ',
'    SELECT ''DISCOUNT_B'' AS collection_name, SUM(n004 * n001) AS TOTAL_DISCOUNT',
'    FROM apex_collections',
'    WHERE collection_name = ''DISCOUNT_B''',
' ',
'    UNION ALL',
' ',
'    SELECT ''DISCOUNT_C'' AS collection_name, SUM(n004 * n001) AS TOTAL_DISCOUNT',
'    FROM apex_collections',
'    WHERE collection_name = ''DISCOUNT_C''',
' ',
'    UNION ALL',
' ',
'    SELECT ''DISCOUNT_D'' AS collection_name, SUM(n004 * n001) AS TOTAL_DISCOUNT',
'    FROM apex_collections',
'    WHERE collection_name = ''DISCOUNT_D''',
'),',
'LOWEST_SUM AS (',
'    SELECT collection_name',
'    FROM COLLECTION_SUMS',
'    WHERE TOTAL_DISCOUNT = (SELECT MAX(TOTAL_DISCOUNT) FROM COLLECTION_SUMS)',
'    FETCH FIRST 1 ROW ONLY',
')',
'SELECT TO_CHAR(SUM(n004 * n001), ''FM999999999999.00'' ) ',
'FROM apex_collections',
'WHERE collection_name IN (SELECT collection_name FROM LOWEST_SUM);'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63667404733641212)
,p_event_id=>wwv_flow_imp.id(63666054261641210)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_name=>'Total'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P81_TOTAL'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'TO_CHAR(TO_NUMBER(REPLACE(REPLACE(NVL(:P81_SUB, 0), ''$'', ''''), '','', '''')) - TO_NUMBER(REPLACE(REPLACE(NVL(:P81_DISCOUNT, 0), ''$'', ''''), '','', '''')), ''FM999999999999.00'' ) '
,p_attribute_07=>'P81_SUB,P81_DISCOUNT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63667910211641214)
,p_event_id=>wwv_flow_imp.id(63666054261641210)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P81_SUB,P81_DISCOUNT,P81_TOTAL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63668913915641214)
,p_event_id=>wwv_flow_imp.id(63666054261641210)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(63670980728677306)
,p_name=>'Set QOH'
,p_event_sequence=>130
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(63541202037289245)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63671896783677307)
,p_event_id=>wwv_flow_imp.id(63670980728677306)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (this.data?.selectedRecords?.length > 0) {',
'    var selRec = this.data.selectedRecords;',
'    let itemIdSelected = selRec[0][1];',
'    let itemNoSelected = selRec[0][2];',
'    let priceSelected = selRec[0][6];',
'    let uomSelected = selRec[0][7];',
'    let index = selRec[0][0];',
'    console.log(itemIdSelected);',
'    console.log(itemNoSelected);',
'    apex.item("P81_SELECTED_ITEM_NO").setValue(itemNoSelected);',
'    apex.item("P81_SELECTED_ITEM_ID").setValue(itemIdSelected);',
'    apex.item("P81_SELECTED_PRICE").setValue(priceSelected.replace(/[,]/g, ""));',
'    apex.item("P81_SELECTED_UOM").setValue(uomSelected);',
'    apex.item("P81_SELECTED_INDEX").setValue(index);',
'',
'} else if (this.data?.record?.length > 0) {',
'    var rec = this.data.record;',
'    let itemNoSelected = rec[1];',
'    let itemIdSelected = rec[2];',
'    let priceSelected = rec[6];',
'    let uomSelected = rec[7];',
'    let index = rec[0][0];',
'    console.log(itemIdSelected);',
'    console.log(itemNoSelected);',
'    apex.item("P81_SELECTED_ITEM_NO").setValue(itemNoSelected);',
'    apex.item("P81_SELECTED_ITEM_ID").setValue(itemIdSelected);',
'    apex.item("P81_SELECTED_PRICE").setValue(priceSelected.replace(/[,]/g, ""));',
'    apex.item("P81_SELECTED_UOM").setValue(uomSelected);',
'    apex.item("P381_SELECTED_INDEX").setValue(index);',
'',
'}',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63671310960677306)
,p_event_id=>wwv_flow_imp.id(63670980728677306)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(() => {',
'    $.event.trigger(''GetLocWh'');',
'}, 500)'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(63687687366742207)
,p_name=>'GetLocWh'
,p_event_sequence=>140
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'GetLocWh'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63688026959742209)
,p_event_id=>wwv_flow_imp.id(63687687366742207)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_name=>'Set LOC 1 - WH 1'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P81_WH_1'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    no_data_found exception;',
'    wh_1 NUMBER := 0;',
'    qty NUMBER := 0;',
'BEGIN',
'',
'    BEGIN ',
'        SELECT nim027.WAREHOUSE_LOCATION, nit004.QTY INTO wh_1, qty',
'        FROM ',
'            NIM027 nim027',
'        JOIN',
'            NIT004 nit004 ON nim027.WAREHOUSE_ID = nit004.WAREHOUSE_ID',
'        WHERE',
'            nit004.ITEM_ID = (SELECT nit001.ITEM_ID',
'                              FROM NIT001 nit001',
'                              WHERE nit001.ITEM_ID = (SELECT nit002.ITEM_ID ',
'                                                      FROM NIT002 nit002',
'                                                      WHERE nit002.UPC = :P81_SELECTED_ITEM_NO))',
'        ORDER BY nit004.QTY DESC',
'        OFFSET 0 ROWS',
'        FETCH NEXT 1 ROWS ONLY;',
'',
'        -- For some reason, it only works when this code is added',
'        raise_application_error(-20001, wh_1);',
' ',
'        EXCEPTION ',
'            WHEN no_data_found THEN',
'                :P81_WH_1 := '''';',
'            WHEN OTHERS THEN',
'                :P81_WH_1 := wh_1;',
'    END;',
'',
'    RETURN :P81_WH_1;',
'END;'))
,p_attribute_07=>'P81_SELECTED_ITEM_NO'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_elem_type=>'COLUMN'
,p_client_condition_element=>'ITEM_NO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63690003291742212)
,p_event_id=>wwv_flow_imp.id(63687687366742207)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_name=>'Set LOC 2 - WH 2'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P81_WH_2'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    no_data_found exception;',
'    wh_2 NUMBER := 0;',
'    qty NUMBER := 0;',
'BEGIN',
'',
'    -- USED FOR SEARCHING USING BARCODE (SHOULD BE ITEM_NUM)',
'    -- BUT ACCORDING TO SIR ERNAN, UPC IS BEING USED IN BARCODE SEARCH',
'    BEGIN ',
'        SELECT nim027.WAREHOUSE_LOCATION, nit004.QTY INTO wh_2, qty',
'        FROM ',
'            NIM027 nim027',
'        JOIN',
'            NIT004 nit004 ON nim027.WAREHOUSE_ID = nit004.WAREHOUSE_ID',
'        WHERE',
'            nit004.ITEM_ID = (SELECT nit001.ITEM_ID',
'                              FROM NIT001 nit001',
'                              WHERE nit001.ITEM_ID = (SELECT nit002.ITEM_ID ',
'                                                      FROM NIT002 nit002',
'                                                      WHERE nit002.UPC = :P81_SELECTED_ITEM_NO))',
'        ORDER BY nit004.QTY DESC',
'        OFFSET 1 ROWS',
'        FETCH NEXT 1 ROWS ONLY;',
'',
'        -- For some reason, it only works when this code is added',
'        raise_application_error(-20001, wh_2);',
' ',
'        EXCEPTION ',
'            WHEN no_data_found THEN',
'                :P81_WH_2 := '''';',
'            WHEN OTHERS THEN',
'                :P81_WH_2 := wh_2;',
'    END;',
'',
'    RETURN :P81_WH_2;',
'END;'))
,p_attribute_07=>'P81_SELECTED_ITEM_NO'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_elem_type=>'COLUMN'
,p_client_condition_element=>'ITEM_NO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63690565623742214)
,p_event_id=>wwv_flow_imp.id(63687687366742207)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_name=>'Set LOC 3 - WH 3'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P81_WH_3'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    no_data_found exception;',
'    wh_3 NUMBER := 0;',
'    qty NUMBER := 0;',
'BEGIN',
'',
'    -- USED FOR SEARCHING USING BARCODE (SHOULD BE ITEM_NUM)',
'    -- BUT ACCORDING TO SIR ERNAN, UPC IS BEING USED IN BARCODE SEARCH',
'    BEGIN ',
'        SELECT nim027.WAREHOUSE_LOCATION, nit004.QTY INTO wh_3, qty',
'        FROM ',
'            NIM027 nim027',
'        JOIN',
'            NIT004 nit004 ON nim027.WAREHOUSE_ID = nit004.WAREHOUSE_ID',
'        WHERE',
'            nit004.ITEM_ID = (SELECT nit001.ITEM_ID',
'                              FROM NIT001 nit001',
'                              WHERE nit001.ITEM_ID = (SELECT nit002.ITEM_ID ',
'                                                      FROM NIT002 nit002',
'                                                      WHERE nit002.UPC = :P81_SELECTED_ITEM_NO))',
'        ORDER BY nit004.QTY DESC',
'        OFFSET 2 ROWS',
'        FETCH NEXT 1 ROWS ONLY;',
'',
'        -- For some reason, it only works when this code is added',
'        raise_application_error(-20001, wh_3);',
' ',
'        EXCEPTION ',
'            WHEN no_data_found THEN',
'                :P81_WH_3 := '''';',
'            WHEN OTHERS THEN',
'                :P81_WH_3 := wh_3;',
'    END;',
'',
'    RETURN :P81_WH_3;',
'END;'))
,p_attribute_07=>'P81_SELECTED_ITEM_NO'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_elem_type=>'COLUMN'
,p_client_condition_element=>'ITEM_NO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63691089983742215)
,p_event_id=>wwv_flow_imp.id(63687687366742207)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_name=>'Set LOC 1 - QTY 1'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P81_LOC_1'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    no_data_found exception;',
'    loc_1 NUMBER := 0;',
'    qty NUMBER := 0;',
'BEGIN',
'',
'    -- USED FOR SEARCHING USING BARCODE (SHOULD BE ITEM_NUM)',
'    -- BUT ACCORDING TO SIR ERNAN, UPC IS BEING USED IN BARCODE SEARCH',
'    BEGIN ',
'        SELECT nim027.WAREHOUSE_LOCATION, nit004.QTY INTO loc_1, qty',
'        FROM ',
'            NIM027 nim027',
'        JOIN',
'            NIT004 nit004 ON nim027.WAREHOUSE_ID = nit004.WAREHOUSE_ID',
'        WHERE',
'            nit004.ITEM_ID = (SELECT nit001.ITEM_ID',
'                              FROM NIT001 nit001',
'                              WHERE nit001.ITEM_ID = (SELECT nit002.ITEM_ID ',
'                                                      FROM NIT002 nit002',
'                                                      WHERE nit002.UPC = :P81_SELECTED_ITEM_NO))',
'        ORDER BY nit004.QTY DESC',
'        OFFSET 0 ROWS',
'        FETCH NEXT 1 ROWS ONLY;',
'',
'        -- For some reason, it only works when this code is added',
'        raise_application_error(-20001, qty);',
' ',
'        EXCEPTION ',
'            WHEN no_data_found THEN',
'                :P81_LOC_1 := '''';',
'            WHEN OTHERS THEN',
'                :P81_LOC_1 := NULLIF(qty, 0);',
'    END;',
'',
'    RETURN :P81_LOC_1;',
'END;'))
,p_attribute_07=>'P81_SELECTED_ITEM_NO'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_elem_type=>'COLUMN'
,p_client_condition_element=>'ITEM_NO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63689061404742210)
,p_event_id=>wwv_flow_imp.id(63687687366742207)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_name=>'Set LOC 2 - QTY 2'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P81_LOC_2'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    no_data_found exception;',
'    loc_2 NUMBER := 0;',
'    qty NUMBER := 0;',
'BEGIN',
'',
'    -- USED FOR SEARCHING USING BARCODE (SHOULD BE ITEM_NUM)',
'    -- BUT ACCORDING TO SIR ERNAN, UPC IS BEING USED IN BARCODE SEARCH',
'    BEGIN ',
'        SELECT nim027.WAREHOUSE_LOCATION, nit004.QTY INTO loc_2, qty',
'        FROM ',
'            NIM027 nim027',
'        JOIN',
'            NIT004 nit004 ON nim027.WAREHOUSE_ID = nit004.WAREHOUSE_ID',
'        WHERE',
'            nit004.ITEM_ID = (SELECT nit001.ITEM_ID',
'                              FROM NIT001 nit001',
'                              WHERE nit001.ITEM_ID = (SELECT nit002.ITEM_ID ',
'                                                      FROM NIT002 nit002',
'                                                      WHERE nit002.UPC = :P81_SELECTED_ITEM_NO))',
'        ORDER BY nit004.QTY DESC',
'        OFFSET 1 ROWS',
'        FETCH NEXT 1 ROWS ONLY;',
'',
'        raise_application_error(-20001, qty);',
' ',
'        EXCEPTION ',
'            WHEN no_data_found THEN',
'                :P81_LOC_2 := '''';',
'            WHEN OTHERS THEN',
'                :P81_LOC_2 := NULLIF(qty, 0);',
'    END;',
'',
'    RETURN :P81_LOC_2;',
'END;'))
,p_attribute_07=>'P81_SELECTED_ITEM_NO'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_elem_type=>'COLUMN'
,p_client_condition_element=>'ITEM_NO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63689592225742212)
,p_event_id=>wwv_flow_imp.id(63687687366742207)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_name=>'Set LOC 3 - QTY 3'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P81_LOC_3'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    no_data_found exception;',
'    loc_3 NUMBER := 0;',
'    qty NUMBER := 0;',
'BEGIN',
'',
'    -- USED FOR SEARCHING USING BARCODE (SHOULD BE ITEM_NUM)',
'    -- BUT ACCORDING TO SIR ERNAN, UPC IS BEING USED IN BARCODE SEARCH',
'    BEGIN ',
'        SELECT nim027.WAREHOUSE_LOCATION, nit004.QTY INTO loc_3, qty',
'        FROM ',
'            NIM027 nim027',
'        JOIN',
'            NIT004 nit004 ON nim027.WAREHOUSE_ID = nit004.WAREHOUSE_ID',
'        WHERE',
'            nit004.ITEM_ID = (SELECT nit001.ITEM_ID',
'                              FROM NIT001 nit001',
'                              WHERE nit001.ITEM_ID = (SELECT nit002.ITEM_ID ',
'                                                      FROM NIT002 nit002',
'                                                      WHERE nit002.UPC = :P81_SELECTED_ITEM_NO))',
'        ORDER BY nit004.QTY DESC',
'        OFFSET 2 ROWS',
'        FETCH NEXT 1 ROWS ONLY;',
'',
'        raise_application_error(-20001, qty);',
' ',
'        EXCEPTION ',
'            WHEN no_data_found THEN',
'                :P81_LOC_3 := '''';',
'            WHEN OTHERS THEN',
'                :P81_LOC_3 := NULLIF(qty, 0);',
'    END;',
'',
'    RETURN :P81_LOC_3;',
'END;'))
,p_attribute_07=>'P81_SELECTED_ITEM_NO'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_elem_type=>'COLUMN'
,p_client_condition_element=>'ITEM_NO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63688536052742210)
,p_event_id=>wwv_flow_imp.id(63687687366742207)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($(''#P81_LOC_1'').val() > 0) {',
'    document.getElementById("P81_LOC_1_LABEL").innerHTML = "LOC #" + $(''#P81_WH_1'').val();',
'} else {',
'    document.getElementById("P81_LOC_1_LABEL").innerHTML = "";',
'}',
'',
'if ($(''#P81_LOC_2'').val() > 0) {',
'    document.getElementById("P81_LOC_2_LABEL").innerHTML = "LOC #" + $(''#P81_WH_2'').val();',
'} else {',
'    document.getElementById("P81_LOC_2_LABEL").innerHTML = "";',
'}',
'',
'if ($(''#P81_LOC_3'').val() > 0) {',
'    document.getElementById("P81_LOC_3_LABEL").innerHTML = "LOC #" + $(''#P81_WH_3'').val();',
'} else {',
'    document.getElementById("P81_LOC_3_LABEL").innerHTML = "";',
'}'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(63613446828597912)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(63541202037289245)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Wholesale Invoice - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>63613446828597912
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
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(62596906735570830)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'INVOICE_A'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(',
'        p_collection_name => ''INVOICE_A'');'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>62596906735570830
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(62597078643570831)
,p_process_sequence=>40
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'INVOICE_B'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(',
'        p_collection_name => ''INVOICE_B'');'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>62597078643570831
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(62597149173570832)
,p_process_sequence=>50
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'INVOICE_C'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(',
'        p_collection_name => ''INVOICE_C'');'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>62597149173570832
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(62597245420570833)
,p_process_sequence=>60
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'INVOICE_D'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(',
'        p_collection_name => ''INVOICE_D'');'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>62597245420570833
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(62597317071570834)
,p_process_sequence=>70
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'INVOICE_DISCOUNTS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(',
'        p_collection_name => ''INVOICE_DISCOUNTS'');'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>62597317071570834
);
wwv_flow_imp.component_end;
end;
/
