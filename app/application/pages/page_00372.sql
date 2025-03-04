prompt --application/pages/page_00372
begin
--   Manifest
--     PAGE: 00372
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
 p_id=>372
,p_name=>'Reservation Inquire'
,p_alias=>'RESERVATION-INQUIRE'
,p_step_title=>'Reservation Inquire'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p6KeyMap = {',
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
'setTitle("Reservation Inquire")'))
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
'.t-Form-itemWrapper {',
'    padding-block-end: var(--ut-field-label-padding-y, .25rem);',
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
'    height: calc(65vh + 2px) !important;',
'} ',
'',
'#table .a-IG-contentContainer {',
'    height: 65vh !important;',
'}',
'',
'#table .a-IG-gridView.a-GV {',
'    height: 65vh !important;',
'}',
'',
'#table .a-GV-bdy {',
'    height: calc(65vh - 2.5625rem) !important;',
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
'.t-Form-labelContainer:has(#P372_QOH_LABEL),',
'.t-Form-labelContainer:has(#P372_LOC_1_LABEL),',
'.t-Form-labelContainer:has(#P372_LOC_2_LABEL),',
'.t-Form-labelContainer:has(#P372_LOC_3_LABEL),',
'.t-Form-labelContainer:has(#P372_SUB_TOTAL_LABEL),',
'.t-Form-labelContainer:has(#P372_TOTAL_DISCOUNT_LABEL),',
'.t-Form-labelContainer:has(#P372_TOTAL_AMOUNT_LABEL) {',
'    text-align: left;',
'    padding-left: 1rem;',
'}',
'',
'.col-2:has(#P372_LOC_1_LABEL),',
'.col-2:has(#P372_LOC_2_LABEL),',
'.col-2:has(#P372_LOC_3_LABEL) {',
'    max-width: 5.5rem;',
'}',
'',
'.t-Form-inputContainer:has(#P372_LOC_1),',
'.t-Form-inputContainer:has(#P372_LOC_2),',
'.t-Form-inputContainer:has(#P372_LOC_3) {',
'    text-align: center;',
'    margin: 0 auto;',
'}',
'',
'',
'',
'#P372_CUSTOMER_CONTAINER > .t-Form-labelContainer,',
'#P372_POINT_PERSON_CONTAINER > .t-Form-labelContainer {',
'    max-width: 14%;',
'}',
'',
'#P372_EMAIL_CONTAINER > .t-Form-labelContainer {',
'    max-width: 10%;',
'}',
'',
'#P372_TEL_NUMBER_CONTAINER > .t-Form-inputContainer,',
'#P372_FAX_NUMBER_CONTAINER > .t-Form-inputContainer {',
'    padding-left: 2.4rem;',
'}',
'',
'#P372_RESERVE_NO_CONTAINER > .t-Form-labelContainer,',
'#P372_RESERVE_DATE_CONTAINER > .t-Form-labelContainer,',
'#P372_EXPIRY_DATE_CONTAINER > .t-Form-labelContainer,',
'#P372_ORDER_WRITER_CONTAINER > .t-Form-labelContainer {',
'    max-width: 35%;',
'}'))
,p_step_template=>wwv_flow_imp.id(5671392681337017)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(108241441425722744)
,p_plug_name=>'Search Input'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--hiddenOverflow:t-Form--leftLabels:margin-top-sm:margin-left-sm'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>60
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(154577444309717559)
,p_plug_name=>'Reservation Inquire List'
,p_title=>'Reservation Inquire List'
,p_region_name=>'table'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>70
,p_plug_grid_column_span=>12
,p_plug_display_column=>1
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    ROWNUM AS "Primary Key",',
'    npt019.ITEM_NUM AS "ITEM_NO",',
'    npt019.BRAND_CODE AS "CO",',
'    npt019.ITEM_DESC AS "ITEM_DESCRIPTION",',
'    npt019.QUANTITY AS "QTY",',
'    npt019.ITEM_PRICE AS "REG_PRICE",',
'    npt019.UOM_CODE AS "UOM",',
'    npt019.DISCOUNT_VALUE AS "DISC",',
'    npt019.DT AS "DT",',
'    NVL(npt019.DISCOUNTED_PRICE, npt019.ITEM_PRICE) AS "NET_PRICE",',
'    npt019.QUANTITY * NVL(npt019.DISCOUNTED_PRICE, npt019.ITEM_PRICE) AS "EXTENDED_PRICE"',
'FROM ',
'    NPT019 npt019',
'WHERE ',
'    npt019.RESERVE_ID = :P370_SELECTED_RESERVATION_NO'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P372_RESERVE_NO'
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
 p_id=>wwv_flow_imp.id(78651955653251912)
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
 p_id=>wwv_flow_imp.id(78651985057251913)
