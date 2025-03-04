prompt --application/pages/page_00319
begin
--   Manifest
--     PAGE: 00319
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
 p_id=>319
,p_name=>'Gift Certificate Donation'
,p_alias=>'GIFT-CERTIFICATE-DONATION'
,p_step_title=>'Gift Certificate Donation'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p6KeyMap = {',
'    s : (v) => {',
'        $("#s").trigger("click");',
'    },',
'    i : (v) => {',
'        $("#i").trigger("click");',
'    },',
'    t : (v) => {',
'        $("#t").trigger("click");',
'    },',
'    p : (v) => {',
'        $("#p").trigger("click");',
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
'setTitle("Donation")',
'$("#s").trigger("click");'))
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
'.ms-1 {',
'    margin-left: .5rem;',
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
'    width: 90vw;',
'    /* bottom: 1.75rem; */',
'    bottom: 1rem;',
'}',
'',
'#table .a-IG {',
'    height: calc(73vh + 2px) !important;',
'} ',
'',
'#table .a-IG-contentContainer {',
'    height: 73vh !important;',
'}',
'',
'#table .a-IG-gridView.a-GV {',
'    height: 73vh !important;',
'}',
'',
'#table .a-GV-bdy {',
'    height: calc(73vh - 2.5625rem) !important;',
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
'#table .a-GV-table colgroup col:nth-child(4),',
'#table .a-GV-table colgroup col:nth-child(5) {',
'    width: 25%;',
'}',
'',
'.a-GV-header-sort {',
'    display: none;',
'}',
'',
'.a-GV-table tr.is-selected {',
'    --a-gv-background-color: #F5DC1C;',
'}',
'',
'.a-GV-table .a-GV-cell.is-focused',
'{',
'    box-shadow: inset 0 0 0 1px black;',
'}'))
,p_step_template=>wwv_flow_imp.id(5671392681337017)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27796680230719108)
,p_plug_name=>'Search Input'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--hiddenOverflow:t-Form--leftLabels:margin-top-sm:margin-left-sm'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>60
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(74132683114713923)
,p_plug_name=>'Gift Certificate Donation List'
,p_title=>'Gift Certificate Donation List'
,p_region_name=>'table'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>70
,p_plug_grid_column_span=>10
,p_plug_display_column=>2
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    CASE ',
'        WHEN (:P319_RECIPIENT IS NOT NULL OR :P319_RECIPIENT != '''') AND (:P319_EVENT IS NOT NULL OR :P319_EVENT != '''') THEN',
'            CASE ',
'                WHEN UPPER(npt020.RECIPIENT) = UPPER(:P319_RECIPIENT) AND UPPER(npt020.EVENT) = UPPER(:P319_EVENT) THEN 1 || npt020.GIFT_CERTIFICATE_ID',
'                WHEN UPPER(npt020.RECIPIENT) = UPPER(:P319_RECIPIENT) AND UPPER(npt020.EVENT) LIKE UPPER(:P319_EVENT) || ''%'' THEN 2 || npt020.GIFT_CERTIFICATE_ID',
'                WHEN UPPER(npt020.RECIPIENT) = UPPER(:P319_RECIPIENT) AND UPPER(npt020.EVENT) LIKE ''%'' || UPPER(:P319_EVENT) THEN 3 || npt020.GIFT_CERTIFICATE_ID',
'                WHEN UPPER(npt020.RECIPIENT) = UPPER(:P319_RECIPIENT) AND UPPER(npt020.EVENT) LIKE ''%'' || UPPER(:P319_EVENT) || ''%'' THEN 4 || npt020.GIFT_CERTIFICATE_ID',
'                WHEN UPPER(npt020.RECIPIENT) LIKE UPPER(:P319_RECIPIENT) || ''%'' AND UPPER(npt020.EVENT) = UPPER(:P319_EVENT) THEN 5 || npt020.GIFT_CERTIFICATE_ID',
'                WHEN UPPER(npt020.RECIPIENT) LIKE ''%'' || UPPER(:P319_RECIPIENT) AND UPPER(npt020.EVENT) = UPPER(:P319_EVENT) THEN 6 || npt020.GIFT_CERTIFICATE_ID',
'                WHEN UPPER(npt020.RECIPIENT) LIKE ''%'' || UPPER(:P319_RECIPIENT) || ''%'' AND UPPER(npt020.EVENT) = UPPER(:P319_EVENT) THEN 7 || npt020.GIFT_CERTIFICATE_ID',
'                WHEN UPPER(npt020.RECIPIENT) LIKE UPPER(:P319_RECIPIENT) || ''%'' AND UPPER(npt020.EVENT) LIKE UPPER(:P319_EVENT) || ''%'' THEN 8 || npt020.GIFT_CERTIFICATE_ID',
'                WHEN UPPER(npt020.RECIPIENT) LIKE ''%'' || UPPER(:P319_RECIPIENT) AND UPPER(npt020.EVENT) LIKE ''%'' || UPPER(:P319_EVENT) THEN 9 || npt020.GIFT_CERTIFICATE_ID',
'                WHEN UPPER(npt020.RECIPIENT) LIKE ''%'' || UPPER(:P319_RECIPIENT) || ''%'' AND UPPER(npt020.EVENT) LIKE ''%'' || UPPER(:P319_EVENT) || ''%'' THEN 10 || npt020.GIFT_CERTIFICATE_ID',
'            END',
'        WHEN (:P319_RECIPIENT IS NOT NULL OR :P319_RECIPIENT != '''') AND (:P319_EVENT IS NULL OR :P319_EVENT = '''') THEN',
'            CASE ',
'                WHEN UPPER(npt020.RECIPIENT) = UPPER(:P319_RECIPIENT) THEN 11 || npt020.GIFT_CERTIFICATE_ID',
'                WHEN UPPER(npt020.RECIPIENT) LIKE UPPER(:P319_RECIPIENT) || ''%'' THEN 12 || npt020.GIFT_CERTIFICATE_ID',
'                WHEN UPPER(npt020.RECIPIENT) LIKE ''%'' || UPPER(:P319_RECIPIENT) THEN 13 || npt020.GIFT_CERTIFICATE_ID',
'                WHEN UPPER(npt020.RECIPIENT) LIKE ''%'' || UPPER(:P319_RECIPIENT) || ''%'' THEN 14 || npt020.GIFT_CERTIFICATE_ID',
'            END',
'        WHEN (:P319_RECIPIENT IS NULL OR :P319_RECIPIENT = '''') AND (:P319_EVENT IS NOT NULL OR :P319_EVENT != '''') THEN',
'            CASE',
'                WHEN UPPER(npt020.EVENT) = UPPER(:P319_EVENT) THEN 15 || npt020.GIFT_CERTIFICATE_ID',
'                WHEN UPPER(npt020.EVENT) LIKE UPPER(:P319_EVENT) || ''%'' THEN 16 || npt020.GIFT_CERTIFICATE_ID',
'                WHEN UPPER(npt020.EVENT) LIKE ''%'' || UPPER(:P319_EVENT) THEN 17 || npt020.GIFT_CERTIFICATE_ID',
'                WHEN UPPER(npt020.EVENT) LIKE ''%'' || UPPER(:P319_EVENT) || ''%'' THEN 18 || npt020.GIFT_CERTIFICATE_ID',
'            END',
'        WHEN (:P319_RECIPIENT IS NULL OR :P319_RECIPIENT = '''') AND (:P319_EVENT IS NULL OR :P319_EVENT = '''') THEN ',
'                TO_CHAR(npt020.GIFT_CERTIFICATE_ID - 100000000000)',
'    END AS "Primary Key",',
'    npt020.DONATION_GC_NO AS "GC_NO",',
'    TO_CHAR(npt020.ISSUE_DATE, ''MM/DD/YYYY'') AS "ISSUE_DATE",',
'    TO_CHAR(npt020.EXPIRY_DATE, ''MM/DD/YYYY'') AS "EXPIRY_DATE",',
'    npt020.RECIPIENT AS "RECIPIENT",',
'    npt020.EVENT AS "EVENT",',
'    CASE ',
'        WHEN npt020.AMOUNT = 0 THEN ''0.00''',
'        ELSE TO_CHAR(npt020.AMOUNT, ''999,999,999.00'')',
'    END AS "AMOUNT"',
'FROM',
'    NPT020 npt020',
'JOIN ',
'    NPM013 npm013 ON npt020.GC_TYPE_ID = npm013.GC_TYPE_ID',
'WHERE',
'    npm013.DONATION = ''Y'' AND',
'    (',
'        (',
'            -- BOTH ARE NOT NULL',
'            (:P319_RECIPIENT IS NOT NULL OR :P319_RECIPIENT != '''') ',
'            AND (:P319_EVENT IS NOT NULL OR :P319_EVENT != '''')',
'            AND (',
'                (extract(year from npt020.ISSUE_DATE) = :P319_ISSUE_YR AND ',
'                UPPER(npt020.RECIPIENT) = UPPER(:P319_RECIPIENT) AND UPPER(npt020.EVENT) = UPPER(:P319_EVENT))',
'                OR ',
'                (extract(year from npt020.ISSUE_DATE) = :P319_ISSUE_YR AND ',
'                UPPER(npt020.RECIPIENT) = UPPER(:P319_RECIPIENT) AND UPPER(npt020.EVENT) LIKE UPPER(:P319_EVENT) || ''%'')',
'                OR',
'                (extract(year from npt020.ISSUE_DATE) = :P319_ISSUE_YR AND ',
'                UPPER(npt020.RECIPIENT) = UPPER(:P319_RECIPIENT) AND UPPER(npt020.EVENT) LIKE ''%'' || UPPER(:P319_EVENT))',
'                OR',
'                (extract(year from npt020.ISSUE_DATE) = :P319_ISSUE_YR AND ',
'                UPPER(npt020.RECIPIENT) = UPPER(:P319_RECIPIENT) AND UPPER(npt020.EVENT) LIKE ''%'' || UPPER(:P319_EVENT) || ''%'')',
'                OR',
'                (extract(year from npt020.ISSUE_DATE) = :P319_ISSUE_YR AND ',
'                UPPER(npt020.RECIPIENT) LIKE UPPER(:P319_RECIPIENT) || ''%'' AND UPPER(npt020.EVENT) = UPPER(:P319_EVENT))',
'                OR',
'                (extract(year from npt020.ISSUE_DATE) = :P319_ISSUE_YR AND ',
'                UPPER(npt020.RECIPIENT) LIKE ''%'' || UPPER(:P319_RECIPIENT) AND UPPER(npt020.EVENT) = UPPER(:P319_EVENT))',
'                OR',
'                (extract(year from npt020.ISSUE_DATE) = :P319_ISSUE_YR AND ',
'                UPPER(npt020.RECIPIENT) LIKE ''%'' || UPPER(:P319_RECIPIENT) || ''%'' AND UPPER(npt020.EVENT) = UPPER(:P319_EVENT))',
'                OR',
'                (extract(year from npt020.ISSUE_DATE) = :P319_ISSUE_YR AND ',
'                UPPER(npt020.RECIPIENT) LIKE UPPER(:P319_RECIPIENT) || ''%'' AND UPPER(npt020.EVENT) LIKE UPPER(:P319_EVENT) || ''%'')',
'                OR',
'                (extract(year from npt020.ISSUE_DATE) = :P319_ISSUE_YR AND ',
'                UPPER(npt020.RECIPIENT) LIKE ''%'' || UPPER(:P319_RECIPIENT) AND UPPER(npt020.EVENT) LIKE ''%'' || UPPER(:P319_EVENT))',
'                OR',
'                (extract(year from npt020.ISSUE_DATE) = :P319_ISSUE_YR AND ',
'                UPPER(npt020.RECIPIENT) LIKE ''%'' || UPPER(:P319_RECIPIENT) || ''%'' AND UPPER(npt020.EVENT) LIKE ''%'' || UPPER(:P319_EVENT) || ''%'')',
'            )',
'        )',
'        OR',
'        (',
'            -- RECIPIENT ONLY',
'            (:P319_RECIPIENT IS NOT NULL OR :P319_RECIPIENT != '''') ',
'            AND (:P319_EVENT IS NULL OR :P319_EVENT = '''')',
'            AND (',
'                (extract(year from npt020.ISSUE_DATE) = :P319_ISSUE_YR AND ',
'                UPPER(npt020.RECIPIENT) = UPPER(:P319_RECIPIENT))',
'                OR',
'                (extract(year from npt020.ISSUE_DATE) = :P319_ISSUE_YR AND ',
'                UPPER(npt020.RECIPIENT) LIKE UPPER(:P319_RECIPIENT) || ''%'')',
'                OR',
'                (extract(year from npt020.ISSUE_DATE) = :P319_ISSUE_YR AND ',
'                UPPER(npt020.RECIPIENT) LIKE ''%'' || UPPER(:P319_RECIPIENT))',
'                OR',
'                (extract(year from npt020.ISSUE_DATE) = :P319_ISSUE_YR AND ',
'                UPPER(npt020.RECIPIENT) LIKE ''%'' || UPPER(:P319_RECIPIENT) || ''%'')',
'            )',
'        )',
'        OR',
'        (',
'            -- EVENT ONLY',
'            (:P319_RECIPIENT IS NULL OR :P319_RECIPIENT = '''') ',
'            AND (:P319_EVENT IS NOT NULL OR :P319_EVENT != '''')',
'            AND (',
'                (extract(year from npt020.ISSUE_DATE) = :P319_ISSUE_YR AND ',
'                UPPER(npt020.EVENT) = UPPER(:P319_EVENT))',
'                OR',
'                (extract(year from npt020.ISSUE_DATE) = :P319_ISSUE_YR AND ',
'                UPPER(npt020.EVENT) LIKE UPPER(:P319_EVENT) || ''%'')',
'                OR',
'                (extract(year from npt020.ISSUE_DATE) = :P319_ISSUE_YR AND ',
'                UPPER(npt020.EVENT) LIKE ''%'' || UPPER(:P319_EVENT))',
'                OR',
'                (extract(year from npt020.ISSUE_DATE) = :P319_ISSUE_YR AND ',
'                UPPER(npt020.EVENT) LIKE ''%'' || UPPER(:P319_EVENT) || ''%'')',
'            )',
'        )',
'        OR',
'        (',
'            -- BOTH ARE NULL',
'            (:P319_RECIPIENT IS NULL OR :P319_RECIPIENT = '''') ',
'            AND (:P319_EVENT IS NULL OR :P319_EVENT = '''')',
'            AND extract(year from npt020.ISSUE_DATE) = :P319_ISSUE_YR',
'        )',
'    )',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P319_ISSUE_YR,P319_RECIPIENT,P319_EVENT'
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
 p_id=>wwv_flow_imp.id(27797502951719117)
