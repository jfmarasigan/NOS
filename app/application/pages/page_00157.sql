prompt --application/pages/page_00157
begin
--   Manifest
--     PAGE: 00157
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
 p_id=>157
,p_name=>'Update Inventory Balance - Warehouse Location Utilities'
,p_alias=>'UPDATE-INVENTORY-BALANCE-WAREHOUSE-LOCATION-UTILITIES'
,p_step_title=>'Update Inventory Balance - Warehouse Location Utilities'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#js/cmn#MIN#.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p157KeyMap = {',
'    a : (v) => {',
'        $("#a").trigger("click");',
'    },',
'    u : (v) => {',
'        $("#u").trigger("click");',
'    },',
'    p : (v) => {',
'        $("#p").trigger("click");',
'    },',
'    escape : (v) => {',
'        apex.navigation.redirect($(''#P157_EXIT_URL'').val());',
'    },',
'    s : (v) => {',
'        $("#s").trigger("click");',
'    },',
'    h : (v) => {',
'        $("#h").trigger("click");',
'    }',
'}',
'',
'function mapP157Keys() {',
'    $(document).off(''keydown.p157keyevents'');',
'    $(document).on(''keydown.p157keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p157KeyMap[key]) {',
'            ev.preventDefault();',
'            p157KeyMap[key]();',
'        }',
'    });',
'}',
'',
'const p157KeyMapPrint = {',
'    a : (v) => {',
'        $("#dot").click();',
'    },',
'    b : (v) => {',
'        $("#graphic").click();',
'    },',
'    escape : (v) => {',
'        mapP157Keys();',
'    }',
'}',
'',
'function mapP157KeysPrint() {',
'    $(document).off(''keydown.p157keyevents'');',
'    $(document).on(''keydown.p157keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p157KeyMapPrint[key]) {',
'            ev.preventDefault();',
'            p157KeyMapPrint[key]();',
'        }',
'    });',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTitle(''Update Inventory Balance - Warehouse Location Utilities'');',
'mapP157Keys();'))
,p_css_file_urls=>'#APP_FILES#css/cmn#MIN#.css'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.buttons-row {',
'    position: absolute;',
'    width: 98vw;',
'    bottom: 1.75rem;',
'}',
'',
'#warehouse-location .a-IG {',
'    height: calc(75vh + 2px) !important;',
'} ',
'',
'#warehouse-location .a-IG-contentContainer {',
'    height: 75vh !important;',
'}',
'',
'#warehouse-location .a-IG-gridView.a-GV {',
'    height: 75vh !important;',
'}',
'',
'#warehouse-location .a-GV-bdy {',
'    height: calc(75vh - 2.5625rem) !important;',
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
'#warehouse-location table,',
'#warehouse-location tr,',
'#warehouse-location td{',
'    font-size: 1.125rem;',
'    border: 0.0625rem solid black;',
'}',
'',
'#warehouse-location th{',
'        font-size: 1rem;',
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
'',
'.ui-dialog-titlebar-close{',
'    display: none;',
'}',
'.ui-dialog-title{',
'    font-size : 1.25rem;',
'}',
'.text-white{',
'    color:white;',
'}',
'.text-black{',
'    color: black;',
'}',
'.t-Form-labelContainer.col.col-1{',
'        text-align: start;',
'}',
'.t-Form-label{',
'    font-size:1.125rem;',
'    color:white;',
'}',
'',
'#printing-options .t-DialogRegion-body{',
'    background-color: #056AC8;',
'}',
'',
'.ui-resizable-s{',
'    background-color: #056AC8;',
'}',
'',
'.is-selected td{',
'    background-color: #F5DC1C !important;',
'}',
'',
'.is-focused {',
'    box-shadow: 0 0 0 1px black inset !important;',
'}'))
,p_step_template=>wwv_flow_imp.id(5671392681337017)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(120502539455275313)
,p_plug_name=>'Warehouse Location Utilities'
,p_region_name=>'warehouse-location'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>100
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select WAREHOUSE_ID,',
'       WAREHOUSE_LOCATION,',
'       LOCATION_DESC,',
'       CREATE_USER,',
'       CREATE_DATE,',
'       UPDATE_USER,',
'       UPDATE_DATE',
'  from NIM027',
'  where',
'    ( :P157_ADD_POPUP IS NOT NULL AND :P157_SEARCH_LOCATION IS NOT NULL AND UPPER(WAREHOUSE_LOCATION) LIKE UPPER(''%''||:P157_SEARCH_LOCATION||''%'') AND UPPER(WAREHOUSE_LOCATION) = UPPER(:P157_ADD_POPUP) ) OR',
'    ( :P157_ADD_POPUP IS NOT NULL AND :P157_SEARCH_LOCATION IS NULL AND :P157_SEARCH_DESC IS NOT NULL AND UPPER(LOCATION_DESC) LIKE UPPER(''%''||:P157_SEARCH_DESC||''%'') AND UPPER(WAREHOUSE_LOCATION) = UPPER(:P157_ADD_POPUP) ) OR',
'    ( :P157_SEARCH_LOCATION IS NOT NULL AND UPPER(WAREHOUSE_LOCATION) LIKE UPPER(''%''||:P157_SEARCH_LOCATION||''%'') ) OR',
'    ( :P157_SEARCH_LOCATION IS NULL AND :P157_SEARCH_DESC IS NOT NULL AND UPPER(LOCATION_DESC) LIKE UPPER(''%''||:P157_SEARCH_DESC||''%'') ) OR',
'    ( :P157_SEARCH_LOCATION IS NULL AND :P157_SEARCH_DESC IS NULL )',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P157_SEARCH_LOCATION,P157_SEARCH_DESC,P157_ADD_POPUP'
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
 p_id=>wwv_flow_imp.id(45102194524730716)
