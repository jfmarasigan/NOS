prompt --application/pages/page_00100
begin
--   Manifest
--     PAGE: 00100
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
 p_id=>100
,p_name=>'Review Shipment Orders'
,p_alias=>'REVIEW-SHIPMENT-ORDERS'
,p_step_title=>'Review Shipment Orders'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#js/review-shipment-orders.min.js'
,p_javascript_code_onload=>'initialize();'
,p_css_file_urls=>'#APP_FILES#css/review-shipment-orders.min.css'
,p_step_template=>wwv_flow_imp.id(5671392681337017)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12167359108578430)
,p_plug_name=>'Search Bar'
,p_title=>'Search By'
,p_region_name=>'search-bar'
,p_region_css_classes=>'is-active-modal'
,p_region_template_options=>'js-dialog-autoheight:js-modal:js-draggable:js-dialog-size720x480:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_04'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12168481221578441)
,p_plug_name=>'Search Field'
,p_region_name=>'search-field'
,p_parent_plug_id=>wwv_flow_imp.id(12167359108578430)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody:margin-bottom-none'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12167698346578433)
,p_plug_name=>'Buttons'
,p_region_css_classes=>'menu-buttons'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody:margin-bottom-none:margin-left-md:margin-right-md'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>50
,p_plug_grid_row_css_classes=>'buttons-row'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="shipment-buttons1"></div>',
'<div class="shipment-buttons2"></div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15059777565627908)
,p_plug_name=>'Shipment Records'
,p_region_name=>'shipment-records'
,p_region_template_options=>'#DEFAULT#:margin-left-md:margin-right-md'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>'SELECT * FROM TABLE(shipment_records_pkg.get_shipment_records(:P100_SEARCH, :P100_SORT, null));'
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P100_SEARCH,P100_SORT'
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
,p_plug_header=>'<div class="shipment-tg-header">Sorted By: <span class="sort-col">Vendor Code</span></div>'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(15060063737627911)
,p_name=>'SHIP_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SHIP_NO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Ship No'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
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
 p_id=>wwv_flow_imp.id(15060193450627912)
,p_name=>'P'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'P'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
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
,p_duplicate_value=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(15060219181627913)
,p_name=>'VESSEL_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VESSEL_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Vessel Name'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
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
,p_duplicate_value=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(15060306096627914)
,p_name=>'ETD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ETD'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'ETD'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
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
 p_id=>wwv_flow_imp.id(15060482548627915)
,p_name=>'ETA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ETA'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'ETA'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
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
 p_id=>wwv_flow_imp.id(15060524060627916)
,p_name=>'CONTAINER_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CONTAINER_NO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Container No'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
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
,p_duplicate_value=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19392444649535016)
,p_name=>'VENDOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VENDOR'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Vendor'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_enable_filter=>false
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
 p_id=>wwv_flow_imp.id(27344917784391835)
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
,p_is_primary_key=>true
,p_duplicate_value=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(35156813509966940)
,p_name=>'SHIPMENT_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SHIPMENT_NUMBER'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>110
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(15059827171627909)
,p_internal_uid=>15059827171627909
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_no_data_found_message=>'No shipments found'
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
 p_id=>wwv_flow_imp.id(15082763450692032)
,p_interactive_grid_id=>wwv_flow_imp.id(15059827171627909)
,p_static_id=>'150828'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(15082995846692032)
,p_report_id=>wwv_flow_imp.id(15082763450692032)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15084315891692048)
,p_view_id=>wwv_flow_imp.id(15082995846692032)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(15060063737627911)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>130
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15085116470692056)
,p_view_id=>wwv_flow_imp.id(15082995846692032)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(15060193450627912)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>70
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15086096477692064)
,p_view_id=>wwv_flow_imp.id(15082995846692032)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(15060219181627913)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15086912448692075)
,p_view_id=>wwv_flow_imp.id(15082995846692032)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(15060306096627914)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>130
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15087806043692082)
,p_view_id=>wwv_flow_imp.id(15082995846692032)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(15060482548627915)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>130
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15088746088692092)
,p_view_id=>wwv_flow_imp.id(15082995846692032)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(15060524060627916)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>200
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19477156782944637)
,p_view_id=>wwv_flow_imp.id(15082995846692032)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(19392444649535016)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(29033892515520059)
,p_view_id=>wwv_flow_imp.id(15082995846692032)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(27344917784391835)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(35836868153748203)
,p_view_id=>wwv_flow_imp.id(15082995846692032)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(35156813509966940)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17926617956262943)
,p_plug_name=>'Vendor Payment'
,p_region_name=>'vp-modal'
,p_region_css_classes=>'js-dialog-size800x560 is-active-modal'
,p_region_template_options=>'js-dialog-autoheight:js-modal:js-draggable:js-dialog-size720x480:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_04'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17926728170262944)
,p_plug_name=>'VP Grid'
,p_region_name=>'vp-grid'
,p_parent_plug_id=>wwv_flow_imp.id(17926617956262943)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT null vendor,',
'       null check_date,',
'       null bank_code,',
'       null check_number,',
'       null amount',
'  from dual'))
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
,p_plug_footer=>'<div class="vp-footer">Press any key to exit</div>'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(17926986498262946)
,p_name=>'VENDOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VENDOR'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Vendor'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
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
,p_duplicate_value=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(17927014195262947)
,p_name=>'CHECK_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CHECK_DATE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Check Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
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
,p_duplicate_value=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(17927203945262949)
,p_name=>'CHECK_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CHECK_NUMBER'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Check Number'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
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
,p_duplicate_value=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(17927345949262950)
,p_name=>'AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AMOUNT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Amount'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
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
,p_duplicate_value=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(42426218295064032)
,p_name=>'BANK_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BANK_CODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Bank'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
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
,p_duplicate_value=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(17926849201262945)
,p_internal_uid=>17926849201262945
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
,p_fixed_header_max_height=>440
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
 p_id=>wwv_flow_imp.id(19385879545534773)