,p_name=>'EVENT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EVENT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Event'
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
 p_id=>wwv_flow_imp.id(32481758719104125)
,p_name=>'Primary Key'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'Primary Key'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>10
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
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(54382464015833253)
,p_name=>'RECIPIENT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RECIPIENT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Recipient'
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
 p_id=>wwv_flow_imp.id(74328841127561191)
,p_name=>'AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AMOUNT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Amount'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
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
 p_id=>wwv_flow_imp.id(74329105766561194)
,p_name=>'EXPIRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXPIRY_DATE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Expiry Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(82014675769514183)
,p_name=>'GC_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'GC_NO'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'GC No'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(82014986408514187)
,p_name=>'ISSUE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ISSUE_DATE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Issue Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(74328319265561186)
,p_internal_uid=>74328319265561186
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
 p_id=>wwv_flow_imp.id(74391747630044270)
,p_interactive_grid_id=>wwv_flow_imp.id(74328319265561186)
,p_static_id=>'186900'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(74391890136044271)
,p_report_id=>wwv_flow_imp.id(74391747630044270)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(28128508250151085)
,p_view_id=>wwv_flow_imp.id(74391890136044271)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(27797502951719117)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(33350882088384945)
,p_view_id=>wwv_flow_imp.id(74391890136044271)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(32481758719104125)
,p_is_visible=>false
,p_is_frozen=>false
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(55715855226331836)
,p_view_id=>wwv_flow_imp.id(74391890136044271)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(54382464015833253)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(74395956543044325)
,p_view_id=>wwv_flow_imp.id(74391890136044271)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(74328841127561191)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(74398676175044351)
,p_view_id=>wwv_flow_imp.id(74391890136044271)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(74329105766561194)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(82583382071169014)
,p_view_id=>wwv_flow_imp.id(74391890136044271)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(82014675769514183)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(82586796674169037)
,p_view_id=>wwv_flow_imp.id(74391890136044271)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(82014986408514187)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(74327371703561176)
,p_plug_name=>'Buttons'
,p_plug_display_sequence=>80
,p_plug_grid_row_css_classes=>'buttons-row ml-3'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(28072548798616812)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(74327371703561176)
,p_button_name=>'Search'
,p_button_static_id=>'s'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>S </u>- Search'
,p_button_redirect_url=>'f?p=&APP_ID.:309:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'btns text-left'
,p_grid_column_css_classes=>'ml-2 mt-3'
,p_grid_new_row=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(28072980720616814)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(74327371703561176)
,p_button_name=>'Inquire'
,p_button_static_id=>'i'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>I </u>- Inquire'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_column_css_classes=>'ms-1 mt-3'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(28073317124616815)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(74327371703561176)
,p_button_name=>'Statistics'
,p_button_static_id=>'t'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>T</u>- Statistics'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_column_css_classes=>'ms-1 mt-3'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27796537200719107)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(74327371703561176)
,p_button_name=>'Print'
,p_button_static_id=>'p'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>P</u> - Print'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_column_css_classes=>'ms-1 mt-3'
,p_grid_new_row=>'N'
,p_grid_column_span=>2
,p_grid_column=>9
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(28430457875015708)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(74327371703561176)
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
 p_id=>wwv_flow_imp.id(27796739074719109)
