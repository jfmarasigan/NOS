prompt --application/pages/page_00079
begin
--   Manifest
--     PAGE: 00079
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
 p_id=>79
,p_name=>'Invoice Details'
,p_alias=>'INVOICE-DETAILS'
,p_step_title=>'Invoice Details'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#js/cmn#MIN#.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p79KeyMap = {',
'    i : (v) => {',
'        $("#i").trigger("click");',
'    },',
'    d : (v) => {',
'        $("#d").trigger("click");',
'    },',
'    s : (v) => {',
'        $("#s").trigger("click");',
'    },',
'    escape : (v) => {',
'        apex.navigation.redirect($(''#P79_EXIT_URL'').val());',
'    },',
'    home : (v) => {',
'        $(''#to-top'').trigger("click");',
'    },',
'    end : (v) => {',
'        $(''#to-bottom'').trigger(''click'');',
'    }',
'}',
'',
'function mapP79Keys() {',
'    $(document).off(''keydown.p79keyevents'');',
'    $(document).on(''keydown.p79keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p79KeyMap[key]) {',
'            ev.preventDefault();',
'            p79KeyMap[key]();',
'        }',
'    });',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP79Keys();',
'setTitle(''Invoice Details'');'))
,p_css_file_urls=>'#APP_FILES#css/cmn#MIN#.css'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.buttons-row {',
'    position: absolute;',
'    width: 90vw;',
'    bottom: 1.75rem;',
'}',
'',
'#invoice-details .a-IG {',
'    height: calc(60vh + 2px) !important;',
'} ',
'',
'#invoice-details .a-IG-contentContainer {',
'    height: 60vh !important;',
'}',
'',
'#invoice-details .a-IG-gridView.a-GV {',
'    height: 60vh !important;',
'}',
'',
'#invoice-details .a-GV-bdy {',
'    height: calc(60vh - 2.5625rem) !important;',
'}',
'',
'',
'#invoice-details table, ',
'#invoice-details tr, ',
'#invoice-details td{',
'    font-size: 1.125rem;',
'    border: 0.0625rem solid black;',
'}',
'    ',
'#invoice-details th{',
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
'    background-color: #056AC8;',
'    color: white;',
'}',
'.ui-dialog.delivery-details{',
'    left: 50% !important;',
'}',
'.t-Dialog{',
'    background-color: #056AC8;',
'}',
'',
'.ui-dialog-titlebar-close{',
'    display: none;',
'}',
'.ui-dialog-title{',
'    font-size : 1.5rem;',
'    padding-top: 0.2rem;',
'    padding-bottom: 0.2rem;',
'',
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
'.text-white{',
'    color:white;',
'}',
'.t-Form-labelContainer, .t-Form-inputContainer{',
'    padding: 0;',
'    text-align: start;',
'}',
'.t-Form-error{',
'    color: #FFD700;',
'}'))
,p_step_template=>wwv_flow_imp.id(5671392681337017)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(25233539632376537)
,p_plug_name=>'Invoice Details'
,p_region_name=>'invoice-details'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>190
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT npt002.item_id, ',
'    nim022.brand_code,',
'    nit001.item_desc,',
'    npt002.quantity,',
'    npt002.item_price,',
'    nim026.uom_code,',
'    npt008.category,',
'    npt008.ds,',
'    npt002.discounted_price,',
'    npt002.discounted_price * npt002.quantity AS EXTENDED_PRICE',
'FROM npt002 npt002, nim022 nim022, nit001 nit001, nim026 nim026, npt008 npt008',
', npt001 npt001',
'WHERE npt002.invoice_id = :P79_INVOICE_NO ',
'    AND nim022.brand_id = nit001.item_id ',
'    AND nit001.item_id = npt002.item_id',
'    AND nim026.uom_id = npt002.uom_id',
'    AND npt001.discount_id = npt008.discount_id(+)',
'    AND npt001.invoice_id = npt002.invoice_id;',
'    '))
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
 p_id=>wwv_flow_imp.id(34229542384738334)
