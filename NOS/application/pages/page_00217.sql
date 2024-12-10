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
'    escape : (v) => {',
'        $("#esc").trigger("click");',
'    },',
'    home : (v) => {',
'        $("#home").trigger("click");',
'    },',
'    end : (v) => {',
'        $("#end").trigger("click");',
'    },',
'',
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
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTitle("User Utilities");',
'mapP217Keys();',
'$(".a-GV-cell").first().trigger("click");'))
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
' /* Hide scrollbar for Chrome, Safari and Opera */',
'html::-webkit-scrollbar {',
'  display: none;',
'}',
'',
'/* Hide scrollbar for IE, Edge and Firefox */',
'html {',
'  -ms-overflow-style: none;  /* IE and Edge */',
'  scrollbar-width: none;  /* Firefox */',
'} ',
'',
' /* Hide scrollbar for Chrome, Safari and Opera */',
'.a-GV-w-scroll::-webkit-scrollbar {',
'  display: none;',
'}',
'',
'/* Hide scrollbar for IE, Edge and Firefox */',
'.a-GV-w-scroll {',
'  -ms-overflow-style: none;  /* IE and Edge */',
'  scrollbar-width: none;  /* Firefox */',
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
,p_plug_display_sequence=>80
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    USER_ID,',
'    TO_CHAR(USER_ID, ''000000'') AS USER_ID_F,',
'    NAME,',
'    USER_NAME,',
'    ROLE,',
'    CASE',
'        WHEN STATUS = ''A'' THEN ''Active''',
'        WHEN STATUS = ''I'' THEN ''Inactive''',
'        ELSE ''Locked''',
'    END AS STATUS',
'FROM NPM009',
'WHERE',
'    (:P217_SEARCH_NAME IS NOT NULL AND UPPER(NAME) LIKE ''%'' || UPPER(:P217_SEARCH_NAME) || ''%'') OR',
'    (:P217_SEARCH_USERNAME IS NOT NULL AND UPPER(USER_NAME) LIKE ''%'' || UPPER(:P217_SEARCH_USERNAME) || ''%'')'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P217_SEARCH_NAME,P217_SEARCH_USERNAME'
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
 p_id=>wwv_flow_imp.id(45027499199682410)
,p_name=>'USER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USER_ID'
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
 p_id=>wwv_flow_imp.id(45027569746682411)
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
 p_id=>wwv_flow_imp.id(45027647394682412)
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
 p_id=>wwv_flow_imp.id(45027772195682413)
,p_name=>'USER_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USER_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Username'
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
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(45027884677682414)
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
 p_id=>wwv_flow_imp.id(45027914815682415)
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
,p_is_required=>true
,p_max_length=>4
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
 p_id=>wwv_flow_imp.id(45298265242928228)
,p_view_id=>wwv_flow_imp.id(45087360014711221)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(45027499199682410)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(45299199832928235)
,p_view_id=>wwv_flow_imp.id(45087360014711221)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(45027569746682411)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(45300033822928245)
,p_view_id=>wwv_flow_imp.id(45087360014711221)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(45027647394682412)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(45300937396928253)
,p_view_id=>wwv_flow_imp.id(45087360014711221)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(45027772195682413)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(45301763612928262)
,p_view_id=>wwv_flow_imp.id(45087360014711221)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(45027884677682414)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(45302687974928270)
,p_view_id=>wwv_flow_imp.id(45087360014711221)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(45027914815682415)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(44878813306477250)
,p_plug_name=>'Buttons'
,p_plug_display_sequence=>90
,p_plug_grid_row_css_classes=>'buttons-row'
,p_location=>null
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
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>A</u> - Add'
,p_button_redirect_url=>'f?p=&APP_ID.:219:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'btns text-left'
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
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46252174843877032)
,p_name=>'P217_UPDATE_POPUP'
,p_item_sequence=>60
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46252225105877033)
,p_name=>'P217_ADD_POPUP'
,p_item_sequence=>50
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
'    apex.item("P217_SELECTED_VAL").setValue(itemNoSelected);',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(46251243811877023)
,p_name=>'Go to Page 219'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(45026608911682402)
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
'       p_items  => ''P219_USER_ID'',',
'       p_values => :P217_SELECTED_VAL',
'     );',
'END;'))
,p_attribute_02=>'P217_SELECTED_VAL'
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
wwv_flow_imp.component_end;
end;
/
