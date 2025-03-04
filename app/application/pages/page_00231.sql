prompt --application/pages/page_00231
begin
--   Manifest
--     PAGE: 00231
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
 p_id=>231
,p_name=>'Gift Certificate - Gift Certificate Type Utilities'
,p_alias=>'GIFT-CERTIFICATE-GIFT-CERTIFICATE-TYPE-UTILITIES'
,p_step_title=>'Gift Certificate - Gift Certificate Type Utilities'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#js/cmn#MIN#.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p231KeyMap = {',
'    a : (v) => {',
'        $("#a").click();',
'    },',
'    p : (v) => {',
'        $("#p").click();',
'    },',
'    escape : (v) => {',
'        $("#to-main-menu").click();',
'    },',
'    s : (v) => {',
'        $("#s").click();',
'    },',
'    u : (v) => {',
'        $("#u").click();',
'    },',
'    h : (v) => {',
'        $("#h").click();',
'    },',
'    home: (v) => {',
'        $("#to-top").trigger("click");',
'    },',
'    end: (v) => {',
'        $("#to-bottom").trigger("click");',
'    }',
'}',
'',
'',
'function mapP231Keys() {',
'    $(document).off(''keydown.p231keyevents'');',
'    $(document).on(''keydown.p231keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p231KeyMap[key]) {',
'            ev.preventDefault();',
'            p231KeyMap[key]();',
'        }',
'    });',
'}',
'',
'const p231KeyMapPrint = {',
'    a : (v) => {',
'        $("#dot").click();',
'    },',
'    b : (v) => {',
'        $("#graphic").click();',
'    },',
'    escape : (v) => {',
'        mapP231Keys();',
'    }',
'}',
'',
'function mapP231KeysPrint() {',
'    $(document).off(''keydown.p231keyevents'');',
'    $(document).on(''keydown.p231keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p231KeyMapPrint[key]) {',
'            ev.preventDefault();',
'            p231KeyMapPrint[key]();',
'        }',
'    });',
'}',
'',
'function customEvent(event, data){',
'    mapP231Keys();',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP231Keys();',
'setTitle("Gift Certificate - Gift Certificate Type Utilities");',
'',
'$( document ).ready(function() {',
'    $(".a-GV-cell").first().trigger("click");',
'});'))
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
'#list table, #list tr, #list td, #list th {',
'     font-size: 1.125rem;',
'}',
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
'/* set modal header to a different background and font color */',
'.ui-dialog .ui-dialog-titlebar {',
'    background-color: #056AC8;',
'    color: white;',
'    border: none;',
'}',
'',
'.ui-dialog-title{',
'    font-size: 1.5rem;',
'    padding-bottom: 0.2rem;',
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
'#list .a-IG {',
'    height: calc(75vh + 2px) !important;',
'} ',
'',
'#list .a-IG-contentContainer {',
'    height: 75vh !important;',
'}',
'',
'#list .a-IG-gridView.a-GV {',
'    height: 75vh !important;',
'}',
'',
'#list .a-GV-bdy {',
'    height: calc(75vh - 2.5625rem) !important;',
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
 p_id=>wwv_flow_imp.id(49744317559243336)
,p_plug_name=>'List'
,p_region_name=>'list'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>80
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select GC_TYPE_ID,',
'       GC_TYPE_CODE,',
'       TYPE_NAME,',
'       EXPIRY_MONTHS,',
'       DONATION,',
'       USER_CREATED,',
'       DATE_CREATED,',
'       UPDATE_USER,',
'       DATE_UPDATED',
'  from NPM013',
'WHERE ',
'    ( :P231_ADD_POPUP IS NOT NULL AND :P231_SEARCH_CODE IS NOT NULL AND UPPER(GC_TYPE_CODE) LIKE UPPER(''%'' || :P231_SEARCH_CODE || ''%'') AND UPPER(GC_TYPE_CODE) = UPPER(:P231_ADD_POPUP) ) OR',
'    ( :P231_ADD_POPUP IS NOT NULL AND :P231_SEARCH_NAME IS NOT NULL AND UPPER(TYPE_NAME) LIKE UPPER(''%'' || :P231_SEARCH_NAME || ''%'') AND UPPER(GC_TYPE_CODE) = UPPER(:P231_ADD_POPUP) ) OR',
'    ( :P231_SEARCH_CODE IS NOT NULL AND UPPER(GC_TYPE_CODE) LIKE UPPER(''%'' || :P231_SEARCH_CODE || ''%'') ) OR',
'    ( :P231_SEARCH_NAME IS NOT NULL AND UPPER(TYPE_NAME) LIKE UPPER(''%'' || :P231_SEARCH_NAME || ''%'') ) OR',
'    ( :P231_SEARCH_NAME IS NULL AND :P231_SEARCH_CODE IS NULL )'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P231_SEARCH_CODE,P231_SEARCH_NAME,P231_ADD_POPUP'
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
 p_id=>wwv_flow_imp.id(49744571756243338)
