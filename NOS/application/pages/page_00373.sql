prompt --application/pages/page_00373
begin
--   Manifest
--     PAGE: 00373
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
 p_id=>373
,p_name=>'Reservation Update'
,p_alias=>'RESERVATION-UPDATE'
,p_step_title=>'Reservation Update'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p6KeyMap = {',
'    f2 : (v) => {',
'        $("#f2").trigger("click");',
'    },',
'    f3 : (v) => {',
'        $("#f3").trigger("click");',
'    },',
'    f4 : (v) => {',
'        $("#f4").trigger("click");',
'    },',
'    f5 : (v) => {',
'        $("#f5").trigger("click");',
'    },',
'    f8 : (v) => {',
'        $("#f8").trigger("click");',
'    },',
'    escape : (v) => {',
'        $("#exit").trigger("click");',
'    },',
'}',
'',
'function mapP6Keys() {',
'    $(document).off(''keydown.p6keyevents'');',
'    $(document).on(''keydown.p6keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p6KeyMap[key]) {',
'            ev.preventDefault();',
'            p6KeyMap[key]();',
'        }',
'    });',
'}',
'',
'function customEvent(event, data){',
'    mapP6Keys();',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP6Keys();',
'setTitle("Reservation Update")',
'// $("#s").trigger("click");'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Header .t-Header-branding {',
'    background-color: white !important;',
'    color: rgb(30, 58, 138) !important;',
'}',
'',
'.t-Form-labelContainer, .t-Form-inputContainer {',
'    padding-block-end: 0;',
'    padding-block-start: 0;',
'}',
'',
'/* add margin to interactive grid table start */',
'.t-Body-contentInner {',
'    padding-inline-end: var(--ut-body-content-padding-x, 2.5rem);',
'    padding-inline-start: var(--ut-body-content-padding-x, 2.5rem);',
'}',
'/* end */',
'',
'body {',
'    background-color: rgb(30, 58, 138);',
'}',
'',
'/* style returned values */',
'.apex-item-display-only {',
'    font-size: 1.125rem;',
'    font-weight: 400;',
'    color: white;',
'}',
'',
'#table > table, tr, th {',
'    font-size: 1.125rem;',
'}',
'',
'#table > td {',
'    font-size: 1.125rem;',
'}',
'',
'.btns {',
'    font-size: 1.125rem;',
'    color: white;',
'}',
'',
'.text-left {',
'    text-align: left;',
'}',
'',
'.margin-right {',
'    margin-right: 3rem;',
'}',
'',
'.mt-3 {',
'    margin-top: 3rem;',
'}',
'',
'.mt-2 {',
'    margin-top: 2rem;',
'}',
'',
'.mt-1 {',
'    margin-top: 1rem;',
'}',
'',
'.ms-1 {',
'    margin-left: .5rem;',
'}',
'',
'.ml-05 {',
'    margin-left: 0.5rem;',
'}',
'',
'.ml-2 {',
'    margin-left: 2rem;',
'}',
'',
'.ml-3 {',
'    margin-left: 3rem;',
'}',
'',
'.content-block {',
'    font-size: 1.25rem;',
'    display: flex;',
'    justify-content: space-between;',
'    font-weight: 700;',
'}',
'',
'.hide {',
'    display: none;',
'}',
'',
'.a-GV-header a, th.a-GV-header {',
'    background-color: #046BC8;',
'    color: white;',
'    pointer-events: none;',
'}',
'',
'.a-IG,',
'.a-GV-table .a-GV-cell, th.a-GV-header{',
'    border-color: 	black !important;',
'}',
'',
'/* css for modal 311 start */',
'.ui-dialog-titlebar {',
'    display: none !important;',
'}',
'',
'.ui-dialog.pr-li {',
'   left: 80% !important;',
'}',
'',
'.ui-dialog.inv-bby-w {',
'    left: 78% !important;',
'}',
'',
'.ui-dialog.ship-his {',
'    left: 50% !important;',
'}',
'',
'.ui-dialog.pur-order,',
'.ui-dialog.inc-ship {',
'    left: 45% !important;',
'}',
'',
'.ui-dialog.res {',
'    left: 32% !important;',
'}',
'',
'.ui-widget-overlay.ui-front {',
'    background-color: transparent !important;',
'    opacity: 0 !important;',
'}',
'/* modal 311 end */',
'',
'/* modify position of inquire modal 314 sstart */',
'.inquire-dialog {',
'    left: 53% !important;',
'}',
'/* modal 314 end */',
'',
'/* View height dependent table and buttons - START */',
'.buttons-row {',
'    position: absolute;',
'    width: 96vw;',
'    bottom: 1rem;',
'}',
'',
'#table .a-IG {',
'    height: calc(60vh + 2px) !important;',
'} ',
'',
'#table .a-IG-contentContainer {',
'    height: 60vh !important;',
'}',
'',
'#table .a-IG-gridView.a-GV {',
'    height: 60vh !important;',
'}',
'',
'#table .a-GV-bdy {',
'    height: calc(60vh - 2.5625rem) !important;',
'}',
'',
'/* View height dependent table and buttons - END */',
'',
'',
'',
'#table .a-GV-table {',
'    width: 100% !important;',
'}',
'',
'.t-Form-labelContainer:has(#P373_QOH_LABEL),',
'.t-Form-labelContainer:has(#P373_LOC_1_LABEL),',
'.t-Form-labelContainer:has(#P373_LOC_2_LABEL),',
'.t-Form-labelContainer:has(#P373_LOC_3_LABEL),',
'.t-Form-labelContainer:has(#P373_SUB_TOTAL_LABEL),',
'.t-Form-labelContainer:has(#P373_TOTAL_DISCOUNT_LABEL),',
'.t-Form-labelContainer:has(#P373_TOTAL_AMOUNT_LABEL) {',
'    text-align: left;',
'    padding-left: 1rem;',
'}',
'',
'.col-2:has(#P373_LOC_1_LABEL),',
'.col-2:has(#P373_LOC_2_LABEL),',
'.col-2:has(#P373_LOC_3_LABEL) {',
'    max-width: 5.5rem;',
'}',
'',
'.t-Form-inputContainer:has(#P373_LOC_1),',
'.t-Form-inputContainer:has(#P373_LOC_2),',
'.t-Form-inputContainer:has(#P373_LOC_3) {',
'    text-align: center;',
'    margin: 0 auto;',
'}',
'',
'#P373_CUSTOMER_CONTAINER > .t-Form-labelContainer,',
'#P373_CONTACT_PERSON_CONTAINER > .t-Form-labelContainer {',
'    max-width: 14%;',
'}',
'',
'#P373_EMAIL_CONTAINER > .t-Form-labelContainer {',
'    max-width: 10%;',
'}',
'',
'#P373_TEL_NUMBER_CONTAINER > .t-Form-inputContainer,',
'#P373_FAX_NUMBER_CONTAINER > .t-Form-inputContainer {',
'    padding-left: 2.4rem;',
'}'))
,p_step_template=>wwv_flow_imp.id(5671392681337017)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(108306066235893894)
,p_plug_name=>'Search Input'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--hiddenOverflow:t-Form--leftLabels:margin-top-sm:margin-left-sm'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>50
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(154642069119888709)
,p_plug_name=>'Reservation Creation List'
,p_title=>'Reservation Creation List'
,p_region_name=>'table'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>60
,p_plug_grid_column_span=>12
,p_plug_display_column=>1
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    ROWNUM AS "Primary Key",',
'    NULL AS "ITEM_NO",',
'    NULL AS "CO",',
'    NULL AS "ITEM_DESCRIPTION",',
'    NULL AS "QTY",',
'    NULL AS "REG_PRICE",',
'    NULL AS "UOM",',
'    NULL AS "DISC",',
'    NULL AS "DT",',
'    NULL AS "NET_PRICE",',
'    NULL AS "EXTENDED_PRICE"',
'FROM',
'    DUAL'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P373_CUSTOMER,P373_CONTACT_PERSON,P373_TEL_NUMBER'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Gift Certificate List'
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
 p_id=>wwv_flow_imp.id(78716580463423062)
