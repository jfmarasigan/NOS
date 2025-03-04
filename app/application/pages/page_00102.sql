prompt --application/pages/page_00102
begin
--   Manifest
--     PAGE: 00102
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
 p_id=>102
,p_name=>'Shipment Line Items'
,p_alias=>'SHIPMENT-LINE-ITEMS'
,p_step_title=>'Shipment Line Items'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#js/shipment-line-items#MIN#.js'
,p_javascript_code_onload=>'initialize();'
,p_css_file_urls=>'#APP_FILES#css/shipment-line-items#MIN#.css'
,p_step_template=>wwv_flow_imp.id(5671392681337017)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15657200642560934)
,p_plug_name=>'Shipment Info'
,p_region_name=>'shipment-info'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>110
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15657359821560935)
,p_plug_name=>'Shipment Line Items'
,p_region_name=>'shipment-line-items'
,p_region_template_options=>'#DEFAULT#:margin-left-md:margin-right-md'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>120
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a.po_id ref_po_no, a.shipment_id, b.item_num item_number, b.item_desc,',
'       a.qty cs, (a.qty * d.quantity) total_units, a.cost, UPPER(c.uom_code) uom, ',
'       a.product_date, a.encoded, d.quantity mastercase_quantity, a.item_id,',
'       a.item_id old_item_id, c.uom_id, ''N'' sn_edit, a.shipment_items_id,  TO_CHAR(a.shipment_items_id) spid,',
'       b.item_num old_item_num, b.item_desc old_item_desc',
'  FROM nit018 a,',
'       nit001 b,',
'       nim026 c,',
'       (select w.item_id, w.quantity',
'          from nit002 w ',
'         where w."LEVEL" = 4) d',
' WHERE a.item_id = b.item_id',
'   AND a.uom_id = c.uom_id',
'   AND a.item_id = d.item_id',
'   AND a.shipment_id = :P102_SHIPMENT_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P102_SHIPMENT_ID'
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
 p_id=>wwv_flow_imp.id(15657675614560938)