,p_name=>'GC_TYPE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'GC_TYPE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(49744669950243339)
,p_name=>'GC_TYPE_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'GC_TYPE_CODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'GC Type Code'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>3
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
 p_id=>wwv_flow_imp.id(49744722768243340)
,p_name=>'TYPE_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TYPE_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'GC Type Name'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>20
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
 p_id=>wwv_flow_imp.id(49744914784243342)
,p_name=>'DONATION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DONATION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Donation'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
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
 p_id=>wwv_flow_imp.id(49745062264243343)
,p_name=>'USER_CREATED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USER_CREATED'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Created User'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>50
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
 p_id=>wwv_flow_imp.id(49745189783243344)
,p_name=>'DATE_CREATED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DATE_CREATED'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Date Created'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
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
 p_id=>wwv_flow_imp.id(49745253341243345)
,p_name=>'UPDATE_USER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATE_USER'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Last Updated By'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>50
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
 p_id=>wwv_flow_imp.id(49745387699243346)
,p_name=>'DATE_UPDATED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DATE_UPDATED'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Date Updated'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
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
 p_id=>wwv_flow_imp.id(70299762205784950)
,p_name=>'EXPIRY_MONTHS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXPIRY_MONTHS'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Expiry Months'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>true
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
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(49744413553243337)
,p_internal_uid=>49744413553243337
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
,p_fixed_header=>'PAGE'
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
 p_id=>wwv_flow_imp.id(50137255736770471)
,p_interactive_grid_id=>wwv_flow_imp.id(49744413553243337)
,p_static_id=>'501373'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(50137416295770471)
,p_report_id=>wwv_flow_imp.id(50137255736770471)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(50137927162770481)
,p_view_id=>wwv_flow_imp.id(50137416295770471)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(49744571756243338)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(50138822572770489)
,p_view_id=>wwv_flow_imp.id(50137416295770471)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(49744669950243339)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(50139794610770500)
,p_view_id=>wwv_flow_imp.id(50137416295770471)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(49744722768243340)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>428
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(50141539163770514)
,p_view_id=>wwv_flow_imp.id(50137416295770471)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(49744914784243342)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(50142424586770521)
,p_view_id=>wwv_flow_imp.id(50137416295770471)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(49745062264243343)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(50143334385770529)
,p_view_id=>wwv_flow_imp.id(50137416295770471)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(49745189783243344)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(50144216142770537)
,p_view_id=>wwv_flow_imp.id(50137416295770471)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(49745253341243345)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(50145108658770545)
,p_view_id=>wwv_flow_imp.id(50137416295770471)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(49745387699243346)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(73435790247941850)
,p_view_id=>wwv_flow_imp.id(50137416295770471)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(70299762205784950)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>147.467
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(142318520155292742)
,p_plug_name=>'Buttons'
,p_region_name=>'button-region'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>90
,p_plug_grid_row_css_classes=>'buttons-row'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(143062561285358055)
,p_plug_name=>'Printing Options'
,p_title=>'Printing Options'
,p_region_name=>'printing-options'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-nosize'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>100
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(50155966872788092)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(142318520155292742)
,p_button_name=>'Add'
,p_button_static_id=>'a'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>A</u> - Add'
,p_button_redirect_url=>'f?p=&APP_ID.:233:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(50156324726788093)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(142318520155292742)
,p_button_name=>'Update'
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
 p_id=>wwv_flow_imp.id(50156738678788093)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(142318520155292742)
,p_button_name=>'Print'
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
 p_id=>wwv_flow_imp.id(50159794405789100)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(143062561285358055)
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
 p_id=>wwv_flow_imp.id(50157134783788093)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(142318520155292742)
,p_button_name=>'Export'
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
 p_id=>wwv_flow_imp.id(50159303258789098)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(143062561285358055)
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
 p_id=>wwv_flow_imp.id(50155502509788090)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(142318520155292742)