,p_name=>'P319_ISSUE_YR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(27796680230719108)
,p_prompt=>'<span class="btns">Issue Year:</span>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>10
,p_grid_column=>2
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27796862208719110)
,p_name=>'P319_EVENT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(27796680230719108)
,p_prompt=>'<span class="btns">Event:</span>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>10
,p_grid_column=>2
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27796934938719111)
,p_name=>'P319_RECIPIENT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(27796680230719108)
,p_prompt=>'<span class="btns">Recipient:</span>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>10
,p_grid_column=>2
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32481819680104126)
,p_name=>'P319_SELECTED_GC_NO'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32482764083104135)
,p_name=>'P319_PREPARED_URL'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37007544572700412)
,p_name=>'P319_SELECTED_GC_STATUS'
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77935883811036542)
,p_name=>'P319_IS_DONATION'
,p_item_sequence=>50
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(32482288693104130)
,p_computation_sequence=>10
,p_computation_item=>'P319_SELECTED_GC_NO'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(32482868253104136)
,p_computation_sequence=>20
,p_computation_item=>'P319_PREPARED_URL'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(34714711448647707)
,p_computation_sequence=>30
,p_computation_item=>'P319_ISSUE_YR'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(34714823245647708)
,p_computation_sequence=>40
,p_computation_item=>'P319_RECIPIENT'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(34714942129647709)
,p_computation_sequence=>50
,p_computation_item=>'P319_EVENT'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(37007669896700413)
,p_computation_sequence=>60
,p_computation_item=>'P319_SELECTED_GC_STATUS'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(77935911252036543)
,p_computation_sequence=>70
,p_computation_item=>'P319_IS_DONATION'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'''Y'''
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27797033566719112)
,p_name=>'On Search Dialog Close'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(28072548798616812)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27797266491719114)
,p_event_id=>wwv_flow_imp.id(27797033566719112)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Set Issue Year'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P319_ISSUE_YR'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P309_SEARCH_BY_ISSUE_YR'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27797385537719115)
,p_event_id=>wwv_flow_imp.id(27797033566719112)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'Set Recipient'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P319_RECIPIENT'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P309_RECIPIENT'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27797485237719116)
,p_event_id=>wwv_flow_imp.id(27797033566719112)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>'Set Event'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P319_EVENT'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P309_EVENT'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27797103966719113)
,p_event_id=>wwv_flow_imp.id(27797033566719112)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(74132683114713923)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(32482132915104129)
,p_event_id=>wwv_flow_imp.id(27797033566719112)
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
 p_id=>wwv_flow_imp.id(32482396908104131)
