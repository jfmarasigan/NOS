prompt --application/pages/page_00086
begin
--   Manifest
--     PAGE: 00086
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
 p_id=>86
,p_name=>'Wholesale Quotation'
,p_alias=>'WHOLESALE-QUOTATION'
,p_step_title=>'Wholesale Quotation'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#js/cmn#MIN#.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p86KeyMap = {',
'    s : (v) => {',
'        $("#s").click();',
'    },',
'    c : (v) => {',
'        $("#c").click();',
'    },',
'    u : (v) => {',
'        $("#u").click();',
'    },',
'    i : (v) => {',
'        $("#i").click();',
'    },',
'    p : (v) => {',
'        $("#p").click();',
'    },',
'    home: (v) => {',
'        $("#to-top").trigger("click");',
'    },',
'    end: (v) => {',
'        $("#to-bottom").trigger("click");',
'    },',
'    escape : (v) => {',
'        $("#esc").trigger("click");',
'    }',
'',
'',
'}',
'',
'function mapP86Keys() {',
'    $(document).off(''keydown.p86keyevents'');',
'    $(document).on(''keydown.p86keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p86KeyMap[key]) {',
'            ev.preventDefault();',
'            p86KeyMap[key]();',
'        }',
'    });',
'}',
'',
'function customEvent(event, data){',
'    mapP86Keys();',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP86Keys();',
'setTitle("Wholesale Quotation")'))
,p_css_file_urls=>'#APP_FILES#wholesale_invoice#MIN#.css'
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
'#wholesale-quotation table, #wholesale-quotation tr, #wholesale-quotation td, #wholesale-quotation th {',
'     font-size: 1.125rem;',
'}',
'',
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
'    background-color: #046BC8;',
'    color: white;',
'}',
'',
'.ui-dialog-title{',
'    font-size: 1.5rem;',
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
'',
'#wholesale-quotation .a-GV-bdy {',
'    height: calc(75vh - 2.5625rem) !important;',
'}'))
,p_step_template=>wwv_flow_imp.id(5671392681337017)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64241205390463669)
,p_plug_name=>'Invoice Table'
,p_region_name=>'wholesale-quotation'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    SELECT ROWNUM AS "Primary Key",',
'           npt001.invoice_id AS "Invoice Number",',
'           npt006.quotation_id AS "Quotation Number", ',
'           npt009.legal_name AS "Legal Name",',
'           npt009.dba AS "DBA", ',
'           npt001.total_amount AS "Total Amount", ',
'           npt001.date_created AS "Invoice Date",',
'           CASE ',
'            WHEN npt012.invoice_id IS NOT NULL THEN ''Y''',
'                ELSE ''N'' ',
'           END AS "For Delivery"',
'      FROM NPT001 npt001',
'    JOIN ',
'        NPT006 npt006 ON npt001.customer_id = npt006.customer_id',
'    JOIN ',
'        NPT006 npt006 ON npt001.tax_id = npt006.tax_id',
'    JOIN',
'        NPT006 npt006 ON npt001.quotation_id = npt006.quotation_id',
'    JOIN',
'        NPT009 npt009 ON npt006.customer_id = npt009.customer_id',
'    JOIN',
'        NPT012 npt012 ON npt001.invoice_id = npt012.invoice_id'))
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
 p_id=>wwv_flow_imp.id(64241399803463671)
,p_name=>'Primary Key'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'Primary Key'
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
 p_id=>wwv_flow_imp.id(64241551927463672)
,p_name=>'Invoice Number'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'Invoice Number'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Invoice Number'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(64241614375463673)
,p_name=>'Quotation Number'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'Quotation Number'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Quotation Number'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(64241668386463674)
,p_name=>'Legal Name'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'Legal Name'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Legal Name'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>true
,p_max_length=>400
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(64241798073463675)
,p_name=>'DBA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DBA'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'DBA'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>true
,p_max_length=>400
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(64241882083463676)
,p_name=>'Total Amount'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'Total Amount'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Total Amount'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(64241980756463677)
,p_name=>'Invoice Date'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'Invoice Date'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Invoice Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
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
 p_id=>wwv_flow_imp.id(64242118682463678)
