prompt --application/pages/page_00310
begin
--   Manifest
--     PAGE: 00310
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
 p_id=>310
,p_name=>'Gift Certificate'
,p_alias=>'GIFT-CERTIFICATE'
,p_step_title=>'Gift Certificate'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p6KeyMap = {',
'    escape : (v) => {',
'        $("#exit").trigger("click");',
'    },',
'    s : (v) => {',
'        $("#s").trigger("click");',
'    },',
'    a : (v) => {',
'        $("#a").trigger("click");',
'    },',
'    u : (v) => {',
'        $("#u").trigger("click");',
'    },',
'    i : (v) => {',
'        $("#i").trigger("click");',
'    },',
'    p : (v) => {',
'        setTimeout(() => {',
'            $(document).ready(function() {',
'                $("#p").trigger("click");',
'            });',
'        }, 350);',
'    },',
'    t : (v) => {',
'        $("#t").trigger("click");',
'    },',
'    r : (v) => {',
'        $("#r").trigger("click");',
'    },',
'    v : (v) => {',
'        $("#v").trigger("click");',
'    },',
'    n : (v) => {',
'        setTimeout(() => {',
'            $(document).ready(function() {',
'                $("#n").trigger("click");',
'            });',
'        }, 350);',
'    },',
'}',
'',
'function mapP6Keys() {',
'    $(document).off(''keydown.p6keyevents'');',
'    $(document).on(''keydown.p6keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'            if (p6KeyMap[key]) {',
'                ev.preventDefault();',
'                p6KeyMap[key]();',
'            }',
'    });',
'}',
'',
'function customEvent(event, data){',
'    mapP6Keys();',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP6Keys();',
'setTitle("Gift Certificate Create/Update")',
'',
'// to pop search modal upon loading page',
'$("#s").trigger("click");'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Header .t-Header-branding {',
'    background-color: white !important;',
'    color: rgb(30, 58, 138) !important;',
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
'',
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
'    width: 95vw;',
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
'#table .a-GV-table colgroup col:nth-child(2) {',
'    width: 20%;',
'}',
'',
'#table .a-GV-table colgroup col:nth-child(3) {',
'    width: 15%;',
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
'}',
'',
'#P310_TOGGLE_LABEL,',
'#P310_TOGGLE_DISPLAY {',
'    font-size: 1.125rem;',
'    color: white;',
'    font-weight: 600;',
'}'))
,p_step_template=>wwv_flow_imp.id(5671392681337017)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18625585793263501)
,p_plug_name=>'Buttons'
,p_plug_display_sequence=>140
,p_plug_grid_row_css_classes=>'buttons-row'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(28430546326015709)
,p_plug_name=>'Gift Certificate List'
,p_title=>'Gift Certificate List'
,p_region_name=>'table'
,p_region_template_options=>'#DEFAULT#:margin-top-md'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>130
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH ALL_GC AS (',
'    SELECT ',
'        -- Create ranking for sorting order',
'        CASE ',
'            WHEN extract(year from npt020.ISSUE_DATE) = :P310_ISSUE_YR THEN TO_CHAR(npt020.DONATION_GC_NO - 1000000000000)',
'            WHEN npt020.DONATION_GC_NO = :P310_GC_NO THEN 2 || npt020.DONATION_GC_NO',
'            WHEN npt020.DONATION_GC_NO LIKE :P310_GC_NO || ''%'' THEN 3 || npt020.DONATION_GC_NO',
'            WHEN npt020.DONATION_GC_NO LIKE ''%'' || :P310_GC_NO || ''%'' THEN 4 || npt020.DONATION_GC_NO',
'            ELSE 5 || npt020.DONATION_GC_NO',
'        END AS "Primary Key",',
'        npt020.DONATION_GC_NO AS "GC_NO",',
'        npt020.DESCRIPTION_1 AS "DESCRIPTION_1",',
'        npt020.DESCRIPTION_2 AS "DESCRIPTION_2",',
'        CASE ',
'            WHEN npt020.AMOUNT = 0 THEN ''0.00''',
'            ELSE TO_CHAR(npt020.AMOUNT, ''999,999,999.00'')',
'        END AS "AMOUNT",',
'        CASE ',
'            WHEN npt020.BALANCE = 0 THEN ''0.00''',
'            ELSE TO_CHAR(npt020.BALANCE, ''999,999,999.00'')',
'        END AS "BALANCE",',
'        TO_CHAR(npt020.ISSUE_DATE, ''MM/DD/YYYY'') AS "ISSUE_DATE",',
'        TO_CHAR(npt020.EXPIRY_DATE, ''MM/DD/YYYY'') AS "EXPIRY_DATE",',
'        TO_CHAR(npt020.RELEASE_DATE, ''MM/DD/YYYY'') AS "RELEASE_DATE",',
'        npm014.GC_STATUS_NAME AS "STATUS",',
'        (SELECT ',
'            CASE ',
'                WHEN npm013.DONATION = ''Y'' THEN ''D''',
'                ELSE ''N''',
'            END',
'         FROM NPM013 npm013 ',
'         WHERE npm013.GC_TYPE_ID = npt020.GC_TYPE_ID) AS "D/N"',
'    FROM',
'        NPT020 npt020',
'    JOIN ',
'        NPM014 npm014 ON npt020.GC_STATUS_ID = npm014.GC_STATUS_ID',
'    WHERE ',
'        (',
'            -- Search by ISSUE YEAR if provided',
'            (:P310_ISSUE_YR IS NOT NULL OR :P310_ISSUE_YR != '''') AND',
'            extract(year from npt020.ISSUE_DATE) = :P310_ISSUE_YR AND ',
'            npt020.DONATION_GC_NO IS NOT NULL',
'        )',
'        OR',
'        (',
'            -- Search by GC NO if provided',
'            (:P310_ISSUE_YR IS NULL AND (:P310_GC_NO IS NOT NULL OR :P310_GC_NO != '''')) AND',
'            (',
'                npt020.DONATION_GC_NO = :P310_GC_NO',
'                OR npt020.DONATION_GC_NO LIKE :P310_GC_NO || ''%''',
'                OR npt020.DONATION_GC_NO LIKE ''%'' || :P310_GC_NO || ''%''',
'                OR npt020.DONATION_GC_NO LIKE ''%'' || :P310_GC_NO',
'            )',
'            AND npt020.DONATION_GC_NO IS NOT NULL',
'        )',
'',
'    UNION ALL',
'',
'    SELECT ',
'        -- Create ranking for sorting order',
'        CASE ',
'            WHEN extract(year from npt020.ISSUE_DATE) = :P310_ISSUE_YR THEN TO_CHAR(npt020.REGULAR_GC_NO - 100000000001)',
'            WHEN npt020.REGULAR_GC_NO = :P310_GC_NO THEN 2 || npt020.REGULAR_GC_NO || 1',
'            WHEN npt020.REGULAR_GC_NO LIKE :P310_GC_NO || ''%'' THEN 3 || npt020.REGULAR_GC_NO || 1',
'            WHEN npt020.REGULAR_GC_NO LIKE ''%'' || :P310_GC_NO || ''%'' THEN 4 || npt020.REGULAR_GC_NO || 1',
'            ELSE 5 || npt020.REGULAR_GC_NO || 1',
'        END AS "Primary Key",',
'        npt020.REGULAR_GC_NO AS "GC_NO",',
'        npt020.DESCRIPTION_1 AS "DESCRIPTION_1",',
'        npt020.DESCRIPTION_2 AS "DESCRIPTION_2",',
'        CASE ',
'            WHEN npt020.AMOUNT = 0 THEN ''0.00''',
'            ELSE TO_CHAR(npt020.AMOUNT, ''999,999,999.00'')',
'        END AS "AMOUNT",',
'        CASE ',
'            WHEN npt020.BALANCE = 0 THEN ''0.00''',
'            ELSE TO_CHAR(npt020.BALANCE, ''999,999,999.00'')',
'        END AS "BALANCE",',
'        TO_CHAR(npt020.ISSUE_DATE, ''MM/DD/YYYY'') AS "ISSUE_DATE",',
'        TO_CHAR(npt020.EXPIRY_DATE, ''MM/DD/YYYY'') AS "EXPIRY_DATE",',
'        TO_CHAR(npt020.RELEASE_DATE, ''MM/DD/YYYY'') AS "RELEASE_DATE",',
'        npm014.GC_STATUS_NAME AS "STATUS",',
'        (SELECT ',
'            CASE ',
'                WHEN npm013.DONATION = ''Y'' THEN ''D''',
'                ELSE ''N''',
'            END',
'         FROM NPM013 npm013 ',
'         WHERE npm013.GC_TYPE_ID = npt020.GC_TYPE_ID) AS "D/N"',
'    FROM',
'        NPT020 npt020',
'    JOIN ',
'        NPM014 npm014 ON npt020.GC_STATUS_ID = npm014.GC_STATUS_ID',
'    WHERE ',
'        (',
'            -- Search by ISSUE YEAR if provided',
'            (:P310_ISSUE_YR IS NOT NULL OR :P310_ISSUE_YR != '''') AND',
'            extract(year from npt020.ISSUE_DATE) = :P310_ISSUE_YR AND ',
'            npt020.REGULAR_GC_NO IS NOT NULL',
'        )',
'        OR',
'        (',
'            -- Search by GC NO if provided',
'            (:P310_ISSUE_YR IS NULL AND (:P310_GC_NO IS NOT NULL OR :P310_GC_NO != '''')) AND',
'            (',
'                npt020.REGULAR_GC_NO = :P310_GC_NO',
'                OR npt020.REGULAR_GC_NO LIKE :P310_GC_NO || ''%''',
'                OR npt020.REGULAR_GC_NO LIKE ''%'' || :P310_GC_NO || ''%''',
'                OR npt020.REGULAR_GC_NO LIKE ''%'' || :P310_GC_NO',
'            )',
'            AND npt020.REGULAR_GC_NO IS NOT NULL',
'        )',
')',
'SELECT *',
'FROM ALL_GC',
'WHERE ',
'    (:P310_TOGGLE = ''Both'' AND ("D/N" = ''D'' OR "D/N" = ''N''))',
'    OR',
'    (:P310_TOGGLE = ''Regular Only'' AND ("D/N" = ''N''))',
'    OR',
'    (:P310_TOGGLE = ''Donation Only'' AND ("D/N" = ''D''));'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P310_ISSUE_YR,P310_GC_NO,P310_TOGGLE'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28430705968015711)
,p_name=>'GC_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'GC_NO'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'GC No'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
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
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28430822522015712)
,p_name=>'DESCRIPTION_1'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCRIPTION_1'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Description 1'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28430966962015713)
,p_name=>'DESCRIPTION_2'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCRIPTION_2'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Description 2'
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
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28431017756015714)
,p_name=>'AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AMOUNT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Amount'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
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
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28431180050015715)
,p_name=>'BALANCE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BALANCE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Balance'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'RIGHT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28431274284015716)
,p_name=>'ISSUE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ISSUE_DATE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Issue Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
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
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28431358147015717)
,p_name=>'EXPIRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXPIRY_DATE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Expiry Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28431471846015718)
,p_name=>'RELEASE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RELEASE_DATE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Release Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
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
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28431571210015719)
,p_name=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Status'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(30147016525825001)
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
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(77935224464036536)
,p_name=>'D/N'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'D/N'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'D&#x2F;N'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4
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
 p_id=>wwv_flow_imp.id(28430697845015710)