,p_name=>'WAREHOUSE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WAREHOUSE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(45102270020730717)
,p_name=>'WAREHOUSE_LOCATION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WAREHOUSE_LOCATION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Warehouse Location'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>4
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(45102340328730718)
,p_name=>'LOCATION_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LOCATION_DESC'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Location Description'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
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
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(45102460244730719)
,p_name=>'CREATE_USER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATE_USER'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'User Created'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>40
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(45102574295730720)
,p_name=>'CREATE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATE_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Date Created'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
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
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(45102660146730721)
,p_name=>'UPDATE_USER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATE_USER'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'User Updated'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>40
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(45102744836730722)
,p_name=>'UPDATE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATE_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Date Updated'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_is_required=>false
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
 p_id=>wwv_flow_imp.id(120502660311275314)
,p_internal_uid=>120502660311275314
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
 p_id=>wwv_flow_imp.id(126491904187197473)
,p_interactive_grid_id=>wwv_flow_imp.id(120502660311275314)
,p_static_id=>'412276'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(126492108013197475)
,p_report_id=>wwv_flow_imp.id(126491904187197473)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(47654072947258562)
,p_view_id=>wwv_flow_imp.id(126492108013197475)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(45102194524730716)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(47654928444258567)
,p_view_id=>wwv_flow_imp.id(126492108013197475)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(45102270020730717)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(47655813954258573)
,p_view_id=>wwv_flow_imp.id(126492108013197475)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(45102340328730718)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(47656726864258579)
,p_view_id=>wwv_flow_imp.id(126492108013197475)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(45102460244730719)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(47657647428258585)
,p_view_id=>wwv_flow_imp.id(126492108013197475)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(45102574295730720)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(47658596765258590)
,p_view_id=>wwv_flow_imp.id(126492108013197475)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(45102660146730721)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(47659425145258596)
,p_view_id=>wwv_flow_imp.id(126492108013197475)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(45102744836730722)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(126486795338191772)
,p_plug_name=>'Page Controls'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>110
,p_plug_grid_row_css_classes=>'buttons-row'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(232096655273838647)
,p_plug_name=>'Printing Options'
,p_title=>'Printing Options'
,p_region_name=>'printing-options'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-nosize'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>120
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(42657457053479575)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(126486795338191772)
,p_button_name=>'ADD'
,p_button_static_id=>'a'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>A</u> - Add'
,p_button_redirect_url=>'f?p=&APP_ID.:158:&SESSION.::&DEBUG.:158::'
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(42657890252479575)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(126486795338191772)
,p_button_name=>'UPDATE'
,p_button_static_id=>'u'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>U</u> - Update'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(42658266592479576)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(126486795338191772)
,p_button_name=>'PRINT'
,p_button_static_id=>'p'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>P</u> - Print'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69470476733040731)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(232096655273838647)
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
 p_id=>wwv_flow_imp.id(42658690176479576)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(126486795338191772)
,p_button_name=>'EXPORT'
,p_button_static_id=>'h'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>H</u> - Export'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69470083988040728)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(232096655273838647)
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
 p_id=>wwv_flow_imp.id(42659065429479576)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(126486795338191772)
