prompt --application/pages/page_00057
begin
--   Manifest
--     PAGE: 00057
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
 p_id=>57
,p_name=>'Customer Masterfile'
,p_alias=>'CUSTOMER-MASTERFILE'
,p_step_title=>'Customer Masterfile'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#js/cmn#MIN#.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p57KeyMap = {',
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
'    d : (v) => {',
'        $("#d").trigger("click");',
'    },',
'    escape : (v) => {',
'        $("#esc").trigger("click");',
'    }',
'}',
'',
'function mapP57Keys() {',
'    $(document).off(''keydown.p57keyevents'');',
'    $(document).on(''keydown.p57keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p57KeyMap[key]) {',
'            ev.preventDefault();',
'            p57KeyMap[key]();',
'        }',
'    });',
'}',
'',
'function customEvent(event, data){',
'    mapP57Keys();',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP57Keys();',
'setTitle("Customer Masterfile");'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
'#customerGrid .a-IG {',
'    height: calc(75vh + 2px) !important;',
'} ',
'',
'#customerGrid .a-IG-contentContainer {',
'    height: 75vh !important;',
'}',
'',
'#customerGrid .a-IG-gridView.a-GV {',
'    height: 75vh !important;',
'}',
'',
'#customerGrid .a-GV-bdy {',
'    height: calc(75vh - 2.5625rem) !important;',
'}',
'',
'.t-Header .t-Header-branding {',
'    background-color: white !important;',
'    color: rgb(30, 58, 138) !important;',
'}',
'',
'#esc {',
'    display: none;',
'}',
'',
'body {',
'    background-color: rgb(30, 58, 138);',
'}',
'',
'.text-left {',
'    text-align: left;',
'}',
'',
'#customerGrid table,',
'#customerGrid tr,',
'#customerGrid td,',
'#customerGrid th {',
'    font-size: 1.125rem;',
'}',
'',
'#customerGrid_ig{',
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
 p_id=>wwv_flow_imp.id(11486716534867043)