,p_internal_uid=>28430697845015710
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>false
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
 p_id=>wwv_flow_imp.id(28523224422006196)
,p_interactive_grid_id=>wwv_flow_imp.id(28430697845015710)
,p_static_id=>'285233'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(28523464409006196)
,p_report_id=>wwv_flow_imp.id(28523224422006196)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(28523958360006207)
,p_view_id=>wwv_flow_imp.id(28523464409006196)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(28430705968015711)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(28524898795006218)
,p_view_id=>wwv_flow_imp.id(28523464409006196)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(28430822522015712)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(28525632561006225)
,p_view_id=>wwv_flow_imp.id(28523464409006196)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(28430966962015713)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(28526561507006231)
,p_view_id=>wwv_flow_imp.id(28523464409006196)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(28431017756015714)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(28527499849006237)
,p_view_id=>wwv_flow_imp.id(28523464409006196)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(28431180050015715)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(28528333386006243)
,p_view_id=>wwv_flow_imp.id(28523464409006196)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(28431274284015716)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(28529228254006250)
,p_view_id=>wwv_flow_imp.id(28523464409006196)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(28431358147015717)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(28530164675006256)
,p_view_id=>wwv_flow_imp.id(28523464409006196)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(28431471846015718)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(28531020464006262)
,p_view_id=>wwv_flow_imp.id(28523464409006196)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(28431571210015719)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(30153036505827892)
,p_view_id=>wwv_flow_imp.id(28523464409006196)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(30147016525825001)
,p_is_visible=>false
,p_is_frozen=>false
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(81095343937846710)
,p_view_id=>wwv_flow_imp.id(28523464409006196)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(77935224464036536)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18625619398263502)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(18625585793263501)
,p_button_name=>'Search'
,p_button_static_id=>'s'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>S </u>- Search'
,p_button_redirect_url=>'f?p=&APP_ID.:311:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'btns text-left'
,p_grid_column_css_classes=>'mt-3'
,p_grid_new_row=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18625716115263503)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(18625585793263501)
,p_button_name=>'Add'
,p_button_static_id=>'a'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>A </u>- Add'
,p_button_redirect_url=>'f?p=&APP_ID.:312:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'btns text-left'
,p_grid_column_css_classes=>'mt-3'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18625845698263504)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(18625585793263501)
,p_button_name=>'Update'
,p_button_static_id=>'u'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>U </u>- Update'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'has_access(:APP_USER, 2, 7) = ''Y'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'btns text-left'
,p_grid_column_css_classes=>'mt-3'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18625910719263505)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(18625585793263501)
,p_button_name=>'Inquire'
,p_button_static_id=>'i'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>I </u>- Inquire'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_column_css_classes=>'mt-3'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18626077494263506)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(18625585793263501)
,p_button_name=>'Print'
,p_button_static_id=>'p'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>P </u>- Print'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_column_css_classes=>'mt-3'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(77936383768036547)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(18625585793263501)
,p_button_name=>'Toggle'
,p_button_static_id=>'t'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>T </u>- Toggle'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_column_css_classes=>'mt-3'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26313559983216515)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(18625585793263501)
,p_button_name=>'Release'
,p_button_static_id=>'r'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>R </u>- Release'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_column_css_classes=>'mt-2'
,p_grid_new_row=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26313678375216516)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(18625585793263501)
,p_button_name=>'Void'
,p_button_static_id=>'v'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>V </u>- Void'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_column_css_classes=>'mt-2'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26313740483216517)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(18625585793263501)
,p_button_name=>'Void_And_Print_new'
,p_button_static_id=>'n'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>N </u>- Void & Print New'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_column_css_classes=>'mt-2'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(28430266277015706)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_imp.id(18625585793263501)
,p_button_name=>'Back'
,p_button_static_id=>'exit'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Back'
,p_button_redirect_url=>'f?p=&APP_ID.:304:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'btns text-left'
,p_grid_column_css_classes=>'mt-2 hide'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28431903679015723)
,p_name=>'P310_ISSUE_YR'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28432058433015724)
,p_name=>'P310_GC_NO'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28434416666015748)
,p_name=>'P310_SELECTED_GC_NO'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30147158263825002)
,p_name=>'P310_PREPARED_URL'
,p_item_sequence=>60
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30917104078029538)
,p_name=>'P310_GET_SUCCESS_MSG'
,p_item_sequence=>50
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34718911167647749)
,p_name=>'P310_SELECTED_GC_STATUS'
,p_item_sequence=>70
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37009355742700430)
,p_name=>'P310_IS_DONATION'
,p_item_sequence=>80
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37009423656700431)
,p_name=>'P310_PRINT_ID'
,p_item_sequence=>90
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74199711984493923)
,p_name=>'P310_SELECTED_INDEX'
,p_item_sequence=>100
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77936175750036545)
,p_name=>'P310_TOGGLE'
,p_item_sequence=>110
,p_prompt=>'Toggle:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_column=>9
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(30477801856245233)
,p_computation_sequence=>30
,p_computation_item=>'P310_SELECTED_GC_NO'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
,p_computation_comment=>'this is used to clear the last assigned value'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(30477932897245234)
,p_computation_sequence=>40
,p_computation_item=>'P310_PREPARED_URL'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
,p_computation_comment=>'this is used to clear the last assigned value'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(30917699532029543)
,p_computation_sequence=>50
,p_computation_item=>'P310_GET_SUCCESS_MSG'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(37010115313700438)
,p_computation_sequence=>60
,p_computation_item=>'P310_SELECTED_GC_STATUS'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(37010283427700439)
,p_computation_sequence=>70
,p_computation_item=>'P310_IS_DONATION'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(37010355357700440)
,p_computation_sequence=>80
,p_computation_item=>'P310_PRINT_ID'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28431680511015720)
,p_name=>'Get Search Value'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(18625619398263502)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28431878970015722)
,p_event_id=>wwv_flow_imp.id(28431680511015720)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'Get Issue Yr Search'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P310_ISSUE_YR'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P311_SEARCH_BY_ISSUE_YR'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28432155509015725)
,p_event_id=>wwv_flow_imp.id(28431680511015720)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'Get Gc No Search'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P310_GC_NO'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P311_GC_NO'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28432587909015729)
,p_event_id=>wwv_flow_imp.id(28431680511015720)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(28430546326015709)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28434632925015750)
,p_event_id=>wwv_flow_imp.id(28431680511015720)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_name=>'To select 1st cell of the table'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(28430546326015709)
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(() => {',
'  $( document ).ready(function() {',
'    $(".a-GV-cell").first().trigger("click");',
' });',
'',
'',
'}, "500");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28434269922015746)
,p_name=>'Selection Change'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(28430546326015709)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28434386620015747)
,p_event_id=>wwv_flow_imp.id(28434269922015746)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (this.data.selectedRecords.length > 0) {',
'    let itemNoSelected = this.data.selectedRecords[0][1];',
'    let itemStatusSelected = this.data.selectedRecords[0][9];',
'    let index = this.data.selectedRecords[0][0];',
'    let isDonation = this.data.selectedRecords[0][10];',
'',
'    apex.item("P310_SELECTED_GC_NO").setValue(itemNoSelected);',
'    apex.item("P310_SELECTED_GC_STATUS").setValue(itemStatusSelected);',
'    apex.item("P310_SELECTED_INDEX").setValue(index);',
'    apex.item("P310_IS_DONATION").setValue(isDonation === ''D'' ? ''Y'' : ''N'');',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30147284634825003)
,p_name=>'Update selected GC'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(18625845698263504)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'apex.item("P310_SELECTED_GC_STATUS").getValue() !== "Voided" && apex.item("P310_SELECTED_GC_NO").getValue() !== null'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30147413321825005)
,p_event_id=>wwv_flow_imp.id(30147284634825003)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- redirect and pass value to url (which is the update page)',
'BEGIN',
'    :P310_PREPARED_URL := apex_page.get_url(',
'       p_page   => 317,',
'       p_items  => ''P317_GC_NO,P317_IS_DONATION'',',
'       p_values => :P310_SELECTED_GC_NO || '','' || :P310_IS_DONATION',
'     );',
'END;'))
,p_attribute_02=>'P310_SELECTED_GC_NO,P310_IS_DONATION'
,p_attribute_03=>'P310_PREPARED_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30147552575825006)
,p_event_id=>wwv_flow_imp.id(30147284634825003)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// set url to redirect to update',
'let url = $v("P310_PREPARED_URL");',
'apex.navigation.redirect(url);'))
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P310_PREPARED_URL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30915812671029525)
,p_name=>'Open release popup'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(26313559983216515)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'apex.item("P310_SELECTED_GC_STATUS").getValue() !== "Voided" && apex.item("P310_SELECTED_GC_NO").getValue() !== null'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30916442063029531)
,p_event_id=>wwv_flow_imp.id(30915812671029525)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- redirect and pass value to url (which is the release dialog modal)',
'BEGIN',
'    :P310_PREPARED_URL := apex_page.get_url(',
'       p_page   => 315,',
'       p_items  => ''P315_GET_SELECTED_GC_NO,P315_GET_SEARCHED_YEAR,P315_GET_SEARCHED_GC_NO,P315_IS_DONATION'',',
'       p_values => :P310_SELECTED_GC_NO || '','' || :P310_ISSUE_YR || '','' || :P310_GC_NO || '','' || :P310_IS_DONATION',
'     );',
'END;'))
,p_attribute_02=>'P310_SELECTED_GC_NO,P310_IS_DONATION'
,p_attribute_03=>'P310_PREPARED_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P310_SELECTED_GC_NO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30916590671029532)
,p_event_id=>wwv_flow_imp.id(30915812671029525)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// set url to redirect to release dialog modal',
'let url = $v("P310_PREPARED_URL");',
'apex.navigation.redirect(url);'))
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P310_PREPARED_URL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(31990303068279522)
,p_name=>'Open inquire popup'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(18625910719263505)
,p_condition_element=>'P310_SELECTED_GC_NO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31990494386279523)
,p_event_id=>wwv_flow_imp.id(31990303068279522)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P310_PREPARED_URL := apex_page.get_url(',
'       p_page   => 314,',
'       p_items  => ''P314_GET_SELECTED_GC_NO,P314_IS_DONATION'',',
'       p_values => :P310_SELECTED_GC_NO || '','' || :P310_IS_DONATION',
'     );',
'END;'))
,p_attribute_02=>'P310_SELECTED_GC_NO,P310_IS_DONATION'
,p_attribute_03=>'P310_PREPARED_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P310_SELECTED_GC_NO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31990507198279524)
,p_event_id=>wwv_flow_imp.id(31990303068279522)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// set url to redirect to release dialog modal',
'let url = $v("P310_PREPARED_URL");',
'apex.navigation.redirect(url);'))
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P310_PREPARED_URL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30917460221029541)
,p_name=>'Release GC Close Dialog'
,p_event_sequence=>60
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30917598533029542)
,p_event_id=>wwv_flow_imp.id(30917460221029541)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process(''GET_SUCCESS_MSG'', {}, {',
'        success: function(data) {',
'            if (data.success_msg) {',
'',
'                apex.message.showPageSuccess(data.success_msg);',
'',
'                setTimeout(function() {',
'                    $(".apex-page-success").fadeOut(400);',
'                }, 3000);',
'',
'            }',
'        }',
'    });',
'',
'// refreshes the table to update the release date',
'// apex.region("table").refresh();'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30917978674029546)
,p_event_id=>wwv_flow_imp.id(30917460221029541)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'Refresh table to see update'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(28430546326015709)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(34715009781647710)
,p_name=>'Void selected gc'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(26313678375216516)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'apex.item("P310_SELECTED_GC_STATUS").getValue() !== "Voided" && apex.item("P310_SELECTED_GC_NO").getValue() !== null'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34715131873647711)
,p_event_id=>wwv_flow_imp.id(34715009781647710)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    sys.dbms_session.sleep(3);',
'    ',
'    IF :P310_IS_DONATION = ''Y'' THEN ',
'        UPDATE NPT020 npt020',
'            SET BALANCE = 0,',
'                AMOUNT = 0,',
'                GC_STATUS_ID = (SELECT npm014.GC_STATUS_ID',
'                                FROM NPM014 npm014',
'                                WHERE UPPER(npm014.GC_STATUS_NAME) = ''VOIDED''),',
'                USER_UPDATE = :app_user, ',
'                DATE_UPDATED = SYSDATE',
'            WHERE npt020.DONATION_GC_NO = :P310_SELECTED_GC_NO;',
'    ELSE ',
'        UPDATE NPT020',
'            SET BALANCE = 0,',
'                AMOUNT = 0,',
'                GC_STATUS_ID = (SELECT npm014.GC_STATUS_ID',
'                                FROM NPM014 npm014',
'                                WHERE UPPER(npm014.GC_STATUS_NAME) = ''VOIDED''),',
'                USER_UPDATE = :app_user, ',
'                DATE_UPDATED = SYSDATE',
'            WHERE npt020.REGULAR_GC_NO = :P310_SELECTED_GC_NO;',
'    END IF;',
'END;'))
,p_attribute_02=>'P310_SELECTED_GC_NO,P310_IS_DONATION'
,p_attribute_03=>'P310_PREPARED_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'GREATER_THAN'
,p_client_condition_element=>'P310_SELECTED_GC_NO'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34715238603647712)
,p_event_id=>wwv_flow_imp.id(34715009781647710)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess( "Successfully voided gift certificate" );'
,p_client_condition_type=>'GREATER_THAN'
,p_client_condition_element=>'P310_SELECTED_GC_NO'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34715517143647715)
,p_event_id=>wwv_flow_imp.id(34715009781647710)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(function() {',
'    $(''.t-Button--closeAlert'').click();',
'}, 3000);'))
,p_client_condition_type=>'GREATER_THAN'
,p_client_condition_element=>'P310_SELECTED_GC_NO'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34715350839647713)
,p_event_id=>wwv_flow_imp.id(34715009781647710)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(28430546326015709)
,p_client_condition_type=>'GREATER_THAN'
,p_client_condition_element=>'P310_SELECTED_GC_NO'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(34717047883647730)
,p_name=>'Open copies popup'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(18626077494263506)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'apex.item("P310_SELECTED_GC_STATUS").getValue().toUpperCase() !== "VOIDED" && apex.item("P310_SELECTED_GC_STATUS").getValue().toUpperCase() !== "EXPIRED" && apex.item("P310_SELECTED_GC_NO").getValue() !== null'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34717239692647732)
,p_event_id=>wwv_flow_imp.id(34717047883647730)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P310_PREPARED_URL := apex_page.get_url(',
'       p_page   => 362,',
'       p_items  => ''P362_SELECTED_GC_NO,P362_IS_DONATION'',',
'       p_values => :P310_SELECTED_GC_NO || '','' || :P310_IS_DONATION',
'     );',
'END;'))
,p_attribute_02=>'P310_SELECTED_GC_NO,P310_IS_DONATION'
,p_attribute_03=>'P310_PREPARED_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'$("#P310_SELECTED_GC_STATUS").val().toUpperCase() === "PRINTED"'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77933072171036514)
,p_event_id=>wwv_flow_imp.id(34717047883647730)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P310_PREPARED_URL := apex_page.get_url(',
'       p_page   => 313,',
'       p_items  => ''P313_SELECTED_GC_NO,P313_IS_DONATION'',',
'       p_values => :P310_SELECTED_GC_NO || '','' || :P310_IS_DONATION',
'     );',
'END;'))
,p_attribute_02=>'P310_SELECTED_GC_NO,P310_IS_DONATION'
,p_attribute_03=>'P310_PREPARED_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'$("#P310_SELECTED_GC_STATUS").val().toUpperCase() !== "PRINTED"'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34717329741647733)
,p_event_id=>wwv_flow_imp.id(34717047883647730)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P310_PREPARED_URL");',
'apex.navigation.redirect(url);'))
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'$("#P310_SELECTED_GC_STATUS").val().toUpperCase() !== "VOIDED" && $("#P310_SELECTED_GC_STATUS").val().toUpperCase() !== "EXPIRED"'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37008869593700425)
,p_name=>'Void and print selected gc'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(26313740483216517)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'apex.item("P310_SELECTED_GC_STATUS").getValue() !== "Voided" && $("#P310_SELECTED_GC_STATUS").val().toUpperCase() !== "EXPIRED" && apex.item("P310_SELECTED_GC_NO").getValue() !== null'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38243280129771113)
,p_event_id=>wwv_flow_imp.id(37008869593700425)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'Trigger spinner'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.widget.waitPopup()'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37009605551700433)
,p_event_id=>wwv_flow_imp.id(37008869593700425)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_name=>'Set new PRINT_ID'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P310_PRINT_ID'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'l_return_value  NUMBER := NULL;',
'',
'BEGIN',
'',
'    SELECT (NVL(MAX(npt020.PRINT_ID), 0) + 1) INTO l_return_value',
'    FROM NPT020 npt020;',
'',
'    RETURN l_return_value;',
'',
'END;'))
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37009925833700436)
,p_event_id=>wwv_flow_imp.id(37008869593700425)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_name=>'Insert copy of selected gc print id'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P310_IS_DONATION = ''Y'' THEN ',
'        INSERT INTO NPT020 (',
'            GIFT_CERTIFICATE_ID,',
'            GC_TYPE_ID, AMOUNT, ISSUE_DATE, EXPIRY_DATE, DESCRIPTION_1, ',
'            DESCRIPTION_2, THIS_ENTITLES, REMARKS, BEST_WISHES, RECIPIENT, EVENT, ',
'            BALANCE, GC_STATUS_ID, USER_CREATED, DATE_CREATED, PRINT_ID,',
'            INVOICE_ID, CASH_INVOICE_ID, DONATION_GC_NO',
'        )',
'',
'        SELECT (SELECT NVL(MAX(GIFT_CERTIFICATE_ID), 0) + 1 FROM NPT020),',
'            GC_TYPE_ID, AMOUNT, ISSUE_DATE, EXPIRY_DATE, DESCRIPTION_1, ',
'            DESCRIPTION_2, THIS_ENTITLES, REMARKS, BEST_WISHES, RECIPIENT, EVENT, ',
'            BALANCE, (SELECT npm014.GC_STATUS_ID',
'                                FROM NPM014 npm014',
'                                WHERE UPPER(npm014.GC_STATUS_NAME) = ''PRINTED''), ',
'            :app_user, SYSDATE, :P310_PRINT_ID,',
'            INVOICE_ID, CASH_INVOICE_ID, (SELECT NVL(MAX(DONATION_GC_NO), 0) + 1 FROM NPT020)',
'        FROM NPT020',
'        WHERE DONATION_GC_NO = :P310_SELECTED_GC_NO;',
'    ELSE',
'        INSERT INTO NPT020 (',
'            GIFT_CERTIFICATE_ID,',
'            GC_TYPE_ID, AMOUNT, ISSUE_DATE, EXPIRY_DATE, DESCRIPTION_1, ',
'            DESCRIPTION_2, THIS_ENTITLES, REMARKS, BEST_WISHES, RECIPIENT, EVENT, ',
'            BALANCE, GC_STATUS_ID, USER_CREATED, DATE_CREATED, PRINT_ID,',
'            INVOICE_ID, CASH_INVOICE_ID, REGULAR_GC_NO',
'        )',
'',
'        SELECT (SELECT NVL(MAX(GIFT_CERTIFICATE_ID), 0) + 1 FROM NPT020),',
'            GC_TYPE_ID, AMOUNT, ISSUE_DATE, EXPIRY_DATE, DESCRIPTION_1, ',
'            DESCRIPTION_2, THIS_ENTITLES, REMARKS, BEST_WISHES, RECIPIENT, EVENT, ',
'            BALANCE, (SELECT npm014.GC_STATUS_ID',
'                                FROM NPM014 npm014',
'                                WHERE UPPER(npm014.GC_STATUS_NAME) = ''PRINTED''), ',
'            :app_user, SYSDATE, :P310_PRINT_ID,',
'            INVOICE_ID, CASH_INVOICE_ID, (SELECT NVL(MAX(REGULAR_GC_NO), 0) + 1 FROM NPT020)',
'        FROM NPT020',
'        WHERE REGULAR_GC_NO = :P310_SELECTED_GC_NO;',
'    END IF;',
'END;'))
,p_attribute_02=>'P310_SELECTED_GC_NO,P310_PRINT_ID,P310_IS_DONATION'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37009296567700429)
,p_event_id=>wwv_flow_imp.id(37008869593700425)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v("P310_IS_DONATION") === "Y") {',
'    generateReport("GC_DONATION", "pdf", { ',
'        fileName: "Gift_Certificate_Print_Id_" + $v("P310_PRINT_ID") + ".pdf",',
'        mode : "print",',
'        parameters : {',
'            P_SELECTED_PRINT_ID : $v("P310_PRINT_ID")',
'        },',
'        spinnerEnabled : false',
'    });',
'} else {',
'    generateReport("GC_NORMAL", "pdf", { ',
'        fileName: "Gift_Certificate_Print_Id_" + $v("P310_PRINT_ID") + ".pdf",',
'        mode : "print",',
'        parameters : {',
'            P_SELECTED_PRINT_ID : $v("P310_PRINT_ID")',
'        },',
'        spinnerEnabled : false',
'    });',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37009187316700428)
,p_event_id=>wwv_flow_imp.id(37008869593700425)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_name=>'Set selected gc to void'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    sys.dbms_session.sleep(3);',
'    ',
'    IF :P310_IS_DONATION = ''Y'' THEN ',
'        UPDATE NPT020 npt020',
'            SET BALANCE = 0,',
'                AMOUNT = 0,',
'                GC_STATUS_ID = (SELECT npm014.GC_STATUS_ID',
'                                FROM NPM014 npm014',
'                                WHERE UPPER(npm014.GC_STATUS_NAME) = ''VOIDED''),',
'                USER_UPDATE = :app_user, ',
'                DATE_UPDATED = SYSDATE',
'            WHERE npt020.DONATION_GC_NO = :P310_SELECTED_GC_NO;',
'    ELSE ',
'        UPDATE NPT020',
'            SET BALANCE = 0,',
'                AMOUNT = 0,',
'                GC_STATUS_ID = (SELECT npm014.GC_STATUS_ID',
'                                FROM NPM014 npm014',
'                                WHERE UPPER(npm014.GC_STATUS_NAME) = ''VOIDED''),',
'                USER_UPDATE = :app_user, ',
'                DATE_UPDATED = SYSDATE',
'            WHERE npt020.REGULAR_GC_NO = :P310_SELECTED_GC_NO;',
'    END IF;',
'END;'))
,p_attribute_02=>'P310_SELECTED_GC_NO,P310_IS_DONATION'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37009788882700434)
,p_event_id=>wwv_flow_imp.id(37008869593700425)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess( "Successfully voided gift certificate" );'
,p_client_condition_type=>'GREATER_THAN'
,p_client_condition_element=>'P310_SELECTED_GC_NO'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37009860101700435)
,p_event_id=>wwv_flow_imp.id(37008869593700425)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(function() {',
'    $(''.t-Button--closeAlert'').click();',
'',
'    setTimeout(() => {',
'    $( document ).ready(function() {',
'        $(".a-GV-cell").first().trigger("click");',
'    });',
'    }, "500");',
'}, 3000);'))
,p_client_condition_type=>'GREATER_THAN'
,p_client_condition_element=>'P310_SELECTED_GC_NO'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37010067940700437)
,p_event_id=>wwv_flow_imp.id(37008869593700425)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(28430546326015709)
,p_client_condition_type=>'GREATER_THAN'
,p_client_condition_element=>'P310_SELECTED_GC_NO'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38243381699771114)
,p_event_id=>wwv_flow_imp.id(37008869593700425)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'N'
,p_name=>'Remove spinner'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#apex_wait_popup").remove();',
'$("#apex_wait_overlay").remove();',
'$(".u-Processing").remove();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(38244199289771122)
,p_name=>'If Add Success'
,p_event_sequence=>110
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38244293421771123)
,p_event_id=>wwv_flow_imp.id(38244199289771122)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).ready(function() {',
'',
'    apex.server.process(''GET_SUCCESS_MSG'', {}, {',
'        success: function(data) {',
'            if (data.success_msg) {',
'',
'                apex.message.showPageSuccess(data.success_msg);',
'',
'                setTimeout(function() {',
'                    $(".apex-page-success").fadeOut(400);',
'                }, 3000);',
'',
'            }',
'        }',
'    });',
'});',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(38244446839771125)
,p_name=>'Show success'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P310_GET_SUCCESS_MSG_1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38244570035771126)
,p_event_id=>wwv_flow_imp.id(38244446839771125)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess( "Successfully released gift certificate" );'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P310_GET_SUCCESS_MSG_1'
,p_client_condition_expression=>'true'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(70199894602373441)
,p_name=>'Closed or Cancelled'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(18625619398263502)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70199958001373442)
,p_event_id=>wwv_flow_imp.id(70199894602373441)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(() => {',
'  $( document ).ready(function() {',
'    $(".a-GV-cell").first().trigger("click");',
' });',
'}, "700");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77936472859036548)
,p_name=>'Change Toggle'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(77936383768036547)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77936526691036549)
,p_event_id=>wwv_flow_imp.id(77936472859036548)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (apex.item("P310_TOGGLE").getValue() === "Both") {',
'    apex.item("P310_TOGGLE").setValue("Regular Only");',
'} else if (apex.item("P310_TOGGLE").getValue() === "Regular Only") {',
'    apex.item("P310_TOGGLE").setValue("Donation Only");',
'} else {',
'    apex.item("P310_TOGGLE").setValue("Both");',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(82190058860156601)
,p_event_id=>wwv_flow_imp.id(77936472859036548)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(28430546326015709)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(82190193920156602)
,p_event_id=>wwv_flow_imp.id(77936472859036548)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(() => {',
'  $( document ).ready(function() {',
'    $(".a-GV-cell").first().trigger("click");',
' });',
'}, "700");'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(82190369745156604)
,p_event_id=>wwv_flow_imp.id(77936472859036548)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    APEX_UTIL.SET_SESSION_STATE(''P310_TOGGLE'', :P310_TOGGLE);',
'END;'))
,p_attribute_02=>'P310_TOGGLE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(82190599824156606)
,p_name=>'Set Toggle'
,p_event_sequence=>150
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(82190601030156607)
,p_event_id=>wwv_flow_imp.id(82190599824156606)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P310_TOGGLE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF APEX_UTIL.GET_SESSION_STATE(''P310_TOGGLE'') IS NOT NULL THEN',
'        RETURN APEX_UTIL.GET_SESSION_STATE(''P310_TOGGLE'');',
'    ELSE ',
'        RETURN ''Both'';',
'    END IF;',
'END;'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(30917312403029540)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CLEAR_SUCCESS_MSG'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'	apex_util.set_session_state(''SUCCESS_MSG'', null);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>30917312403029540
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(30917215723029539)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_SUCCESS_MSG'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   l_msg VARCHAR2(200);',
'BEGIN',
'   -- Get the value of the SUCCESS_MSG application item',
'   l_msg := apex_util.get_session_state(''SUCCESS_MSG'');',
'   ',
'   -- Return it as a JSON object',
'   apex_json.open_object;',
'   apex_json.write(''success_msg'', l_msg);',
'   apex_json.close_object;',
'',
'   -- Clear the SUCCESS_MSG after displaying it',
'   apex_util.set_session_state(''SUCCESS_MSG'', NULL);',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>30917215723029539
);
wwv_flow_imp.component_end;
end;
/