,p_name=>'For Delivery'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'For Delivery'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'For Delivery'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>1
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
 p_id=>wwv_flow_imp.id(64241346058463670)
,p_internal_uid=>64241346058463670
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
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(64306708805622117)
,p_interactive_grid_id=>wwv_flow_imp.id(64241346058463670)
,p_static_id=>'308707'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(64306887467622117)
,p_report_id=>wwv_flow_imp.id(64306708805622117)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(64307370304622122)
,p_view_id=>wwv_flow_imp.id(64306887467622117)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(64241399803463671)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(64308319670622132)
,p_view_id=>wwv_flow_imp.id(64306887467622117)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(64241551927463672)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(64309204175622139)
,p_view_id=>wwv_flow_imp.id(64306887467622117)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(64241614375463673)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(64309987896622147)
,p_view_id=>wwv_flow_imp.id(64306887467622117)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(64241668386463674)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(64310933192622155)
,p_view_id=>wwv_flow_imp.id(64306887467622117)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(64241798073463675)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(64311822060622163)
,p_view_id=>wwv_flow_imp.id(64306887467622117)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(64241882083463676)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(64312693580622171)
,p_view_id=>wwv_flow_imp.id(64306887467622117)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(64241980756463677)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(64313665814622180)
,p_view_id=>wwv_flow_imp.id(64306887467622117)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(64242118682463678)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64242195547463679)
,p_plug_name=>'Buttons'
,p_region_name=>'button-region'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>40
,p_plug_grid_row_css_classes=>'buttons-row'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33437859096655462)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(64242195547463679)
,p_button_name=>'Search'
,p_button_static_id=>'s'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>S</u> - Search'
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'Y'
,p_grid_column=>1
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33436612144655460)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(64242195547463679)
,p_button_name=>'Create'
,p_button_static_id=>'c'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>C</u> - Create Quotation'
,p_button_redirect_url=>'f?p=&APP_ID.:114:&SESSION.::&DEBUG.:114::'
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_column=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33260684834129920)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(64242195547463679)
,p_button_name=>'Update'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>U</u> - Update Quotation'
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_column=>4
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33437052981655462)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(64242195547463679)
,p_button_name=>'Inquire'
,p_button_static_id=>'i'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>I</u> - Inquire'
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_column=>6
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33437455519655462)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(64242195547463679)
,p_button_name=>'Print'
,p_button_static_id=>'p'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>P</u> - Print Quote'
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_column=>11
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33261252358129926)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(64242195547463679)
,p_button_name=>'Escape'
,p_button_static_id=>'esc'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Escape'
,p_button_redirect_url=>'f?p=&APP_ID.:305:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'hiddenbtn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(34402841980626223)
,p_name=>'Disable Keymap'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(33437859096655462)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34402980988626224)
,p_event_id=>wwv_flow_imp.id(34402841980626223)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(document).off(''keydown.p86keyevents'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(34403023385626225)
,p_name=>'Enable Key Upon Closing'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(33437859096655462)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34403160205626226)
,p_event_id=>wwv_flow_imp.id(34403023385626225)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP86Keys();',
'setTimeout(() => {',
'    $( document ).ready(function() {',
'        $(".a-GV-cell").first().trigger("click");',
'    });',
'}, "500");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(34404063434626235)
,p_name=>'Disable Key'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(33436612144655460)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34404166516626236)
,p_event_id=>wwv_flow_imp.id(34404063434626235)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(document).off(''keydown.p86keyevents'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(34404239198626237)
,p_name=>'Enable Key'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(33436612144655460)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34404392435626238)
,p_event_id=>wwv_flow_imp.id(34404239198626237)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP86Keys();',
'setTimeout(() => {',
'    $( document ).ready(function() {',
'        $(".a-GV-cell").first().trigger("click");',
'    });',
'}, "500");'))
);
wwv_flow_imp.component_end;
end;
/