,p_name=>'ITEM_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEM_ID'
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
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true,',
'        noStretch : true//,',
'        // width: 150',
'    };',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(34229669372738335)
,p_name=>'BRAND_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BRAND_CODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Co'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
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
'        noHeaderActivate: true,',
'        noStretch : true,',
'        width: 90',
'    };',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(34229750106738336)
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
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true,',
'        noStretch : true,',
'        width: 400',
'    };',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(34229872340738337)
,p_name=>'QUANTITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QUANTITY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Qty'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
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
'        noHeaderActivate: true,',
'        noStretch : true,',
'        width: 70',
'    };',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(34229977140738338)
,p_name=>'ITEM_PRICE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEM_PRICE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Reg Price'
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
'        noHeaderActivate: true,',
'        noStretch : true,',
'        width: 90',
'    };',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(34230040689738339)
,p_name=>'UOM_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UOM_CODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'UOM'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>16
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true,',
'        noStretch : true,',
'        width: 70',
'    };',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(34230236665738341)
,p_name=>'DS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DS'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'DS'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>1
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true,',
'        noStretch : true,',
'        width: 60',
'    };',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(34230418198738343)
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
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true//,',
'        // width: 150',
'    };',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(35234750935472413)
,p_name=>'CATEGORY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CATEGORY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Category'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>80
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true//,',
'        // width: 150',
'    };',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(35234875413472414)
,p_name=>'DISCOUNTED_PRICE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISCOUNTED_PRICE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Discounted Price'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>120
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>false
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true,',
'        noStretch : true//,',
'        // width: 150',
'    };',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(25233608987376538)
,p_internal_uid=>25233608987376538
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
'        footer: false',
'    };',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(30080284996574618)
,p_interactive_grid_id=>wwv_flow_imp.id(25233608987376538)
,p_static_id=>'300803'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(30080499870574618)
,p_report_id=>wwv_flow_imp.id(30080284996574618)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(35068122319192629)
,p_view_id=>wwv_flow_imp.id(30080499870574618)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(34229542384738334)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(35069072378192635)
,p_view_id=>wwv_flow_imp.id(30080499870574618)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(34229669372738335)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(35069994505192642)
,p_view_id=>wwv_flow_imp.id(30080499870574618)
,p_display_seq=>25
,p_column_id=>wwv_flow_imp.id(34229750106738336)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(35070813402192650)
,p_view_id=>wwv_flow_imp.id(30080499870574618)
,p_display_seq=>26
,p_column_id=>wwv_flow_imp.id(34229872340738337)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(35071751365192656)
,p_view_id=>wwv_flow_imp.id(30080499870574618)
,p_display_seq=>27
,p_column_id=>wwv_flow_imp.id(34229977140738338)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(35072608874192662)
,p_view_id=>wwv_flow_imp.id(30080499870574618)
,p_display_seq=>28
,p_column_id=>wwv_flow_imp.id(34230040689738339)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(35074488180192675)
,p_view_id=>wwv_flow_imp.id(30080499870574618)
,p_display_seq=>30
,p_column_id=>wwv_flow_imp.id(34230236665738341)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(35076110128192687)
,p_view_id=>wwv_flow_imp.id(30080499870574618)
,p_display_seq=>32
,p_column_id=>wwv_flow_imp.id(34230418198738343)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(39294437720119095)
,p_view_id=>wwv_flow_imp.id(30080499870574618)
,p_display_seq=>33
,p_column_id=>wwv_flow_imp.id(35234750935472413)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(39295305308119107)
,p_view_id=>wwv_flow_imp.id(30080499870574618)
,p_display_seq=>34
,p_column_id=>wwv_flow_imp.id(35234875413472414)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(30128330395678910)
,p_button_sequence=>200
,p_button_name=>'CHANGE_INVOICE'
,p_button_static_id=>'i'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>I</u> - Change Invoice'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(30128489259678911)
,p_button_sequence=>210
,p_button_name=>'DELIVERY_DETAILS'
,p_button_static_id=>'d'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>D</u> - Delivery Details'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33673673900716437)
,p_button_sequence=>220
,p_button_name=>'CHECK_SERIAL_NO'
,p_button_static_id=>'s'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>S</u> - Check Serial Numbers'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(30128566662678912)
,p_button_sequence=>230
,p_button_name=>'TO_TOP'
,p_button_static_id=>'to-top'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>Home</u> - Top'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(30128662666678913)
,p_button_sequence=>240
,p_button_name=>'TO_BOTTOM'
,p_button_static_id=>'to-bottom'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>End</u> - Bottom'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25234839339376550)
,p_name=>'P79_CUSTOMER_DBA'
,p_item_sequence=>20
,p_prompt=>'Customer DBA:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'fs-1125 text-white'
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:margin-top-none:margin-bottom-none'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30127460999678901)
,p_name=>'P79_BILLING_ADDRESS'
,p_item_sequence=>50
,p_prompt=>'Billing Address:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'fs-1125 text-white'
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:margin-top-none:margin-bottom-none'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30127503392678902)
,p_name=>'P79_SPECIAL_INSTRUCTIONS'
,p_item_sequence=>100
,p_prompt=>'Special Instructions:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'fs-1125 text-white'
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:margin-top-none:margin-bottom-none'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30127606743678903)
,p_name=>'P79_INVOICE_NO'
,p_item_sequence=>30
,p_prompt=>'Invoice #:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>6
,p_tag_css_classes=>'fs-1125'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:margin-top-none:margin-bottom-none'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30127707099678904)
,p_name=>'P79_REF_PO_NO'
,p_item_sequence=>40
,p_prompt=>'Ref PO #:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'fs-1125 text-white'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_column=>11
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:margin-top-none:margin-bottom-none'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30127812371678905)
,p_name=>'P79_DATE'
,p_item_sequence=>60
,p_prompt=>'Date:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'fs-1125 text-white'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:margin-top-none:margin-bottom-none'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30127963920678906)
,p_name=>'P79_TERMS'
,p_item_sequence=>70
,p_prompt=>'Terms:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'fs-1125 text-white'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_column=>11
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:margin-top-none:margin-bottom-none'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30128058530678907)
,p_name=>'P79_ORDER_WRITER'
,p_item_sequence=>80
,p_prompt=>'Order Writer:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'fs-1125 text-white'
,p_colspan=>6
,p_grid_column=>7
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:margin-top-none:margin-bottom-none'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30128194531678908)
,p_name=>'P79_TOTAL_DISC'
,p_item_sequence=>110
,p_prompt=>'Total Disc:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'fs-1125 text-white'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_column=>11
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:margin-top-none:margin-bottom-none'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30128246636678909)
,p_name=>'P79_TOTAL_AMT'
,p_item_sequence=>120
,p_prompt=>'Total Amt:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'fs-1125 text-white'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:margin-top-none:margin-bottom-none'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33674139440716442)
,p_name=>'P79_ITEM_NO'
,p_item_sequence=>130
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34226556768738304)
,p_name=>'P79_ITEM_DESC'
,p_item_sequence=>140
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34226997548738308)
,p_name=>'P79_PREPARED_URL'
,p_item_sequence=>150
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34228347267738322)
,p_name=>'P79_EXIT_URL'
,p_item_sequence=>180
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_PAGE.GET_URL(',
'    p_page => 305',
')'))
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35234671275472412)
,p_name=>'P79_DELIVERY_BATCH'
,p_item_sequence=>160
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44051249173431032)
,p_name=>'P79_DELIVERY_ID'
,p_item_sequence=>170
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(34228614442738325)
,p_computation_sequence=>10
,p_computation_item=>'P79_ITEM_NO'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'NULL'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(34228752357738326)
,p_computation_sequence=>20
,p_computation_item=>'P79_ITEM_DESC'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'NULL'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(34228892706738327)
,p_computation_sequence=>30
,p_computation_item=>'P79_PREPARED_URL'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'NULL'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(34228908502738328)
,p_computation_sequence=>40
,p_computation_item=>'P79_INVOICE_NO'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'NULL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30130509088678932)
,p_name=>'On Value Change'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P79_INVOICE_NO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30130691338678933)
,p_event_id=>wwv_flow_imp.id(30130509088678932)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P79_CUSTOMER_DBA'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'SELECT npt009.DBA FROM NPT009 npt009, NPT001 npt001 WHERE npt009.CUSTOMER_ID = npt001.customer_id and npt001.invoice_id = :P79_INVOICE_NO;'
,p_attribute_07=>'P79_INVOICE_NO'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33671906501716420)
,p_event_id=>wwv_flow_imp.id(30130509088678932)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(25233539632376537)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30130730086678934)
,p_event_id=>wwv_flow_imp.id(30130509088678932)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P79_BILLING_ADDRESS'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'SELECT npt009.billing_address FROM NPT009 npt009, NPT001 npt001 WHERE npt009.CUSTOMER_ID = npt001.customer_id and npt001.invoice_id = :P79_INVOICE_NO;'
,p_attribute_07=>'P79_INVOICE_NO'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30130869808678935)
,p_event_id=>wwv_flow_imp.id(30130509088678932)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P79_SPECIAL_INSTRUCTIONS'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'SELECT special_instructions FROM npt001 WHERE invoice_id = :P79_INVOICE_NO;'
,p_attribute_07=>'P79_INVOICE_NO'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30131086487678937)
,p_event_id=>wwv_flow_imp.id(30130509088678932)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P79_DATE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'SELECT date_created FROM npt001 WHERE invoice_id = :P79_INVOICE_NO;'
,p_attribute_07=>'P79_INVOICE_NO'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30131129875678938)
,p_event_id=>wwv_flow_imp.id(30130509088678932)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P79_ORDER_WRITER'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'SELECT user_created FROM npt001 WHERE invoice_id = :P79_INVOICE_NO;'
,p_attribute_07=>'P79_INVOICE_NO'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30131279698678939)
,p_event_id=>wwv_flow_imp.id(30130509088678932)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P79_REF_PO_NO'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'SELECT reference_po FROM NPT005 where invoice_id = :P79_INVOICE_NO'
,p_attribute_07=>'P79_INVOICE_NO'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30131333391678940)
,p_event_id=>wwv_flow_imp.id(30130509088678932)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P79_TERMS'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT payment_terms_name from npm006 npm006, npt009 npt009, NPT001 npt001',
'where npm006.payment_terms_id = npt009.payment_terms_id',
'AND npt009.CUSTOMER_ID = npt001.customer_id',
'and npt001.invoice_id = :P79_INVOICE_NO;'))
,p_attribute_07=>'P79_INVOICE_NO'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30131491400678941)
,p_event_id=>wwv_flow_imp.id(30130509088678932)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P79_TOTAL_DISC'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'SELECT total_discount from npt001 where invoice_id = :P79_INVOICE_NO;'
,p_attribute_07=>'P79_INVOICE_NO'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30131537783678942)
,p_event_id=>wwv_flow_imp.id(30130509088678932)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P79_TOTAL_AMT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'SELECT total_amount from npt001 where invoice_id = :P79_INVOICE_NO;'
,p_attribute_07=>'P79_INVOICE_NO'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44051085371431030)
,p_event_id=>wwv_flow_imp.id(30130509088678932)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P79_DELIVERY_BATCH'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT npt012.batch FROM NPT012 npt012, NPT031 npt031',
'WHERE npt012.delivery_id = npt031.delivery_id AND npt031.invoice_id = :P79_INVOICE_NO'))
,p_attribute_07=>'P79_INVOICE_NO'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44051349950431033)
,p_event_id=>wwv_flow_imp.id(30130509088678932)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P79_DELIVERY_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'SELECT delivery_id from npt031 where invoice_id = :P79_INVOICE_NO'
,p_attribute_07=>'P79_INVOICE_NO'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33672091249716421)
,p_name=>'On I press'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(30128330395678910)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33672125491716422)
,p_event_id=>wwv_flow_imp.id(33672091249716421)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P79_INVOICE_NO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33674267655716443)
,p_name=>'On Change Selection'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(25233539632376537)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34230737962738346)
,p_event_id=>wwv_flow_imp.id(33674267655716443)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P79_ITEM_NO,P79_ITEM_DESC'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'NULL'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34227446510738313)
,p_event_id=>wwv_flow_imp.id(33674267655716443)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P79_ITEM_NO'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'getSelectedIGRecord(''invoice-details'')[0][0];'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'getSelectedIGRecord(''invoice-details'')[0]!=undefined;'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34227588973738314)
,p_event_id=>wwv_flow_imp.id(33674267655716443)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P79_ITEM_DESC'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'getSelectedIGRecord(''invoice-details'')[0][2];'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'getSelectedIGRecord(''invoice-details'')[0]!=undefined;'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34227223682738311)
,p_event_id=>wwv_flow_imp.id(33674267655716443)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
':P79_PREPARED_URL := apex_page.get_url(',
'    p_clear_cache => 80,',
'    p_page => 80,',
'    p_items => ''P80_ITEM_NO,P80_ITEM_DESC'',',
'    p_values => :P79_ITEM_NO || '','' || :P79_ITEM_DESC',
');',
'END;'))
,p_attribute_02=>'P79_ITEM_DESC,P79_ITEM_NO'
,p_attribute_03=>'P79_PREPARED_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_build_option_id=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33674679676716447)
,p_name=>'Switch Focus'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P79_INVOICE_NO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34230623858738345)
,p_event_id=>wwv_flow_imp.id(33674679676716447)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P79_INVOICE_NO'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'TO_CHAR(:P79_INVOICE_NO, ''000009'')'
,p_attribute_07=>'P79_INVOICE_NO'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33674759717716448)
,p_event_id=>wwv_flow_imp.id(33674679676716447)
,p_event_result=>'TRUE'
,p_action_sequence=>30
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
 p_id=>wwv_flow_imp.id(34226783541738306)