,p_name=>'ITEM_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEM_DESC'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Item Description'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>30
,p_enable_filter=>false
,p_filter_is_required=>false
,p_static_id=>'item-desc'
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
,p_duplicate_value=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(15657720452560939)
,p_name=>'CS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CS'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'# / CS'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_format_mask=>'999999999999990'
,p_is_required=>true
,p_enable_filter=>false
,p_filter_is_required=>false
,p_static_id=>'cs'
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
,p_duplicate_value=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(15657850723560940)
,p_name=>'TOTAL_UNITS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOTAL_UNITS'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Total Units'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_format_mask=>'999G999G999G999G990'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'total-units'
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
,p_duplicate_value=>false
,p_include_in_export=>false
,p_column_comment=>'total units = cs * (nit002.quantity where item''s nit002.level = 4)'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(15657958245560941)
,p_name=>'COST'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COST'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Cost'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>130
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_format_mask=>'999999999999990D00'
,p_is_required=>true
,p_enable_filter=>false
,p_filter_is_required=>false
,p_static_id=>'cost'
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
,p_duplicate_value=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(15658065235560942)
,p_name=>'UOM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UOM'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'UOM'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>false
,p_filter_is_required=>false
,p_static_id=>'uom'
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
,p_duplicate_value=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(15658139270560943)
,p_name=>'PRODUCT_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRODUCT_DATE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Product Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>150
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_item_placeholder=>'MM/DD/YYYY'
,p_is_required=>false
,p_max_length=>13
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'product-date'
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
,p_duplicate_value=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(15658280705560944)
,p_name=>'ENCODED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENCODED'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Encoded'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>160
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>10
,p_enable_filter=>false
,p_filter_is_required=>false
,p_static_id=>'encoded'
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
,p_duplicate_value=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(16266178567399122)
,p_name=>'SHIPMENT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SHIPMENT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attribute_01=>'Y'
,p_static_id=>'shipment-id'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_default_type=>'ITEM'
,p_default_expression=>'P102_SHIPMENT_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(16266223617399123)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(16266366804399124)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(17926198668262938)
,p_name=>'REF_PO_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REF_PO_NO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Reference PO No.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_plugin_init_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    };',
'    options.defaultGridOptions = {',
'        resizeColumns: false,',
'        columnSort: false,',
'        pagination : {',
'            scroll : true,',
'            loadMore : false',
'        }   ',
'    };',
'    return options;',
'}'))
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a.po_id d, a.po_id r',
'  FROM nit015 a',
' WHERE shipment_id = :P102_SHIPMENT_ID'))
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_lov_null_text=>'-'
,p_enable_filter=>false
,p_filter_is_required=>false
,p_static_id=>'ref-po-no'
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
,p_duplicate_value=>false
,p_include_in_export=>false
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(21857347592134123)
,p_name=>'ITEM_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEM_NUMBER'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Item Number'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>10
,p_enable_filter=>false
,p_filter_is_required=>false
,p_static_id=>'item-number'
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
,p_duplicate_value=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27346480519391850)
,p_name=>'ITEM_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEM_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_static_id=>'item-id'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(29345847105183347)
,p_name=>'OLD_ITEM_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OLD_ITEM_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>170
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(29345957733183348)
,p_name=>'UOM_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UOM_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>180
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(31309320302578725)
,p_name=>'MASTERCASE_QUANTITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MASTERCASE_QUANTITY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>190
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(31311624310578748)
,p_name=>'SN_EDIT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SN_EDIT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>200
,p_attribute_01=>'N'
,p_static_id=>'sn-edit'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(32278534145470433)
,p_name=>'SHIPMENT_ITEMS_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SHIPMENT_ITEMS_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attribute_01=>'Y'
,p_static_id=>'shipment-items-id'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_duplicate_value=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(35157638022966948)
,p_name=>'SPID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SPID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>70
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(65297960807937701)
,p_name=>'OLD_ITEM_NUM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OLD_ITEM_NUM'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>210
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(65298008667937702)
,p_name=>'OLD_ITEM_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OLD_ITEM_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>220
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(15657430859560936)
,p_internal_uid=>15657430859560936
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
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
'    // options.editable = false;',
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
'        footer: false,',
'        hideDeletedRows: true',
'    };',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(16250943680362073)
,p_interactive_grid_id=>wwv_flow_imp.id(15657430859560936)
,p_static_id=>'162510'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(16251193666362075)
,p_report_id=>wwv_flow_imp.id(16250943680362073)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5276495103095)
,p_view_id=>wwv_flow_imp.id(16251193666362075)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(16266178567399122)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10257970105341)
,p_view_id=>wwv_flow_imp.id(16251193666362075)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(16266223617399123)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(16252558655362090)
,p_view_id=>wwv_flow_imp.id(16251193666362075)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(15657675614560938)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(16253430082362096)
,p_view_id=>wwv_flow_imp.id(16251193666362075)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(15657720452560939)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>80
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(16254339931362103)
,p_view_id=>wwv_flow_imp.id(16251193666362075)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(15657850723560940)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>110
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(16255227980362109)
,p_view_id=>wwv_flow_imp.id(16251193666362075)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(15657958245560941)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>80
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(16256130875362115)
,p_view_id=>wwv_flow_imp.id(16251193666362075)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(15658065235560942)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>80
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(16257071536362121)
,p_view_id=>wwv_flow_imp.id(16251193666362075)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(15658139270560943)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>150
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(16257915253362126)
,p_view_id=>wwv_flow_imp.id(16251193666362075)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(15658280705560944)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>150
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(18983243828040185)
,p_view_id=>wwv_flow_imp.id(16251193666362075)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(17926198668262938)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>200
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(21921118327793601)
,p_view_id=>wwv_flow_imp.id(16251193666362075)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(21857347592134123)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>180
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(29333197697157095)
,p_view_id=>wwv_flow_imp.id(16251193666362075)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(27346480519391850)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(30164048397901921)
,p_view_id=>wwv_flow_imp.id(16251193666362075)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(29345847105183347)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(30164959340901929)
,p_view_id=>wwv_flow_imp.id(16251193666362075)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(29345957733183348)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(32043566584460293)
,p_view_id=>wwv_flow_imp.id(16251193666362075)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(31309320302578725)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(32238190268146329)
,p_view_id=>wwv_flow_imp.id(16251193666362075)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(31311624310578748)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(34657560194100837)
,p_view_id=>wwv_flow_imp.id(16251193666362075)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(32278534145470433)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(38027743122746264)
,p_view_id=>wwv_flow_imp.id(16251193666362075)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(35157638022966948)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(65303907842938698)
,p_view_id=>wwv_flow_imp.id(16251193666362075)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(65297960807937701)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(65304823988938715)
,p_view_id=>wwv_flow_imp.id(16251193666362075)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(65298008667937702)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15658430953560946)
,p_plug_name=>'Item POs'
,p_region_name=>'item-po-dialog'
,p_region_css_classes=>'js-dialog-size700x810'
,p_region_template_options=>'js-modal:js-draggable:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_04'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15658573022560947)
,p_plug_name=>'Item PO List'
,p_region_name=>'item-po-list'
,p_parent_plug_id=>wwv_flow_imp.id(15658430953560946)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH s_items AS (',
'    select a.item_id,',
'           a.item_num item_number,',
'           a.item_desc item_description,',
'           b.brand_name,',
'           UPPER(c.uom_code) uom_code,',
'           c.uom_id,',
'           d.quantity',
'      from nit001 a,',
'           nim022 b,',
'           (select x.item_id, x.uom_id, y.uom_code',
'              from nit002 x,',
'                   nim026 y',
'             where x."LEVEL" = 1',
'               and x.uom_id = y.uom_id) c,',
'           (select w.item_id, w.quantity',
'              from nit002 w',
'             where w."LEVEL" = 4) d',
'     where a.brand_id = b.brand_id',
'       and a.item_id = c.item_id',
'       and a.item_id = d.item_id',
'       and ( (UPPER(a.item_num) like UPPER(''%'' || :P102_ITEM_SEARCH_V || ''%'') and :P102_ITEM_SEARCH_F = 1) or',
'             (UPPER(a.item_desc) like UPPER(''%'' || :P102_ITEM_SEARCH_V || ''%'') and :P102_ITEM_SEARCH_F = 2) )',
'       and not exists (select null',
'                         from apex_collections x',
'                        where x.collection_name = ''NOS_SHIP_SEL_ITEMS''',
'                          and NVL(x.c001, ''null'') || ''-'' || x.n001 = NVL(:P102_REF_PO_NO, ''null'') || ''-'' || a.item_id',
'                          and x.c002 != :P102_SHIPMENT_ITEMS_ID)',
'     order by a.item_num',
')',
'select item_id, item_number, item_description, brand_name, uom_code, uom_id, quantity ',
'  from s_items'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P102_REF_PO_NO,P102_ITEM_SEARCH_F,P102_ITEM_SEARCH_V,P102_SHIPMENT_ITEMS_ID'
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
 p_id=>wwv_flow_imp.id(15658716967560949)
,p_name=>'ITEM_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEM_NUMBER'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Item Number'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
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
,p_duplicate_value=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(16264070373399101)
,p_name=>'ITEM_DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEM_DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Item Description'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
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
,p_duplicate_value=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(29341565813183304)
,p_name=>'BRAND_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BRAND_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Brand Name'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
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
,p_duplicate_value=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(29341974267183308)
,p_name=>'ITEM_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEM_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(29345029340183339)
,p_name=>'UOM_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UOM_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(29345242297183341)
,p_name=>'QUANTITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QUANTITY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(29346053935183349)
,p_name=>'UOM_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UOM_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>70
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(15658640272560948)
,p_internal_uid=>15658640272560948
,p_is_editable=>false
,p_lazy_loading=>true
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
,p_fixed_header_max_height=>700
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultModelOptions = {',
'        pageSize: 100000',
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
 p_id=>wwv_flow_imp.id(16271440597417662)
,p_interactive_grid_id=>wwv_flow_imp.id(15658640272560948)
,p_static_id=>'162715'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(16271601240417662)
,p_report_id=>wwv_flow_imp.id(16271440597417662)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(16272115889417667)
,p_view_id=>wwv_flow_imp.id(16271601240417662)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(15658716967560949)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>140
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(16272986210417673)
,p_view_id=>wwv_flow_imp.id(16271601240417662)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(16264070373399101)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(29382145715554839)
,p_view_id=>wwv_flow_imp.id(16271601240417662)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(29341565813183304)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>140
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(29389167777686135)
,p_view_id=>wwv_flow_imp.id(16271601240417662)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(29341974267183308)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(30052811204380737)
,p_view_id=>wwv_flow_imp.id(16271601240417662)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(29345029340183339)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(30116332700621203)
,p_view_id=>wwv_flow_imp.id(16271601240417662)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(29345242297183341)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(30170903725919053)
,p_view_id=>wwv_flow_imp.id(16271601240417662)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(29346053935183349)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16264120356399102)
,p_plug_name=>'Info Header'
,p_parent_plug_id=>wwv_flow_imp.id(15658430953560946)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27342612101391812)
,p_plug_name=>'Serial Numbers'
,p_region_name=>'serial-nums'
,p_region_css_classes=>'js-dialog-size370x600'
,p_region_template_options=>'js-modal:js-draggable:js-dialog-size480x320'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>50
,p_plug_display_point=>'REGION_POSITION_04'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27342723071391813)
,p_plug_name=>'SN IG'
,p_region_name=>'serial-nos-ig'
,p_parent_plug_id=>wwv_flow_imp.id(27342612101391812)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT seq_id case, c001 serial_number, n001 shipment_id, n003 sn_id, c002 shipment_items_id',
'  FROM apex_collections',
' WHERE collection_name = ''NOS_SHIP_SN_'' || :P102_SHIPMENT_ID || ''_'' || UPPER(:P102_SHIPMENT_ITEMS_ID)'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P102_SHIPMENT_ITEMS_ID,P102_SHIPMENT_ID'
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
 p_id=>wwv_flow_imp.id(27342956845391815)