,p_name=>'Selection Change'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(74132683114713923)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(32482409693104132)
,p_event_id=>wwv_flow_imp.id(32482396908104131)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (this.data.selectedRecords.length > 0) {',
'    let itemNoSelected = this.data.selectedRecords[0][1];',
'    apex.item("P319_SELECTED_GC_NO").setValue(itemNoSelected);',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(32482596338104133)
,p_name=>'Open inquire popup'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(28072980720616814)
,p_condition_element=>'P319_SELECTED_GC_NO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(32482679315104134)
,p_event_id=>wwv_flow_imp.id(32482596338104133)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P319_PREPARED_URL := apex_page.get_url(',
'       p_page   => 314,',
'       p_items  => ''P314_GET_SELECTED_GC_NO,P314_IS_DONATION'',',
'       p_values => :P319_SELECTED_GC_NO || '','' || :P319_IS_DONATION',
'     );',
'END;'))
,p_attribute_02=>'P319_SELECTED_GC_NO,P319_IS_DONATION'
,p_attribute_03=>'P319_PREPARED_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(32482958561104137)
,p_event_id=>wwv_flow_imp.id(32482596338104133)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P319_PREPARED_URL");',
'apex.navigation.redirect(url);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(34714192901647701)
,p_name=>'Reset keys'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(28073317124616815)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34714229798647702)
,p_event_id=>wwv_flow_imp.id(34714192901647701)
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
 p_id=>wwv_flow_imp.id(34714359634647703)