,p_name=>'CO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'CO'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'CENTER'
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
 p_id=>wwv_flow_imp.id(78652103033251914)
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
 p_id=>wwv_flow_imp.id(78652178520251915)
,p_name=>'QTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Qty'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
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
 p_id=>wwv_flow_imp.id(78652346815251916)
,p_name=>'REG_PRICE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REG_PRICE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Reg Price'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'RIGHT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
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
 p_id=>wwv_flow_imp.id(78652359606251917)
,p_name=>'UOM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UOM'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'UOM'
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
 p_id=>wwv_flow_imp.id(78652474682251918)
,p_name=>'DISC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISC'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Disc'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'RIGHT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
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
 p_id=>wwv_flow_imp.id(78652622351251919)
,p_name=>'DT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'DT'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'CENTER'
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
 p_id=>wwv_flow_imp.id(78652720294251920)
,p_name=>'NET_PRICE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NET_PRICE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Net Price'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'RIGHT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
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
 p_id=>wwv_flow_imp.id(78652804232251921)
,p_name=>'EXTENDED_PRICE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXTENDED_PRICE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Extended Price'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'RIGHT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
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
 p_id=>wwv_flow_imp.id(112926519914107761)
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
 p_id=>wwv_flow_imp.id(154773080460564822)
,p_internal_uid=>154773080460564822
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
 p_id=>wwv_flow_imp.id(154836508825047906)
,p_interactive_grid_id=>wwv_flow_imp.id(154773080460564822)
,p_static_id=>'186900'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(154836651331047907)
,p_report_id=>wwv_flow_imp.id(154836508825047906)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(80478992900254260)
,p_view_id=>wwv_flow_imp.id(154836651331047907)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(78651955653251912)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(80479877395254272)
,p_view_id=>wwv_flow_imp.id(154836651331047907)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(78651985057251913)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>130
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(80480802847254282)
,p_view_id=>wwv_flow_imp.id(154836651331047907)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(78652103033251914)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>350
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(80481683490254291)
,p_view_id=>wwv_flow_imp.id(154836651331047907)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(78652178520251915)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(80482599333254301)
,p_view_id=>wwv_flow_imp.id(154836651331047907)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(78652346815251916)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>130
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(80483492736254308)
,p_view_id=>wwv_flow_imp.id(154836651331047907)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(78652359606251917)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>90
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(80484431918254316)
,p_view_id=>wwv_flow_imp.id(154836651331047907)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(78652474682251918)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(80485330882254326)
,p_view_id=>wwv_flow_imp.id(154836651331047907)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(78652622351251919)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>80
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(80486135914254332)
,p_view_id=>wwv_flow_imp.id(154836651331047907)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(78652720294251920)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(80487025994254338)
,p_view_id=>wwv_flow_imp.id(154836651331047907)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(78652804232251921)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(113795643283388581)
,p_view_id=>wwv_flow_imp.id(154836651331047907)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(112926519914107761)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(154772132898564812)
,p_plug_name=>'Buttons'
,p_plug_display_sequence=>80
,p_plug_grid_row_css_classes=>'buttons-row'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(40410342203480842)
,p_button_sequence=>150
,p_button_plug_id=>wwv_flow_imp.id(154772132898564812)
,p_button_name=>'Back'
,p_button_static_id=>'exit'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Back'
,p_button_redirect_url=>'f?p=&APP_ID.:370:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'btns text-left hide'
,p_grid_column_css_classes=>'ms-1 mt-3'
,p_grid_new_row=>'Y'
,p_grid_column_span=>2
,p_grid_column=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74198818082493914)
,p_name=>'P372_SET_DETAILS'
,p_item_sequence=>50
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78653520191251969)
,p_name=>'P372_FAX_NUMBER'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(108241441425722744)
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
 p_id=>wwv_flow_imp.id(78653688103251971)
