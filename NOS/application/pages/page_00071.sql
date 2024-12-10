prompt --application/pages/page_00071
begin
--   Manifest
--     PAGE: 00071
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
 p_id=>71
,p_name=>'Delivery Log Test (For Deletion)'
,p_alias=>'DELIVERY-LOG1'
,p_step_title=>'Delivery Log'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#js/cmn#MIN#.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p28KeyMap = {',
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
'        apex.navigation.redirect($(''#P28_EXIT_URL'').val());',
'    },',
'    s : (v) => {',
'        $("#s").trigger("click");',
'    },',
'    i : (v) => {',
'        $("#i").trigger("click");',
'    }',
'}',
'',
'function mapP28Keys() {',
'    $(document).off(''keydown.p28keyevents'');',
'    $(document).on(''keydown.p28keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p28KeyMap[key]) {',
'            ev.preventDefault();',
'            p28KeyMap[key]();',
'        }',
'    });',
'}',
'',
'document.getElementsByClassName(''time'')[0].addEventListener(''keyup'', function(e){',
'    this.value = this.value',
'    .replace(/[^\d]/g, '''')',
'    .replace(/^([\d]{4})\d+$/g, ''$1'')',
'    .replace(/\B(?=(\d{2})+(?!\d{1}))/g, ":");',
'',
'});'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTitle(''Delivery Log'');',
'mapP28Keys();'))
,p_css_file_urls=>'#APP_FILES#css/cmn#MIN#.css'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.buttons-row {',
'    position: absolute;',
'    width: 98vw;',
'    bottom: 1.75rem;',
'}',
'',
'#delivery-log .a-IG {',
'    height: calc(75vh + 2px) !important;',
'} ',
'',
'#delivery-log .a-IG-contentContainer {',
'    height: 75vh !important;',
'}',
'',
'#delivery-log .a-IG-gridView.a-GV {',
'    height: 75vh !important;',
'}',
'',
'#delivery-log .a-GV-bdy {',
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
'#delivery-log table,',
'#delivery-log tr,',
'#delivery-log td{',
'    font-size: 1.125rem;',
'    border: 0.0625rem solid black;',
'}',
'',
'#delivery-log th{',
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
'    background-color: #046BC8;',
'    color: white;',
'}',
'',
'.ui-dialog.inv-qby-w {',
'   left: 50% !important; ',
'}',
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
'#P28_INVOICE_NUMBER_LABEL{',
'    font-size:1.125rem;',
'    color:black;',
'}',
'',
'.ui-dialog.delivery-inquire{',
'    left: 50% !important;',
'}'))
,p_step_template=>wwv_flow_imp.id(5671392681337017)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(43575698074383161)
,p_plug_name=>'Delivery Log'
,p_region_name=>'delivery-log'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PRICING_TYPE_ID,',
'       PRICING_TYPE_CODE,',
'       PRICING_TYPE_DESCRIPTION,',
'       CREATE_USER,',
'       CREATE_DATE,',
'       UPDATE_DATE,',
'       UPDATE_USER,',
'       ''dummy'',',
'       ''AM''',
'  from NIM032'))
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(25232921972376531)
,p_name=>'DUMMY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'''DUMMY'''
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Time'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_item_css_classes=>'time'
,p_is_required=>false
,p_max_length=>5
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true,',
'        width: 120',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(25233268417376534)
,p_name=>'AM/PM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'''AM'''
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'AM/PM'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC:AM;AM,PM;PM'
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true,',
'        width: 50',
'',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(46461952950781318)
,p_name=>'CREATE_USER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATE_USER'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Create User'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>10
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
 p_id=>wwv_flow_imp.id(46462035681781319)
,p_name=>'CREATE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATE_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Create Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
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
 p_id=>wwv_flow_imp.id(46462126901781320)
,p_name=>'UPDATE_USER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATE_USER'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Update User'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>10
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
 p_id=>wwv_flow_imp.id(46462272375781321)
,p_name=>'UPDATE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATE_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Update Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
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
 p_id=>wwv_flow_imp.id(47580939524086951)
,p_name=>'PRICING_TYPE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRICING_TYPE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>70
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(47581051251086952)
,p_name=>'PRICING_TYPE_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRICING_TYPE_CODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Pricing Type Code'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>5
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
 p_id=>wwv_flow_imp.id(47581165440086953)
,p_name=>'PRICING_TYPE_DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRICING_TYPE_DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Pricing Type Description'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>30
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(43575806967383162)
,p_internal_uid=>43575806967383162
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
 p_id=>wwv_flow_imp.id(46467545993782102)
,p_interactive_grid_id=>wwv_flow_imp.id(43575806967383162)
,p_static_id=>'190036'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(46467803930782102)
,p_report_id=>wwv_flow_imp.id(46467545993782102)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(28184850799061821)
,p_view_id=>wwv_flow_imp.id(46467803930782102)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(25232921972376531)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(28868838800893623)
,p_view_id=>wwv_flow_imp.id(46467803930782102)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(25233268417376534)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(46472669262782154)
,p_view_id=>wwv_flow_imp.id(46467803930782102)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(46461952950781318)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(46473563876782163)
,p_view_id=>wwv_flow_imp.id(46467803930782102)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(46462035681781319)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(46474498136782171)
,p_view_id=>wwv_flow_imp.id(46467803930782102)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(46462126901781320)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(46475366550782181)
,p_view_id=>wwv_flow_imp.id(46467803930782102)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(46462272375781321)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(48540431707971495)
,p_view_id=>wwv_flow_imp.id(46467803930782102)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(47580939524086951)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(48541380901971509)
,p_view_id=>wwv_flow_imp.id(46467803930782102)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(47581051251086952)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(48542308765971518)
,p_view_id=>wwv_flow_imp.id(46467803930782102)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(47581165440086953)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(46462421315781323)
,p_plug_name=>'Page Controls'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>20
,p_plug_grid_row_css_classes=>'buttons-row'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(46464115774781339)
,p_plug_name=>'Search/Add Modal'
,p_region_name=>'inline-dialog'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400:t-Form--stretchInputs:t-Form--leftLabels'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_04'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27470627818613121)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(46462421315781323)
,p_button_name=>'SEARCH'
,p_button_static_id=>'s'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>S</u> - Search'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27469433342613118)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(46462421315781323)
,p_button_name=>'ADD'
,p_button_static_id=>'a'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>A</u> - Add'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27469898645613120)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(46462421315781323)
,p_button_name=>'UPDATE'
,p_button_static_id=>'u'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>U</u>  - Update'
,p_button_redirect_url=>'f?p=&APP_ID.:63:&SESSION.::&DEBUG.:63:P63_MODE:UPDATE'
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27470246831613120)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(46462421315781323)
,p_button_name=>'INQUIRE'
,p_button_static_id=>'i'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>I</u> - Inquire'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27471030645613121)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(46462421315781323)
,p_button_name=>'PRINT'
,p_button_static_id=>'p'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>P</u> - Print Delivery Info'
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46468649801781435)
,p_name=>'P71_INVOICE_NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(46464115774781339)
,p_prompt=>'Search By Invoice Number:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'fs-1125 text-black'
,p_grid_label_column_span=>5
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:margin-top-sm:margin-bottom-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46471542772781458)
,p_name=>'P71_EXIT_URL'
,p_item_sequence=>30
,p_source=>'apex_page.get_url(p_page => 300)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47588958722087075)
,p_name=>'P71_SELECTED_ITEM'
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47590146258087087)
,p_name=>'P71_PREPARED_URL'
,p_item_sequence=>50
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48721535804536227)
,p_name=>'P71_MODAL_MODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(46464115774781339)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27479571999613150)
,p_name=>'On S click'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27470627818613121)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27481005443613150)
,p_event_id=>wwv_flow_imp.id(27479571999613150)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).off(''keydown.p71keyevents'');',
'$(''#P71_INVOICE_NUMBER_LABEL'').parent().removeClass(''col-4'');',
'$(''#P71_INVOICE_NUMBER_LABEL'').parent().addClass(''col-5'');',
'$(''#P71_INVOICE_NUMBER_LABEL'').html(''Search by Invoice Number:'');',
'$(''#inline-dialog'').parent().find(''.ui-dialog-titlebar'').find(''.ui-dialog-title'').html(''Search'');',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27480052642613150)
,p_event_id=>wwv_flow_imp.id(27479571999613150)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P71_MODAL_MODE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'SEARCH'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27480545667613150)
,p_event_id=>wwv_flow_imp.id(27479571999613150)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(46464115774781339)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27473450698613143)
,p_name=>'On Search/Add Close'
,p_event_sequence=>20
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'#inline-dialog'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'dialogclose'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27473991552613143)
,p_event_id=>wwv_flow_imp.id(27473450698613143)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P71_INVOICE_NUMBER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27474482029613145)
,p_event_id=>wwv_flow_imp.id(27473450698613143)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mapP71Keys();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27472546321613140)
,p_name=>'Search/Add Modal close event'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P71_INVOICE_NUMBER'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.key?.toLowerCase() === ''escape'';'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keyup'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27473062584613143)
,p_event_id=>wwv_flow_imp.id(27472546321613140)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(46464115774781339)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27477687679613148)
,p_name=>'On A click'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27469433342613118)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27478672594613148)
,p_event_id=>wwv_flow_imp.id(27477687679613148)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).off(''keydown.p71keyevents'');',
'$(''#P71_INVOICE_NUMBER_LABEL'').parent().removeClass(''col-5'');',
'$(''#P71_INVOICE_NUMBER_LABEL'').parent().addClass(''col-4'');',
'$(''#P71_INVOICE_NUMBER_LABEL'').html(''Invoice Number:'');',
'$(''#inline-dialog'').parent().find(''.ui-dialog-titlebar'').find(''.ui-dialog-title'').html(''Add Delivery'');',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27478186415613148)
,p_event_id=>wwv_flow_imp.id(27477687679613148)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P71_MODAL_MODE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'ADD'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27479163964613148)
,p_event_id=>wwv_flow_imp.id(27477687679613148)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(46464115774781339)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27481451113613151)
,p_name=>'New'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27470246831613120)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27481969790613151)
,p_event_id=>wwv_flow_imp.id(27481451113613151)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
':P71_PREPARED_URL := apex_page.get_url(',
'    p_page => 42,',
'    p_items => ''P42_INVOICE_ID'',',
'    p_values => :P71_SELECTED_ITEM',
');',
'END;'))
,p_attribute_02=>'P71_SELECTED_ITEM'
,p_attribute_03=>'P71_PREPARED_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27482945916613153)
,p_event_id=>wwv_flow_imp.id(27481451113613151)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).off(''keydown.p71keyevents'');',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27482404958613151)
,p_event_id=>wwv_flow_imp.id(27481451113613151)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect($v(''P71_PREPARED_URL''));'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27475746336613145)
,p_name=>'On press Enter'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P71_INVOICE_NUMBER'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.key?.toLowerCase() === ''enter'';'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27476208861613146)
,p_event_id=>wwv_flow_imp.id(27475746336613145)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
':P71_PREPARED_URL := apex_page.get_url(',
'    p_page => ''63'',',
'    p_clear_cache => ''63'',',
'    p_items => ''P63_MODE'',',
'    p_values => ''ADD''',
');',
'END;'))
,p_attribute_03=>'P71_PREPARED_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P71_MODAL_MODE'
,p_client_condition_expression=>'ADD'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27477267201613146)
,p_event_id=>wwv_flow_imp.id(27475746336613145)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(46464115774781339)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P71_MODAL_MODE'
,p_client_condition_expression=>'ADD'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27476768320613146)
,p_event_id=>wwv_flow_imp.id(27475746336613145)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect($v(''P71_PREPARED_URL''));'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P71_MODAL_MODE'
,p_client_condition_expression=>'ADD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27474851270613145)
,p_name=>'On Inquire close'
,p_event_sequence=>70
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27475315902613145)
,p_event_id=>wwv_flow_imp.id(27474851270613145)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mapP71Keys();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25232206678376524)
,p_name=>'On Tab press when empty'
,p_event_sequence=>80
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(43575698074383161)
,p_triggering_element=>'PRICING_TYPE_DESCRIPTION'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.key?.toLowerCase() === ''tab'';'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25232369181376525)
,p_event_id=>wwv_flow_imp.id(25232206678376524)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'this.browserEvent.preventDefault();'
,p_client_condition_type=>'NULL'
,p_client_condition_elem_type=>'COLUMN'
,p_client_condition_element=>'PRICING_TYPE_DESCRIPTION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25232443364376526)
,p_name=>'New_1'
,p_event_sequence=>90
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(43575698074383161)
,p_triggering_element=>'CREATE_USER'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusin'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25232544674376527)
,p_event_id=>wwv_flow_imp.id(25232443364376526)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(document).off(''keydown.p28keyevents'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25232684929376528)
,p_name=>'New_2'
,p_event_sequence=>100
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(43575698074383161)
,p_triggering_element=>'CREATE_USER'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25232762226376529)
,p_event_id=>wwv_flow_imp.id(25232684929376528)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mapP28Keys();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30129978095678926)
,p_name=>'New_3'
,p_event_sequence=>110
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(43575698074383161)
,p_triggering_element=>'DUMMY'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30130071814678927)
,p_event_id=>wwv_flow_imp.id(30129978095678926)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var time = $(''#C25232921972376531'').val();',
'console.log(time.substr(0,2));',
'if(time.length==5){',
'    console.log(time.substr(0,2));',
'    if(time.substr(0,2)>=8&&time.substr(0,2)<=11){',
'        $(''#C25232921972376531'').val($(''#C25232921972376531'').val() + '' AM''); ',
'    }',
'    else{',
'        $(''#C25232921972376531'').val($(''#C25232921972376531'').val() + '' PM'');',
'    }',
'}',
'else if(time.length==4){',
'    console.log(time.substr(0,1));',
'    if(time.substr(0,1)>=8&&time.substr(0,1)<=11){',
'        $(''#C25232921972376531'').val($(''#C25232921972376531'').val() + '' AM'');',
'    }',
'    else{',
'        $(''#C25232921972376531'').val($(''#C25232921972376531'').val() + '' PM'');',
'    }',
'}'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(25232103240376523)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(43575698074383161)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Delivery Log - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>25232103240376523
);
wwv_flow_imp.component_end;
end;
/