,p_name=>'Open date range popup'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(28073317124616815)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34714482002647704)
,p_event_id=>wwv_flow_imp.id(34714359634647703)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P319_PREPARED_URL := apex_page.get_url(',
'       p_page   => 318,',
'       p_items  => ''P318_FROM_PAGE'',',
'       p_values => ''DONATION''',
'     );',
'END;'))
,p_attribute_03=>'P319_PREPARED_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34714586876647705)
,p_event_id=>wwv_flow_imp.id(34714359634647703)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P319_PREPARED_URL");',
'apex.navigation.redirect(url);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37007355007700410)
,p_name=>'Open copies popup'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27796537200719107)
,p_condition_element=>'P319_SELECTED_GC_NO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37007417782700411)
,p_event_id=>wwv_flow_imp.id(37007355007700410)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P319_SELECTED_GC_STATUS'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'l_return_value  VARCHAR(1) := NULL;',
'',
'BEGIN',
'',
'    IF LENGTH(:P319_SELECTED_GC_NO) > 0 THEN',
'    ',
'        SELECT GC_STATUS_ID INTO l_return_value',
'        FROM NPT020',
'        WHERE GIFT_CERTIFICATE_ID = :P319_SELECTED_GC_NO;',
'',
'    END IF;',
'',
'    RETURN l_return_value;',
'',
'END;'))
,p_attribute_07=>'P319_SELECTED_GC_NO'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37007779555700414)
,p_event_id=>wwv_flow_imp.id(37007355007700410)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- redirect and pass value to url (which is the copies dialog modal)',
'BEGIN',
'    :P319_PREPARED_URL := apex_page.get_url(',
'       p_page   => 313,',
'       p_items  => ''P313_SELECTED_GC_NO'',',
'       p_values => :P319_SELECTED_GC_NO',
'     );',
'END;'))
,p_attribute_02=>'P319_SELECTED_GC_NO'
,p_attribute_03=>'P319_PREPARED_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'$("#P319_SELECTED_GC_STATUS").val() !== "4" && $("#P319_SELECTED_GC_STATUS").val() !== "5"'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37007879448700415)
,p_event_id=>wwv_flow_imp.id(37007355007700410)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P319_PREPARED_URL");',
'apex.navigation.redirect(url);'))
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'$("#P319_SELECTED_GC_STATUS").val() !== "4" && $("#P319_SELECTED_GC_STATUS").val() !== "5"'
);
wwv_flow_imp.component_end;
end;
/