,p_interactive_grid_id=>wwv_flow_imp.id(17926849201262945)
,p_static_id=>'193859'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(19386047217534773)
,p_report_id=>wwv_flow_imp.id(19385879545534773)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19386597511534781)
,p_view_id=>wwv_flow_imp.id(19386047217534773)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(17926986498262946)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19387483047534789)
,p_view_id=>wwv_flow_imp.id(19386047217534773)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(17927014195262947)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19389214888534803)
,p_view_id=>wwv_flow_imp.id(19386047217534773)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(17927203945262949)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19390160611534809)
,p_view_id=>wwv_flow_imp.id(19386047217534773)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(17927345949262950)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43413236531651239)
,p_view_id=>wwv_flow_imp.id(19386047217534773)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(42426218295064032)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19390968288535001)
,p_plug_name=>'VP Shipment No'
,p_region_name=>'vp-ship-no-label'
,p_parent_plug_id=>wwv_flow_imp.id(17926617956262943)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--textContent:t-Region--hiddenOverflow:margin-top-none'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source=>'<p class="vp-ship-no">Shipment No: &P100_SEARCH.-<span class="vp-ship-seq-no">99999</span></p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19392731215535019)
,p_plug_name=>'Sort'
,p_region_name=>'sort-modal'
,p_region_css_classes=>'js-dialog-size220x225 sort'
,p_region_template_options=>'js-dialog-autoheight:js-modal:js-draggable:js-dialog-nosize'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_04'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="sort-boxes">',
'    <div class="sort-option" data-value="1" tabindex="10001">Vendor Code</div>',
'    <div class="sort-option" data-value="2" tabindex="10002">Shipment Number</div>',
'    <div class="sort-option" data-value="3" tabindex="10003">ETA</div>',
'    <div class="sort-option" data-value="4" tabindex="10004">Container Number</div>',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27345315994391839)
,p_plug_name=>'Warehouse Location'
,p_region_name=>'wh-location'
,p_region_template_options=>'js-dialog-autoheight:js-modal:js-draggable:js-dialog-size480x320:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>50
,p_plug_display_point=>'REGION_POSITION_04'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(30552023656940701)
,p_plug_name=>'Popup'
,p_region_name=>'r-popup-box'
,p_region_css_classes=>'r-popup-box'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(4239308569084015)
,p_plug_display_sequence=>70
,p_plug_display_point=>'REGION_POSITION_04'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="r-popup-div">',
'    <div class="r-popup-icon"></div>',
'    <div class="r-popup"></div>',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(30554071133940721)
,p_plug_name=>'Supervisor Approval'
,p_region_name=>'supervisor-approval'
,p_region_template_options=>'js-dialog-autoheight:js-modal:js-draggable:js-dialog-size480x320:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>60
,p_plug_display_point=>'REGION_POSITION_04'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(35157794242966949)
,p_plug_name=>'Report Options'
,p_region_name=>'report-options-modal'
,p_region_css_classes=>'report-options js-dialog-size480x225'
,p_region_template_options=>'js-dialog-autoheight:js-modal:js-draggable:js-dialog-size480x320'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>80
,p_plug_display_point=>'REGION_POSITION_04'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="report-option-boxes">',
'    <div class="report-option-option" data-value="r1">A - Shipment Vessel Information Summary</div>',
'    <div class="report-option-option" data-value="r2">B - Summary of Shipment By Supplier Report</div>',
'    <div class="report-option-option" data-value="r3">C - Shipment Report with Serial Numbers</div>',
'    <div class="report-option-option" data-value="r4">D - Shipment Report</div>',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(39469371819750330)
,p_plug_name=>'Shipment Vessel Information Summary'
,p_region_css_classes=>'js-dialog-size480x90'
,p_region_template_options=>'js-dialog-autoheight:js-modal:js-draggable:js-dialog-size480x320'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>100
,p_plug_display_point=>'REGION_POSITION_04'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(39469834806750335)
,p_plug_name=>'Summary of Shipment By Supplier Report'
,p_region_css_classes=>'js-dialog-size500x90'
,p_region_template_options=>'js-dialog-autoheight:js-modal:js-draggable:js-dialog-size480x320'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>110
,p_plug_display_point=>'REGION_POSITION_04'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(39470380591750340)
,p_plug_name=>'Print Inventory Costing Sheet Options'
,p_region_css_classes=>'pic-options js-dialog-size480x130'
,p_region_template_options=>'js-dialog-autoheight:js-modal:js-draggable:js-dialog-size480x320'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>120
,p_plug_display_point=>'REGION_POSITION_04'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="pic-option-boxes">',
'    <div class="pic-option-option" data-value="p1">A - Individual Shipment Report</div>',
'    <div class="pic-option-option" data-value="p2">B - All Shipment Report (for a period)</div>',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(39470745958750344)
,p_plug_name=>'Print Inventory Costing Sheet'
,p_region_css_classes=>'js-dialog-size500x90'
,p_region_template_options=>'js-dialog-autoheight:js-modal:js-draggable:js-dialog-size480x320'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>140
,p_plug_display_point=>'REGION_POSITION_04'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(39667709245745205)
,p_plug_name=>'Shipment with Duplicate Container No'
,p_region_css_classes=>'js-dialog-size500x90'
,p_region_template_options=>'js-dialog-autoheight:js-modal:js-draggable:js-dialog-size480x320'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>150
,p_plug_display_point=>'REGION_POSITION_04'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(42423135783064001)
,p_plug_name=>'Printing Options'
,p_region_css_classes=>'printing-options js-dialog-size480x130'
,p_region_template_options=>'js-dialog-autoheight:js-modal:js-draggable:js-dialog-size480x320'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>160
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(42425170593064021)
,p_plug_name=>'Print Options'
,p_region_css_classes=>'nprint-options js-dialog-size480x130'
,p_region_template_options=>'js-dialog-autoheight:js-modal:js-draggable:js-dialog-size480x320'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>130
,p_plug_display_point=>'REGION_POSITION_04'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="nprint-option-boxes">',
'    <div class="nprint-option-option" data-value="1">A - Shipment Record</div>',
'    <div class="nprint-option-option" data-value="2">B - Shipment Record Vendors & Invoices</div>',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12168610362578443)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(12167698346578433)
,p_button_name=>'ADD'
,p_button_static_id=>'btn-add'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>A</u> - Add'
,p_button_redirect_url=>'f?p=&APP_ID.:101:&SESSION.::&DEBUG.:101::'
,p_button_condition=>'has_access(:APP_USER, 23, 81) = ''Y'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'s-button'
,p_button_cattributes=>'tabindex="-1"'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12168719326578444)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(12167698346578433)
,p_button_name=>'UPDATE'
,p_button_static_id=>'btn-update'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>U</u> - Update'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'has_access(:APP_USER, 23, 82) = ''Y'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'s-button'
,p_button_cattributes=>'tabindex="-1"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12168825596578445)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(12167698346578433)
,p_button_name=>'INQUIRE'
,p_button_static_id=>'btn-inquire'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>I</u> - Inquire'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'s-button'
,p_button_cattributes=>'tabindex="-1"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12168932478578446)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(12167698346578433)
,p_button_name=>'REPORTS'
,p_button_static_id=>'btn-reports'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>R</u> - Reports'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'has_access(:APP_USER, 23, 84) = ''Y'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'s-button'
,p_button_cattributes=>'tabindex="-1"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12169025786578447)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(12167698346578433)
,p_button_name=>'RECEIVE'
,p_button_static_id=>'btn-receive'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>E</u> - Receive'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'has_access(:APP_USER, 23, 86) = ''Y'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'s-button'
,p_button_cattributes=>'tabindex="-1"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12169176750578448)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(12167698346578433)
,p_button_name=>'POST'
,p_button_static_id=>'btn-post'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>P</u> - Post'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'has_access(:APP_USER, 23, 87) = ''Y'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'s-button'
,p_button_cattributes=>'tabindex="-1"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12169201819578449)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(12167698346578433)
,p_button_name=>'UNPOST'
,p_button_static_id=>'btn-unpost'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>H</u> - Unpost'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'has_access(:APP_USER, 23, 88) = ''Y'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'s-button'
,p_button_cattributes=>'tabindex="-1"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12169338380578450)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(12167698346578433)
,p_button_name=>'VENDOR_PAYMENT'
,p_button_static_id=>'btn-vendor-payt'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>V</u> - Vendor Payment'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'s-button'
,p_button_cattributes=>'tabindex="-1"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27344471857391830)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(12167698346578433)
,p_button_name=>'PRINT'
,p_button_static_id=>'btn-print'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>N</u> - Print'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'has_access(:APP_USER, 23, 90) = ''Y'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'s-button'
,p_button_cattributes=>'tabindex="-1"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27344315193391829)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(12167698346578433)
,p_button_name=>'POST_ALL_PO'
,p_button_static_id=>'btn-post-all-po'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>T</u> - Post All PO'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'has_access(:APP_USER, 23, 93) = ''Y'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'s-button'
,p_button_cattributes=>'tabindex="-1"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(15059070163627901)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_imp.id(12167698346578433)
,p_button_name=>'SORT'
,p_button_static_id=>'btn-sort'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>O</u> - Sort'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'s-button'
,p_button_cattributes=>'tabindex="-1"'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(15059106672627902)
,p_button_sequence=>140
,p_button_plug_id=>wwv_flow_imp.id(12167698346578433)
,p_button_name=>'PRINT_INVENTORY_COSTING_SHEET'
,p_button_static_id=>'btn-print-inv'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>C</u> - Print Inventory Costing Sheet'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'has_access(:APP_USER, 23, 91) = ''Y'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'s-button'
,p_button_cattributes=>'tabindex="-1"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(15059211918627903)
,p_button_sequence=>150
,p_button_plug_id=>wwv_flow_imp.id(12167698346578433)
,p_button_name=>'PRINT_SHIPMENT_DUP_CONT'
,p_button_static_id=>'btn-print-ship'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>D</u> - Print Shipment with Duplicate Container No.'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'has_access(:APP_USER, 23, 92) = ''Y'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'s-button s-button-2x'
,p_button_cattributes=>'tabindex="-1"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(15059370402627904)
,p_button_sequence=>160
,p_button_plug_id=>wwv_flow_imp.id(12167698346578433)
,p_button_name=>'SEARCH'
,p_button_static_id=>'btn-search'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>S</u> - Search'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'s-button'
,p_button_cattributes=>'tabindex="-1"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(15059431058627905)
,p_button_sequence=>170
,p_button_plug_id=>wwv_flow_imp.id(12167698346578433)
,p_button_name=>'TOP'
,p_button_static_id=>'btn-top'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>Home</u> - Top'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'s-button'
,p_button_cattributes=>'tabindex="-1"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(15059531936627906)
,p_button_sequence=>180
,p_button_plug_id=>wwv_flow_imp.id(12167698346578433)
,p_button_name=>'BOTTOM'
,p_button_static_id=>'btn-bottom'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>End</u> - Bottom'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'s-button'
,p_button_cattributes=>'tabindex="-1"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(15059667810627907)
,p_button_sequence=>190
,p_button_plug_id=>wwv_flow_imp.id(12167698346578433)
,p_button_name=>'EXIT'
,p_button_static_id=>'btn-exit'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>Esc</u> - To Exit'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:100::'
,p_button_css_classes=>'s-button'
,p_button_cattributes=>'tabindex="-1"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(15656801916560930)
,p_branch_name=>'Go to update'
,p_branch_action=>'f?p=&APP_ID.:101:&SESSION.::&DEBUG.::P101_SHIPMENT_ID:&P100_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'REQUEST_IN_CONDITION'
,p_branch_condition=>'UPDATE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(31309738469578729)
,p_branch_name=>'Go to inquire'
,p_branch_action=>'f?p=&APP_ID.:103:&SESSION.::&DEBUG.:103:P103_SHIPMENT_ID:&P100_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>20
,p_branch_condition_type=>'REQUEST_IN_CONDITION'
,p_branch_condition=>'INQUIRE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(16268925130399150)
,p_branch_name=>'Go to print modal'
,p_branch_action=>'f?p=&APP_ID.:30000:&SESSION.::&DEBUG.::PRINT_DATA:&P100_REPORT_DATA.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>30
,p_branch_condition_type=>'REQUEST_IN_CONDITION'
,p_branch_condition=>'PRINT'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12168539774578442)
,p_name=>'P100_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(12168481221578441)
,p_prompt=>'Shipments of Year :'
,p_placeholder=>'YYYY'
,p_format_mask=>'9990'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15655671853560918)
,p_name=>'P100_SURL'
,p_item_sequence=>60
,p_item_default=>'APEX_PAGE.GET_URL(p_page => 301)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15656249881560924)
,p_name=>'P100_ID'
,p_item_sequence=>70
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16268669222399147)
,p_name=>'P100_REPORT_DATA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(42423135783064001)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19395327679535045)
,p_name=>'P100_SORT'
,p_item_sequence=>100
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27344854657391834)
,p_name=>'P100_SHIPMENT_SEQ'
,p_item_sequence=>80
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27345403269391840)
,p_name=>'P100_WAREHOUSE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(27345315994391839)
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT warehouse_location d, warehouse_id r ',
'  FROM nim027'))
,p_cSize=>30
,p_tag_css_classes=>'fs-1125'
,p_colspan=>3
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_css_classes=>'fs-1125'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
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
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30553532924940716)
,p_name=>'P100_LOCATION_DESC'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(27345315994391839)
,p_item_default=>'Select a warehouse'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'fs-1125'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_css_classes=>'fs-1125'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30554108188940722)
,p_name=>'P100_SUPERVISOR_USER_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(30554071133940721)
,p_prompt=>'User ID'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'fs-1125'
,p_tag_attributes=>'autocomplete="username"'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_css_classes=>'fs-1125'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30554299722940723)
,p_name=>'P100_SUPERVISOR_PW'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(30554071133940721)
,p_prompt=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_tag_css_classes=>'fs-1125'
,p_tag_attributes=>'autocomplete="current-password"'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_css_classes=>'fs-1125'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35156751651966939)
,p_name=>'P100_SHIPMENT_NUM'
,p_item_sequence=>90
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39469484705750331)
,p_name=>'P100_REP_MONTH_FROM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(39469371819750330)
,p_prompt=>'Month From'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'fs-1125'
,p_colspan=>6
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_css_classes=>'rep-option'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39469525584750332)
,p_name=>'P100_REP_MONTH_TO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(39469371819750330)
,p_prompt=>'Month To'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'fs-1125'
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_css_classes=>'rep-option'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39469953143750336)
,p_name=>'P100_REP_VENDOR_CODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(39469834806750335)
,p_prompt=>'Vendor Code'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'fs-1125'
,p_colspan=>7
,p_grid_column=>3
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_css_classes=>'rep-option'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39470808112750345)
,p_name=>'P100_REP_PIC_MONTH'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(39470745958750344)
,p_prompt=>'Month'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'fs-1125'
,p_colspan=>6
,p_grid_column=>3
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_css_classes=>'rep-option'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_attribute_03=>'center'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39667801609745206)
,p_name=>'P100_REP_DUP_MONTH'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(39667709245745205)
,p_prompt=>'Month'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'fs-1125'
,p_colspan=>6
,p_grid_column=>3
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_css_classes=>'rep-option'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_attribute_03=>'center'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42423259564064002)
,p_name=>'P100_REPORT_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(42423135783064001)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42423368508064003)
,p_name=>'P100_FILENAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(42423135783064001)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42423520609064005)
,p_name=>'P100_REPORT_SPINNER_ON'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(42423135783064001)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42424002712064010)
,p_name=>'P100_REPORT_AFFIX_NAME'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(42423135783064001)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42424155472064011)
,p_name=>'P100_REPORT_FORMAT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(42423135783064001)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(15060735942627918)
,p_name=>'Open search modal'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(15059370402627904)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15060804335627919)
,p_event_id=>wwv_flow_imp.id(15060735942627918)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(12167359108578430)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16265529953399116)
,p_event_id=>wwv_flow_imp.id(15060735942627918)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'activeModal = ''search-bar'';'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(15061122673627922)
,p_name=>'Search keydown events'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P100_SEARCH'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.key === "Enter" || this.browserEvent.key === "Escape"'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15061219050627923)
,p_event_id=>wwv_flow_imp.id(15061122673627922)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(12168481221578441)
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'this.browserEvent.preventDefault();',
'this.browserEvent.stopPropagation();',
'activeModal = null;'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19392021742535012)
,p_event_id=>wwv_flow_imp.id(15061122673627922)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'Set global vars'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'forRefresh = true;',
'',
'apex.server.process("SET_SEARCH", {',
'    pageItems: ["P100_SEARCH"]',
'});'))
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'this.browserEvent.key === "Enter" && this.triggeringElement.value !== ""'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15657195598560933)
,p_event_id=>wwv_flow_imp.id(15061122673627922)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'Close modal dialog'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(12167359108578430)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15061615209627927)
,p_event_id=>wwv_flow_imp.id(15061122673627922)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>'Refresh on enter'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(15059777565627908)
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'this.browserEvent.key === "Enter" && this.triggeringElement.value !== ""'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(15656009570560922)
,p_name=>'On record select'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(15059777565627908)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15656123486560923)
,p_event_id=>wwv_flow_imp.id(15656009570560922)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (this.data.selectedRecords?.length > 0) {',
'    const model = this.data.model;',
'    const selectedRecord = this.data.selectedRecords[0];',
'    const recordId = model.getRecordId(selectedRecord);',
'    $("#P100_ID").val(model.getRecordId(selectedRecord));',
'    $("#P100_SHIPMENT_SEQ").val(model.getRecordValue(recordId, "SHIP_NO"));',
'    $("#P100_SHIPMENT_NUM").val(model.getRecordValue(recordId, "SHIPMENT_NUMBER"));',
'    ',
'    if (forRefresh) {',
'        setTimeout(() => {',
'            $("#btn-bottom").trigger("click");',
'            $("#btn-top").trigger("click");',
'            forRefresh = false;',
'        }, 100);',
'    }',
'} else {',
'    $("#P100_ID").val("");',
'    $("#P100_SHIPMENT_SEQ").val("");',
'    $("#P100_SHIPMENT_NUM").val("");',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(15656612810560928)
,p_name=>'Go to inquire screen'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(12168825596578445)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15656778293560929)
,p_event_id=>wwv_flow_imp.id(15656612810560928)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.page.submit({',
'    request: "INQUIRE",',
'    set: { "P100_ID" : $v("P100_ID") },',
'    showWait: false',
'}); '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(31309564601578727)
,p_name=>'Go to update screen'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(12168719326578444)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31309662969578728)
,p_event_id=>wwv_flow_imp.id(31309564601578727)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.page.submit({',
'    request: "UPDATE",',
'    set: { "P100_ID" : $v("P100_ID") },',
'    showWait: false',
'}); '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16268477423399145)
,p_name=>'Post shipment'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(12169176750578448)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16268817618399149)
,p_event_id=>wwv_flow_imp.id(16268477423399145)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const shipNo = $v("P100_SHIPMENT_NUM");',
'',
'apex.server.process("POST_SHIPMENT", {',
'    x01: $v("P100_ID")',
'})',
'.done(data => {',
'    if (data.message === "OK") {',
'        forRefresh = true;',
'        apex.region(SHIPMENT_IG).call(''getActions'').invoke("refresh");',
'        showPopup({',
'            message: `Shipment No. ${shipNo} successfully posted.`,',
'            icon: ICON_OK_LARGE,',
'            width: 430',
'        });',
'    } else {',
'        showPopup({',
'            message: data.message,',
'            icon: ICON_FAIL_LARGE,',
'            width: 430',
'        });',
'    }',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19391026833535002)
,p_name=>'Open vendor payment modal'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(12169338380578450)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19392169406535013)
,p_event_id=>wwv_flow_imp.id(19391026833535002)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(".vp-ship-no").text(`Shipment No: ${$("#P100_SEARCH").val()} - ${$("#P100_SHIPMENT_SEQ").val().padStart(3, "0")}`);'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(32277732237470425)
,p_event_id=>wwv_flow_imp.id(19391026833535002)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(17926617956262943)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19391121838535003)
,p_event_id=>wwv_flow_imp.id(19391026833535002)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(17926617956262943)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19392896566535020)
,p_name=>'Open sort modal'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(15059070163627901)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19392976736535021)
,p_event_id=>wwv_flow_imp.id(19392896566535020)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(19392731215535019)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19395226158535044)
,p_event_id=>wwv_flow_imp.id(19392896566535020)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const currentSortValue = $v("P100_SORT") || 1;',
'$(`.sort .sort-option[data-value=''${currentSortValue}'']`).focus();',
'$(`.sort .sort-option[data-value=''${currentSortValue}'']`).addClass("sort-active");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19395427947535046)
,p_name=>'Sort refresh'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P100_SORT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30553385969940714)
,p_event_id=>wwv_flow_imp.id(19395427947535046)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(15059777565627908)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27345084397391836)
,p_name=>'Open warehouse modal'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(12169025786578447)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27345210604391838)
,p_event_id=>wwv_flow_imp.id(27345084397391836)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27345315994391839)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27345539793391841)
,p_name=>'Set warehouse location for Receive modal '
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P100_WAREHOUSE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27345670462391842)
,p_event_id=>wwv_flow_imp.id(27345539793391841)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process("GET_WH_LOCATION_DESC", {',
'    x01: $v("P100_WAREHOUSE") ',
'})',
'.done(data => {',
'    $("#P100_LOCATION_DESC").text(data.ld);',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27345788036391843)
,p_name=>'Warehouse location on enter key down'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P100_WAREHOUSE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27345867299391844)
,p_event_id=>wwv_flow_imp.id(27345788036391843)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Enter key event'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const wh = $v("P100_WAREHOUSE");',
'const shipmentId = $v("P100_ID");',
'const shipNo = $v("P100_SHIPMENT_NUM");',
'',
'apex.server.process("RECEIVE_SHIPMENT", {',
'    pageItems: ["P100_ID", "P100_WAREHOUSE"]',
'})',
'.done(data => {',
'    if (data.message !== "OK") {',
'        showPopup({',
'            message: data.message,',
'            icon: ICON_FAIL_LARGE,',
'            width: 410',
'        });',
'    } else {',
'        forRefresh = true;',
'        apex.region(SHIPMENT_IG).widget().interactiveGrid("getActions").invoke("refresh");',
'        showPopup({',
'            message: `Shipment No. ${shipNo} sucessfully received.`,',
'            icon: ICON_OK_LARGE,',
'            width: 430',
'        });',
'    }',
'    $.event.trigger("close-wh-location");',
'});',
''))
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'this.browserEvent.key?.toLowerCase() === "enter"'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27345957778391845)
,p_event_id=>wwv_flow_imp.id(27345788036391843)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27345315994391839)
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'this.browserEvent.key?.toLowerCase() === "escape"'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30552539073940706)
,p_name=>'Vendor payment key events'
,p_event_sequence=>130
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'activeModal === ''vp-modal'''
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30553289653940713)
,p_event_id=>wwv_flow_imp.id(30552539073940706)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'this.browserEvent.preventDefault();',
'this.browserEvent.stopImmediatePropagation();',
'activeModal = null;'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30552805255940709)
,p_event_id=>wwv_flow_imp.id(30552539073940706)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(17926617956262943)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30552106870940702)
,p_name=>'Close sort modal'
,p_event_sequence=>140
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'close-sort'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30552208180940703)
,p_event_id=>wwv_flow_imp.id(30552106870940702)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(19392731215535019)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39468376788750320)
,p_name=>'Close report option modal'
,p_event_sequence=>150
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'close-report-options'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39468470144750321)
,p_event_id=>wwv_flow_imp.id(39468376788750320)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(19392731215535019)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30552317531940704)
,p_name=>'Close vendor payment modal'
,p_event_sequence=>160
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'close-vp-modal'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30552457058940705)
,p_event_id=>wwv_flow_imp.id(30552317531940704)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(17926617956262943)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30553755855940718)
,p_name=>'Close warehouse location modal'
,p_event_sequence=>170
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'close-wh-location'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(32276349226470411)
,p_event_id=>wwv_flow_imp.id(30553755855940718)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'activeModal = null;'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30553826810940719)
,p_event_id=>wwv_flow_imp.id(30553755855940718)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27345315994391839)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30554780726940728)
,p_name=>'Close unpost modal'
,p_event_sequence=>180
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'close-supervisor-approval'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30554846453940729)
,p_event_id=>wwv_flow_imp.id(30554780726940728)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(30554071133940721)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30554365679940724)
,p_name=>'Open unpost modal'
,p_event_sequence=>190
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(12169201819578449)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30554508959940726)
,p_event_id=>wwv_flow_imp.id(30554365679940724)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(30554071133940721)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30554958922940730)
,p_name=>'On unpost submit'
,p_event_sequence=>200
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P100_SUPERVISOR_PW'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.key?.toLowerCase() === "enter"'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30555005024940731)
,p_event_id=>wwv_flow_imp.id(30554958922940730)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process("UNPOST", {',
'    x01: $v("P100_SUPERVISOR_USER_ID"),',
'    x02: $v("P100_SUPERVISOR_PW"),',
'    x03: $v("P100_ID")',
'})',
'.done(data => {',
'    if (data.message !== "success") {',
'        apex.message.showErrors([',
'            {',
'                type: "error",',
'                location: "inline",',
'                pageItem: "P100_SUPERVISOR_USER_ID",',
'                message: data.message',
'            },',
'            {',
'                type: "error",',
'                location: "inline",',
'                pageItem: "P100_SUPERVISOR_PW",',
'                message: data.message',
'            }',
'        ]);',
'        $("#P100_SUPERVISOR_USER_ID").focus();',
'    } else {',
'        $.event.trigger("UNPOST_SUCCESS");',
'    }',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30555246527940733)
,p_name=>'On unpost success'
,p_event_sequence=>210
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'UNPOST_SUCCESS'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30555385966940734)
,p_event_id=>wwv_flow_imp.id(30555246527940733)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(30554071133940721)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30555416286940735)
,p_event_id=>wwv_flow_imp.id(30555246527940733)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(15059777565627908)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30555676143940737)
,p_name=>'Post All PO'
,p_event_sequence=>220
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27344315193391829)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30555726981940738)
,p_event_id=>wwv_flow_imp.id(30555676143940737)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process("POST_ALL_PO", {',
'    x01: $v(''P100_ID'')',
'})',
'.done(data => {',
'    showPopup({',
'        message: data.message,',
'        icon: ICON_OK_LARGE',
'    });',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30555981329940740)
,p_name=>'Open popup'
,p_event_sequence=>230
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'OPEN_POPUP'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30556030411940741)
,p_event_id=>wwv_flow_imp.id(30555981329940740)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(30552023656940701)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30556164164940742)
,p_name=>'Close popup'
,p_event_sequence=>240
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'CLOSE_POPUP'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30556292058940743)
,p_event_id=>wwv_flow_imp.id(30556164164940742)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(30552023656940701)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(32275978608470407)
,p_name=>'On top press'
,p_event_sequence=>250
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(15059431058627905)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(32276085149470408)
,p_event_id=>wwv_flow_imp.id(32275978608470407)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'focusOnIGFirstRecordFirstCell(SHIPMENT_IG, "VENDOR");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(32276102529470409)
,p_name=>'On bottom press'
,p_event_sequence=>260
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(15059531936627906)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(32276255186470410)
,p_event_id=>wwv_flow_imp.id(32276102529470409)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'focusOnIGLastRecordFirstCell(SHIPMENT_IG);'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(35157871474966950)
,p_name=>'Open report options'
,p_event_sequence=>270
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(12168932478578446)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39466815198750305)
,p_event_id=>wwv_flow_imp.id(35157871474966950)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process("GET_REPORT_OPTIONS_URL", {',
'    x01: $v("P100_ID")',
'})',
'.done(data => {',
'    apex.navigation.redirect(data.url);',
'});'))
,p_build_option_id=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39468214484750319)
,p_event_id=>wwv_flow_imp.id(35157871474966950)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(35157794242966949)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39470456918750341)
,p_name=>'Open PIC options'
,p_event_sequence=>280
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(15059106672627902)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$v("P100_SEARCH") !== "" && withSearchResults()'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39668880273745216)
,p_event_id=>wwv_flow_imp.id(39470456918750341)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'showGPopup({',
'    message : "Search must be performed before printing this report",',
'    icon: ICON_FAIL_LARGE',
'});',
'activeModal = null;'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39470631643750343)
,p_event_id=>wwv_flow_imp.id(39470456918750341)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(39470380591750340)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39468504391750322)
,p_name=>'Execute Report Option A'
,p_event_sequence=>290
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$v("P100_SEARCH") !== "" && withSearchResults()'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'EXEC_REPORT_OPT_A'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39468687478750323)
,p_event_id=>wwv_flow_imp.id(39468504391750322)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'activeModal = "shipment-vessel-info-summary"',
'',
'$s("P100_REP_MONTH_FROM", "");',
'$s("P100_REP_MONTH_TO", "");'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39668942878745217)
,p_event_id=>wwv_flow_imp.id(39468504391750322)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const message = $v("P100_SEARCH") !== "" ? "There are no records found for the entered year input" :',
'                                           "Search must be performed before printing this report";',
'',
'showGPopup({',
'    message : message,',
'    icon: ICON_FAIL_LARGE,',
'    width: 500',
'});',
'activeModal = null;'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39469721111750334)
,p_event_id=>wwv_flow_imp.id(39468504391750322)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(35157794242966949)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39669026754745218)
,p_event_id=>wwv_flow_imp.id(39468504391750322)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(35157794242966949)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39469694993750333)
,p_event_id=>wwv_flow_imp.id(39468504391750322)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(39469371819750330)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39468725915750324)
,p_name=>'Execute Report Option B'
,p_event_sequence=>300
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$v("P100_SEARCH") !== "" && withSearchResults()'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'EXEC_REPORT_OPT_B'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39468886525750325)
,p_event_id=>wwv_flow_imp.id(39468725915750324)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'activeModal = "shipment-summary-supplier"'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39669129249745219)
,p_event_id=>wwv_flow_imp.id(39468725915750324)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const message = $v("P100_SEARCH") !== "" ? "There are no records found for the entered year input" :',
'                                           "Search must be performed before printing this report";',
'',
'showGPopup({',
'    message : message,',
'    icon: ICON_FAIL_LARGE,',
'    width: 500',
'});',
'activeModal = null;'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39470035389750337)
,p_event_id=>wwv_flow_imp.id(39468725915750324)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(35157794242966949)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39669214567745220)
,p_event_id=>wwv_flow_imp.id(39468725915750324)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(35157794242966949)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39470151136750338)
,p_event_id=>wwv_flow_imp.id(39468725915750324)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(39469834806750335)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39468950541750326)
,p_name=>'Execute Report Option C'
,p_event_sequence=>310
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$v("P100_ID") !== ""'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'EXEC_REPORT_OPT_C'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39469074023750327)
,p_event_id=>wwv_flow_imp.id(39468950541750326)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const currDateStr = getRepCurrentDateString();',
'setPrintingOptions({',
'    reportName : "SHIPMENT_REPORT",',
'    fileName : `SHIPMENT_REPORT_WITH_SERIAL_NUMBERS_${currDateStr}.pdf`,',
'    data : {',
'        P_SHIPMENT_ID : $v("P100_ID"),',
'        P_WITH_SERIAL_NOS : "Y"',
'    },',
'    format : "pdf",',
'    spinnerEnabled : "Y",',
'    affixFontName : "Y"',
'});'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39669367907745221)
,p_event_id=>wwv_flow_imp.id(39468950541750326)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'showGPopup({',
'    message : "A shipment record must be selected before printing this report",',
'    icon: ICON_FAIL_LARGE',
'});',
'activeModal = null;'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39669497111745222)
,p_event_id=>wwv_flow_imp.id(39468950541750326)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(35157794242966949)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39469129118750328)
,p_name=>'Execute Report Option D'
,p_event_sequence=>320
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$v("P100_ID") !== ""'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'EXEC_REPORT_OPT_D'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39469275507750329)
,p_event_id=>wwv_flow_imp.id(39469129118750328)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const currDateStr = getRepCurrentDateString();',
'setPrintingOptions({',
'    reportName : "SHIPMENT_REPORT",',
'    fileName : `SHIPMENT_REPORT_${currDateStr}.pdf`,',
'    data : {',
'        P_SHIPMENT_ID : $v("P100_ID"),',
'        P_WITH_SERIAL_NOS : "N"',
'    },',
'    format : "pdf",',
'    spinnerEnabled : "Y",',
'    affixFontName : "Y"',
'});'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39669562022745223)
,p_event_id=>wwv_flow_imp.id(39469129118750328)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'showGPopup({',
'    message : "A shipment record must be selected before printing this report",',
'    icon: ICON_FAIL_LARGE',
'});',
'activeModal = null;'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39669627819745224)
,p_event_id=>wwv_flow_imp.id(39469129118750328)
,p_event_result=>'FALSE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(35157794242966949)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39470934188750346)
,p_name=>'Execute PIC Option A'
,p_event_sequence=>330
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'EXEC_PIC_OPT_A'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39471063099750347)
,p_event_id=>wwv_flow_imp.id(39470934188750346)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const shipmentId = $v("P100_ID");',
'',
'if (shipmentId !== "") {',
'    setPrintingOptions({',
'        reportName : "SHIPMENT_INV_COSTING_SHEET",',
'        fileName : `SHIPMENT_INV_COSTING_SHEET_${$v("P100_SHIPMENT_NUM")}.pdf`,',
'        data : {',
'            P_SHIPMENT_ID : $v("P100_ID")',
'        },',
'        format : "pdf",',
'        spinnerEnabled : "Y"',
'    });',
'} else {',
'    showGPopup({',
'        message : "A shipment record needs to be selected before printing this report",',
'        icon: ICON_FAIL_LARGE',
'    });',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39471105800750348)
,p_name=>'Execute PIC Option B'
,p_event_sequence=>340
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'EXEC_PIC_OPT_B'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39667420139745202)
,p_event_id=>wwv_flow_imp.id(39471105800750348)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'activeModal = "pic-sheet"'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39471332449750350)
,p_event_id=>wwv_flow_imp.id(39471105800750348)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(39470380591750340)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39667379380745201)
,p_event_id=>wwv_flow_imp.id(39471105800750348)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(39470745958750344)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42425376955064023)
,p_name=>'Execute Print A'
,p_event_sequence=>350
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'EXEC_PRINT_A'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42425497656064024)
,p_event_id=>wwv_flow_imp.id(42425376955064023)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setPrintingOptions({',
'    reportName : "SHIPMENT_RECORD_PRINT",',
'    fileName : `SHIPMENT_RECORD_${$v("P100_SHIPMENT_NUM")}.pdf`,',
'    data : {',
'        P_SHIPMENT_ID : $v("P100_ID")',
'    },',
'    format : "pdf",',
'    spinnerEnabled : "Y",',
'    affixFontName : "Y"',
'});',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42425736353064027)
,p_name=>'Execute Print B'
,p_event_sequence=>360
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'EXEC_PRINT_B'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42425804395064028)
,p_event_id=>wwv_flow_imp.id(42425736353064027)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setPrintingOptions({',
'    reportName : "SHIPMENT_RECORD_VENDOR_INV_PRINT",',
'    fileName : `SHIPMENT_RECORD_VENDOR_INVOICE_${$v("P100_SHIPMENT_NUM")}.pdf`,',
'    data : {',
'        P_SHIPMENT_ID : $v("P100_ID")',
'    },',
'    format : "pdf",',
'    spinnerEnabled : "Y",',
'    affixFontName : "N"',
'});',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39667572932745203)
,p_name=>'Open duplicate container month'
,p_event_sequence=>370
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(15059211918627903)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$v("P100_SEARCH") !== "" && withSearchResults()'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39667694132745204)
,p_event_id=>wwv_flow_imp.id(39667572932745203)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(39667709245745205)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39668743763745215)
,p_event_id=>wwv_flow_imp.id(39667572932745203)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'showGPopup({',
'    message : "Search must be performed before printing this report",',
'    icon: ICON_FAIL_LARGE',
'});',
'activeModal = null;'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39667933894745207)
,p_name=>'Open nprint options'
,p_event_sequence=>380
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27344471857391830)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39668080501745208)
,p_event_id=>wwv_flow_imp.id(39667933894745207)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'activeModal = "nprint-options";'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42425209974064022)
,p_event_id=>wwv_flow_imp.id(39667933894745207)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(42425170593064021)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39668158175745209)
,p_name=>'Print Shipment Vessel Info Summary'
,p_event_sequence=>390
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P100_REP_MONTH_TO'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.key?.toLowerCase() === "enter"'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39668259532745210)
,p_event_id=>wwv_flow_imp.id(39668158175745209)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let repMonthFrom = $v("P100_REP_MONTH_FROM");',
'let repMonthTo = $v("P100_REP_MONTH_TO");',
'',
'let monthFromElem = document.querySelector("#P100_REP_MONTH_FROM");',
'let monthToElem = document.querySelector("#P100_REP_MONTH_TO");',
'',
'if (repMonthFrom !== "" && repMonthTo !=="") {',
'    const currDateStr = getRepCurrentDateString();',
'    setPrintingOptions({',
'        reportName : "SHIPMENT_VESSEL_INFO_SUMMARY_REPORT",',
'        fileName : `SHIPMENT_VESSEL_INFORMATION_SUMMARY_REPORT_${currDateStr}.pdf`,',
'        data : {',
'            P_MONTH_FROM : repMonthFrom,',
'            P_MONTH_TO : repMonthTo,',
'            P_YEAR : $v("P100_SEARCH"),',
'            P_SORT : $v("P100_SORT") || "1"',
'        },',
'        format : "pdf",',
'        spinnerEnabled : "Y",',
'        affixFontName : "Y"',
'    });',
'} else if (repMonthFrom === "") {',
'    monthFromElem.setCustomValidity("This field is required");',
'    monthFromElem.reportValidity();',
'} else {',
'    monthToElem.setCustomValidity("This field is required");',
'    monthToElem.reportValidity();',
'}',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39668302464745211)
,p_name=>'Print Summary of Shipment by Supplier'
,p_event_sequence=>400
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P100_REP_VENDOR_CODE'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.key?.toLowerCase() === "enter"'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39668487688745212)
,p_event_id=>wwv_flow_imp.id(39668302464745211)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let repVendorCode = $v("P100_REP_VENDOR_CODE");',
'let repVendorCodeElem = document.querySelector("#P100_REP_VENDOR_CODE");',
'const currDateStr = getRepCurrentDateString();',
'',
'if (repVendorCode !== "") {',
'    setPrintingOptions({',
'        reportName : "SHIPMENT_SUMMARY_BY_SUPPLIER",',
'        fileName : `SHIPMENT_SUMMARY_BY_SUPPLIER_${currDateStr}.pdf`,',
'        data : {',
'            P_YEAR : $v("P100_SEARCH"),',
'            P_VENDOR_CODE : repVendorCode',
'        },',
'        format : "pdf",',
'        spinnerEnabled : "Y",',
'        affixFontName : "Y"',
'    });',
'} else {',
'    repVendorCodeElem.setCustomValidity("This field is required");',
'    repVendorCodeElem.reportValidity();',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39668513225745213)
,p_name=>'Print Shipment with Duplicate Container report'
,p_event_sequence=>410
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P100_REP_DUP_MONTH'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.key?.toLowerCase() === "enter"'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39668638024745214)
,p_event_id=>wwv_flow_imp.id(39668513225745213)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const repDupMonth = $v("P100_REP_DUP_MONTH");',
'const repDupMonthElem = document.querySelector("#P100_REP_DUP_MONTH");',
'const yearSearch = $v("P100_SEARCH");',
'const currDateStr = getRepCurrentDateString();',
'',
'if (repDupMonth !== "") {',
'    setPrintingOptions({',
'        reportName : "SHIPMENT_WITH_DUPLICATE_CONTAINER",',
'        fileName : `SHIPMENT_WITH_DUPLICATE_CONTAINER_NO_${currDateStr}.pdf`,',
'        data : {',
'            P_YEAR : yearSearch,',
'            P_MONTH : repDupMonth,',
'            P_SORT : $v("P100_SORT") || "1"',
'        },',
'        format : "pdf",',
'        spinnerEnabled : "Y",',
'        affixFontName : "Y"',
'    });',
'} else {',
'    repDupMonthElem.setCustomValidity("This field is required");',
'    repDupMonthElem.reportValidity();',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42423658904064006)
,p_name=>'Open Printing Options'
,p_event_sequence=>420
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'OPEN_PRINTING_OPTIONS'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42423997174064009)
,p_event_id=>wwv_flow_imp.id(42423658904064006)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Close Ship Dup Container Report Popup'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(39667709245745205)
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'activeModal === "ship-dup-container"'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42424604955064016)
,p_event_id=>wwv_flow_imp.id(42423658904064006)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'Close PIC Report Popup'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(39470380591750340)
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'activeModal === "pic-options"'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42424723666064017)
,p_event_id=>wwv_flow_imp.id(42423658904064006)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'Close PIC Report Sheet Popup'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(39470745958750344)
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'activeModal === "pic-sheet"'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42424872487064018)
,p_event_id=>wwv_flow_imp.id(42423658904064006)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>'Close Ship Vessel Summary Popup'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(39469371819750330)
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'activeModal === ''shipment-vessel-info-summary'''
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42425058833064020)
,p_event_id=>wwv_flow_imp.id(42423658904064006)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_name=>'Close Ship Summary Supplier Popup'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(39469834806750335)
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'activeModal === ''shipment-summary-supplier'''
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42424938766064019)
,p_event_id=>wwv_flow_imp.id(42423658904064006)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_name=>'Close Report Options Popup'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(35157794242966949)
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'activeModal === ''report-options'''
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42426054117064030)
,p_event_id=>wwv_flow_imp.id(42423658904064006)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_name=>'Close Nprint Options Popup'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(42425170593064021)
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'activeModal === ''nprint-options'''
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42423703702064007)
,p_event_id=>wwv_flow_imp.id(42423658904064006)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(42423135783064001)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42423832455064008)
,p_event_id=>wwv_flow_imp.id(42423658904064006)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'activeModal = "printing-options";'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42424279063064012)
,p_name=>'Close Printing Options'
,p_event_sequence=>430
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'CLOSE_PRINTING_OPTIONS'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42424584259064015)
,p_event_id=>wwv_flow_imp.id(42424279063064012)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'activeModal = null;'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42424368154064013)
,p_event_id=>wwv_flow_imp.id(42424279063064012)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(42423135783064001)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42426306597064033)
,p_name=>'Print Inventory Costing Sheet By month'
,p_event_sequence=>440
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P100_REP_PIC_MONTH'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.key?.toLowerCase() === "enter"'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42426467631064034)
,p_event_id=>wwv_flow_imp.id(42426306597064033)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setPrintingOptions({',
'    reportName : "SHIPMENT_INV_COSTING_SHEET",',
'    fileName : `SHIPMENT_INV_COSTING_SHEET_${$v("P100_REP_PIC_MONTH")}${$v("P100_SEARCH")}.pdf`,',
'    data : {',
'        P_MONTH : $v("P100_REP_PIC_MONTH")',
'    },',
'    format : "pdf",',
'    spinnerEnabled : "Y"',
'});'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19392221034535014)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Session'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_internal_uid=>19392221034535014
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19392520151535017)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SET_SEARCH'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    apex_json.open_object;',
'    apex_json.write(''message'', ''Success'');',
'    apex_json.write(''s'', :P100_SEARCH);',
'    apex_json.close_object;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>19392520151535017
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(30553634891940717)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_WH_LOCATION_DESC'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_wh_id         nim027.warehouse_id%TYPE;',
'    v_location      nim027.location_desc%TYPE;',
'begin',
'    v_wh_id := TO_NUMBER(apex_application.g_x01);',
'',
'    SELECT location_desc',
'      INTO v_location',
'      FROM nim027',
'     WHERE warehouse_id = v_wh_id;',
'',
'    apex_json.open_object;',
'    apex_json.write(''message'', ''Success'');',
'    apex_json.write(''ld'', v_location);',
'    apex_json.close_object;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>30553634891940717
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(30555174551940732)
,p_process_sequence=>30
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UNPOST'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_user_id       npm009.user_name%TYPE;',
'    v_pw            varchar2(100);',
'    v_shipment_id   nit016.shipment_id%TYPE;',
'',
'    v_result        boolean;',
'    v_msg           varchar2(20) := ''success'';',
'begin',
'    v_user_id := apex_application.g_x01;',
'    v_pw := apex_application.g_x02;',
'    v_shipment_id := TO_NUMBER(apex_application.g_x03);',
'',
'    v_result := nos_authentication_pkg.nos_authentication2(v_user_id, v_pw);',
'',
'    IF v_result THEN',
'        UPDATE nit016',
'           SET is_posted = ''N''',
'         WHERE shipment_id = v_shipment_id;',
'    ELSE',
'        v_msg := ''Invalid credentials'';',
'    END IF;',
'',
'    apex_json.open_object;',
'    apex_json.write(''message'', v_msg);',
'    apex_json.close_object;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>30555174551940732
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(30555818750940739)
,p_process_sequence=>40
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'POST_ALL_PO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_shipment_id   nit016.shipment_id%TYPE;',
'    v_msg           varchar2(200);    ',
'begin',
'    v_shipment_id := TO_NUMBER(apex_application.g_x01);',
'',
'    v_msg := shipment_Records_pkg.post_all_po(v_shipment_id);',
'',
'    apex_json.open_object;',
'    apex_json.write(''message'', v_msg);',
'    apex_json.close_object;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>30555818750940739
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(30556376700940744)
,p_process_sequence=>50
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'POST_SHIPMENT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_shipment_id   nit016.shipment_id%TYPE;',
'    v_msg           varchar2(100);    ',
'begin',
'    v_shipment_id := TO_NUMBER(apex_application.g_x01);',
'    v_msg := shipment_records_pkg.post_shipment(p_shipment_id => v_shipment_id);',
'',
'    apex_json.open_object;',
'    apex_json.write(''message'', v_msg);',
'    apex_json.close_object;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>30556376700940744
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(30556481226940745)
,p_process_sequence=>60
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'RECEIVE_SHIPMENT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_shipment_id   nit016.shipment_id%TYPE := :P100_ID;',
'    v_wh_id         nit016.warehouse_id%TYPE := :P100_WAREHOUSE;',
'    v_msg           varchar2(200);    ',
'begin',
'    v_msg := shipment_records_pkg.receive_shipment(v_shipment_id, v_wh_id);',
'',
'    apex_json.open_object;',
'    apex_json.write(''message'', v_msg);',
'    apex_json.write(''sid'', :P100_ID);',
'    apex_json.write(''wh'', :P100_WAREHOUSE);',
'    apex_json.close_object;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>30556481226940745
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(39466765923750304)
,p_process_sequence=>70
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_REPORT_OPTIONS_URL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_url varchar2(2000);',
'BEGIN',
'    l_url := APEX_PAGE.GET_URL(p_page => 130,',
'                               p_items => ''P130_SHIPMENT_ID'',',
'                               p_values => apex_application.g_x01);         ',
'',
'    apex_json.open_object; ',
'    apex_json.write(''url'', l_url); ',
'    apex_json.close_all; ',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>39466765923750304
);
wwv_flow_imp.component_end;
end;
/