,p_button_name=>'Search'
,p_button_static_id=>'s'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>S</u> - Search'
,p_button_redirect_url=>'f?p=&APP_ID.:232:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(50157569647788093)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(142318520155292742)
,p_button_name=>'Top'
,p_button_static_id=>'home'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>Home</u> - Top'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'hiddenbtn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(50157976939788093)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(142318520155292742)
,p_button_name=>'Bottom'
,p_button_static_id=>'end'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>End</u> - Bottom'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'hiddenbtn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(50158316741788095)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(142318520155292742)
,p_button_name=>'To_Exit'
,p_button_static_id=>'to-main-menu'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'-'
,p_button_redirect_url=>'f?p=&APP_ID.:160:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'hiddenbtn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(49743993115243332)
,p_name=>'P231_SEARCH_CODE'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(49744084969243333)
,p_name=>'P231_SEARCH_NAME'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(49744168943243334)
,p_name=>'P231_SELECTED_VAL'
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(49744252008243335)
,p_name=>'P231_PREPARED_URL'
,p_item_sequence=>50
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69540279983893511)
,p_name=>'P231_ADD_POPUP'
,p_item_sequence=>60
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69540316933893512)
,p_name=>'P231_UPDATE_POPUP'
,p_item_sequence=>70
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(49745424269243347)
,p_name=>'Selection Change'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(49744317559243336)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49745567607243348)
,p_event_id=>wwv_flow_imp.id(49745424269243347)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let selectedRecords = this.data.selectedRecords;',
'',
'if (selectedRecords.length > 0) {',
'    let typeIDSelected = selectedRecords[0][0];',
'    $("#P231_SELECTED_VAL").val(typeIDSelected);',
'} '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(49745631946243349)
,p_name=>'Home Click'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(50157569647788093)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49745724912243350)
,p_event_id=>wwv_flow_imp.id(49745631946243349)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>' $(".a-GV-cell").first().trigger("click");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(50164657853839701)
,p_name=>'End Click'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(50157976939788093)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50164781815839702)
,p_event_id=>wwv_flow_imp.id(50164657853839701)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(".a-GV-table tr:last .a-GV-cell:first").trigger("click");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(50165356799839708)
,p_name=>'Search Closed'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(50155502509788090)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50165515581839710)
,p_event_id=>wwv_flow_imp.id(50165356799839708)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P231_SEARCH_CODE'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P232_CODE'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50165626284839711)
,p_event_id=>wwv_flow_imp.id(50165356799839708)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P231_SEARCH_NAME'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P232_NAME'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69540575333893514)
,p_event_id=>wwv_flow_imp.id(50165356799839708)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P231_ADD_POPUP'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50165457763839709)
,p_event_id=>wwv_flow_imp.id(50165356799839708)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(49744317559243336)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50165719011839712)
,p_event_id=>wwv_flow_imp.id(50165356799839708)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(() => {',
'    $( document ).ready(function() {',
'        $(".a-GV-cell").first().trigger("click");',
'    });',
'}, "300");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(50212739163126610)
,p_name=>'Update Clicked'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(50156324726788093)
,p_condition_element=>'P231_SELECTED_VAL'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50212856557126611)
,p_event_id=>wwv_flow_imp.id(50212739163126610)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P231_PREPARED_URL := apex_page.get_url(',
'       p_page   => 234,',
'       p_items  => ''P234_GC_TYPE_ID'',',
'       p_values => :P231_SELECTED_VAL,',
'       p_triggering_element => ''apex.jQuery(''''#u'''')'',',
'       p_clear_cache => ''234''',
'     );',
'END;'))
,p_attribute_02=>'P231_SELECTED_VAL'
,p_attribute_03=>'P231_PREPARED_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50212947062126612)
,p_event_id=>wwv_flow_imp.id(50212739163126610)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P231_PREPARED_URL");',
'apex.navigation.redirect(url);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(50286276740702436)
,p_name=>'Open Print Options'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(50156738678788093)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50286329342702437)
,p_event_id=>wwv_flow_imp.id(50286276740702436)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(143062561285358055)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50286439098702438)
,p_event_id=>wwv_flow_imp.id(50286276740702436)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mapP231KeysPrint();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(50286526009702439)
,p_name=>'Courier New'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(50159794405789100)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50286600968702440)
,p_event_id=>wwv_flow_imp.id(50286526009702439)
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
'if($v("P231_SEARCH_CODE").length > 0){',
'    searchContext = "CODE";',
'    searchVal = $v("P231_SEARCH_CODE");',
'} else if ($v("P231_SEARCH_NAME").length > 0){',
'    searchContext = "NAME";',
'    searchVal = $v("P231_SEARCH_NAME");',
'} else {',
'    searchContext = "ALL";',
'}',
'',
'generateReport("GIFT_CERTIFICATE_TYPE_UTILITIES_COURIER_NEW_PDF", "pdf", { ',
'    fileName: `GiftCertificateTypeUtilities_${formattedDate}.pdf`,',
'    mode : "print",',
'    parameters : {',
'        P_SEARCH_CONTEXT : searchContext,',
'        P_SEARCH_VALUE : searchVal,',
'    },',
'    spinnerEnabled : true',
'});'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50286792327702441)
,p_event_id=>wwv_flow_imp.id(50286526009702439)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(143062561285358055)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50286853897702442)
,p_event_id=>wwv_flow_imp.id(50286526009702439)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mapP231Keys();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(50286992269702443)
,p_name=>'Arial'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(50159303258789098)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50287075750702444)
,p_event_id=>wwv_flow_imp.id(50286992269702443)
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
'if($v("P231_SEARCH_CODE").length > 0){',
'    searchContext = "CODE";',
'    searchVal = $v("P231_SEARCH_CODE");',
'} else if ($v("P231_SEARCH_NAME").length > 0){',
'    searchContext = "NAME";',
'    searchVal = $v("P231_SEARCH_NAME");',
'} else {',
'    searchContext = "ALL";',
'}',
'',
'generateReport("GIFT_CERTIFICATE_TYPE_UTILITIES_ARIAL_PDF", "pdf", { ',
'    fileName: `GiftCertificateTypeUtilities_${formattedDate}.pdf`,',
'    mode : "print",',
'    parameters : {',
'        P_SEARCH_CONTEXT : searchContext,',
'        P_SEARCH_VALUE : searchVal,',
'    },',
'    spinnerEnabled : true',
'});'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50287192502702445)
,p_event_id=>wwv_flow_imp.id(50286992269702443)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(143062561285358055)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50287268331702446)
,p_event_id=>wwv_flow_imp.id(50286992269702443)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mapP231Keys();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(50287363768702447)
,p_name=>'Export Excel'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(50157134783788093)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50287443893702448)
,p_event_id=>wwv_flow_imp.id(50287363768702447)
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
'if($v("P231_SEARCH_CODE").length > 0){',
'    searchContext = "CODE";',
'    searchVal = $v("P231_SEARCH_CODE");',
'} else if ($v("P231_SEARCH_NAME").length > 0){',
'    searchContext = "NAME";',
'    searchVal = $v("P231_SEARCH_NAME");',
'} else {',
'    searchContext = "ALL";',
'}',
'',
'generateReport("GIFT_CERTIFICATE_TYPE_UTILITIES_XLSX", "xlsx", { ',
'    fileName: `GiftCertificateTypeUtilities_${formattedDate}.xlsx`,',
'    mode : "export",',
'    parameters : {',
'        P_SEARCH_CONTEXT : searchContext,',
'        P_SEARCH_VALUE : searchVal,',
'    },',
'    spinnerEnabled : true',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(58529607016607829)
,p_name=>'Add Closed'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(50155966872788092)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69540467757893513)
,p_event_id=>wwv_flow_imp.id(58529607016607829)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P231_ADD_POPUP'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P233_GC_TYPE_CODE'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58529814745607831)
,p_event_id=>wwv_flow_imp.id(58529607016607829)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'showGPopup({',
'    icon: "fa fa-check-circle",',
'    message: "GC Type has been added!",',
'    width: "10rem",',
'    timeoutActive: true,',
'    timeout: 2000,',
'    top: "80%",',
'    closeCallback: () => {',
'        $("#list_ig_grid_vc .a-GV-bdy .a-GV-w-scroll .a-GV-table tbody").children(".a-GV-row").each( function () {',
'            if( $(this).find(".a-GV-cell").first().html().toUpperCase() == $v(''P231_ADD_POPUP'').toUpperCase() ){',
'                $(this).find(".a-GV-cell").first().trigger("click");',
'            }',
'        });',
'    }',
'});'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58529740654607830)
,p_event_id=>wwv_flow_imp.id(58529607016607829)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(49744317559243336)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(58529998936607832)
,p_name=>'Update Closed'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(50156324726788093)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69540643175893515)
,p_event_id=>wwv_flow_imp.id(58529998936607832)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P231_UPDATE_POPUP'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P234_GC_TYPE_ID'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58530071248607833)
,p_event_id=>wwv_flow_imp.id(58529998936607832)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'showGPopup({',
'    icon: "fa fa-check-circle",',
'    message: "GC Type has been Updated!",',
'    width: "10rem",',
'    timeoutActive: true,',
'    timeout: 2000,',
'    top: "80%",',
'    closeCallback: () => {',
'        $("#list_ig_grid_vc .a-GV-bdy .a-GV-w-scroll .a-GV-table tbody").children(".a-GV-row").each( function () {',
'            if( $(this).attr("data-id") == $v(''P231_UPDATE_POPUP'') ){',
'                $(this).find(".a-GV-cell").first().trigger("click");',
'            }',
'        });',
'    }',
'});'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58530153495607834)
,p_event_id=>wwv_flow_imp.id(58529998936607832)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(49744317559243336)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(50167832334839733)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_SUCCESS_MSG'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   l_msg VARCHAR2(200);',
'BEGIN',
'',
'   l_msg := apex_util.get_session_state(''SUCCESS_MSG'');',
'',
'   apex_json.open_object;',
'   apex_json.write(''success_msg'', l_msg);',
'   apex_json.close_object;',
'',
'   apex_util.set_session_state(''SUCCESS_MSG'', NULL);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>50167832334839733
);
wwv_flow_imp.component_end;
end;
/