,p_name=>'P372_EMAIL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(108241441425722744)
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
 p_id=>wwv_flow_imp.id(78653964506251973)
,p_name=>'P372_RESERVE_NO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(108241441425722744)
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
 p_id=>wwv_flow_imp.id(80534896398669725)
,p_name=>'P372_RESERVE_DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(108241441425722744)
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
 p_id=>wwv_flow_imp.id(80535185621669727)
,p_name=>'P372_EXPIRY_DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(108241441425722744)
,p_prompt=>'<span class="btns">Expiry Date:</span>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_column=>10
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(80535300009669729)
,p_name=>'P372_ORDER_WRITER'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(108241441425722744)
,p_prompt=>'<span class="btns">Order Writer:</span>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_column=>10
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(80541028936669754)
,p_name=>'P372_QOH'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(154772132898564812)
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
 p_id=>wwv_flow_imp.id(80541134107669755)
,p_name=>'P372_SUB_TOTAL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(154772132898564812)
,p_prompt=>'<span class="btns">Sub-Total:</span>'
,p_format_mask=>'999G999G999G999G990D00'
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
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(80541356443669757)
,p_name=>'P372_TOTAL_DISCOUNT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(154772132898564812)
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
 p_id=>wwv_flow_imp.id(80541374249669758)
,p_name=>'P372_TOTAL_AMOUNT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(154772132898564812)
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
 p_id=>wwv_flow_imp.id(108242757347722825)
,p_name=>'P372_CUSTOMER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(108241441425722744)
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
 p_id=>wwv_flow_imp.id(108242880481722826)
,p_name=>'P372_TEL_NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(108241441425722744)
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
 p_id=>wwv_flow_imp.id(108242953211722827)
