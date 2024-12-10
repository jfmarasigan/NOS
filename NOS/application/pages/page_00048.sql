prompt --application/pages/page_00048
begin
--   Manifest
--     PAGE: 00048
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
 p_id=>48
,p_name=>'Inquire Purchase Order'
,p_alias=>'INQUIRE-PURCHASE-ORDER'
,p_step_title=>'Inquire Purchase Order'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#js/cmn#MIN#.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p8KeyMap = {',
'    escape: (v) => {',
'        $("#exit").trigger("click");',
'    }',
'}',
'',
'function mapP8Keys() {',
'    $(document).off(''keydown.p8keyevents'');',
'    $(document).on(''keydown.p8keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p8KeyMap[key]) {',
'            ev.preventDefault();',
'            p8KeyMap[key]();',
'        }',
'    });',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP8Keys();',
'setTitle("Inquire Purchase Order")'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#inquire label,',
'#inquire span {',
'    font-size: 1.125rem !important;',
'    color: white;',
'}',
'',
'.t-Form-labelContainer {',
'    text-align: start !important;',
'}',
'',
'.t-Region {',
'    background-color: rgb(30, 58, 138);',
'}',
'',
'.t-Header .t-Header-branding {',
'    background-color: white !important;',
'    color: rgb(30, 58, 138) !important;',
'}',
'',
'body {',
'    background-color: rgb(30, 58, 138);',
'}',
'',
'#table table,',
'#table tr,',
'#table th {',
'    font-size: 1rem;',
'}',
'',
'#table td {',
'    font-size: 1.125rem;',
'}',
'',
'.po-info {',
'    font-size: 1.125rem;',
'}',
'',
'.hide {',
'    display: none;',
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
'#table .a-GV-table {',
'    width: 100% !important;',
'}',
'',
'#table .a-GV-table colgroup col:nth-child(1) {',
'    width: 12rem;',
'}',
'',
'#table .a-GV-table colgroup col:nth-child(2) {',
'    width: 8rem;',
'}',
'',
'',
'#table .a-GV-table colgroup col:nth-child(3) {',
'    width: 25rem;',
'}',
'',
'#table .a-GV-table colgroup col:nth-child(6),',
'#table .a-GV-table colgroup col:nth-child(8),',
'#table .a-GV-table colgroup col:nth-child(10) {',
'    width: 7rem;',
'}',
'',
'#table .a-GV-table colgroup col:nth-child(4),',
'#table .a-GV-table colgroup col:nth-child(5),',
'#table .a-GV-table colgroup col:nth-child(7) {',
'    width: 5rem;',
'}',
'',
'#table .a-GV-table colgroup col:nth-child(9) {',
'    width: 6rem;',
'}'))
,p_step_template=>wwv_flow_imp.id(5671392681337017)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16372700343200904)
,p_plug_name=>'Inquire Purchase Order'
,p_region_name=>'table'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>40
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    CASE',
'        WHEN nit013.VENDOR_ID = :P48_VENDOR_ID THEN nit007.item_number',
'        ELSE NULL',
'    END AS "VENDOR_ITEM_NUM",',
'    nit001.item_num AS "ITEM_NUM",',
'    nit001.item_desc AS "ITEM_DESC",',
'    nit013.qty AS "NO_CS",',
'    (SELECT nit002.quantity',
'     FROM NIT002 nit002',
'     WHERE nit002.item_id = nit001.item_id',
'     AND nit002."LEVEL" = 1) AS "UT_CS",',
'    nit013.vendor_price AS "VENDOR_PRICE",',
'    (SELECT nim026_uom.uom_code          ',
'     FROM NIM026 nim026_uom',
'     JOIN NIT002 nit002_uom ON nim026_uom.uom_id = nit002_uom.uom_id',
'     WHERE nit002_uom.item_id = nit001.item_id',
'     AND nit002_uom."LEVEL" = 1) AS "INT_UOM",',
'    nit013.internal_price AS "INT_PRICE",',
'    (SELECT nim026_uom_code.UOM_CODE',
'     FROM NIM026 nim026_uom_code',
'     WHERE nim026_uom_code.UOM_ID = nit013.external_uom_id) AS "EXT_UOM",',
'    nit013.external_price AS "EXT_PRICE",',
'    (SELECT nit002_price.PRICE',
'     FROM NIT002 nit002_price',
'     WHERE nit002_price.ITEM_ID = nit001.ITEM_ID',
'     AND nit002_price."LEVEL" = 1) AS "SELL_PRX"',
'FROM',
'    NIT013 nit013',
'JOIN',
'    NIT001 nit001 ON nit013.ITEM_ID = nit001.ITEM_ID',
'JOIN',
'    NIT002 nit002 ON nit001.ITEM_ID = nit002.ITEM_ID',
'JOIN',
'    NIM026 nim026 ON nit002.UOM_ID = nim026.UOM_ID',
'LEFT JOIN',
'    NIT007 nit007 ON nit001.ITEM_ID = nit007.ITEM_ID AND nit013.VENDOR_ID = nit007.VENDOR_ID',
'WHERE',
'    nit013.PO_ID = :P48_PO_NO',
'    AND nit002.UOM_ID = (SELECT MAX(UOM_ID) FROM NIT002 WHERE ITEM_ID = nit013.ITEM_ID)'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P48_PO_NO,P48_VENDOR_ID'
,p_prn_page_header=>'Inquire Purchase Order'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(22393891400487201)
,p_name=>'VENDOR_ITEM_NUM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VENDOR_ITEM_NUM'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Vendor Item Number'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>80
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
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(22393996677487202)
,p_name=>'ITEM_NUM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEM_NUM'
,p_data_type=>'VARCHAR2'
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
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(22394061780487203)
,p_name=>'ITEM_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEM_DESC'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Item Description'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
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
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(22394135219487204)
,p_name=>'NO_CS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NO_CS'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'# / Cs'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(22394227645487205)
,p_name=>'UT_CS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UT_CS'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Ut / Cs'
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
 p_id=>wwv_flow_imp.id(22394319756487206)
