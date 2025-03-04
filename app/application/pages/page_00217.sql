prompt --application/pages/page_00217
begin
--   Manifest
--     PAGE: 00217
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
 p_id=>217
,p_name=>'User Utilities'
,p_alias=>'USER-UTILITIES'
,p_step_title=>'User Utilities'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#js/cmn#MIN#.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p217KeyMap = {',
'    a : (v) => {',
'        $("#a").trigger("click");',
'    },',
'    u : (v) => {',
'        $("#u").trigger("click");',
'    },',
'    i : (v) => {',
'        $("#i").trigger("click");',
'    },',
'    s : (v) => {',
'        $("#s").trigger("click");',
'    },',
'    l : (v) => {',
'        $("#l").trigger("click");',
'    },',
'    c : (v) => {',
'        $("#c").trigger("click");',
'    },',
'    r : (v) => {',
'        $("#r").trigger("click");',
'    },',
'    o : (v) => {',
'        $("#o").trigger("click");',
'    },',
'    escape : (v) => {',
'        $("#esc").trigger("click");',
'    },',
'    home : (v) => {',
'        $("#home").trigger("click");',
'    },',
'    end : (v) => {',
'        $("#end").trigger("click");',
'    }',
'}',
'',
'function mapP217Keys() {',
'    $(document).off(''keydown.p217keyevents'');',
'    $(document).on(''keydown.p217keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p217KeyMap[key]) {',
'            ev.preventDefault();',
'            p217KeyMap[key]();',
'        }',
'    });',
'}',
'',
'const p217KeyMapPassword = {',
'    escape : (v) => {',
'        mapP217Keys();',
'    }',
'}',
'',
'function mapP217KeysPassword() {',
'    $(document).off(''keydown.p217keyevents'');',
'    $(document).on(''keydown.p217keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p217KeyMapPassword[key]) {',
'            ev.preventDefault();',
'            p217KeyMapPassword[key]();',
'        }',
'    });',
'}',
'',
'const p217KeyMapSort = {',
'    escape : (v) => {',
'        mapP217Keys();',
'    },',
'    enter : (v) => {',
'        $("#enter-sort").trigger("click");',
'    },',
'    arrowup : (v) => {',
'        $("#up").trigger("click");',
'    },',
'    arrowdown : (v) => {',
'        $("#down").trigger("click");',
'    }',
'}',
'',
'function mapP217KeysSort() {',
'    $(document).off(''keydown.p217keyevents'');',
'    $(document).on(''keydown.p217keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p217KeyMapSort[key]) {',
'            ev.preventDefault();',
'            p217KeyMapSort[key]();',
'        }',
'    });',
'}',
'',
'function customEvent(event, data){',
'    mapP217Keys();',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTitle("User Utilities");',
'mapP217Keys();'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Header .t-Header-branding {',
'    background-color: white !important;',
'    color: rgb(30, 58, 138) !important;',
'}',
'',
'body {',
'    background-color: rgb(30, 58, 138);',
'}',
'',
'.btns {',
'    font-size: 1.125rem;',
'    color: white;',
'}',
'',
'.buttons-row {',
'    position: absolute;',
'    width: 98vw;',
'    bottom: 1.75rem;',
'}',
'',
'#esc {',
'    display: none;',
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
'.t-Header .t-Header-branding {',
'    background-color: white !important;',
'    color: rgb(30, 58, 138) !important;',
'}',
'',
'#password-dialog .t-DialogRegion-body, .ui-resizable-s{',
'    background-color: #056AC8;',
'}',
'',
'.text-left {',
'    text-align: left;',
'}',
'',
'#list table,',
'#list tr,',
'#list td,',
'#list th {',
'    font-size: 1.125rem;',
'}',
'',
'#list_ig{',
'    border: 0.0625rem solid black;',
'}',
'',
'.a-GV-table .a-GV-cell, th.a-GV-header {',
'    border-color: black;',
'}',
'',
'.a-GV-header a, th.a-GV-header {',
'    background-color: #046BC8;',
'    color: white;',
'}',
'',
'.ui-dialog .ui-dialog-titlebar {',
'    background-color: #056AC8;',
'    color: white;',
'}',
'',
'.ui-dialog{',
'    border: 2px solid black;',
'    border-radius: 0.75rem;',
'    box-shadow: 0 0.625rem 0.625rem -0.25rem rgba(0,0,0,0.2);',
'}',
'',
'.ui-dialog-title{',
'    font-size: 1.5rem;',
'}',
'',
'.ui-dialog-titlebar-close {',
'    display:none;',
'}',
'',
'.a-GV-hdr .a-GV-table {',
'    width: 100% !important;',
'}',
'',
'html::-webkit-scrollbar {',
'  display: none;',
'}',
'',
'html {',
'  -ms-overflow-style: none;',
'  scrollbar-width: none;',
'} ',
'',
'.a-GV-w-scroll::-webkit-scrollbar {',
'  display: none;',
'}',
'',
'.a-GV-w-scroll {',
'  -ms-overflow-style: none;',
'  scrollbar-width: none;',
'}',
'',
'.sort-option {',
'    font-size: 1.125rem;',
'    margin: 0;',
'    padding-top: 0.4rem;',
'    padding-bottom: 0.4rem;',
'    padding-left: 1rem;',
'    background-color: white;',
'}',
'',
'.sort-selected {',
'    background-color: #7FC0FC !important;',
'}',
'',
'#sort .t-DialogRegion-body{',
'    background-color: #056AC8;',
'}',
'',
'#enter-sort, #up, #down {',
'    display: none;',
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
 p_id=>wwv_flow_imp.id(44877166654477233)
,p_plug_name=>'List'
,p_region_name=>'list'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>140
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH my_select AS (',
'    SELECT',
'        USER_ID,',
'        TO_CHAR(USER_ID, ''000000'') AS USER_ID_F,',
'        NAME,',
'        USER_NAME,',
'        ROLE,',
'        CASE',
'            WHEN STATUS = ''A'' THEN ''Active''',
'            WHEN STATUS = ''I'' THEN ''Inactive''',
'            WHEN STATUS = ''C'' THEN ''Archived''',
'            ELSE ''Locked''',
'        END AS STATUS,',
'        CASE',
'            WHEN STATUS = ''A'' THEN ''a''',
'            WHEN STATUS = ''I'' THEN ''c''',
'            WHEN STATUS = ''L'' THEN ''b''',
'            ELSE ''d''',
'        END AS STATUS_ORDER',
'    FROM NPM009',
'    WHERE',
'        (',
'            (:P217_NEW_SEARCH_USERNAME IS NOT NULL AND :P217_SEARCH_NAME IS NOT NULL AND UPPER(NAME) LIKE ''%'' || UPPER(:P217_SEARCH_NAME) || ''%'' OR UPPER(USER_NAME) = UPPER(:P217_NEW_SEARCH_USERNAME) ) OR',
'            (:P217_NEW_SEARCH_USERNAME IS NOT NULL AND :P217_SEARCH_USERNAME IS NOT NULL AND UPPER(USER_NAME) LIKE ''%'' || UPPER(:P217_SEARCH_USERNAME) || ''%'' OR UPPER(USER_NAME) = UPPER(:P217_NEW_SEARCH_USERNAME) ) OR',
'            (:P217_SEARCH_NAME IS NOT NULL AND UPPER(NAME) LIKE ''%'' || UPPER(:P217_SEARCH_NAME) || ''%'') OR',
'            (:P217_SEARCH_USERNAME IS NOT NULL AND UPPER(USER_NAME) LIKE ''%'' || UPPER(:P217_SEARCH_USERNAME) || ''%'') OR',
'            (:P217_SEARCH_USERNAME IS NULL AND :P217_SEARCH_NAME IS NULL)',
'        )',
'    ORDER BY CASE',
'        WHEN :P217_ORDER_BY = ''N'' THEN UPPER(NAME)',
'        WHEN :P217_ORDER_BY = ''U'' THEN UPPER(USER_NAME)',
'        ELSE STATUS_ORDER',
'    END',
')',
'SELECT ',
'    USER_ID,',
'    USER_ID_F,',
'    NAME,',
'    USER_NAME,',
'    ROLE,',
'    STATUS,',
'    STATUS_ORDER',
'FROM my_select',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P217_SEARCH_NAME,P217_SEARCH_USERNAME,P217_ORDER_BY,P217_NEW_SEARCH_USERNAME'
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
 p_id=>wwv_flow_imp.id(46693444577550849)
,p_name=>'USER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USER_ID'
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
 p_id=>wwv_flow_imp.id(46693576445550850)
,p_name=>'USER_ID_F'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USER_ID_F'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'User ID'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>7
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(47179449813422101)
,p_name=>'NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Name'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>200
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(47179590581422102)
,p_name=>'USER_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USER_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'User Name'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>200
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(47179647678422103)
,p_name=>'ROLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROLE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Role'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>200
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(47179754817422104)
,p_name=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Status'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>8
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(47179817998422105)
,p_name=>'STATUS_ORDER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS_ORDER'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>70
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(44877208917477234)
,p_internal_uid=>44877208917477234
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
,p_fixed_header_max_height=>360
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
'        reorderColumns: true,',
'        footer: false',
'    };',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(45087101155711221)
,p_interactive_grid_id=>wwv_flow_imp.id(44877208917477234)
,p_static_id=>'450872'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(45087360014711221)
,p_report_id=>wwv_flow_imp.id(45087101155711221)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(47185744157424679)
,p_view_id=>wwv_flow_imp.id(45087360014711221)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(46693444577550849)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(47186684121424687)
,p_view_id=>wwv_flow_imp.id(45087360014711221)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(46693576445550850)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(47187529436424695)
,p_view_id=>wwv_flow_imp.id(45087360014711221)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(47179449813422101)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(47188414689424704)
,p_view_id=>wwv_flow_imp.id(45087360014711221)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(47179590581422102)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(47189361229424709)
,p_view_id=>wwv_flow_imp.id(45087360014711221)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(47179647678422103)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(47190232561424715)
,p_view_id=>wwv_flow_imp.id(45087360014711221)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(47179754817422104)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(47191091320424721)
,p_view_id=>wwv_flow_imp.id(45087360014711221)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(47179817998422105)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(44878813306477250)
,p_plug_name=>'Buttons'
,p_plug_display_sequence=>150
,p_plug_grid_row_css_classes=>'buttons-row'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(46688722400550802)
,p_plug_name=>'New Password'
,p_title=>'Password Reset Successful!'
,p_region_name=>'password-dialog'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size480x320'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>160
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!-- <h3 style="color:white;font-size;1.125rem;margin-top:0">Password Reset Successful!</h3><br> -->',
'<h3 style="color:white;font-size:1.125rem;margin-top:0">',
'    Temporary Password: <span id="new-password"></span>',
'</h3>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(46691663700550831)
,p_plug_name=>'Sort'
,p_title=>'Sort By'
,p_region_name=>'sort'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size480x320'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>170
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h3 id="sort-name" class="sort-selected sort-option">',
'    Name',
'</h3>',
'<h3 id="sort-username" class="sort-option">',
'    Username',
'</h3>',
'<h3 id="sort-status" class="sort-option">',
'    Status',
'</h3>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(47181384089422120)
,p_plug_name=>'Sort By Header'
,p_plug_display_sequence=>130
,p_location=>null
,p_plug_source=>'<h3 style="color:white;font-size:1.125rem;margin-top:0;margin-bottom:0">Sorted By: <span id="order-by-detail"></span></h3>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(45026535597682401)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(44878813306477250)
,p_button_name=>'Add'
,p_button_static_id=>'a'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>A</u> - Add'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(47180273268422109)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(46691663700550831)
,p_button_name=>'Enter_Sort'
,p_button_static_id=>'enter-sort'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'-'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(45026608911682402)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(44878813306477250)
,p_button_name=>'Update'
,p_button_static_id=>'u'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>U</u> - Update'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(47180378199422110)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(46691663700550831)
,p_button_name=>'Up'
,p_button_static_id=>'up'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'-'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(45026702286682403)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(44878813306477250)
,p_button_name=>'Inquire'
,p_button_static_id=>'i'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>I</u> - Inquire'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(47180491776422111)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(46691663700550831)
,p_button_name=>'Down'
,p_button_static_id=>'down'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'-'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(45026874062682404)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(44878813306477250)
,p_button_name=>'Unlock'
,p_button_static_id=>'l'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>L</u> - Unlock'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(45026966634682405)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(44878813306477250)
,p_button_name=>'Reset'
,p_button_static_id=>'r'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>R</u> - Reset'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(45027071283682406)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(44878813306477250)
,p_button_name=>'Archive'
,p_button_static_id=>'c'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>C</u> - Archive'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(45027163994682407)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(44878813306477250)
,p_button_name=>'Sort'
,p_button_static_id=>'o'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>O</u> - Sort'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(45027249530682408)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(44878813306477250)
,p_button_name=>'Search'
,p_button_static_id=>'s'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>S</u> - Search'
,p_button_redirect_url=>'f?p=&APP_ID.:218:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(48535167553075748)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(44878813306477250)
,p_button_name=>'Escape'
,p_button_static_id=>'esc'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'-'
,p_button_redirect_url=>'f?p=&APP_ID.:222:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45028106483682417)
,p_name=>'P217_SEARCH_NAME'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45028242470682418)
,p_name=>'P217_SEARCH_USERNAME'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45028313363682419)
,p_name=>'P217_SELECTED_VAL'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45028436801682420)
,p_name=>'P217_PREPARED_URL'
,p_item_sequence=>80
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46252174843877032)
,p_name=>'P217_UPDATE_POPUP'
,p_item_sequence=>100
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46252225105877033)
,p_name=>'P217_ADD_POPUP'
,p_item_sequence=>90
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46253094478877041)
,p_name=>'P217_SELECTED_STATUS'
,p_item_sequence=>50
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46253100975877042)
,p_name=>'P217_SELECTED_USERNAME'
,p_item_sequence=>60
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46253862288877049)
,p_name=>'P217_NEW_PASSWORD'
,p_item_sequence=>70
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46691854630550833)
,p_name=>'P217_ORDER_BY'
,p_item_sequence=>110
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48018540090143007)
,p_name=>'P217_SELECTED_VAL_PREV'
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48019069402143012)
,p_name=>'P217_NEW_SEARCH_USERNAME'
,p_item_sequence=>120
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(45028555133682421)
,p_name=>'Reset Keys'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(45027249530682408)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45028672375682422)
,p_event_id=>wwv_flow_imp.id(45028555133682421)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(document).off(''keydown.p217keyevents'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(45028731907682423)
,p_name=>'Dialog Closed'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(45027249530682408)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45029970405682435)
,p_event_id=>wwv_flow_imp.id(45028731907682423)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P217_SEARCH_NAME'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P218_SEARCH_NAME'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45030229243682438)
,p_event_id=>wwv_flow_imp.id(45028731907682423)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P217_SEARCH_USERNAME'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P218_SEARCH_USERNAME'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45028864117682424)
,p_event_id=>wwv_flow_imp.id(45028731907682423)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(44877166654477233)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45028962574682425)
,p_event_id=>wwv_flow_imp.id(45028731907682423)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(() => {',
'    $( document ).ready(function() {',
'        $(".a-GV-cell").first().trigger("click");',
'    });',
'}, "500");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(45030027696682436)
,p_name=>'Dialog Closed or Canceled'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(45027249530682408)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45030176244682437)
,p_event_id=>wwv_flow_imp.id(45030027696682436)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mapP217Keys();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(45031124689682447)
,p_name=>'Selection Change'
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(44877166654477233)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45031282229682448)
,p_event_id=>wwv_flow_imp.id(45031124689682447)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (this.data.selectedRecords.length > 0) {',
'    let itemNoSelected = this.data.selectedRecords[0][0];',
'    let itemStatus = this.data.selectedRecords[0][5];',
'    let itemUsername = this.data.selectedRecords[0][3];',
'    apex.item("P217_SELECTED_VAL").setValue(itemNoSelected);',
'    apex.item("P217_SELECTED_STATUS").setValue(itemStatus);',
'    apex.item("P217_SELECTED_USERNAME").setValue(itemUsername);',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(46251243811877023)
,p_name=>'Go to Page 219 Update'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(45026608911682402)
,p_condition_element=>'P217_SELECTED_VAL'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46251354474877024)
,p_event_id=>wwv_flow_imp.id(46251243811877023)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P217_PREPARED_URL := apex_page.get_url(',
'       p_page   => 219,',
'       p_items  => ''P219_USER_ID,P219_SELECTED_VAL_PREV,P219_SEARCH_NAME_PREV,P219_SEARCH_USERNAME_PREV,P219_ORDER_BY_PREV'',',
'       p_values => :P217_SELECTED_VAL||'',''||:P217_SELECTED_VAL||'',''||:P217_SEARCH_NAME||'',''||:P217_SEARCH_USERNAME||'',''||:P217_ORDER_BY,',
'       p_clear_cache => ''219''',
'     );',
'END;'))
,p_attribute_02=>'P217_SELECTED_VAL,P217_SEARCH_NAME,P217_SEARCH_USERNAME,P217_ORDER_BY'
,p_attribute_03=>'P217_PREPARED_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46251465110877025)
,p_event_id=>wwv_flow_imp.id(46251243811877023)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P217_PREPARED_URL");',
'apex.navigation.redirect(url);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(46252479110877035)
,p_name=>'Add Popup'
,p_event_sequence=>60
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P217_ADD_POPUP'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46252503384877036)
,p_event_id=>wwv_flow_imp.id(46252479110877035)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'showGPopup({',
'    icon: "fa fa-check-circle",',
'    message: "User: " + $v(''P217_ADD_POPUP'') + " has been added!",',
'    width: "10rem",',
'    timeoutActive: true,',
'    timeout: 2000,',
'    top: "80%",',
'    closeCallback: () => {',
'        $("#list_ig_grid_vc .a-GV-bdy .a-GV-w-scroll .a-GV-table tbody").children(".a-GV-row").each( function () {',
'            if( $(this).find(".a-GV-cell").eq(2).html() == $v(''P217_NEW_SEARCH_USERNAME'').toUpperCase() ){',
'                $(this).find(".a-GV-cell").first().trigger("click");',
'            }',
'        });',
'    }',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(46252667116877037)
,p_name=>'Update Popup'
,p_event_sequence=>70
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P217_UPDATE_POPUP'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46252726684877038)
,p_event_id=>wwv_flow_imp.id(46252667116877037)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'showGPopup({',
'    icon: "fa fa-check-circle",',
'    message: "User: " + $v(''P217_UPDATE_POPUP'') + " has been updated!",',
'    width: "10rem",',
'    timeoutActive: true,',
'    timeout: 2000,',
'    top: "80%",',
'    closeCallback: () => {',
'        $("#list_ig_grid_vc .a-GV-bdy .a-GV-w-scroll .a-GV-table tbody").children(".a-GV-row").each( function () {',
'            if( $(this).attr("data-id") == $v(''P217_SELECTED_VAL_PREV'') ){',
'                $(this).find(".a-GV-cell").first().trigger("click");',
'            }',
'        });',
'    }',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(46252848702877039)
,p_name=>'Unlock User'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(45026874062682404)
,p_condition_element=>'P217_SELECTED_STATUS'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Locked'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46252911680877040)
,p_event_id=>wwv_flow_imp.id(46252848702877039)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    UPDATE NPM009 SET',
'        STATUS = ''A'',',
'        USER_UPDATE = v(''APP_USER''),',
'        DATE_UPDATED = SYSDATE',
'    WHERE USER_ID = :P217_SELECTED_VAL AND STATUS = ''L'';',
'END;'))
,p_attribute_02=>'P217_SELECTED_VAL'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46253299576877043)
,p_event_id=>wwv_flow_imp.id(46252848702877039)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P217_SELECTED_VAL_PREV").setValue($v(''P217_SELECTED_VAL''));',
'showGPopup({',
'    icon: "fa fa-check-circle",',
'    message: "User: " + $v(''P217_SELECTED_USERNAME'') + " has been unlocked!",',
'    width: "10rem",',
'    timeoutActive: true,',
'    timeout: 2000,',
'    top: "80%",',
'    closeCallback: () => {',
'        $("#list_ig_grid_vc .a-GV-bdy .a-GV-w-scroll .a-GV-table tbody").children(".a-GV-row").each( function () {',
'            if( $(this).attr("data-id") == $v(''P217_SELECTED_VAL_PREV'') ){',
'                $(this).find(".a-GV-cell").first().trigger("click");',
'            }',
'        });',
'    }',
'});'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58834966222496508)
,p_event_id=>wwv_flow_imp.id(46252848702877039)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(44877166654477233)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(46253312638877044)
,p_name=>'Archive User'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(45027071283682406)
,p_condition_element=>'P217_SELECTED_VAL'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46253405137877045)
,p_event_id=>wwv_flow_imp.id(46253312638877044)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    UPDATE NPM009 SET',
'        STATUS = ''C'',',
'        USER_UPDATE = v(''APP_USER''),',
'        DATE_UPDATED = SYSDATE',
'    WHERE USER_ID = :P217_SELECTED_VAL AND STATUS != ''C'';',
'END;'))
,p_attribute_02=>'P217_SELECTED_VAL'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46253531888877046)
,p_event_id=>wwv_flow_imp.id(46253312638877044)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P217_SELECTED_VAL_PREV").setValue($v(''P217_SELECTED_VAL''));',
'showGPopup({',
'    icon: "fa fa-check-circle",',
'    message: "User: " + $v(''P217_SELECTED_USERNAME'') + " has been archived!",',
'    width: "10rem",',
'    timeoutActive: true,',
'    timeout: 2000,',
'    top: "80%",',
'    closeCallback: () => {',
'        $("#list_ig_grid_vc .a-GV-bdy .a-GV-w-scroll .a-GV-table tbody").children(".a-GV-row").each( function () {',
'            if( $(this).attr("data-id") == $v(''P217_SELECTED_VAL_PREV'') ){',
'                $(this).find(".a-GV-cell").first().trigger("click");',
'            }',
'        });',
'    }',
'});'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58835033738496509)
,p_event_id=>wwv_flow_imp.id(46253312638877044)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(44877166654477233)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(46253660227877047)
,p_name=>'Reset User Password'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(45026966634682405)
,p_condition_element=>'P217_SELECTED_VAL'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46253778151877048)
,p_event_id=>wwv_flow_imp.id(46253660227877047)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var charPool = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789~!@#$%^&*()-_+={}[]|\<>/?";',
'var result = "";',
'for(var i = 0; i <= 3; i++){',
'    result += charPool.charAt(Math.floor(Math.random() * 86));',
'}',
'',
'var position = Math.floor(Math.random() * 4);',
'result = [result.slice(0, position), "ABCDEFGHIJKLMNOPQRSTUVWXYZ".charAt(Math.floor(Math.random() * 26)), result.slice(position)].join('''');',
'position = Math.floor(Math.random() * 5);',
'result = [result.slice(0, position), "abcdefghijklmnopqrstuvwxyz".charAt(Math.floor(Math.random() * 26)), result.slice(position)].join('''');',
'position = Math.floor(Math.random() * 6);',
'result = [result.slice(0, position), "0123456789".charAt(Math.floor(Math.random() * 10)), result.slice(position)].join('''');',
'position = Math.floor(Math.random() * 7);',
'result = [result.slice(0, position), "~!@#$%^&*()-_+={}[]|\<>/?".charAt(Math.floor(Math.random() * 24)), result.slice(position)].join('''');',
'',
'apex.item(''P217_NEW_PASSWORD'').setValue(result);'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46253946058877050)
,p_event_id=>wwv_flow_imp.id(46253660227877047)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_salt VARCHAR2(50 byte);',
'    v_hash VARCHAR2(100 char);',
'BEGIN',
'    SELECT SALT',
'    INTO v_salt',
'    FROM NPM009',
'    WHERE USER_ID = :P217_SELECTED_VAL;',
'',
'    v_hash := nos_authentication_pkg.hash_pw(:P217_NEW_PASSWORD, v_salt);',
'',
'    UPDATE NPM009 SET',
'        PASSWORD = v_hash,',
'        IS_PASSWORD_TEMPORARY = ''Y'',',
'        USER_UPDATE = v(''APP_USER''),',
'        DATE_UPDATED = SYSDATE',
'    WHERE USER_ID = :P217_SELECTED_VAL;',
'END;'))
,p_attribute_02=>'P217_SELECTED_VAL,P217_NEW_PASSWORD'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46688642012550801)
,p_event_id=>wwv_flow_imp.id(46253660227877047)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#new-password'').html($v(''P217_NEW_PASSWORD''));',
'mapP217KeysPassword();'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46688840293550803)
,p_event_id=>wwv_flow_imp.id(46253660227877047)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(46688722400550802)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(46690787404550822)
,p_name=>'Go To Page 219 Inquire'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(45026702286682403)
,p_condition_element=>'P217_SELECTED_VAL'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46690849645550823)
,p_event_id=>wwv_flow_imp.id(46690787404550822)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P217_PREPARED_URL := apex_page.get_url(',
'       p_page   => 219,',
'       p_items  => ''P219_USER_ID,P219_SELECTED_VAL_PREV,P219_SEARCH_NAME_PREV,P219_SEARCH_USERNAME_PREV,P219_ORDER_BY_PREV,P219_INQUIRE_TOGGLE'',',
'       p_values => :P217_SELECTED_VAL||'',''||:P217_SELECTED_VAL||'',''||:P217_SEARCH_NAME||'',''||:P217_SEARCH_USERNAME||'',''||:P217_ORDER_BY||'',''||1',
'     );',
'END;'))
,p_attribute_02=>'P217_SELECTED_VAL,P217_SEARCH_NAME,P217_SEARCH_USERNAME,P217_ORDER_BY'
,p_attribute_03=>'P217_PREPARED_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46690975057550824)
,p_event_id=>wwv_flow_imp.id(46690787404550822)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P217_PREPARED_URL");',
'apex.navigation.redirect(url);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(46693097343550845)
,p_name=>'Refresh List after Sort'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P217_ORDER_BY'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46693154326550846)
,p_event_id=>wwv_flow_imp.id(46693097343550845)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(44877166654477233)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47181404951422121)
,p_event_id=>wwv_flow_imp.id(46693097343550845)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if( $v(''P217_ORDER_BY'') == ''N'' ){',
'    $(''#order-by-detail'').html(''Name'');',
'} else if($v(''P217_ORDER_BY'') == ''U''){',
'    $(''#order-by-detail'').html(''User Name'');',
'} else {',
'    $(''#order-by-detail'').html(''Status'');',
'}',
'',
'setTimeout(() =>{',
'    $( document ).ready(function() {',
'        $(".a-GV-cell").first().trigger("click");',
'    });',
'}, 1000);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(47179903682422106)
,p_name=>'Open Sort Dialog'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(45027163994682407)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47180006224422107)
,p_event_id=>wwv_flow_imp.id(47179903682422106)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(46691663700550831)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47180141106422108)
,p_event_id=>wwv_flow_imp.id(47179903682422106)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mapP217KeysSort();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(47180537685422112)
,p_name=>'Arrow Down'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(47180491776422111)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47180694158422113)
,p_event_id=>wwv_flow_imp.id(47180537685422112)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if( $(''#sort-name'').hasClass(''sort-selected'') ){',
'    $(''#sort-name'').removeClass(''sort-selected'');',
'    $(''#sort-username'').addClass(''sort-selected'');',
'} else if ($(''#sort-username'').hasClass(''sort-selected'')){',
'    $(''#sort-username'').removeClass(''sort-selected'');',
'    $(''#sort-status'').addClass(''sort-selected'');',
'} else {',
'    $(''#sort-status'').removeClass(''sort-selected'');',
'    $(''#sort-name'').addClass(''sort-selected'');',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(47180701910422114)
,p_name=>'Arrow Up'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(47180378199422110)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47180805264422115)
,p_event_id=>wwv_flow_imp.id(47180701910422114)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if( $(''#sort-name'').hasClass(''sort-selected'') ){',
'    $(''#sort-name'').removeClass(''sort-selected'');',
'    $(''#sort-status'').addClass(''sort-selected'');',
'} else if ($(''#sort-username'').hasClass(''sort-selected'')){',
'    $(''#sort-username'').removeClass(''sort-selected'');',
'    $(''#sort-name'').addClass(''sort-selected'');',
'} else {',
'    $(''#sort-status'').removeClass(''sort-selected'');',
'    $(''#sort-username'').addClass(''sort-selected'');',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(47180949996422116)
,p_name=>'Submit Sort Value'
,p_event_sequence=>160
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(47180273268422109)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47181091225422117)
,p_event_id=>wwv_flow_imp.id(47180949996422116)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if( $(''#sort-name'').hasClass(''sort-selected'') ){',
'    apex.item( ''P217_ORDER_BY'' ).setValue(''N'');',
'} else if ($(''#sort-username'').hasClass(''sort-selected'')){',
'    apex.item( ''P217_ORDER_BY'' ).setValue(''U'');',
'} else {',
'    apex.item( ''P217_ORDER_BY'' ).setValue(''S'');',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47181110823422118)
,p_event_id=>wwv_flow_imp.id(47180949996422116)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(46691663700550831)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47181281042422119)
,p_event_id=>wwv_flow_imp.id(47180949996422116)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mapP217Keys();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(47183788796422144)
,p_name=>'Sort Closed'
,p_event_sequence=>180
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(45027163994682407)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47183877576422145)
,p_event_id=>wwv_flow_imp.id(47183788796422144)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mapP217Keys();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(47183916786422146)
,p_name=>'Click First Cell'
,p_event_sequence=>190
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'EXPRESSION'
,p_display_when_cond=>'(:P217_SELECTED_VAL_PREV IS NULL AND :P217_ADD_POPUP IS NULL AND :P217_UPDATE_POPUP IS NULL)'
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47184053518422147)
,p_event_id=>wwv_flow_imp.id(47183916786422146)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(".a-GV-cell").first().trigger("click");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(48018059093143002)
,p_name=>'Go to Page 219 Add'
,p_event_sequence=>200
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(45026535597682401)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48018105450143003)
,p_event_id=>wwv_flow_imp.id(48018059093143002)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P217_PREPARED_URL := apex_page.get_url(',
'       p_page   => 219,',
'       p_items  => ''P219_SELECTED_VAL_PREV,P219_SEARCH_NAME_PREV,P219_SEARCH_USERNAME_PREV,P219_ORDER_BY_PREV'',',
'       p_values => :P217_SELECTED_VAL||'',''||:P217_SEARCH_NAME||'',''||:P217_SEARCH_USERNAME||'',''||:P217_ORDER_BY,',
'       p_clear_cache => ''219''',
'     );',
'END;'))
,p_attribute_02=>'P217_SEARCH_NAME,P217_SEARCH_USERNAME,P217_SELECTED_VAL,P217_ORDER_BY'
,p_attribute_03=>'P217_PREPARED_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48018287425143004)
,p_event_id=>wwv_flow_imp.id(48018059093143002)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P217_PREPARED_URL");',
'apex.navigation.redirect(url);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(48018384756143005)
,p_name=>'Click Selected Val'
,p_event_sequence=>210
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P217_SELECTED_VAL_PREV'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48018443286143006)
,p_event_id=>wwv_flow_imp.id(48018384756143005)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(() => {',
'    $( document ).ready(function() {',
'        $("#list_ig_grid_vc .a-GV-bdy .a-GV-w-scroll .a-GV-table tbody").children(".a-GV-row").each( function () {',
'            if( $(this).attr("data-id") == $v(''P217_SELECTED_VAL_PREV'') ){',
'                $(this).find(".a-GV-cell").first().trigger("click");',
'            }',
'        });',
'    });',
'}, "1000");'))
);
wwv_flow_imp.component_end;
end;
/