,p_name=>'ITEM_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEM_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Item No'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
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
 p_id=>wwv_flow_imp.id(78716609867423063)
,p_name=>'CO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Co'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
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
 p_id=>wwv_flow_imp.id(78716727843423064)
,p_name=>'ITEM_DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEM_DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Item Description'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
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
 p_id=>wwv_flow_imp.id(78716803330423065)
,p_name=>'QTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QTY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Qty'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
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
 p_id=>wwv_flow_imp.id(78716971625423066)
,p_name=>'REG_PRICE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REG_PRICE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Reg Price'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
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
 p_id=>wwv_flow_imp.id(78716984416423067)
,p_name=>'UOM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UOM'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Uom'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
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
 p_id=>wwv_flow_imp.id(78717099492423068)
,p_name=>'DISC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Disc %'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
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
 p_id=>wwv_flow_imp.id(78717247161423069)
,p_name=>'DT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Dt'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
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
 p_id=>wwv_flow_imp.id(78717345104423070)
,p_name=>'NET_PRICE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NET_PRICE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Net Price'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
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
 p_id=>wwv_flow_imp.id(78717429042423071)
,p_name=>'EXTENDED_PRICE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXTENDED_PRICE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Extended Price'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
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
 p_id=>wwv_flow_imp.id(112991144724278911)
