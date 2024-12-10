prompt --application/pages/page_00082
begin
--   Manifest
--     PAGE: 00082
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
 p_id=>82
,p_name=>'Customer Discount Inquiry'
,p_alias=>'CUSTOMER-DISCOUNT-INQUIRY'
,p_step_title=>'Customer Discount Inquiry'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#js/cmn#MIN#.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p82KeyMap = {',
'    escape : (v) => {',
'        $("#esc").trigger("click");',
'    }',
'}',
'',
'function mapP82Keys() {',
'    $(document).off(''keydown.p58keyevents'');',
'    $(document).on(''keydown.p58keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p82KeyMap[key]) {',
'            ev.preventDefault();',
'            p82KeyMap[key]();',
'        }',
'    });',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP82Keys();',
'setTitle("Customer Discount");'))
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
'#esc{',
'    display: none;',
'}',
'',
'.header{',
'    margin: 0;',
'    color: white;',
'    font-size: 1.5rem;',
'}',
'',
'.t-Form-labelContainer:has(> label) {',
'    text-align: start;    ',
'}',
'',
'#customer-details label, #customer-details .display_only{',
'    color: white;',
'    font-size: 1.125rem;',
'}',
'',
'#discounts table,',
'#discounts tr,',
'#discounts td,',
'#discounts th {',
'    font-size: 1.125rem;',
'}',
'',
'#discounts_ig{',
'    border: 0.0625rem solid rgb(30, 58, 138);',
'}',
'',
'.a-GV-table .a-GV-cell, th.a-GV-header {',
'    border-color: rgb(30, 58, 138);',
'}',
'',
'.a-GV-hdr .a-GV-table {',
'    width: 100% !important;',
'}'))
,p_step_template=>wwv_flow_imp.id(5671392681337017)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41303362984763414)
,p_plug_name=>'Customer Details'
,p_region_name=>'customer-details'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>10
,p_plug_display_column=>2
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    CUSTOMER_ID,',
'    LEGAL_NAME,',
'    DBA,',
'    CONTACT_PERSON,',
'    MAIN_ACCOUNT_CODE,',
'    CASE WHEN STANDARD_DISCOUNT_VALUE IS NOT NULL',
'        THEN STANDARD_DISCOUNT_VALUE * 100 || ''%''',
'        ELSE ''''',
'    END AS VALUE',
'FROM NPT009'))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41304191091763422)
,p_plug_name=>'Standard Discount Header'
,p_parent_plug_id=>wwv_flow_imp.id(41303362984763414)
,p_plug_display_sequence=>70
,p_location=>null
,p_plug_source=>'<h3 class="header">Standard Discount</h3>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41304390393763424)
,p_plug_name=>'Special Discount Header'
,p_plug_display_sequence=>30
,p_plug_display_column=>2
,p_location=>null
,p_plug_source=>'<h3 class="header">Special/Seasonal Discount</h3>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41304414200763425)
,p_plug_name=>'Discounts'
,p_region_name=>'discounts'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>40
,p_plug_grid_column_span=>10
,p_plug_display_column=>2
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    a.DISCOUNT_ID,',
'    a.DISCOUNT_CODE,',
'    a.DISCOUNT_DESC,',
'    a.DATE_FROM || '' - '' || a.DATE_TO AS FROM_TO_DATE',
'FROM NPT008 a, NPT032 b',
'WHERE a.DISCOUNT_ID = b.DISCOUNT_ID AND b.CUSTOMER_ID = :P82_CUSTOMER_ID AND b.ACTIVE = ''y'''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P82_CUSTOMER_ID'
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
 p_id=>wwv_flow_imp.id(41304631727763427)
,p_name=>'DISCOUNT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISCOUNT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(41304763231763428)
,p_name=>'DISCOUNT_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISCOUNT_CODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Discount Code'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>32
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
'        noHeaderActivate: true',
'    };',
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
 p_id=>wwv_flow_imp.id(41304803761763429)
,p_name=>'DISCOUNT_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISCOUNT_DESC'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Discount Desc'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>200
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
'        noHeaderActivate: true',
'    };',
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
 p_id=>wwv_flow_imp.id(41304989626763430)
,p_name=>'FROM_TO_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FROM_TO_DATE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'From To Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>23
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
'        noHeaderActivate: true',
'    };',
'    return options;',
'}'))
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(41304596879763426)
,p_internal_uid=>41304596879763426
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
,p_fixed_header_max_height=>150
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
 p_id=>wwv_flow_imp.id(41931758918304182)
,p_interactive_grid_id=>wwv_flow_imp.id(41304596879763426)
,p_static_id=>'419318'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(41931956515304182)
,p_report_id=>wwv_flow_imp.id(41931758918304182)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(41932405795304187)
,p_view_id=>wwv_flow_imp.id(41931956515304182)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(41304631727763427)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(41933397344304195)
,p_view_id=>wwv_flow_imp.id(41931956515304182)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(41304763231763428)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(41934223930304203)
,p_view_id=>wwv_flow_imp.id(41931956515304182)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(41304803761763429)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(41935166707304210)
,p_view_id=>wwv_flow_imp.id(41931956515304182)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(41304989626763430)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(41305033186763431)
,p_button_sequence=>50
,p_button_name=>'Escape'
,p_button_static_id=>'esc'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Escape'
,p_button_redirect_url=>'f?p=&APP_ID.:58:&SESSION.::&DEBUG.::P58_CUSTOMER_ID,P58_INQUIRE_TOGGLE:&P82_CUSTOMER_ID.,&P82_INQUIRE_TOGGLE.'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41303528867763416)
,p_name=>'P82_CUSTOMER_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(41303362984763414)
,p_item_source_plug_id=>wwv_flow_imp.id(41303362984763414)
,p_source=>'CUSTOMER_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41303668774763417)
,p_name=>'P82_LEGAL_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(41303362984763414)
,p_item_source_plug_id=>wwv_flow_imp.id(41303362984763414)
,p_prompt=>'Legal Name:'
,p_source=>'LEGAL_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41303766263763418)
,p_name=>'P82_DBA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(41303362984763414)
,p_item_source_plug_id=>wwv_flow_imp.id(41303362984763414)
,p_prompt=>'DBA:'
,p_source=>'DBA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41303898112763419)
,p_name=>'P82_CONTACT_PERSON'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(41303362984763414)
,p_item_source_plug_id=>wwv_flow_imp.id(41303362984763414)
,p_prompt=>'Contact Person:'
,p_source=>'CONTACT_PERSON'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41303965522763420)
,p_name=>'P82_MAIN_ACCOUNT_CODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(41303362984763414)
,p_item_source_plug_id=>wwv_flow_imp.id(41303362984763414)
,p_prompt=>'Main Account Code:'
,p_source=>'MAIN_ACCOUNT_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41304096840763421)
,p_name=>'P82_VALUE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(41303362984763414)
,p_item_source_plug_id=>wwv_flow_imp.id(41303362984763414)
,p_prompt=>'Value:'
,p_source=>'VALUE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41304233520763423)
,p_name=>'P82_CATEGORY'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(41303362984763414)
,p_prompt=>'Category:'
,p_source=>'Class - "R"'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41305341408763434)
,p_name=>'P82_INQUIRE_TOGGLE'
,p_item_sequence=>60
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(41303470323763415)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(41303362984763414)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Customer Discount Inquiry'
,p_internal_uid=>41303470323763415
);
wwv_flow_imp.component_end;
end;
/