,p_plug_name=>'Header'
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>10
,p_plug_display_column=>2
,p_location=>null
,p_plug_source=>'<h1 style="color:white">Customer Masterfile</h1>'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11486885313867044)
,p_plug_name=>'Customer Grid'
,p_region_name=>'customerGrid'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>110
,p_plug_grid_column_span=>10
,p_plug_display_column=>2
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH my_select AS (   ',
'    SELECT ',
'        A.CUSTOMER_ID,',
'        A.CUSTOMER_CODE,',
'        A.LEGAL_NAME,',
'        A.DBA,',
'        B.ORGANIZATION_TYPE_NAME,',
'        A.MAIN_ACCOUNT_CODE',
'    FROM NPT009 A, NPM010 B ',
'    WHERE',
'        (A.ORGANIZATION_TYPE_ID = B.ORGANIZATION_TYPE_ID) ',
'        AND (',
'            (:P57_ADD_POPUP IS NOT NULL AND :P57_SEARCH_CUSTOMER_CODE IS NOT NULL AND UPPER(A.CUSTOMER_CODE) LIKE ''%'' || UPPER(:P57_SEARCH_CUSTOMER_CODE) || ''%'' OR UPPER(A.CUSTOMER_CODE) = UPPER(:P57_ADD_POPUP)) OR',
'            (:P57_ADD_POPUP IS NOT NULL AND :P57_SEARCH_LEGAL_NAME IS NOT NULL AND UPPER(A.LEGAL_NAME) LIKE ''%'' || UPPER(:P57_SEARCH_LEGAL_NAME) || ''%'' OR UPPER(A.CUSTOMER_CODE) = UPPER(:P57_ADD_POPUP)) OR',
'            (:P57_ADD_POPUP IS NOT NULL AND :P57_SEARCH_DBA IS NOT NULL AND UPPER(A.DBA) LIKE ''%'' || UPPER(:P57_SEARCH_DBA) || ''%'' OR UPPER(A.CUSTOMER_CODE) = UPPER(:P57_ADD_POPUP)) OR',
'            (:P57_SEARCH_CUSTOMER_CODE IS NOT NULL ',
'                AND UPPER(A.CUSTOMER_CODE) LIKE ''%'' || UPPER(:P57_SEARCH_CUSTOMER_CODE) || ''%'') OR',
'            (:P57_SEARCH_LEGAL_NAME IS NOT NULL ',
'                AND UPPER(A.LEGAL_NAME) LIKE ''%'' || UPPER(:P57_SEARCH_LEGAL_NAME) || ''%'') OR',
'            (:P57_SEARCH_DBA IS NOT NULL ',
'                AND UPPER(A.DBA) LIKE ''%'' || UPPER(:P57_SEARCH_DBA) || ''%'')',
'        )',
'    ORDER BY ',
'        CASE',
'            WHEN :P57_DBA_SORT IS NOT NULL THEN DBA',
'        END,',
'        CASE',
'            WHEN :P57_SEARCH_CUSTOMER_CODE IS NOT NULL THEN INSTR(UPPER(CUSTOMER_CODE), UPPER(:P57_SEARCH_CUSTOMER_CODE))',
'            WHEN :P57_SEARCH_LEGAL_NAME IS NOT NULL THEN INSTR(UPPER(LEGAL_NAME), UPPER(:P57_SEARCH_LEGAL_NAME))',
'            WHEN :P57_SEARCH_DBA IS NOT NULL THEN INSTR(UPPER(DBA), UPPER(:P57_SEARCH_DBA))',
'        END',
'    -- CASE',
'    --     WHEN :P57_SEARCH_CUSTOMER_CODE IS NOT NULL THEN INSTR(UPPER(CUSTOMER_CODE), UPPER(:P57_SEARCH_CUSTOMER_CODE))',
'    --     WHEN :P57_SEARCH_LEGAL_NAME IS NOT NULL THEN INSTR(UPPER(LEGAL_NAME), UPPER(:P57_SEARCH_LEGAL_NAME))',
'    --     WHEN :P57_SEARCH_DBA IS NOT NULL THEN INSTR(UPPER(DBA), UPPER(:P57_SEARCH_DBA))',
'    --     WHEN :P57_DBA_SORT IS NOT NULL THEN DBA',
'    -- END',
')',
'SELECT ',
'    CUSTOMER_ID,',
'    CUSTOMER_CODE,',
'    LEGAL_NAME,',
'    DBA,',
'    ORGANIZATION_TYPE_NAME,',
'    MAIN_ACCOUNT_CODE',
'FROM my_select'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P57_SEARCH_CUSTOMER_CODE,P57_SEARCH_LEGAL_NAME,P57_SEARCH_DBA,P57_ADD_POPUP,P57_DBA_SORT'
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
 p_id=>wwv_flow_imp.id(14307943522089750)
,p_name=>'CUSTOMER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CUSTOMER_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'Y'
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
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(15142300078750601)
,p_name=>'CUSTOMER_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CUSTOMER_CODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Customer Code'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
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
 p_id=>wwv_flow_imp.id(15142490285750602)
,p_name=>'LEGAL_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LEGAL_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Legal Name'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>true
,p_max_length=>400
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
 p_id=>wwv_flow_imp.id(15142535252750603)
,p_name=>'DBA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DBA'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'DBA'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>true
,p_max_length=>400
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
 p_id=>wwv_flow_imp.id(15142652471750604)
,p_name=>'ORGANIZATION_TYPE_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORGANIZATION_TYPE_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Organization Type'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
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
 p_id=>wwv_flow_imp.id(15142784199750605)
,p_name=>'MAIN_ACCOUNT_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MAIN_ACCOUNT_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Main Account Code'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>400
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
 p_id=>wwv_flow_imp.id(11486973835867045)
,p_internal_uid=>11486973835867045
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
 p_id=>wwv_flow_imp.id(13882846204718584)
,p_interactive_grid_id=>wwv_flow_imp.id(11486973835867045)
,p_static_id=>'138829'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(13883043254718585)
,p_report_id=>wwv_flow_imp.id(13882846204718584)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15148328779754046)
,p_view_id=>wwv_flow_imp.id(13883043254718585)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(14307943522089750)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15149112340754054)
,p_view_id=>wwv_flow_imp.id(13883043254718585)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(15142300078750601)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>149
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15150005595754062)
,p_view_id=>wwv_flow_imp.id(13883043254718585)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(15142490285750602)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>358
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15150916390754068)
,p_view_id=>wwv_flow_imp.id(13883043254718585)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(15142535252750603)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15151895482754075)
,p_view_id=>wwv_flow_imp.id(13883043254718585)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(15142652471750604)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>191
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15152781353754082)
,p_view_id=>wwv_flow_imp.id(13883043254718585)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(15142784199750605)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>185
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13858704376632504)
,p_plug_name=>'Buttons'
,p_plug_display_sequence=>120
,p_plug_grid_row_css_classes=>'buttons-row'
,p_plug_grid_column_span=>10
,p_plug_display_column=>2
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13858973361632506)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(13858704376632504)
,p_button_name=>'Search'
,p_button_static_id=>'s'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>S</u> - Search'
,p_button_redirect_url=>'f?p=&APP_ID.:59:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13858841105632505)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(13858704376632504)
,p_button_name=>'Add'
,p_button_static_id=>'a'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>A</u> - Add'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'has_access(:APP_USER, 11, 103) = ''Y'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13859088001632507)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(13858704376632504)
,p_button_name=>'Update'
,p_button_static_id=>'u'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>U</u> - Update'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'has_access(:APP_USER, 11, 104) = ''Y'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13859117094632508)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(13858704376632504)
,p_button_name=>'Inquire'
,p_button_static_id=>'i'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>I</u> - Inquire'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'has_access(:APP_USER, 11, 105) = ''Y'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(58838864632496547)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(13858704376632504)
,p_button_name=>'DBA_Sort'
,p_button_static_id=>'d'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>D</u> - DBA Sort'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13859239889632509)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(13858704376632504)
,p_button_name=>'To_Exit'
,p_button_static_id=>'esc'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'-'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11487036955867046)
,p_name=>'P57_SEARCH_CUSTOMER_CODE'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11487126324867047)
,p_name=>'P57_SEARCH_LEGAL_NAME'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11487222511867048)
,p_name=>'P57_SEARCH_DBA'
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14307065075089741)
,p_name=>'P57_SELECTED_VAL'
,p_item_sequence=>50
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14307349186089744)
,p_name=>'P57_PREPARED_URL'
,p_item_sequence=>70
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48021759653143039)
,p_name=>'P57_SELECTED_VAL_PREV'
,p_item_sequence=>60
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48022734489143049)
,p_name=>'P57_ADD_POPUP'
,p_item_sequence=>80
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48022847411143050)
,p_name=>'P57_UPDATE_POPUP'
,p_item_sequence=>90
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58838738184496546)
,p_name=>'P57_DBA_SORT'
,p_item_sequence=>100
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14304595559089716)
,p_name=>'Reset Keys'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(13858973361632506)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14304633091089717)
,p_event_id=>wwv_flow_imp.id(14304595559089716)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(document).off(''keydown.p57keyevents'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14306011392089731)
,p_name=>'When Dialog Closed'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(13858973361632506)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14306122000089732)
,p_event_id=>wwv_flow_imp.id(14306011392089731)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P57_SEARCH_CUSTOMER_CODE'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P59_SEARCH_CUSTOMER_CODE'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14306235119089733)
,p_event_id=>wwv_flow_imp.id(14306011392089731)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P57_SEARCH_LEGAL_NAME'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P59_SEARCH_LEGAL_NAME'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14306378099089734)
,p_event_id=>wwv_flow_imp.id(14306011392089731)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P57_SEARCH_DBA'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P59_SEARCH_DBA'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65479464722001901)
,p_event_id=>wwv_flow_imp.id(14306011392089731)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P57_DBA_SORT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14306494459089735)
,p_event_id=>wwv_flow_imp.id(14306011392089731)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11486885313867044)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14306558870089736)
,p_event_id=>wwv_flow_imp.id(14306011392089731)
,p_event_result=>'TRUE'
,p_action_sequence=>60
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
 p_id=>wwv_flow_imp.id(14306629483089737)