,p_name=>'On S click'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(33673673900716437)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$(''#P79_ITEM_NO'').val() != '''' && $(''#P79_ITEM_DESC'') != '''';'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(35234298997472408)
,p_event_id=>wwv_flow_imp.id(34226783541738306)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
':P79_PREPARED_URL := apex_page.get_url(',
'    p_clear_cache => 80,',
'    p_page => 80,',
'    p_items => ''P80_ITEM_NO,P80_ITEM_DESC'',',
'    p_values => :P79_ITEM_NO || '','' || :P79_ITEM_DESC',
');',
'END;'))
,p_attribute_02=>'P79_ITEM_DESC,P79_ITEM_NO'
,p_attribute_03=>'P79_PREPARED_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34227319095738312)
,p_event_id=>wwv_flow_imp.id(34226783541738306)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).off(''keydown.p79keyevents'');',
'apex.navigation.redirect($v(''P79_PREPARED_URL''));',
'parent.$(''.ui-dialog-title'').html(''Item: '' + $v(''P79_ITEM_DESC''));'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(34229012855738329)
,p_name=>'On Home Press'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(30128566662678912)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34229131243738330)
,p_event_id=>wwv_flow_imp.id(34229012855738329)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'focusOnIGFirstRecordFirstCell(''invoice-details'', ''ITEM_ID'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(34229298681738331)
,p_name=>'On End Press'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(30128662666678913)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34229365690738332)
,p_event_id=>wwv_flow_imp.id(34229298681738331)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'focusOnIGLastRecordFirstCell(''invoice-details'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(35233796819472403)
,p_name=>'On Serial Dialog Close'
,p_event_sequence=>90
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(35233873165472404)
,p_event_id=>wwv_flow_imp.id(35233796819472403)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mapP79Keys();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(35234479651472410)
,p_name=>'On D click'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(30128489259678911)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(35234323812472409)
,p_event_id=>wwv_flow_imp.id(35234479651472410)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
':P79_PREPARED_URL := apex_page.get_url(',
'    p_clear_cache => 70,',
'    p_page => 70,',
'    p_items => ''P70_INVOICE_NO,P70_DELIVERY_BATCH,P70_DELIVERY_ID'',',
'    p_values => :P79_INVOICE_NO || '','' || :P79_DELIVERY_BATCH || '','' || :P79_DELIVERY_ID',
');',
'END;'))
,p_attribute_02=>'P79_ITEM_DESC,P79_ITEM_NO,P79_DELIVERY_BATCH,P79_DELIVERY_ID'
,p_attribute_03=>'P79_PREPARED_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(35234591161472411)
,p_event_id=>wwv_flow_imp.id(35234479651472410)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).off(''keydown.p79keyevents'');',
'apex.navigation.redirect($v(''P79_PREPARED_URL''));',
'parent.$(''.ui-dialog-title'').html(''Delivery Batch X - Invoice '' + $v(''P79_INVOICE_NO''));'))
);
wwv_flow_imp.component_end;
end;
/