,p_name=>'Primary Key'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'Primary Key'
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(154837705270735972)
,p_internal_uid=>154837705270735972
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
,p_fixed_header_max_height=>300
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
 p_id=>wwv_flow_imp.id(154901133635219056)
,p_interactive_grid_id=>wwv_flow_imp.id(154837705270735972)
,p_static_id=>'186900'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(154901276141219057)
,p_report_id=>wwv_flow_imp.id(154901133635219056)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(80543617710425410)
,p_view_id=>wwv_flow_imp.id(154901276141219057)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(78716580463423062)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(80544502205425422)
,p_view_id=>wwv_flow_imp.id(154901276141219057)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(78716609867423063)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(80545427657425432)
,p_view_id=>wwv_flow_imp.id(154901276141219057)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(78716727843423064)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(80546308300425441)
,p_view_id=>wwv_flow_imp.id(154901276141219057)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(78716803330423065)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(80547224143425451)
,p_view_id=>wwv_flow_imp.id(154901276141219057)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(78716971625423066)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(80548117546425458)
,p_view_id=>wwv_flow_imp.id(154901276141219057)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(78716984416423067)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(80549056728425466)
,p_view_id=>wwv_flow_imp.id(154901276141219057)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(78717099492423068)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(80549955692425476)
,p_view_id=>wwv_flow_imp.id(154901276141219057)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(78717247161423069)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(80550760724425482)
,p_view_id=>wwv_flow_imp.id(154901276141219057)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(78717345104423070)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(80551650804425488)
,p_view_id=>wwv_flow_imp.id(154901276141219057)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(78717429042423071)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(113860268093559731)
,p_view_id=>wwv_flow_imp.id(154901276141219057)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(112991144724278911)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(154836757708735962)
,p_plug_name=>'Buttons'
,p_plug_display_sequence=>70
,p_plug_grid_row_css_classes=>'buttons-row'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(40475848804651935)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(154836757708735962)
,p_button_name=>'Customer_Details'
,p_button_static_id=>'f4'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>F4 </u>- Customer Details'
,p_button_redirect_url=>'f?p=&APP_ID.:309:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'btns text-left'
,p_grid_column_css_classes=>'ml-2 mt-1'
,p_grid_new_row=>'Y'
,p_grid_column_span=>2
,p_grid_column=>3
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(40476254987651937)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(154836757708735962)
,p_button_name=>'Change_Expiry'
,p_button_static_id=>'f5'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>F5 </u>- Change Expiry'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_column_css_classes=>'ms-1 mt-1'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(40476654257651937)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(154836757708735962)
,p_button_name=>'Search_Item'
,p_button_static_id=>'f2'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>F2 </u>- Search Item'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_column_css_classes=>'ms-1 mt-1'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(40475448590651935)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_imp.id(154836757708735962)
,p_button_name=>'Change_Qty'
,p_button_static_id=>'f3'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>F3 </u> - Change Qty'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_column_css_classes=>'ms-1 mt-1'
,p_grid_new_row=>'N'
,p_grid_column_span=>2
,p_grid_column=>9
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(40474651681651934)
,p_button_sequence=>140
,p_button_plug_id=>wwv_flow_imp.id(154836757708735962)
,p_button_name=>'Reserve'
,p_button_static_id=>'f8'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>F8 </u> - Reserve'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_column_css_classes=>'mt-1'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(40475095398651935)
,p_button_sequence=>150
,p_button_plug_id=>wwv_flow_imp.id(154836757708735962)
,p_button_name=>'Back'
,p_button_static_id=>'exit'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Back'
,p_button_redirect_url=>'f?p=&APP_ID.:304:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'btns text-left hide'
,p_grid_column_css_classes=>'ms-1 mt-3'
,p_grid_new_row=>'N'
,p_grid_column_span=>2
,p_grid_column=>9
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78718039557423075)
,p_name=>'P373_FAX_NUMBER'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(108306066235893894)
,p_prompt=>'<span class="btns">Fax Number:</span>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>4
,p_grid_column=>1
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78718207469423077)
,p_name=>'P373_EMAIL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(108306066235893894)
,p_prompt=>'<span class="btns">Email:</span>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78718483872423079)
,p_name=>'P373_RESERVE_NO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(108306066235893894)
,p_prompt=>'<span class="btns">Reserve No:</span>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(80599415764840831)
,p_name=>'P373_RESERVE_DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(108306066235893894)
,p_prompt=>'<span class="btns">Reserve Date:</span>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(80599704987840833)
,p_name=>'P373_EXPIRY_DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(108306066235893894)
,p_prompt=>'<span class="btns">Expiry Date:</span>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_column=>10
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(80599819375840835)
,p_name=>'P373_ORDER_WRITER'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(108306066235893894)
,p_prompt=>'<span class="btns">Order Writer:</span>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_column=>10
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(80605707630840846)
,p_name=>'P373_QOH'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(154836757708735962)
,p_prompt=>'<span class="btns">QOH</span>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>2
,p_grid_label_column_span=>1
,p_grid_column_css_classes=>'mt-3'
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(80605812801840847)
,p_name=>'P373_SUB_TOTAL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(154836757708735962)
,p_prompt=>'<span class="btns">Sub-Total:</span>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_column=>4
,p_grid_label_column_span=>2
,p_grid_column_css_classes=>'mt-3'
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(80606035137840849)
,p_name=>'P373_TOTAL_DISCOUNT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(154836757708735962)
,p_prompt=>'<span class="btns">Total Discount:</span>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>2
,p_grid_column_css_classes=>'mt-3'
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(80606052943840850)
,p_name=>'P373_TOTAL_AMOUNT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(154836757708735962)
,p_prompt=>'<span class="btns">Total Amount:</span>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>2
,p_grid_column_css_classes=>'mt-3'
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(80606406341840853)
,p_name=>'P373_LOC_1'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(154836757708735962)
,p_prompt=>'<span class="btns">LOC #1</span>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(4382138690084278)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(80606457930840854)
,p_name=>'P373_LOC_2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(154836757708735962)
,p_prompt=>'<span class="btns">LOC #2</span>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(4382138690084278)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(80606587644840855)
,p_name=>'P373_LOC_3'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(154836757708735962)
,p_prompt=>'<span class="btns">LOC #3</span>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(4382138690084278)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(108307276713893931)
,p_name=>'P373_CUSTOMER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(108306066235893894)
,p_prompt=>'<span class="btns">Customer (DBA):</span>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>9
,p_grid_column=>1
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(108307399847893932)
,p_name=>'P373_TEL_NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(108306066235893894)
,p_prompt=>'<span class="btns">Tel. Number:</span>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>4
,p_grid_column=>1
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(108307472577893933)
,p_name=>'P373_CONTACT_PERSON'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(108306066235893894)
,p_prompt=>'<span class="btns">Contact Person:</span>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>9
,p_grid_column=>1
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(113012745960279021)
,p_name=>'P373_SELECTED_GC_NO'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(113013690363279030)
,p_name=>'P373_PREPARED_URL'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(117538470852875307)
,p_name=>'P373_SELECTED_GC_STATUS'
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(40486588444651953)
,p_computation_sequence=>10
,p_computation_item=>'P373_SELECTED_GC_NO'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(40486965041651953)
,p_computation_sequence=>20
,p_computation_item=>'P373_PREPARED_URL'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(40487393689651953)
,p_computation_sequence=>30
,p_computation_item=>'P373_CUSTOMER'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(40487785875651954)
,p_computation_sequence=>40
,p_computation_item=>'P373_CONTACT_PERSON'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(40488179013651954)
,p_computation_sequence=>50
,p_computation_item=>'P373_TEL_NUMBER'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(40488511966651954)
,p_computation_sequence=>60
,p_computation_item=>'P373_SELECTED_GC_STATUS'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(40485722452651951)
,p_computation_sequence=>70
,p_computation_item=>'P373_FAX_NUMBER'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(40486170788651951)
,p_computation_sequence=>80
,p_computation_item=>'P373_EMAIL'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(40488960537651956)
,p_computation_sequence=>90
,p_computation_item=>'P373_RESERVE_NO'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(40489350887651956)
,p_computation_sequence=>100
,p_computation_item=>'P373_RESERVE_DATE'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(40489761862651956)
,p_computation_sequence=>110
,p_computation_item=>'P373_EXPIRY_DATE'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(40490107688651956)
,p_computation_sequence=>120
,p_computation_item=>'P373_ORDER_WRITER'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(40490578210651956)
,p_computation_sequence=>130
,p_computation_item=>'P373_SUB_TOTAL'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'0.00'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(40490961783651957)
,p_computation_sequence=>140
,p_computation_item=>'P373_TOTAL_DISCOUNT'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'0.00'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(40491307606651957)
,p_computation_sequence=>150
,p_computation_item=>'P373_TOTAL_AMOUNT'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'0.00'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(40491781286651957)
,p_computation_sequence=>160
,p_computation_item=>'P373_LOC_1'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'0'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(40130101926188924)
,p_computation_sequence=>170
,p_computation_item=>'P373_LOC_2'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'0'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(40130276338188925)
,p_computation_sequence=>180
,p_computation_item=>'P373_LOC_3'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(40494332512651960)
,p_name=>'Selection Change'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(154642069119888709)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40494828148651960)
,p_event_id=>wwv_flow_imp.id(40494332512651960)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (this.data.selectedRecords.length > 0) {',
'    let itemNoSelected = this.data.selectedRecords[0][1];',
'    apex.item("P373_SELECTED_GC_NO").setValue(itemNoSelected);',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(40498569750651964)
,p_name=>'On Search Dialog Close'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(40475848804651935)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40500011859651965)
,p_event_id=>wwv_flow_imp.id(40498569750651964)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Set Issue Year'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P373_CUSTOMER'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P309_SEARCH_BY_ISSUE_YR'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40500502663651967)
,p_event_id=>wwv_flow_imp.id(40498569750651964)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'Set Recipient'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P373_CONTACT_PERSON'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P309_RECIPIENT'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40501048524651967)
,p_event_id=>wwv_flow_imp.id(40498569750651964)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>'Set Event'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P373_TEL_NUMBER'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P309_EVENT'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40499559069651965)
,p_event_id=>wwv_flow_imp.id(40498569750651964)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(154642069119888709)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40499050711651965)
,p_event_id=>wwv_flow_imp.id(40498569750651964)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_name=>'To select 1st cell of the table'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(() => {',
'  $( document ).ready(function() {',
'    $(".a-GV-cell").first().trigger("click");',
' });',
'}, "1000");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(40495233135651960)
,p_name=>'Open inquire popup'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(40476254987651937)
,p_condition_element=>'P373_SELECTED_GC_NO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40495794045651962)
,p_event_id=>wwv_flow_imp.id(40495233135651960)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P373_PREPARED_URL := apex_page.get_url(',
'       p_page   => 314,',
'       p_items  => ''P314_GET_SELECTED_GC_NO'',',
'       p_values => :P373_SELECTED_GC_NO',
'     );',
'END;'))
,p_attribute_02=>'P373_SELECTED_GC_NO'
,p_attribute_03=>'P373_PREPARED_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40496258444651962)
,p_event_id=>wwv_flow_imp.id(40495233135651960)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P373_PREPARED_URL");',
'apex.navigation.redirect(url);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(40492034427651957)
,p_name=>'Reset keys'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(40476654257651937)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40492558005651959)
,p_event_id=>wwv_flow_imp.id(40492034427651957)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).off(''keydown.p4keyevents'');',
'',
'$(document).on(''keydown.p4keyevents'', (ev) => {',
'    apex.navigation.dialog.close(true);',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(40492934023651959)
,p_name=>'Open date range popup'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(40476654257651937)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40493455371651959)
,p_event_id=>wwv_flow_imp.id(40492934023651959)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P373_PREPARED_URL := apex_page.get_url(',
'       p_page   => 318',
'    --    p_items  => ''P314_GET_SELECTED_GC_NO'',',
'    --    p_values => :P316_SELECTED_GC_NO',
'     );',
'END;'))
,p_attribute_03=>'P373_PREPARED_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40493936900651960)
,p_event_id=>wwv_flow_imp.id(40492934023651959)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P373_PREPARED_URL");',
'apex.navigation.redirect(url);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(40496656751651962)
,p_name=>'Open copies popup'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(40475448590651935)
,p_condition_element=>'P373_SELECTED_GC_NO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40497145491651962)
,p_event_id=>wwv_flow_imp.id(40496656751651962)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P373_SELECTED_GC_STATUS'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'l_return_value  VARCHAR(1) := NULL;',
'',
'BEGIN',
'',
'    IF LENGTH(:P373_SELECTED_GC_NO) > 0 THEN',
'    ',
'        SELECT GC_STATUS_ID INTO l_return_value',
'        FROM NPT020',
'        WHERE GIFT_CERTIFICATE_ID = :P373_SELECTED_GC_NO;',
'',
'    END IF;',
'',
'    RETURN l_return_value;',
'',
'END;'))
,p_attribute_07=>'P373_SELECTED_GC_NO'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40498126204651964)
,p_event_id=>wwv_flow_imp.id(40496656751651962)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- redirect and pass value to url (which is the copies dialog modal)',
'BEGIN',
'    :P373_PREPARED_URL := apex_page.get_url(',
'       p_page   => 313,',
'       p_items  => ''P313_SELECTED_GC_NO'',',
'       p_values => :P373_SELECTED_GC_NO',
'     );',
'END;'))
,p_attribute_02=>'P373_SELECTED_GC_NO'
,p_attribute_03=>'P373_PREPARED_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'$("#P373_SELECTED_GC_STATUS").val() !== "4" && $("#P373_SELECTED_GC_STATUS").val() !== "5"'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40497663138651964)
,p_event_id=>wwv_flow_imp.id(40496656751651962)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P373_PREPARED_URL");',
'apex.navigation.redirect(url);'))
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'$("#P373_SELECTED_GC_STATUS").val() !== "4" && $("#P373_SELECTED_GC_STATUS").val() !== "5"'
);
wwv_flow_imp.component_end;
end;
/