,p_name=>'When Closed or Canceled'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(13858973361632506)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14306704018089738)
,p_event_id=>wwv_flow_imp.id(14306629483089737)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP57Keys();',
'setTimeout(() => {',
'    $( document ).ready(function() {',
'        $(".a-GV-cell").first().trigger("click");',
'    });',
'}, "500");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14306816741089739)
,p_name=>'Selection Change'
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(11486885313867044)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14306963476089740)
,p_event_id=>wwv_flow_imp.id(14306816741089739)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (this.data.selectedRecords.length > 0) {',
'    let itemNoSelected = this.data.selectedRecords[0][0];',
'    apex.item("P57_SELECTED_VAL").setValue(itemNoSelected);',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14307113053089742)
,p_name=>'Redirect to Update'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(13859088001632507)
,p_condition_element=>'P57_SELECTED_VAL'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14307278364089743)
,p_event_id=>wwv_flow_imp.id(14307113053089742)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P57_PREPARED_URL := apex_page.get_url(',
'       p_page   => 58,',
'       p_items  => ''P58_CUSTOMER_ID,P58_SELECTED_VAL_PREV,P58_SEARCH_CUSTOMER_CODE_PREV,P58_SEARCH_LEGAL_NAME_PREV,P58_SEARCH_DBA_PREV'',',
'       p_values => :P57_SELECTED_VAL||'',''||:P57_SELECTED_VAL||'',''||:P57_SEARCH_CUSTOMER_CODE||'',''||:P57_SEARCH_LEGAL_NAME||'',''||:P57_SEARCH_DBA',
'     );',
'END;'))
,p_attribute_02=>'P57_SELECTED_VAL,P57_SEARCH_CUSTOMER_CODE,P57_SEARCH_LEGAL_NAME,P57_SEARCH_DBA'
,p_attribute_03=>'P57_PREPARED_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14307487625089745)
,p_event_id=>wwv_flow_imp.id(14307113053089742)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P57_PREPARED_URL");',
'apex.navigation.redirect(url);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(17192365203817127)
,p_name=>'Redirect to Inquire'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(13859117094632508)
,p_condition_element=>'P57_SELECTED_VAL'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17192428536817128)
,p_event_id=>wwv_flow_imp.id(17192365203817127)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P57_PREPARED_URL := apex_page.get_url(',
'       p_page   => 58,',
'       p_items  => ''P58_CUSTOMER_ID,P58_INQUIRE_TOGGLE,P58_SELECTED_VAL_PREV,P58_SEARCH_CUSTOMER_CODE_PREV,P58_SEARCH_LEGAL_NAME_PREV,P58_SEARCH_DBA_PREV'',',
'       p_values => :P57_SELECTED_VAL || '','' || 1 || '','' || :P57_SELECTED_VAL||'',''||:P57_SEARCH_CUSTOMER_CODE||'',''||:P57_SEARCH_LEGAL_NAME||'',''||:P57_SEARCH_DBA',
'    );',
'END;'))
,p_attribute_02=>'P57_SELECTED_VAL,P57_SEARCH_CUSTOMER_CODE,P57_SEARCH_LEGAL_NAME,P57_SEARCH_DBA'
,p_attribute_03=>'P57_PREPARED_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17192540483817129)
,p_event_id=>wwv_flow_imp.id(17192365203817127)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P57_PREPARED_URL");',
'apex.navigation.redirect(url);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(48021879275143040)
,p_name=>'Go to Page 58 Add'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(13858841105632505)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48021957252143041)
,p_event_id=>wwv_flow_imp.id(48021879275143040)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P57_PREPARED_URL := apex_page.get_url(',
'       p_page   => 58,',
'       p_items  => ''P58_SELECTED_VAL_PREV,P58_SEARCH_CUSTOMER_CODE_PREV,P58_SEARCH_LEGAL_NAME_PREV,P58_SEARCH_DBA_PREV'',',
'       p_values => :P57_SELECTED_VAL||'',''||:P57_SEARCH_CUSTOMER_CODE||'',''||:P57_SEARCH_LEGAL_NAME||'',''||:P57_SEARCH_DBA',
'     );',
'END;'))
,p_attribute_02=>'P57_SELECTED_VAL,P57_SEARCH_CUSTOMER_CODE,P57_SEARCH_LEGAL_NAME,P57_SEARCH_DBA'
,p_attribute_03=>'P57_PREPARED_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48022060722143042)
,p_event_id=>wwv_flow_imp.id(48021879275143040)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P57_PREPARED_URL");',
'apex.navigation.redirect(url);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(48022112528143043)
,p_name=>'Open Search'
,p_event_sequence=>80
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'EXPRESSION'
,p_display_when_cond=>'(:P57_SEARCH_CUSTOMER_CODE IS NULL AND :P57_SEARCH_DBA IS NULL AND :P57_SEARCH_LEGAL_NAME IS NULL AND :P57_ADD_POPUP IS NULL)'
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48022221798143044)
,p_event_id=>wwv_flow_imp.id(48022112528143043)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("#s").trigger("click");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(48022307662143045)
,p_name=>'Click Selected Val'
,p_event_sequence=>90
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'EXPRESSION'
,p_display_when_cond=>'(:P57_SELECTED_VAL_PREV IS NOT NULL AND :P57_ADD_POPUP IS NULL AND :P57_UPDATE_POPUP IS NULL)'
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48022493740143046)
,p_event_id=>wwv_flow_imp.id(48022307662143045)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(() => {',
'    $( document ).ready(function() {',
'        $("#customerGrid_ig_grid_vc .a-GV-bdy .a-GV-w-scroll .a-GV-table tbody").children(".a-GV-row").each( function () {',
'            if( $(this).attr("data-id") == $v(''P57_SELECTED_VAL_PREV'') ){',
'                $(this).find(".a-GV-cell").first().trigger("click");',
'            }',
'        });',
'    });',
'}, "500");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(48530481581075701)
,p_name=>'Add Popup'
,p_event_sequence=>100
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P57_ADD_POPUP'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48530510434075702)
,p_event_id=>wwv_flow_imp.id(48530481581075701)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'showGPopup({',
'    icon: "fa fa-check-circle",',
'    message: "Customer Code " + $v(''P57_ADD_POPUP'') + " has been added!",',
'    width: "10rem",',
'    timeoutActive: true,',
'    timeout: 2000,',
'    top: "80%",',
'    closeCallback: () => {',
'        $("#customerGrid_ig_grid_vc .a-GV-bdy .a-GV-w-scroll .a-GV-table tbody").children(".a-GV-row").each( function () {',
'            if( $(this).find(".a-GV-cell").first().html().toUpperCase() == $v(''P57_ADD_POPUP'').toUpperCase() ){',
'                $(this).find(".a-GV-cell").first().trigger("click");',
'            }',
'        });',
'    }',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(48530733058075704)
,p_name=>'Update Popup'
,p_event_sequence=>110
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P57_UPDATE_POPUP'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48530807674075705)
,p_event_id=>wwv_flow_imp.id(48530733058075704)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'showGPopup({',
'    icon: "fa fa-check-circle",',
'    message: "Customer Code: " + $v(''P57_UPDATE_POPUP'') + " has been updated!",',
'    width: "10rem",',
'    timeoutActive: true,',
'    timeout: 2000,',
'    top: "80%",',
'    closeCallback: () => {',
'        $("#customerGrid_ig_grid_vc .a-GV-bdy .a-GV-w-scroll .a-GV-table tbody").children(".a-GV-row").each( function () {',
'            if( $(this).attr("data-id") == $v(''P57_SELECTED_VAL_PREV'') ){',
'                $(this).find(".a-GV-cell").first().trigger("click");',
'            }',
'        });',
'    }',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(58838982673496548)
,p_name=>'Sort DBA'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(58838864632496547)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58839051208496549)
,p_event_id=>wwv_flow_imp.id(58838982673496548)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P57_DBA_SORT'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'1'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58839107462496550)
,p_event_id=>wwv_flow_imp.id(58838982673496548)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11486885313867044)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65479593629001902)
,p_event_id=>wwv_flow_imp.id(58838982673496548)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(() => {',
'    $( document ).ready(function() {',
'        $(".a-GV-cell").first().trigger("click");',
'    });',
'}, "500");'))
);
wwv_flow_imp.component_end;
end;
/