,p_button_name=>'SEARCH'
,p_button_static_id=>'s'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>S</u> - Search'
,p_button_redirect_url=>'f?p=&APP_ID.:159:&SESSION.::&DEBUG.:159::'
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42622961441340734)
,p_name=>'P157_SEARCH_LOCATION'
,p_item_sequence=>80
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42623156743340736)
,p_name=>'P157_SEARCH_DESC'
,p_item_sequence=>90
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55359044725980726)
,p_name=>'P157_EXIT_URL'
,p_item_sequence=>50
,p_source=>'apex_page.get_url(p_page => 160)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65483650588001943)
,p_name=>'P157_ADD_POPUP'
,p_item_sequence=>60
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65483712502001944)
,p_name=>'P157_UPDATE_POPUP'
,p_item_sequence=>70
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67460303479426320)
,p_name=>'P157_POPUP_PROCESS'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126501453889191895)
,p_name=>'P157_WAREHOUSE_ID'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126501783004191898)
,p_name=>'P157_PREPARED_URL'
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(42623046384340735)
,p_computation_sequence=>10
,p_computation_item=>'P157_SEARCH_LOCATION'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'null'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(42623233223340737)
,p_computation_sequence=>20
,p_computation_item=>'P157_SEARCH_DESC'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'null'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42664690323479585)
,p_name=>'Go to Update Modal'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(42657890252479575)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42665140481479585)
,p_event_id=>wwv_flow_imp.id(42664690323479585)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P157_PREPARED_URL := apex_page.get_url(',
'    p_clear_cache => 158,',
'    p_page => 158,',
'    p_items => ''P158_WAREHOUSE_ID'',',
'    p_values => :P157_WAREHOUSE_ID',
');'))
,p_attribute_02=>'P157_WAREHOUSE_ID'
,p_attribute_03=>'P157_PREPARED_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42665634084479585)
,p_event_id=>wwv_flow_imp.id(42664690323479585)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect($v(''P157_PREPARED_URL''));'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42666049181479585)
,p_name=>'On Table Item Selection'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(120502539455275313)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42666565349479587)
,p_event_id=>wwv_flow_imp.id(42666049181479585)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Change Warehouse ID'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P157_WAREHOUSE_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'getSelectedIGRecord(''warehouse-location'');'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42663766409479584)
,p_name=>'On Dialog Close'
,p_event_sequence=>30
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42664238519479584)
,p_event_id=>wwv_flow_imp.id(42663766409479584)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(120502539455275313)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67460479801426321)
,p_event_id=>wwv_flow_imp.id(42663766409479584)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P157_POPUP_PROCESS'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P158_PROCESS'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65483846013001945)
,p_event_id=>wwv_flow_imp.id(42663766409479584)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P157_UPDATE_POPUP'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P158_WAREHOUSE_ID'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65483961855001946)
,p_event_id=>wwv_flow_imp.id(42663766409479584)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P157_ADD_POPUP'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P158_WAREHOUSE_LOCATION'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67460529956426322)
,p_event_id=>wwv_flow_imp.id(42663766409479584)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const ICON_OK_LARGE = ''fa fa-check-circle fa-lg'';',
'if($v(''P157_POPUP_PROCESS'')==1){',
'    showGPopup({',
'    message: ''Add Successful!'',',
'    icon: ICON_OK_LARGE,',
'    width: 230,',
'    timeout: 1500,',
'    timeoutActive: true,',
'    closeCallback: () => {',
'        $("#warehouse-location_ig_grid_vc .a-GV-bdy .a-GV-w-scroll .a-GV-table tbody").children(".a-GV-row").each( function () {',
'            if( $(this).find(".a-GV-cell").first().html() == $v(''P157_ADD_POPUP'').toUpperCase() ){',
'                $(this).find(".a-GV-cell").first().trigger("click");',
'            }',
'        });',
'    }',
'});',
'}',
'else if($v(''P157_POPUP_PROCESS'')==2){',
'    showGPopup({',
'    message: ''Update Successful!'',',
'    icon: ICON_OK_LARGE,',
'    width: 230,',
'    timeout: 1500,',
'    timeoutActive: true,',
'    closeCallback: () => {',
'        $("#warehouse-location_ig_grid_vc .a-GV-bdy .a-GV-w-scroll .a-GV-table tbody").children(".a-GV-row").each( function () {',
'            if( $(this).attr("data-id") == $v(''P157_UPDATE_POPUP'') ){',
'                $(this).find(".a-GV-cell").first().trigger("click");',
'            }',
'        });',
'    }',
'});',
'} '))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67460686924426323)
,p_event_id=>wwv_flow_imp.id(42663766409479584)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P157_POPUP_PROCESS'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42623373716340738)
,p_name=>'On Search Dialog Close'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(42659065429479576)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42623482084340739)
,p_event_id=>wwv_flow_imp.id(42623373716340738)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P157_SEARCH_LOCATION'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P159_WAREHOUSE_LOCATION'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42623527946340740)
,p_event_id=>wwv_flow_imp.id(42623373716340738)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P157_SEARCH_DESC'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P159_LOCATION_DESCRIPTION'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(67461285440426329)
,p_name=>'On H press'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(42658690176479576)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67461373050426330)
,p_event_id=>wwv_flow_imp.id(67461285440426329)
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
'generateReport("WAREHOUSE_LOCATION_UTILITIES_EXCEL", "xlsx", {',
'    fileName: ''WarehouseLocationUtilities_'' + datestamp + ''.xlsx'',',
'    mode : "export",',
'    parameters : {',
'        P_LOCATION : $v("P157_SEARCH_LOCATION"),',
'        P_DESC : $v(''#P157_SEARCH_DESC'')',
'    },',
'    spinnerEnabled : true',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(65482197457001928)
,p_name=>'Open Print Options'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(42658266592479576)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65482239585001929)
,p_event_id=>wwv_flow_imp.id(65482197457001928)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(232096655273838647)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65482316894001930)
,p_event_id=>wwv_flow_imp.id(65482197457001928)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP157KeysPrint();',
'$(''.ui-dialog-title'').html(''Printing Options'');'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(65482479665001931)
,p_name=>'Courier New'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(69470476733040731)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65482539103001932)
,p_event_id=>wwv_flow_imp.id(65482479665001931)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const currentDate = new Date();',
'const formattedDate = currentDate.toISOString().slice(0, 10).replace(/-/g, "");',
'',
'var searchContext;',
'var searchVal;',
'// if($v("P154_SEARCH_NAME").length > 0){',
'//     searchContext = "SEARCH";',
'//     searchVal = $v("P154_SEARCH_NAME");',
'// } else {',
'//     searchContext = "ALL";',
'// }',
'',
'generateReport("WAREHOUSE_LOCATION_UTILITIES_REPORT_COURIER_NEW", "pdf", { ',
'    fileName: `WarehouseLocationUtilities_${formattedDate}.pdf`,',
'    mode : "print",',
'    parameters : {',
'        P_LOCATION : $v("P157_SEARCH_LOCATION"),',
'        P_DESC : $v(''#P157_SEARCH_DESC'')',
'    },',
'    spinnerEnabled : true',
'});'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65482663751001933)
,p_event_id=>wwv_flow_imp.id(65482479665001931)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(232096655273838647)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65482712734001934)
,p_event_id=>wwv_flow_imp.id(65482479665001931)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mapP157Keys();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(65482844925001935)
,p_name=>'Arial'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(69470083988040728)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65482912862001936)
,p_event_id=>wwv_flow_imp.id(65482844925001935)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const currentDate = new Date();',
'const formattedDate = currentDate.toISOString().slice(0, 10).replace(/-/g, "");',
'',
'var searchContext;',
'var searchVal;',
'// if($v("P154_SEARCH_NAME").length > 0){',
'//     searchContext = "SEARCH";',
'//     searchVal = $v("P154_SEARCH_NAME");',
'// } else {',
'//     searchContext = "ALL";',
'// }',
'',
'generateReport("WAREHOUSE_LOCATION_UTILITIES_REPORT_ARIAL", "pdf", { ',
'    fileName: `WarehouseLocationUtilities_${formattedDate}.pdf`,',
'    mode : "print",',
'    parameters : {',
'        P_LOCATION : $v("P157_SEARCH_LOCATION"),',
'        P_DESC : $v(''#P157_SEARCH_DESC'')',
'    },',
'    spinnerEnabled : true',
'});'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65483028249001937)
,p_event_id=>wwv_flow_imp.id(65482844925001935)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(232096655273838647)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65483144519001938)
,p_event_id=>wwv_flow_imp.id(65482844925001935)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mapP157Keys();'
);
wwv_flow_imp.component_end;
end;
/
