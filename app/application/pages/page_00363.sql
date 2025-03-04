prompt --application/pages/page_00363
begin
--   Manifest
--     PAGE: 00363
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
 p_id=>363
,p_name=>'Gift Certificate Donation Table'
,p_alias=>'GIFT-CERTIFICATE-DONATION-TABLE'
,p_page_mode=>'MODAL'
,p_step_title=>'Gift Certificate Donation Table'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p6KeyMap = {',
'    s : (v) => {',
'        $("#exit").trigger("click");',
'    },',
'    i : (v) => {',
'        $("#exit").trigger("click");',
'    },',
'    t : (v) => {',
'        $("#exit").trigger("click");',
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
'        $("#exit").trigger("click");',
'    });',
'}',
'',
'function customEvent(event, data){',
'    mapP6Keys();',
'}'))
,p_javascript_code_onload=>'mapP6Keys();'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Dialog-bodyWrapperIn {',
'    background-color: #056AC8;',
'}',
'',
'.t-Region {',
'    margin-block-end: .5rem;',
'}',
'',
'.t-Dialog-body {',
'    padding-block-start: var(--ut-dialog-padding-y, .5rem);',
'}',
'',
'.t-Form-labelContainer, .t-Form-inputContainer {',
'    padding-block-end: 0;',
'    padding-block-start: 0;',
'}',
'',
'.col {',
'    padding-inline-end: 0;',
'    padding-inline-start: 0;',
'}',
'',
'/* custom column width of tables */',
'.col-2 {',
'    flex-basis: 10% !important;',
'    max-width: 10% !important;',
'}',
'',
'.col-3 {',
'    flex-basis: 30% !important;',
'    max-width: 30% !important;',
'}',
'',
'#status-table table, ',
'#donations-table table, ',
'#sold-table table, ',
'#total-table table {',
'    border-collapse: collapse !important;',
'}',
'',
'#status-table .a-GV-cell, ',
'#donations-table .a-GV-cell,',
'#sold-table .a-GV-cell,',
'#total-table .a-GV-cell {',
'    font-weight: 700;',
'    border-left: 0px solid white;',
'    border-right: 0px solid white;',
'}',
'',
'#status-table, #donations-table, #sold-table, #total-table {',
'    border: 1px solid black;',
'}',
'#status-table th, #donations-table th, #sold-table th, #total-table th,',
'#status-table td, #donations-table td, #sold-table td, #total-table td {',
'    border-bottom: 1.5px solid black;',
'}',
'',
'#status-table tr:last-child td,',
'#donations-table tr:last-child td,',
'#sold-table tr:last-child td,',
'#total-table tr:last-child td {',
'    border-top: 2px solid black',
'}',
'',
'#status-table .a-GV-table,',
'#donations-table .a-GV-table,',
'#sold-table .a-GV-table,',
'#total-table .a-GV-table {',
'    box-shadow: none;',
'}',
'',
'#status-table .a-GV-header,',
'#donations-table .a-GV-header,',
'#sold-table .a-GV-header,',
'#total-table .a-GV-header {',
'    border-right: 0px solid white;',
'    height: 2.55rem;',
'}',
'',
'#donations-table .a-GV-headerLabel,',
'#sold-table .a-GV-headerLabel,',
'#total-table .a-GV-headerLabel {',
'    white-space: break-spaces !important;',
'}',
'',
'.header-text {',
'    color: white;',
'    margin-left: .5rem;',
'    font-size: 1.125rem;',
'    font-weight: 500;',
'}',
'',
'/* style returned values */',
'.apex-item-display-only {',
'    font-size: 1.125rem;',
'    font-weight: 400;',
'    color: white;',
'}',
'',
'.hide {',
'    display: none;',
'}',
'',
'.a-GV {',
'    font-size: 1rem;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'600'
,p_dialog_max_width=>'600'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(106020112038478953)
,p_plug_name=>'Status'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>50
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(106021640204478969)
,p_plug_name=>'Status Table'
,p_region_name=>'status-table'
,p_parent_plug_id=>wwv_flow_imp.id(106020112038478953)
,p_region_template_options=>'#DEFAULT#:margin-left-none'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>4
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'       (SELECT "GC_STATUS_NAME" ',
'        FROM "NPM014" npm014 ',
'        WHERE npm014."GC_STATUS_ID" = npt020."GC_STATUS_ID") "ID",',
'       (SELECT "GC_STATUS_NAME" ',
'        FROM "NPM014" npm014 ',
'        WHERE npm014."GC_STATUS_ID" = npt020."GC_STATUS_ID") "GC_STATUS_ID"',
'FROM "NPT020" npt020',
'WHERE ',
'    -- TO_DATE(npt001.date_created, ''MM/DD/YYYY'') BETWEEN TO_DATE(:P83_DATE_FROM, ''MM/DD/YYYY'') ',
'    npt020.ISSUE_DATE BETWEEN :P363_DATE_FROM AND :P363_DATE_TO',
'GROUP BY "GC_STATUS_ID"',
'',
'UNION ',
'',
'SELECT NULL, ''Total'' FROM "NPT020"'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P363_DATE_FROM,P363_DATE_TO'
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
 p_id=>wwv_flow_imp.id(111948356851796751)
,p_name=>'GC_STATUS_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'GC_STATUS_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>48
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(112937613131407546)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(111948279419796750)
,p_internal_uid=>111948279419796750
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>false
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>false
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
 p_id=>wwv_flow_imp.id(112000071071499627)
,p_interactive_grid_id=>wwv_flow_imp.id(111948279419796750)
,p_static_id=>'337780'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(112000263427499630)
,p_report_id=>wwv_flow_imp.id(112000071071499627)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(112000722333499641)
,p_view_id=>wwv_flow_imp.id(112000263427499630)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(111948356851796751)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(113027436256344830)
,p_view_id=>wwv_flow_imp.id(112000263427499630)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(112937613131407546)
,p_is_visible=>true
,p_is_frozen=>false
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(106363814875014349)
,p_plug_name=>'Donations Table'
,p_region_name=>'donations-table'
,p_parent_plug_id=>wwv_flow_imp.id(106020112038478953)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    A.GC_STATUS_ID AS "GC_STATUS_ID",',
'    COALESCE( C.COUNT, 0 ) AS "COUNT",',
'    TO_CHAR(COALESCE( C.DONATIONS_AMOUNT, 0.00 ), ''999,999,999.00'') AS "DONATIONS_AMOUNT",',
'    TO_CHAR(COALESCE( C.BALANCE, 0.00 ), ''999,999,999.00'') AS "BALANCE"',
'FROM ',
'    (',
'        SELECT',
'            (SELECT GC_STATUS_NAME',
'            FROM NPM014 npm014 ',
'            WHERE npm014.GC_STATUS_ID = npt020.GC_STATUS_ID) AS "GC_STATUS_ID",',
'            0 AS "COUNT",',
'            0.00 AS "DONATIONS_AMOUNT",',
'            0.00 AS "BALANCE"',
'        FROM NPT020 npt020',
'        WHERE ',
'            (npt020.ISSUE_DATE BETWEEN :P363_DATE_FROM AND :P363_DATE_TO)',
'        GROUP BY ( "GC_STATUS_ID" )',
'    ) A',
'     ',
'LEFT JOIN',
'    (',
'        SELECT',
'            (SELECT GC_STATUS_NAME',
'            FROM NPM014 npm014 ',
'            WHERE npm014.GC_STATUS_ID = npt020.GC_STATUS_ID) AS "GC_STATUS_ID",',
'            COALESCE( COUNT(*), 0 ) "COUNT",',
'            COALESCE( SUM(npt020.AMOUNT), 0 ) AS "DONATIONS_AMOUNT",',
'            COALESCE( SUM(npt020.BALANCE), 0 ) AS "BALANCE"',
'        FROM NPT020 npt020',
'        WHERE ',
'            ((npt020.ISSUE_DATE BETWEEN :P363_DATE_FROM AND :P363_DATE_TO)',
'            AND',
'            (SELECT DONATION',
'             FROM NPM013 npm013',
'             WHERE npm013.GC_TYPE_ID = npt020.GC_TYPE_ID) = ''Y''',
'            )',
'        GROUP BY ( "GC_STATUS_ID" )',
'    ) C',
'',
'    ON A.GC_STATUS_ID = C.GC_STATUS_ID',
'',
'UNION',
'',
'-- union this to get total using GROUP BY ROLLUP',
'',
'SELECT ',
'       (SELECT GC_STATUS_NAME',
'        FROM NPM014 npm014 ',
'        WHERE npm014.GC_STATUS_ID = npt020.GC_STATUS_ID) AS "GC_STATUS_ID",',
'        COALESCE( COUNT(*), 0 ) "COUNT",',
'        TO_CHAR(COALESCE( SUM(npt020.AMOUNT), 0 ), ''999,999,999.00'') AS "DONATIONS_AMOUNT",',
'        TO_CHAR(COALESCE( SUM(npt020.BALANCE), 0 ), ''999,999,999.00'') AS "BALANCE"',
'FROM NPT020 npt020',
'WHERE ',
'    (npt020.ISSUE_DATE BETWEEN :P363_DATE_FROM AND :P363_DATE_TO)',
'    AND',
'    (SELECT DONATION',
'     FROM NPM013 npm013',
'     WHERE npm013.GC_TYPE_ID = npt020.GC_TYPE_ID) = ''Y''',
'',
'GROUP BY ROLLUP ( "GC_STATUS_ID" )',
'',
'UNION',
'    ',
'SELECT ''0'', 0, ''0.00'', ''0.00''',
'FROM dual',
'WHERE NOT EXISTS',
'      ( ',
'        SELECT ',
'               (SELECT GC_STATUS_NAME',
'                FROM NPM014 npm014 ',
'                WHERE npm014.GC_STATUS_ID = npt020.GC_STATUS_ID) AS "GC_STATUS_ID",',
'                COALESCE( COUNT(*), 0 ) "COUNT",',
'                COALESCE( SUM(npt020.AMOUNT), 0 ) AS "DONATIONS_AMOUNT",',
'                COALESCE( SUM(npt020.BALANCE), 0 ) AS "BALANCE"',
'        FROM NPT020 npt020',
'        WHERE ',
'            (npt020.ISSUE_DATE BETWEEN :P363_DATE_FROM AND :P363_DATE_TO)',
'            AND',
'            (SELECT DONATION',
'             FROM NPM013 npm013',
'             WHERE npm013.GC_TYPE_ID = npt020.GC_TYPE_ID) = ''Y''',
'',
'        GROUP BY ROLLUP ( "GC_STATUS_ID" )',
'      )',
';'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P363_DATE_FROM,P363_DATE_TO'
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
 p_id=>wwv_flow_imp.id(111948779820796755)
,p_name=>'COUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COUNT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Count'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'RIGHT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
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
 p_id=>wwv_flow_imp.id(111948982831796757)
,p_name=>'BALANCE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BALANCE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Balance'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'RIGHT'
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
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(111950358191796771)
,p_name=>'GC_STATUS_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'GC_STATUS_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(111950890499796776)
,p_name=>'DONATIONS_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DONATIONS_AMOUNT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Donations Amount'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>false
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
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(111948435955796752)
,p_internal_uid=>111948435955796752
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>false
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
 p_id=>wwv_flow_imp.id(112029044853639342)
,p_interactive_grid_id=>wwv_flow_imp.id(111948435955796752)
,p_static_id=>'338070'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(112029308781639342)
,p_report_id=>wwv_flow_imp.id(112029044853639342)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(112033426021639366)
,p_view_id=>wwv_flow_imp.id(112029308781639342)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(111948779820796755)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(112035184757639380)
,p_view_id=>wwv_flow_imp.id(112029308781639342)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(111948982831796757)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(112095662308119236)
,p_view_id=>wwv_flow_imp.id(112029308781639342)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(111950358191796771)
,p_is_visible=>true
,p_is_frozen=>false
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(112106992644186027)
,p_view_id=>wwv_flow_imp.id(112029308781639342)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(111950890499796776)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(106022308025478975)
,p_plug_name=>'Date range'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody:t-Form--leftLabels'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>40
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(78222473325759884)
,p_button_sequence=>100
,p_button_name=>'Close'
,p_button_static_id=>'exit'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Close'
,p_warn_on_unsaved_changes=>null
,p_grid_column_css_classes=>'hide'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(106033689323479123)
,p_name=>'P363_TITLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(106022308025478975)
,p_prompt=>'<span class="header-text">Statistics</span>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(106033800403479124)
,p_name=>'P363_DATE-RANGE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(106022308025478975)
,p_prompt=>'<span class="header-text">Date Range: &P363_DATE_FROM. - &P363_DATE_TO.</span>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>7
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111958993627796931)
,p_name=>'P363_DATE_FROM'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111959119341796932)
,p_name=>'P363_DATE_TO'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(78234772065760029)
,p_name=>'Escape'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(78222473325759884)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(78235245963760034)
,p_event_id=>wwv_flow_imp.id(78234772065760029)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp.component_end;
end;
/