,p_name=>'P372_POINT_PERSON'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(108241441425722744)
,p_prompt=>'<span class="btns">Point Person:</span>'
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
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112948150849107974)
,p_name=>'P372_SELECTED_GC_NO'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112949095252107983)
,p_name=>'P372_PREPARED_URL'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(117473875741704260)
,p_name=>'P372_SELECTED_GC_STATUS'
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(40421923120480907)
,p_computation_sequence=>10
,p_computation_item=>'P372_SELECTED_GC_NO'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(40422365101480907)
,p_computation_sequence=>20
,p_computation_item=>'P372_PREPARED_URL'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(40422722451480907)
,p_computation_sequence=>30
,p_computation_item=>'P372_CUSTOMER'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(40423153263480907)
,p_computation_sequence=>40
,p_computation_item=>'P372_POINT_PERSON'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(40423504623480909)
,p_computation_sequence=>50
,p_computation_item=>'P372_TEL_NUMBER'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(40423909303480909)
,p_computation_sequence=>60
,p_computation_item=>'P372_SELECTED_GC_STATUS'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(40421198693480906)
,p_computation_sequence=>70
,p_computation_item=>'P372_FAX_NUMBER'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(40421519036480907)
,p_computation_sequence=>80
,p_computation_item=>'P372_EMAIL'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(40424312958480909)
,p_computation_sequence=>90
,p_computation_item=>'P372_RESERVE_NO'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(40424757164480909)
,p_computation_sequence=>100
,p_computation_item=>'P372_RESERVE_DATE'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(40425137752480910)
,p_computation_sequence=>110
,p_computation_item=>'P372_EXPIRY_DATE'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(40425524906480910)
,p_computation_sequence=>120
,p_computation_item=>'P372_ORDER_WRITER'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(40425949081480910)
,p_computation_sequence=>130
,p_computation_item=>'P372_SUB_TOTAL'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'0.00'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(40426307562480912)
,p_computation_sequence=>140
,p_computation_item=>'P372_TOTAL_DISCOUNT'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'0.00'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(40426734807480912)
,p_computation_sequence=>150
,p_computation_item=>'P372_TOTAL_AMOUNT'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'0.00'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(45463400961718702)
,p_name=>'Display Details'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74198773393493913)
,p_event_id=>wwv_flow_imp.id(45463400961718702)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P372_SET_DETAILS'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT npt009.DBA          || '',,,'' || ',
'           npt018.POINT_PERSON || '',,,'' || ',
'           npt018.TEL_NUMBER   || '',,,'' || ',
'           npt018.FAX          || '',,,'' || ',
'           npt018.EMAIL        || '',,,'' || ',
'           TO_CHAR(npt018.DATE_CREATED, ''MM/DD/YYYY'') || '',,,'' || ',
'           TO_CHAR(npt018.EXPIRY_DATE, ''MM/DD/YYYY'')  || '',,,'' || ',
'           npt018.USER_CREATED || '',,,'' || ',
'',
'           TO_CHAR(npt018.SUBTOTAL, ''999,999,999.99'')       || '',,,'' || ',
'           TO_CHAR(npt018.TOTAL_DISCOUNT, ''999,999,999.99'') || '',,,'' || ',
'           TO_CHAR(npt018.TOTAL_AMOUNT, ''999,999,999.99'')',
'    ',
'    INTO :P372_SET_DETAILS',
'',
'    FROM NPT018 npt018',
'',
'    JOIN NPT009 npt009 ON npt018.CUSTOMER_ID = npt009.CUSTOMER_ID',
'',
'    WHERE npt018.RESERVE_ID = :P370_SELECTED_RESERVATION_NO;',
'',
'    RETURN :P372_SET_DETAILS;',
'END;'))
,p_attribute_07=>'P370_SELECTED_RESERVATION_NO'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74198916671493915)
,p_event_id=>wwv_flow_imp.id(45463400961718702)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// SET DETAILS',
'let details = apex.item("P372_SET_DETAILS").getValue();',
'detailsArray = details.split(",,,");',
'',
'// SET DETAILS',
'',
'apex.item("P372_CUSTOMER").setValue(detailsArray[0]);',
'apex.item("P372_POINT_PERSON").setValue(detailsArray[1]);',
'apex.item("P372_TEL_NUMBER").setValue(detailsArray[2]);',
'apex.item("P372_FAX_NUMBER").setValue(detailsArray[3]);',
'apex.item("P372_EMAIL").setValue(detailsArray[4]);',
'',
'apex.item("P372_RESERVE_DATE").setValue(detailsArray[5]);',
'apex.item("P372_EXPIRY_DATE").setValue(detailsArray[6]);',
'apex.item("P372_ORDER_WRITER").setValue(detailsArray[7]);',
'apex.item("P372_SUB_TOTAL").setValue(detailsArray[8]);',
'apex.item("P372_TOTAL_DISCOUNT").setValue(detailsArray[9]);',
'apex.item("P372_TOTAL_AMOUNT").setValue(detailsArray[10]);'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45464063439718708)
,p_event_id=>wwv_flow_imp.id(45463400961718702)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'Y'
,p_name=>'Set Reserve No'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P372_RESERVE_NO'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    RETURN :P370_SELECTED_RESERVATION_NO;',
'END;'))
,p_attribute_07=>'P370_SELECTED_RESERVATION_NO'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp.component_end;
end;
/