,p_name=>'CASE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CASE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Case'
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
'    };',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>true
,p_duplicate_value=>false
,p_include_in_export=>false
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27343020254391816)
,p_name=>'SERIAL_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SERIAL_NUMBER'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Serial Number'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>20
,p_enable_filter=>false
,p_filter_is_required=>false
,p_static_id=>'serial-no'
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
,p_duplicate_value=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27343217480391818)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27343337201391819)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'N'
,p_attribute_03=>'N'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(29344448551183333)
,p_name=>'SHIPMENT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SHIPMENT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(31307629553578708)
,p_name=>'SN_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SN_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(35155866372966930)
,p_name=>'SHIPMENT_ITEMS_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SHIPMENT_ITEMS_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(27342885121391814)
,p_internal_uid=>27342885121391814
,p_is_editable=>true
,p_edit_operations=>'i:u'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
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
,p_enable_flashback=>false
,p_define_chart_view=>false
,p_enable_download=>false
,p_download_formats=>null
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>560
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultModelOptions = {',
'        pageSize: 100000',
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
 p_id=>wwv_flow_imp.id(27622490137068750)
,p_interactive_grid_id=>wwv_flow_imp.id(27342885121391814)
,p_static_id=>'276225'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(27622694336068751)
,p_report_id=>wwv_flow_imp.id(27622490137068750)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(27623121191068767)
,p_view_id=>wwv_flow_imp.id(27622694336068751)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(27342956845391815)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>80
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(27624083406068782)
,p_view_id=>wwv_flow_imp.id(27622694336068751)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(27343020254391816)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(27624984818068792)
,p_view_id=>wwv_flow_imp.id(27622694336068751)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(27343217480391818)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(30012170368129995)
,p_view_id=>wwv_flow_imp.id(27622694336068751)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(29344448551183333)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31815161503725792)
,p_view_id=>wwv_flow_imp.id(27622694336068751)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(31307629553578708)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(35516322594570571)
,p_view_id=>wwv_flow_imp.id(27622694336068751)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(35155866372966930)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(16264430029399105)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(16264120356399102)
,p_button_name=>'TOP'
,p_button_static_id=>'item-modal-top'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>Home</u> - Top'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'item-modal-btns'
,p_grid_new_row=>'N'
,p_grid_column_span=>3
,p_grid_column=>7
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(16264896871399109)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(16264120356399102)
,p_button_name=>'BOTTOM'
,p_button_static_id=>'item-modal-bottom'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>End</u> - Bottom'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'item-modal-btns'
,p_grid_new_row=>'N'
,p_grid_column_span=>3
,p_grid_column=>10
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(29342608771183315)
,p_button_sequence=>130
,p_button_name=>'ADD_SERIAL_NOS'
,p_button_static_id=>'add-serial-nos'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--link:t-Button--stretch:t-Button--padLeft'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<u>F7</u> - Add Serial Numbers'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'UPPER(:P102_LABEL) = ''UPDATE'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'line-item-btns'
,p_grid_new_row=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(29341267281183301)
,p_button_sequence=>140
,p_button_name=>'ADD_LINE_ITEM'
,p_button_static_id=>'add-line-item'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--link:t-Button--stretch:t-Button--padLeft'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<u>F2</u> - Add Items'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'line-item-btns'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(31311819462578750)
,p_branch_name=>'Redirect back to shipment listing'
,p_branch_action=>'f?p=&APP_ID.:100:&SESSION.::&DEBUG.:102,101,100:P100_SEARCH,P100_SORT,P100_SMSG,P100_SELECTED_ID:&P102_QSEARCH.,&P102_QSORT.,&P102_SMSG.,&P102_SHIPMENT_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'REQUEST_IN_CONDITION'
,p_branch_condition=>'SUBMIT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(29342879698183317)
,p_branch_name=>'Redirect to basic info'
,p_branch_action=>'f?p=&APP_ID.:101:&SESSION.::&DEBUG.:101::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'ITEM_IS_NULL'
,p_branch_condition=>'P102_SHIPMENT_ID'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15658300394560945)
,p_name=>'P102_SHIPMENT_ID'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_item_comment=>'shipment ID used for updating'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16264241644399103)
,p_name=>'P102_ITEM_MODAL_HEADER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(16264120356399102)
,p_item_default=>'Help on Item Masterfile'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'item-po-header-text'
,p_colspan=>5
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16264507589399106)
,p_name=>'P102_SHIPMENT_NO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(15657200642560934)
,p_item_default=>'SP1 2004-99999'
,p_prompt=>'Shipment No: '
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16264626647399107)
,p_name=>'P102_CS_TOTAL_QTY'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(15657200642560934)
,p_prompt=>'Total Qty (in Cs): '
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16264747066399108)
,p_name=>'P102_PO_VALUE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(15657200642560934)
,p_prompt=>'Shipment Value: $'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_grid_column_css_classes=>'shipment-value-col'
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27343147267391817)
,p_name=>'P102_SHIPMENT_ITEMS_ID'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29342582678183314)
,p_name=>'P102_LABEL'
,p_item_sequence=>90
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32277695407470424)
,p_name=>'P102_SURL'
,p_item_sequence=>80
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_page.get_url(',
'    p_page => 100,',
'    p_items => ''P100_SEARCH,P100_SORT,P100_SELECTED_ID,P100_SMSG'',',
'    p_values => :P102_QSEARCH || '','' || :P102_QSORT || '','' || :P102_SHIPMENT_ID || '','' ||',
'                CASE WHEN :P102_UCHANGE = ''Y'' ',
'                     THEN ''Shipment No. '' || :P102_SHIPMENT_NO || '' has been updated''',
'                     ELSE null',
'                     END,',
'    p_clear_cache => ''100''',
')'))
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32279198971470439)
,p_name=>'P102_REF_PO_NO'
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35154259401966914)
,p_name=>'P102_ITEM_SEARCH_F'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(15658430953560946)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35154372863966915)
,p_name=>'P102_ITEM_SEARCH_V'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(15658430953560946)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42426955365064039)
,p_name=>'P102_SMSG'
,p_item_sequence=>50
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42427222379064042)
,p_name=>'P102_QSORT'
,p_item_sequence=>60
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42427346986064043)
,p_name=>'P102_QSEARCH'
,p_item_sequence=>70
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47038674756224215)
,p_name=>'P102_UCHANGE'
,p_item_sequence=>100
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(29342722130183316)
,p_computation_sequence=>10
,p_computation_item=>'P102_SHIPMENT_NO'
,p_computation_point=>'AFTER_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select shipment_number',
'  from nit016',
' where shipment_id = :P102_SHIPMENT_ID'))
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(42427160399064041)
,p_computation_sequence=>20
,p_computation_item=>'P102_SMSG'
,p_computation_point=>'AFTER_HEADER'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'case when :P102_LABEL = ''Add'' then ''Shipment No. '' || :P102_SHIPMENT_NO || '' has been created'' ',
'     else ''Shipment No. '' || :P102_SHIPMENT_NO || '' has been updated'' ',
'     end '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(17926254952262939)
,p_name=>'Refocus'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(15657359821560935)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17926338760262940)
,p_event_id=>wwv_flow_imp.id(17926254952262939)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'try {',
'    if (this.data.selectedRecords?.length > 0) {',
'        const model = this.data.model;',
'        const rec = this.data.selectedRecords[0];',
'        lineRec = rec;',
'        apex.item("P102_SHIPMENT_ITEMS_ID").setValue(model.getValue(rec, "SHIPMENT_ITEMS_ID"));',
'    }',
'} catch (e) {',
'    console.error("NOS SLI error: Refocus error on row.");',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(17926471718262941)
,p_name=>'Edit IG on load'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17926529840262942)
,p_event_id=>wwv_flow_imp.id(17926471718262941)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'// focusEditOnCell(LINE_IG, "ITEM_NUMBER", getIGGridViewModel(LINE_IG).recordAt(0));'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(29342094616183309)
,p_name=>'Item PO selection change'
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(15658573022560947)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29342158088183310)
,p_event_id=>wwv_flow_imp.id(29342094616183309)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (this.data?.selectedRecords.length > 0) {',
'    if (itemPODdialogFocus) {',
'        focusOnIGLastRecordFirstCell("item-po-list");',
'        focusOnIGFirstRecordFirstCell("item-po-list", "ITEM_NUMBER");',
'        itemPODdialogFocus = false;',
'    }',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(29342308187183312)
,p_name=>'Add New Item'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(29341267281183301)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29342420126183313)
,p_event_id=>wwv_flow_imp.id(29342308187183312)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'focusOnIGLastRecordFirstCell(LINE_IG);',
'apex.region(LINE_IG).widget().interactiveGrid("getActions").invoke("selection-add-row");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(29342952481183318)
,p_name=>'Set SN collection'
,p_event_sequence=>60
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(15657359821560935)
,p_triggering_element=>'TOTAL_UNITS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29343231884183321)
,p_event_id=>wwv_flow_imp.id(29342952481183318)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const model = getIGGridViewModel(LINE_IG);',
'const selRec = model.getSelectedRecords()[0];',
'const shipmentItemId = model.getValue(selRec, "SHIPMENT_ITEMS_ID");',
'const totalUnits = this.triggeringElement.value;',
'const shipmentId = $v("P102_SHIPMENT_ID");',
'',
'apex.server.process("SET_SN_COLLECTION", {',
'    x01: shipmentItemId,',
'    x02: totalUnits,',
'    x03: shipmentId',
'})',
'.done(data => { });'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(29343437665183323)
,p_name=>'Load SN modal'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(29342608771183315)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29343563879183324)
,p_event_id=>wwv_flow_imp.id(29343437665183323)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27342723071391813)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29343654525183325)
,p_event_id=>wwv_flow_imp.id(29343437665183323)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27342612101391812)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30556749024940748)
,p_event_id=>wwv_flow_imp.id(29343437665183323)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'snIGLoaded = true;',
'apex.region(SERIAL_NO_IG).call("getActions").set("edit", true);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(31306969419578701)
,p_name=>'On SN esc'
,p_event_sequence=>90
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document.getElementById("serial-no")'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.key?.toLowerCase() === "escape"'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31307085842578702)
,p_event_id=>wwv_flow_imp.id(31306969419578701)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Save serial numbers'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'this.browserEvent.preventDefault();',
'apex.region(SERIAL_NO_IG).widget().interactiveGrid("getActions").invoke("save");',
'apex.message.hidePageSuccess();'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31307190054578703)
,p_event_id=>wwv_flow_imp.id(31306969419578701)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27342612101391812)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31309013572578722)
,p_event_id=>wwv_flow_imp.id(31306969419578701)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'Refocus on Line IG'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'focusEditOnCell(LINE_IG, "ITEM_NUMBER", lineRec);'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(35154466177966916)
,p_name=>'On tab - ITEM DESC 1'
,p_event_sequence=>110
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(15657359821560935)
,p_triggering_element=>'ITEM_DESC'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'(function (ev, tr) {',
'    const model = getIGGridViewModel(LINE_IG);',
'    const rec = model.getSelectedRecords()[0];',
'    const itemId = model.getValue(rec, "ITEM_ID");',
'    return ev.key?.toLowerCase() === "tab" && (itemId === "" || itemId === null);',
'})(this.browserEvent, this.triggeringElement);'))
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(35154538742966917)
,p_event_id=>wwv_flow_imp.id(35154466177966916)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'this.browserEvent.preventDefault();',
'const model = getIGGridViewModel(LINE_IG);',
'const rec = model.getSelectedRecords()[0];',
'apex.item("P102_REF_PO_NO").setValue(model.getValue(rec, "REF_PO_NO").v);',
'const id = this.triggeringElement.id;',
'apex.item("P102_ITEM_SEARCH_F").setValue(id === "item-number" ? 1 : 2);',
'apex.item("P102_ITEM_SEARCH_V").setValue(this.triggeringElement.value);',
'',
'const itemId = model.getValue(rec, "ITEM_ID");',
'if (itemId === null || itemId === "") {',
'    focusEditOnCell(LINE_IG, "ITEM_NUMBER", rec);',
'}',
'',
'isEnterable = false;'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(35154671216966918)
,p_event_id=>wwv_flow_imp.id(35154466177966916)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(15658573022560947)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(35154702894966919)
,p_event_id=>wwv_flow_imp.id(35154466177966916)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(15658430953560946)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(35154898797966920)
,p_name=>'On change ITEM NO and ITEM DESC'
,p_event_sequence=>120
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(15657359821560935)
,p_triggering_element=>'ITEM_NUMBER,ITEM_DESC'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(35154937162966921)
,p_event_id=>wwv_flow_imp.id(35154898797966920)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const model = getIGGridViewModel(LINE_IG);',
'model.setValue(lineRec, "ITEM_ID", "");',
'',
'const rec = model.getSelectedRecords()[0];',
'apex.item("P102_REF_PO_NO").setValue(model.getValue(rec, "REF_PO_NO").v);',
'const id = this.triggeringElement.id;',
'apex.item("P102_ITEM_SEARCH_F").setValue(id === "item-number" ? 1 : 2);',
'apex.item("P102_ITEM_SEARCH_V").setValue(this.triggeringElement.value);',
'',
'isEnterable = false;'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(35155077591966922)
,p_event_id=>wwv_flow_imp.id(35154898797966920)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(15658573022560947)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(35155183953966923)
,p_event_id=>wwv_flow_imp.id(35154898797966920)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(15658430953560946)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(29345317741183342)
,p_name=>'Compute total units'
,p_event_sequence=>130
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(15657359821560935)
,p_triggering_element=>'CS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29345483774183343)
,p_event_id=>wwv_flow_imp.id(29345317741183342)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const cs = parseInt(this.triggeringElement.value, 10);',
'const model = getIGGridViewModel(LINE_IG);',
'const selRec = model.getSelectedRecords()[0];',
'',
'if (!isNaN(cs)) {',
'    if (cs > 0) {',
'        const masterCaseQuantity = model.getValue(selRec, "MASTERCASE_QUANTITY");',
'        const totalunits = parseInt(cs, 10) * parseInt(masterCaseQuantity);',
'        model.setValue(selRec, "TOTAL_UNITS", totalunits);',
'    } else if (cs === 0) {',
'        apex.region(LINE_IG).call("getActions").set("edit", false);',
'        apex.region(LINE_IG).call("getActions").invoke("selection-delete");',
'        apex.region(LINE_IG).call("getActions").set("edit", true);',
'    }',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30204840912428901)
,p_name=>'On CS tab - validation'
,p_event_sequence=>140
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(15657359821560935)
,p_triggering_element=>'CS'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'this.browserEvent.key?.toLowerCase() === "tab" && ',
'!this.browserEvent.shiftKey && ',
'this.triggeringElement.value === ""'))
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30204993483428902)
,p_event_id=>wwv_flow_imp.id(30204840912428901)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'this.browserEvent.preventDefault();',
'',
'this.triggeringElement.setCustomValidity("Please input CS quantity");',
'this.triggeringElement.reportValidity();'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30205003011428903)
,p_event_id=>wwv_flow_imp.id(30204840912428901)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const elem = this.triggeringElement;',
'const ev = this.browserEvent;',
'elem.setCustomValidity("");',
'if (ev.key?.toLowerCase() === "enter" && $v("P102_LABEL") === "Update") {',
'    ev.preventDefault();',
'    ev.stopPropagation();',
'',
'    let message = "";',
'    if (elem.value === "") {',
'        message = "Please input CS quantity";',
'    } else if (!/^\d*$/.test(elem.value)) {',
'        message = "Please enter a valid value";',
'    } else {',
'        saveLineIG();',
'    }',
'',
'    if (message !== "") {',
'        elem.setCustomValidity(message);',
'        elem.reportValidity();',
'    }',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30205397182428906)
,p_name=>'On TOTAL_UNITS tab'
,p_event_sequence=>160
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(15657359821560935)
,p_triggering_element=>'TOTAL_UNITS'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'this.browserEvent.key?.toLowerCase() === "tab" && ',
'!this.browserEvent.shiftKey && ',
'this.triggeringElement.value === ""'))
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30205424510428907)
,p_event_id=>wwv_flow_imp.id(30205397182428906)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'this.browserEvent.preventDefault();',
'this.triggeringElement.setCustomValidity("Please input Total Units");',
'this.triggeringElement.reportValidity();'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30205575037428908)
,p_event_id=>wwv_flow_imp.id(30205397182428906)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const elem = this.triggeringElement;',
'const ev = this.browserEvent;',
'elem.setCustomValidity("");',
'if (ev.key?.toLowerCase() === "enter" && $v("P102_LABEL") === "Update") {',
'    ev.preventDefault();',
'    ev.stopPropagation();',
'',
'    let message = "";',
'    if (elem.value === "") {',
'        message = "Please input Total Units";',
'    } else if (!/^\d*$/.test(elem.value)) {',
'        message = "Please enter a valid value";',
'    } else {',
'        saveLineIG();',
'    }',
'',
'    if (message !== "") {',
'        elem.setCustomValidity(message);',
'        elem.reportValidity();',
'    }',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30205604926428909)
,p_name=>'On COST tab'
,p_event_sequence=>170
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(15657359821560935)
,p_triggering_element=>'COST'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'this.browserEvent.key?.toLowerCase() === "tab" && ',
'!this.browserEvent.shiftKey && ',
'(this.triggeringElement.value === "" || isNaN(this.triggeringElement.value))'))
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30205732432428910)
,p_event_id=>wwv_flow_imp.id(30205604926428909)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'this.browserEvent.preventDefault();',
'this.triggeringElement.setCustomValidity("Please input a valid Cost value");',
'this.triggeringElement.reportValidity();'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30205838197428911)
,p_event_id=>wwv_flow_imp.id(30205604926428909)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const elem = this.triggeringElement;',
'const ev = this.browserEvent;',
'elem.setCustomValidity("");',
'if (ev.key?.toLowerCase() === "enter" && $v("P102_LABEL") === "Update") {',
'    ev.preventDefault();',
'    ev.stopPropagation();',
'',
'    let message = "";',
'    if (elem.value === "") {',
'        message = "Please input a valid Cost value";',
'    } else if (isNaN(elem.value)) {',
'        message = "Please enter a valid value";',
'    } else {',
'        saveLineIG();',
'    }',
'',
'    if (message !== "") {',
'        elem.setCustomValidity(message);',
'        elem.reportValidity();',
'    }',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30556812770940749)
,p_name=>'On SN IG select'
,p_event_sequence=>180
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(27342723071391813)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30556995858940750)
,p_event_id=>wwv_flow_imp.id(30556812770940749)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (this.data?.selectedRecords.length > 0) {',
'    if (snIGLoaded) {',
'        focusEditOnCell(SERIAL_NO_IG, "SERIAL_NUMBER", this.data.model.recordAt(0));',
'        snIGLoaded = false;',
'    }',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(31308643921578718)
,p_name=>'Close Item PO'
,p_event_sequence=>190
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'CLOSE_ITEM_PO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31308731805578719)
,p_event_id=>wwv_flow_imp.id(31308643921578718)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(15658430953560946)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(61648401405287905)
,p_name=>'On esc'
,p_event_sequence=>210
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'this.browserEvent.key?.toLowerCase() === "escape" &&',
'document.activeElement.classList.contains("a-GV-cell")'))
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61648576123287906)
,p_event_id=>wwv_flow_imp.id(61648401405287905)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'this.browserEvent.preventDefault();',
'apex.navigation.redirect($v("P102_SURL"));'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(31311211082578744)
,p_name=>'On SN change'
,p_event_sequence=>220
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(27342723071391813)
,p_triggering_element=>'SERIAL_NUMBER'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31311321929578745)
,p_event_id=>wwv_flow_imp.id(31311211082578744)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const model = getIGGridViewModel(LINE_IG);',
'model.setValue(lineRec, "SN_EDIT", "Y");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(32277444725470422)
,p_name=>'On save'
,p_event_sequence=>230
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(15657359821560935)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridsave'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(32277594819470423)
,p_event_id=>wwv_flow_imp.id(32277444725470422)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (this.data.status === "success") {',
'    apex.page.submit({',
'        request: "SUBMIT",',
'        showWait: true',
'    });',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(61648244963287903)
,p_name=>'On enter press'
,p_event_sequence=>250
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(15657359821560935)
,p_triggering_element=>'ENCODED'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.key?.toLowerCase() === "enter"'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61648311281287904)
,p_event_id=>wwv_flow_imp.id(61648244963287903)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'this.browserEvent.preventDefault();',
'saveLineIG();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(65298578106937707)
,p_name=>'On enter press 2'
,p_event_sequence=>260
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(15657359821560935)
,p_triggering_element=>'UOM,PRODUCT_DATE'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.key?.toLowerCase() === "enter" && $v("P102_LABEL") === "Update"'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65298647205937708)
,p_event_id=>wwv_flow_imp.id(65298578106937707)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'this.browserEvent.preventDefault();',
'saveLineIG();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(65298103522937703)
,p_name=>'On enter press (update)'
,p_event_sequence=>270
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(15657359821560935)
,p_triggering_element=>'ITEM_NUMBER,ITEM_DESC'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$v("P102_LABEL") === "Update" && this.browserEvent.key?.toLowerCase() === "enter" && isEnterable'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keyup'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65298267677937704)
,p_event_id=>wwv_flow_imp.id(65298103522937703)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const model = getIGGridViewModel(LINE_IG);',
'const rec = model.getSelectedRecords()[0];',
'const elem = this.triggeringElement;',
'',
'if (rec[0] === "") {',
'    elem.setCustomValidity("Please enter a valid item");',
'    elem.reportValidity();',
'} else {',
'    saveLineIG();',
'}',
''))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(16266447234399125)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(15657359821560935)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Shipment Line Items - Save Interactive Grid Data'
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_cs                nit018.qty%TYPE := TO_NUMBER(TRIM(:CS));',
'    v_cost              nit018.cost%TYPE := TO_NUMBER(TRIM(:COST));',
'    v_next_sitem_id     nit018.shipment_items_id%TYPE;',
'    v_col_name          varchar2(100) := ''NOS_SHIP_SN_'' || :P102_SHIPMENT_ID || ''_'' || UPPER(:SPID);',
'begin',
'    case :APEX$ROW_STATUS',
'    when ''C'' then',
'        v_next_sitem_id := shipment_records_pkg.get_next_shipment_item_id(:P102_SHIPMENT_ID);',
'',
'        insert into nit018 ( shipment_id, shipment_items_id, po_id, item_id, qty, cost, uom_id, product_date, encoded)',
'        values (:P102_SHIPMENT_ID, v_next_sitem_id, :REF_PO_NO, :ITEM_ID, :CS, :COST, :UOM_ID, :PRODUCT_DATE, :ENCODED);',
'        ',
'        shipment_records_pkg.save_serial_numbers(:P102_SHIPMENT_ID, v_next_sitem_id, v_col_name);',
'',
'        :SHIPMENT_ID := :P102_SHIPMENT_ID;',
'        :SHIPMENT_ITEMS_ID := v_next_sitem_id;',
'    when ''U'' then',
'        if :OLD_ITEM_ID != :ITEM_ID then',
'            delete nit026',
'             where shipment_id = :P102_SHIPMENT_ID',
'               and shipment_items_id = :SHIPMENT_ITEMS_ID;',
'        end if;',
'',
'        update nit018',
'           set item_id = :ITEM_ID,',
'               qty = :CS,',
'               cost = :COST,',
'               uom_id = :UOM_ID,',
'               product_date = :PRODUCT_DATE,',
'               encoded = :ENCODED',
'         where shipment_id = :P102_SHIPMENT_ID',
'           and shipment_items_id = :SHIPMENT_ITEMS_ID',
'           and item_id = :OLD_ITEM_ID;',
'',
'        shipment_records_pkg.save_serial_numbers(:P102_SHIPMENT_ID, :SHIPMENT_ITEMS_ID, v_col_name);',
'    when ''D'' then',
'        delete nit026',
'         where shipment_id = :P102_SHIPMENT_ID',
'           and shipment_items_id = :SHIPMENT_ITEMS_ID;',
'',
'        delete nit018',
'         where shipment_id = :P102_SHIPMENT_ID',
'           and shipment_items_id = :SHIPMENT_ITEMS_ID;',
'    end case;',
'exception',
'    when others then',
'        raise_application_error(-20001, ''An error has occurred while saving line items (Error code: SLI-'' || :APEX$ROW_STATUS || ''-'' || v_next_sitem_id || ''-'' || :P102_SHIPMENT_ID || ''-'' || :SHIPMENT_ID || ''-'' || SQLCODE);',
'end;'))
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>16266447234399125
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27343489658391820)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(27342723071391813)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'SN IG - Save Interactive Grid Data'
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    case :APEX$ROW_STATUS',
'    when ''C'' then',
'        null;',
'    when ''U'' then',
'        apex_collection.update_member_attribute(',
'            p_collection_name => ''NOS_SHIP_SN_'' || :SHIPMENT_ID || ''_'' || :SHIPMENT_ITEMS_ID,',
'            p_seq => :CASE,',
'            p_attr_number => 1,',
'            p_attr_value => :SERIAL_NUMBER',
'        );',
'    when ''D'' then',
'        null;',
'    end case;',
'end;'))
,p_attribute_05=>'N'
,p_attribute_06=>'N'
,p_process_error_message=>'An error has occurred while saving line items (Error code: SNIG-#SQLCODE#)'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Serial numbers added'
,p_internal_uid=>27343489658391820
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31307536063578707)
,p_process_sequence=>50
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create collections for SN'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    TYPE coll_metadata_r IS RECORD (',
'        ct                      number,',
'        shipment_items_id       nit018.shipment_items_id%TYPE,',
'        total_units             number',
'    );',
'',
'    TYPE coll_metadata_t IS TABLE OF coll_metadata_r;',
'',
'    TYPE coll_data_r IS RECORD (',
'        sn_id               nit026.serial_number_id%TYPE,',
'        shipment_id         nit026.shipment_id%TYPE,',
'        shipment_items_id   nit026.shipment_items_id%TYPE,',
'        serial_number       nit026.serial_number%TYPE',
'    );',
'',
'    TYPE coll_data_t IS TABLE OF coll_data_r;',
'',
'    v_tab               coll_metadata_t;',
'    v_d_tab             coll_data_t;',
'    v_rem               number;',
'    v_coll_name         varchar2(30);',
'begin',
'    for col in (select collection_name cn',
'                  from apex_collections',
'                 where collection_name like ''NOS_SHIP_SN%'')',
'    loop',
'        if apex_collection.collection_exists(p_collection_name => col.cn) then',
'            apex_collection.delete_collection(p_collection_name => col.cn);',
'        end if;',
'    end loop;',
'',
'    --create collection for each item',
'    select count(b.serial_number) ct, a.shipment_items_id, (a.qty * c.quantity) total_units',
'      bulk collect into v_tab',
'      from nit018 a,',
'           nit026 b,',
'           (select w.item_id, w.quantity',
'              from nit002 w',
'             where w."LEVEL" = 4) c',
'     where a.shipment_id = :P102_SHIPMENT_ID',
'       and a.item_id = c.item_id',
'       and a.shipment_id = b.shipment_id (+)',
'       and a.shipment_items_id = b.shipment_items_id (+)',
'     group by a.shipment_items_id, (a.qty * c.quantity);',
'',
'    if v_tab.COUNT > 0 THEN',
'        for i in v_tab.FIRST .. v_tab.LAST',
'        loop',
'            v_rem := v_tab(i).total_units - v_tab(i).ct;',
'            v_coll_name := ''NOS_SHIP_SN_'' || :P102_SHIPMENT_ID || ''_'' || UPPER(v_tab(i).shipment_items_id);',
'',
'            apex_collection.create_or_truncate_collection(p_collection_name => v_coll_name);',
'',
'            select serial_number_id sn_id, shipment_id, shipment_items_id, serial_number',
'              bulk collect into v_d_tab',
'              from nit026',
'             where shipment_id = :P102_SHIPMENT_ID',
'               and shipment_items_id = v_tab(i).shipment_items_id',
'            union all',
'            select *',
'              from (select null sn_id, null shipment_id, null shipment_items_id, null serial_number',
'                      from dual',
'                    connect by level <= v_rem)',
'             where v_rem > 0',
'            order by sn_id;',
'',
'            for i2 in v_d_tab.FIRST .. v_d_tab.LAST ',
'            loop',
'                apex_collection.add_member(',
'                    p_collection_name => v_coll_name,',
'                    p_n001 => NVL(v_d_tab(i2).shipment_id, :P102_SHIPMENT_ID), ',
'                    p_c002 => NVL(v_d_tab(i2).shipment_items_id, v_tab(i).shipment_items_id),',
'                    p_n003 => v_d_tab(i2).sn_id,',
'                    p_c001 => v_d_tab(i2).serial_number',
'                );',
'            end loop;',
'        end loop;',
'    end if;',
'exception',
'    when no_data_found then',
'        null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>31307536063578707
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(32278952357470437)
,p_process_sequence=>60
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create item filter collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    TYPE po_items_r IS RECORD (',
'        po_id                   nit018.po_id%TYPE,',
'        item_id                 nit018.item_id%TYPE,',
'        shipment_items_id       nit018.shipment_items_id%TYPE',
'    );',
'',
'    TYPE po_items_t IS TABLE OF po_items_r;',
'',
'    v_tab               po_items_t;',
'    v_coll_name         varchar2(30) := ''NOS_SHIP_SEL_ITEMS'';',
'begin',
'    select po_id, item_id, shipment_items_id',
'      bulk collect into v_tab',
'      from nit018 a',
'     where a.shipment_id = :P102_SHIPMENT_ID;',
'',
'    if v_tab.COUNT > 0 THEN',
'        apex_collection.create_or_truncate_collection(p_collection_name => v_coll_name);',
'',
'        for i in v_tab.FIRST .. v_tab.LAST',
'        loop',
'            apex_collection.add_member(',
'                p_collection_name => v_coll_name,',
'                p_n001 => v_tab(i).item_id,',
'                p_c001 => v_tab(i).po_id,',
'                p_c002 => v_tab(i).shipment_items_id',
'            );',
'        end loop;',
'    end if;',
'exception',
'    when no_data_found then',
'        null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
,p_internal_uid=>32278952357470437
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(29343300380183322)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SET_SN_COLLECTION'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_sitem_id         VARCHAR2(40) := apex_application.g_x01;',
'    v_total_units      NUMBER;',
'    v_shipment_id      NUMBER := apex_application.g_x03;',
'',
'    v_coll_name        VARCHAR2(40);',
'    v_col_mem_ct       NUMBER;',
'    v_ct_diff          NUMBER;',
'begin',
'    v_coll_name := ''NOS_SHIP_SN_'' || v_shipment_id || ''_'' || UPPER(v_sitem_id);',
'    v_total_units := REPLACE(apex_application.g_x02, '','', '''');',
'',
'    if apex_collection.collection_exists(p_collection_name => v_coll_name) then',
'        v_col_mem_ct := apex_collection.collection_member_count(p_collection_name => v_coll_name);',
'        v_ct_diff := v_col_mem_ct - v_total_units;',
'',
'        if v_ct_diff > 0 then',
'            for ctr in (v_total_units + 1) .. v_col_mem_ct',
'            loop',
'                apex_collection.delete_member(p_collection_name => v_coll_name, p_seq => ctr);',
'            end loop;',
'        elsif v_ct_diff < 0 then ',
'            for ctr in 1 .. (v_total_units - v_col_mem_ct)',
'            loop',
'                apex_collection.add_member(p_collection_name => v_coll_name, p_n001 => v_shipment_id, p_c002 => v_sitem_id);',
'            end loop;',
'        end if;',
'    else',
'        apex_collection.create_collection(p_collection_name => v_coll_name);',
'        for ctr in 1 .. v_total_units',
'        loop',
'            apex_collection.add_member(p_collection_name => v_coll_name, p_n001 => v_shipment_id, p_c002 => v_sitem_id);',
'        end loop;',
'    end if;',
'',
'    apex_json.open_object;',
'    apex_json.write(''message'', ''Success'');',
'    apex_json.write(''cn'', v_coll_name);',
'    apex_json.write(''cnct'', apex_collection.collection_member_count(p_collection_name => v_coll_name));',
'    apex_json.close_object;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>29343300380183322
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(32279297242470440)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SET_ITEM_FILTER'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_po_id            nit018.po_id%TYPE := apex_application.g_x01;',
'    v_item_id          nit018.item_id%TYPE := apex_application.g_x02;',
'    v_sitems_id        VARCHAR2(40) := apex_application.g_x03;',
'',
'    v_coll_name        VARCHAR2(20) := ''NOS_SHIP_SEL_ITEMS'';',
'    v_seq              apex_collections.seq_id%TYPE;',
'begin',
'    begin',
'        select seq_id',
'          into v_seq',
'          from apex_collections',
'         where collection_name = v_coll_name',
'           and c002 = v_sitems_id;',
'',
'        apex_collection.update_member (',
'            p_collection_name => v_coll_name,',
'            p_seq => v_seq,',
'            p_n001 => v_item_id,',
'            p_c001 => v_po_id,',
'            p_c002 => v_sitems_id',
'        );   ',
'    exception',
'        when no_data_found then',
'            apex_collection.add_member(',
'                p_collection_name => v_coll_name,',
'                p_n001 => v_item_id,',
'                p_c001 => v_po_id,',
'                p_c002 => v_sitems_id',
'            );',
'    end;',
'',
'    apex_json.open_object;',
'    apex_json.write(''message'', ''Success'');',
'    apex_json.close_object;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
,p_internal_uid=>32279297242470440
);
wwv_flow_imp.component_end;
end;
/