,p_name=>'VENDOR_PRICE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VENDOR_PRICE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Vendor Price'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_format_mask=>'999G999G999G999G990D00'
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(22394448717487207)
,p_name=>'INT_UOM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INT_UOM'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Int UOM'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'RIGHT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>16
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
 p_id=>wwv_flow_imp.id(22394531021487208)
,p_name=>'INT_PRICE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INT_PRICE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Int Price'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_format_mask=>'999G999G999G999G990D00'
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(22394673107487209)
,p_name=>'EXT_UOM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXT_UOM'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Ext UOM'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'RIGHT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>16
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
 p_id=>wwv_flow_imp.id(22394787328487210)
,p_name=>'EXT_PRICE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXT_PRICE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Ext Price'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_format_mask=>'999G999G999G999G990D00'
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(22394862946487211)
,p_name=>'SELL_PRX'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SELL_PRX'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Sell Prx'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_format_mask=>'999G999G999G999G990D00'
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
 p_id=>wwv_flow_imp.id(16373299948200909)
,p_internal_uid=>16373299948200909
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
,p_fixed_header_max_height=>450
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
 p_id=>wwv_flow_imp.id(16373631902200909)
,p_interactive_grid_id=>wwv_flow_imp.id(16373299948200909)
,p_static_id=>'163737'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(16373812892200909)
,p_report_id=>wwv_flow_imp.id(16373631902200909)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22399882459488026)
,p_view_id=>wwv_flow_imp.id(16373812892200909)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(22393891400487201)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22400780369488035)
,p_view_id=>wwv_flow_imp.id(16373812892200909)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(22393996677487202)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22401654329488045)
,p_view_id=>wwv_flow_imp.id(16373812892200909)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(22394061780487203)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22402511416488054)
,p_view_id=>wwv_flow_imp.id(16373812892200909)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(22394135219487204)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22403475052488065)
,p_view_id=>wwv_flow_imp.id(16373812892200909)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(22394227645487205)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22404295655488076)
,p_view_id=>wwv_flow_imp.id(16373812892200909)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(22394319756487206)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22405134877488087)
,p_view_id=>wwv_flow_imp.id(16373812892200909)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(22394448717487207)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22406014847488095)
,p_view_id=>wwv_flow_imp.id(16373812892200909)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(22394531021487208)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22406944811488107)
,p_view_id=>wwv_flow_imp.id(16373812892200909)
,p_display_seq=>25
,p_column_id=>wwv_flow_imp.id(22394673107487209)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22407816767488118)
,p_view_id=>wwv_flow_imp.id(16373812892200909)
,p_display_seq=>26
,p_column_id=>wwv_flow_imp.id(22394787328487210)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22408747062488126)
,p_view_id=>wwv_flow_imp.id(16373812892200909)
,p_display_seq=>27
,p_column_id=>wwv_flow_imp.id(22394862946487211)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21978992370914340)
,p_plug_name=>'Line Item Details'
,p_region_name=>'inquire'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--hiddenOverflow:margin-top-md:margin-bottom-md'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>10
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(16246098677344113)
,p_button_sequence=>50
,p_button_name=>'Exit'
,p_button_static_id=>'exit'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Exit'
,p_button_redirect_url=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.:::'
,p_grid_column_css_classes=>'hide'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21978723334914338)
,p_name=>'P48_PO_NO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(21978992370914340)
,p_prompt=>'PO No'
,p_pre_element_text=>'PO No: &nbsp;'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:margin-left-none:t-Form-fieldContainer--normalDisplay'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21979091231914341)
,p_name=>'P48_TOTAL_QTY_CS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(21978992370914340)
,p_prompt=>'Total Qty (in cs)'
,p_pre_element_text=>'Total Qty (in cs): &nbsp;'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:margin-left-md:t-Form-fieldContainer--normalDisplay'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21979102546914342)
,p_name=>'P48_PO_VALUE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(21978992370914340)
,p_prompt=>'PO Value'
,p_pre_element_text=>'Total Internal PO Value:&nbsp;$ &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:margin-left-md:t-Form-fieldContainer--normalDisplay'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26625821815248015)
,p_name=>'P48_PO_VALUE_EXT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(21978992370914340)
,p_prompt=>'Po Value Ext'
,p_pre_element_text=>'Total External PO Value:&nbsp;$ &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--normalDisplay'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29988101427862733)
,p_name=>'P48_VENDOR_ID'
,p_item_sequence=>60
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22395146093487214)
,p_name=>'Select First Row'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22395227599487215)
,p_event_id=>wwv_flow_imp.id(22395146093487214)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(function() {',
'    $(".a-GV-cell").first().trigger("click");',
'}, 500);'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22395309697487216)
,p_event_id=>wwv_flow_imp.id(22395146093487214)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P48_TOTAL_QTY_CS'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var grid = apex.region("table").widget().interactiveGrid("getViews", "grid");',
'var model = grid.model;',
'var total = 0;',
'',
'model.forEach(function(row) {',
'    var price = model.getValue(row, "NO_CS");',
'',
'    if (!isNaN(price) && price !== null) {',
'        total += parseFloat(price);',
'    }',
'});',
'',
'apex.item("P48_TOTAL_QTY_CS").setValue(total);'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25844552733615024)
,p_event_id=>wwv_flow_imp.id(22395146093487214)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P48_PO_VALUE,P48_PO_VALUE_EXT'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var grid = apex.region("table").widget().interactiveGrid("getViews", "grid");',
'var model = grid.model;',
'var poTotal = 0;',
'var extPoTotal = 0;',
'',
'model.forEach(function(row) {',
'    var qty = model.getValue(row, "NO_CS");',
'    var utCs = model.getValue(row, "UT_CS");',
'    var price = model.getValue(row, "INT_PRICE");',
'    var extPrice = model.getValue(row, "EXT_PRICE");',
'',
'    if (!isNaN(price) && !isNaN(utCs) && !isNaN(qty)) {',
'        poTotal += parseFloat((qty * utCs) * price);',
'        extPoTotal += parseFloat((qty * utCs) * extPrice);',
'    }',
'});',
'',
'poTotal = poTotal.toLocaleString("en-US", {',
'    minimumFractionDigits: 2,',
'    maximumFractionDigits: 2',
'});',
'',
'extPoTotal = extPoTotal.toLocaleString("en-US", {',
'    minimumFractionDigits: 2,',
'    maximumFractionDigits: 2',
'});',
'',
'apex.item("P48_PO_VALUE").setValue(poTotal);',
'apex.item("P48_PO_VALUE_EXT").setValue(extPoTotal);'))
);
wwv_flow_imp.component_end;
end;
/
