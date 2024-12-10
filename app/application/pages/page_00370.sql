prompt --application/pages/page_00370
begin
--   Manifest
--     PAGE: 00370
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
 p_id=>370
,p_name=>'Reservation'
,p_alias=>'RESERVATION'
,p_step_title=>'Reservation'
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
'    t : (v) => {',
'        $("#t").trigger("click");',
'    },',
'    p : (v) => {',
'        $("#p").trigger("click");',
'    },',
'    o : (v) => {',
'        $("#o").trigger("click");',
'    },',
'    c : (v) => {',
'        $("#c").trigger("click");',
'    },',
'    h : (v) => {',
'        $("#h").trigger("click");',
'    },',
'    r : (v) => {',
'        $("#r").trigger("click");',
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
'setTitle("Reservation")',
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
'    padding-inline-end: var(--ut-body-content-padding-x, 2rem);',
'    padding-inline-start: var(--ut-body-content-padding-x, 2rem);',
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
'    left: 67% !important;',
'}',
'/* modal 314 end */',
'',
'/* View height dependent table and buttons - START */',
'.buttons-row {',
'    position: absolute;',
'    width: 90vw;',
'    bottom: 1rem;',
'    left: 3rem;',
'}',
'',
'#table .a-IG {',
'    height: calc(75vh + 2px) !important;',
'} ',
'',
'#table .a-IG-contentContainer {',
'    height: 75vh !important;',
'}',
'',
'#table .a-IG-gridView.a-GV {',
'    height: 75vh !important;',
'}',
'',
'#table .a-GV-bdy {',
'    height: calc(75vh - 2.5625rem) !important;',
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
'.new-line {',
'    white-space: break-spaces !important;',
'    line-height: 1.3rem;',
'}',
'',
'.col-1:has(#i) {',
'    max-width: 15%;',
'}',
'',
'.col-1:has(#r) {',
'    margin-left: 6.1rem !important;',
'}'))
,p_step_template=>wwv_flow_imp.id(5671392681337017)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(58507115766513763)
,p_plug_name=>'Buttons'
,p_plug_display_sequence=>120
,p_plug_grid_row_css_classes=>'buttons-row'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(68312076299265971)
,p_plug_name=>'Reservation List'
,p_title=>'Reservation List'
,p_region_name=>'table'
,p_region_template_options=>'#DEFAULT#:margin-top-md'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>110
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    ROWNUM AS "Primary Key",',
'    npt018.DATE_CREATED AS "RES_DATE",',
'    npt018.RESERVE_ID AS "RES_NO",',
'    npt009.DBA AS "CUSTOMER_DBA",',
'    npt018.POINT_PERSON AS "POINT_PERSON",',
'     ',
'    -- add space ('' '') to column value so that you can add chr(10) || chr(13) to the text',
'    -- I did this because for some reason, directly adding chr(10) || chr(13) to the value is not working',
'    -- and this is the only method that made it work..',
'',
'    -- also, this will only work when you add the class "new-line" to this column',
'    (TRANSLATE(npt018.TEL_NUMBER || '' '', '' '', chr(10) || chr(13) ) ',
'    ||',
'    TRANSLATE(npt018.FAX || '' '', '' '', chr(10) || chr(13) ) ',
'    ||',
'    npt018.EMAIL) AS "CONTACT_DETAILS",',
'    ',
'    npt018.TOTAL_AMOUNT AS "TOTAL_AMOUNT",',
'    npm016.STATUS_NAME AS "STATUS",',
'    npt018.EXPIRY_DATE AS "EXPIRY_DATE"',
'FROM',
'    NPT018 npt018',
'JOIN',
'    NPT009 npt009 ON npt018.CUSTOMER_ID = npt009.CUSTOMER_ID',
'JOIN',
'    NPM016 npm016 ON npt018.RESERVE_STATUS_ID = npm016.RESERVE_STATUS_ID',
'WHERE ',
'',
'-- ACTIVE',
'',
'    -- check if SEARCH BY EXACT DATE has a value',
'    ((:P370_DAY_DATE IS NOT NULL OR :P370_DAY_DATE != '''') AND :P370_TOGGLE_ACTIVE = ''ACTIVE'') AND',
'        (TO_DATE(npt018.DATE_CREATED,''MM/DD/YYYY'') = TO_DATE(:P370_DAY_DATE,''MM/DD/YYYY'')) AND',
'        UPPER(npm016.STATUS_NAME) = ''ACTIVE''',
'',
'    OR',
'    -- else, check if SEARCH BY MONTH AND YEAR has a value',
'       ((:P370_DAY_DATE IS NULL AND (:P370_MONTH_DATE IS NOT NULL OR :P370_MONTH_DATE != '''')) AND :P370_TOGGLE_ACTIVE = ''ACTIVE'') AND',
'        (EXTRACT( MONTH FROM npt018.DATE_CREATED ) || ''/'' || EXTRACT( YEAR FROM npt018.DATE_CREATED )) = :P370_MONTH_DATE AND',
'        UPPER(npm016.STATUS_NAME) = ''ACTIVE''',
'    ',
'    OR',
'    -- else, check if SEARCH BY CONTACT PERSON has a value',
'       ((:P370_DAY_DATE IS NULL AND (:P370_CONTACT_PERSON IS NOT NULL OR :P370_CONTACT_PERSON != '''')) AND',
'       (:P370_MONTH_DATE IS NULL AND (:P370_CONTACT_PERSON IS NOT NULL OR :P370_CONTACT_PERSON != '''')) AND :P370_TOGGLE_ACTIVE = ''ACTIVE'') AND',
'        UPPER(npt009.DBA) = UPPER(:P370_CONTACT_PERSON) AND',
'        UPPER(npm016.STATUS_NAME) = ''ACTIVE''',
'',
'',
'-- NOT ACTIVE',
'',
'    OR',
'    -- check if SEARCH BY EXACT DATE has a value',
'    ((:P370_DAY_DATE IS NOT NULL OR :P370_DAY_DATE != '''') AND :P370_TOGGLE_ACTIVE = ''ACTIVE'') AND',
'        TO_DATE(npt018.DATE_CREATED,''MM/DD/YYYY'') = TO_DATE(:P370_DAY_DATE,''MM/DD/YYYY'') AND',
'        UPPER(npm016.STATUS_NAME) != ''ACTIVE''',
'',
'    OR',
'    -- else, check if SEARCH BY MONTH AND YEAR has a value',
'       ((:P370_DAY_DATE IS NULL AND (:P370_MONTH_DATE IS NOT NULL OR :P370_MONTH_DATE != '''')) AND :P370_TOGGLE_ACTIVE != ''ACTIVE'') AND',
'        (EXTRACT( MONTH FROM npt018.DATE_CREATED ) || ''/'' || EXTRACT( YEAR FROM npt018.DATE_CREATED )) = :P370_MONTH_DATE AND',
'        UPPER(npm016.STATUS_NAME) != ''ACTIVE''',
'    ',
'    OR',
'    -- else, check if SEARCH BY CONTACT PERSON has a value',
'       ((:P370_DAY_DATE IS NULL AND (:P370_CONTACT_PERSON IS NOT NULL OR :P370_CONTACT_PERSON != '''')) AND',
'       (:P370_MONTH_DATE IS NULL AND (:P370_CONTACT_PERSON IS NOT NULL OR :P370_CONTACT_PERSON != '''')) AND :P370_TOGGLE_ACTIVE != ''ACTIVE'') AND',
'        UPPER(npt009.DBA) = UPPER(:P370_CONTACT_PERSON) AND',
'        UPPER(npm016.STATUS_NAME) != ''ACTIVE'';'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P370_DAY_DATE,P370_MONTH_DATE,P370_CONTACT_PERSON,P370_TOGGLE_ACTIVE'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(38245249976771133)
,p_name=>'CONTACT_DETAILS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CONTACT_DETAILS'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Contact Details'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
,p_value_css_classes=>'new-line'
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
 p_id=>wwv_flow_imp.id(38245372229771134)
,p_name=>'TOTAL_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOTAL_AMOUNT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Total Amount'
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
 p_id=>wwv_flow_imp.id(40132275499188945)
,p_name=>'RES_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RES_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Res Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
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
 p_id=>wwv_flow_imp.id(40132359634188946)
,p_name=>'RES_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RES_NO'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Res No'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'CENTER'
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
 p_id=>wwv_flow_imp.id(40132417708188947)
,p_name=>'CUSTOMER_DBA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CUSTOMER_DBA'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Customer DBA'
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
 p_id=>wwv_flow_imp.id(40132646281188949)
,p_name=>'POINT_PERSON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POINT_PERSON'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Point Person'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>160
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
 p_id=>wwv_flow_imp.id(68312888120265979)
,p_name=>'EXPIRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXPIRY_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Expiry Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'CENTER'
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
 p_id=>wwv_flow_imp.id(68313101183265981)
,p_name=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Status'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
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
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(70028546499075263)
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
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(68312227818265972)
,p_internal_uid=>68312227818265972
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
 p_id=>wwv_flow_imp.id(68404754395256458)
,p_interactive_grid_id=>wwv_flow_imp.id(68312227818265972)
,p_static_id=>'285233'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(68404994382256458)
,p_report_id=>wwv_flow_imp.id(68404754395256458)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(39933351877282376)
,p_view_id=>wwv_flow_imp.id(68404994382256458)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(38245249976771133)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>200
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(39934283014282384)
,p_view_id=>wwv_flow_imp.id(68404994382256458)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(38245372229771134)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(42774579728282076)
,p_view_id=>wwv_flow_imp.id(68404994382256458)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(40132275499188945)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(42775424142282082)
,p_view_id=>wwv_flow_imp.id(68404994382256458)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(40132359634188946)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(42776314158282090)
,p_view_id=>wwv_flow_imp.id(68404994382256458)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(40132417708188947)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>250
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(42818611217675082)
,p_view_id=>wwv_flow_imp.id(68404994382256458)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(40132646281188949)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>250
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(68410758227256512)
,p_view_id=>wwv_flow_imp.id(68404994382256458)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(68312888120265979)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(68412550437256524)
,p_view_id=>wwv_flow_imp.id(68404994382256458)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(68313101183265981)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(70034566479078154)
,p_view_id=>wwv_flow_imp.id(68404994382256458)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(70028546499075263)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(39882137235250342)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(58507115766513763)
,p_button_name=>'Search'
,p_button_static_id=>'s'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>S </u>- Search'
,p_button_redirect_url=>'f?p=&APP_ID.:374:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'btns text-left'
,p_grid_column_css_classes=>'mt-3'
,p_grid_new_row=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(39882527496250345)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(58507115766513763)
,p_button_name=>'Add'
,p_button_static_id=>'a'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>A </u>- Add'
,p_button_redirect_url=>'f?p=&APP_ID.:371:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'btns text-left'
,p_grid_column_css_classes=>'ms-1 mt-3'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(39882904956250346)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(58507115766513763)
,p_button_name=>'Update'
,p_button_static_id=>'u'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>U </u>- Update'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_column_css_classes=>'ms-1 mt-3'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(39883326125250353)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(58507115766513763)
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
,p_grid_column_span=>1
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(39884934381250354)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(58507115766513763)
,p_button_name=>'Toggle'
,p_button_static_id=>'t'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>T </u>- Toggle Status'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_column_css_classes=>'ms-1 mt-3'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(39883741000250353)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(58507115766513763)
,p_button_name=>'Print'
,p_button_static_id=>'p'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>P </u>- Print Reservation'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_column_css_classes=>'ms-1 mt-3'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(39885314985250356)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(58507115766513763)
,p_button_name=>'Complete'
,p_button_static_id=>'o'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>O </u>- Complete'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_column_css_classes=>'mt-2'
,p_grid_new_row=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(39884171171250353)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_imp.id(58507115766513763)
,p_button_name=>'Cancel'
,p_button_static_id=>'c'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>C </u>- Cancel'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_column_css_classes=>'ms-1 mt-2'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(42996332030872706)
,p_button_sequence=>140
,p_button_plug_id=>wwv_flow_imp.id(58507115766513763)
,p_button_name=>'History'
,p_button_static_id=>'h'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>H </u>- History Updates'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_column_css_classes=>'ms-1 mt-2'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(38245447469771135)
,p_button_sequence=>150
,p_button_plug_id=>wwv_flow_imp.id(58507115766513763)
,p_button_name=>'Back'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Back'
,p_button_redirect_url=>'f?p=&APP_ID.:304:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'btns text-left'
,p_grid_column_css_classes=>'ms-1 mt-2 hide'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(39884546684250354)
,p_button_sequence=>160
,p_button_plug_id=>wwv_flow_imp.id(58507115766513763)
,p_button_name=>'Summary'
,p_button_static_id=>'r'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>R </u>- Reservation Summary Print'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_column_css_classes=>'ml-2 mt-2'
,p_grid_new_row=>'N'
,p_grid_column_span=>1
,p_grid_column=>12
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40130460775188927)
,p_name=>'P370_CONTACT_PERSON'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42999461150872737)
,p_name=>'P370_RESERVE_STATUS'
,p_item_sequence=>90
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68322731460266157)
,p_name=>'P370_DAY_DATE'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68322886214266158)
,p_name=>'P370_MONTH_DATE'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68325244447266182)
,p_name=>'P370_SELECTED_RESERVATION_NO'
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70037986045075436)
,p_name=>'P370_PREPARED_URL'
,p_item_sequence=>60
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70807931859279972)
,p_name=>'P370_GET_SUCCESS_MSG'
,p_item_sequence=>50
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74609738948898183)
,p_name=>'P370_SELECTED_GC_STATUS'
,p_item_sequence=>70
,p_display_as=>'NATIVE_HIDDEN'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76900183523950864)
,p_name=>'P370_TOGGLE_ACTIVE'
,p_item_sequence=>80
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76900251437950865)
,p_name=>'P370_PRINT_ID'
,p_item_sequence=>100
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(39893406752250443)
,p_computation_sequence=>10
,p_computation_item=>'P370_MONTH_DATE'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'NULL'
,p_computation_comment=>'this is used to clear the last assigned value'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(39893885794250445)
,p_computation_sequence=>20
,p_computation_item=>'P370_DAY_DATE'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'NULL'
,p_computation_comment=>'this is used to clear the last assigned value'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(39894229736250445)
,p_computation_sequence=>30
,p_computation_item=>'P370_SELECTED_RESERVATION_NO'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
,p_computation_comment=>'this is used to clear the last assigned value'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(39894663422250446)
,p_computation_sequence=>40
,p_computation_item=>'P370_PREPARED_URL'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
,p_computation_comment=>'this is used to clear the last assigned value'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(39895060711250446)
,p_computation_sequence=>50
,p_computation_item=>'P370_GET_SUCCESS_MSG'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(39895457933250446)
,p_computation_sequence=>60
,p_computation_item=>'P370_SELECTED_GC_STATUS'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(39895820166250446)
,p_computation_sequence=>70
,p_computation_item=>'P370_TOGGLE_ACTIVE'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'''ACTIVE'''
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(39896264786250448)
,p_computation_sequence=>80
,p_computation_item=>'P370_PRINT_ID'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(40130688733188929)
,p_computation_sequence=>90
,p_computation_item=>'P370_CONTACT_PERSON'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(42999590847872738)
,p_computation_sequence=>100
,p_computation_item=>'P370_RESERVE_STATUS'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39912417197250476)
,p_name=>'Get Search Value'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(39882137235250342)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39912931728250476)
,p_event_id=>wwv_flow_imp.id(39912417197250476)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'Get day date'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P370_DAY_DATE'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P374_DAY_DATE'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39913409607250479)
,p_event_id=>wwv_flow_imp.id(39912417197250476)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'Get month date'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P370_MONTH_DATE'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P374_MONTH_DATE'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40130592347188928)
,p_event_id=>wwv_flow_imp.id(39912417197250476)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>'Get contact person'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P370_CONTACT_PERSON'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P374_CONTACT_PERSON'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39913986829250479)
,p_event_id=>wwv_flow_imp.id(39912417197250476)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(68312076299265971)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39914442608250481)
,p_event_id=>wwv_flow_imp.id(39912417197250476)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_name=>'To select 1st cell of the table'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(68312076299265971)
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(() => {',
'  $( document ).ready(function() {',
'    $(".a-GV-cell").first().trigger("click");',
' });',
'',
'',
'}, "1000");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39902977933250462)
,p_name=>'Selection Change'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(68312076299265971)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39903482184250464)
,p_event_id=>wwv_flow_imp.id(39902977933250462)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'console.log(this.data)',
'console.log(this.data.selectedRecords)',
'',
'if (this.data.selectedRecords.length > 0) {',
'    let itemNoSelected = this.data.selectedRecords[0][2];',
'    apex.item("P370_SELECTED_RESERVATION_NO").setValue(itemNoSelected);',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39909691828250473)
,p_name=>'Update selected GC'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(39882904956250346)
,p_condition_element=>'P370_SELECTED_RESERVATION_NO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39910152355250473)
,p_event_id=>wwv_flow_imp.id(39909691828250473)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- redirect and pass value to url (which is the update page)',
'BEGIN',
'    :P370_PREPARED_URL := apex_page.get_url(',
'       p_page   => 317,',
'       p_items  => ''P317_GC_NO'',',
'       p_values => :P370_SELECTED_GC_NO',
'     );',
'END;'))
,p_attribute_02=>'P370_SELECTED_RESERVATION_NO'
,p_attribute_03=>'P370_PREPARED_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39910682588250475)
,p_event_id=>wwv_flow_imp.id(39909691828250473)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// set url to redirect to update',
'let url = $v("P370_PREPARED_URL");',
'apex.navigation.redirect(url);'))
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P370_PREPARED_URL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39911067446250475)
,p_name=>'Open release popup'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(39884546684250354)
,p_condition_element=>'P370_SELECTED_RESERVATION_NO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39911561780250475)
,p_event_id=>wwv_flow_imp.id(39911067446250475)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- redirect and pass value to url (which is the release dialog modal)',
'BEGIN',
'    :P370_PREPARED_URL := apex_page.get_url(',
'       p_page   => 315,',
'       p_items  => ''P315_GET_SELECTED_GC_NO,P315_GET_SEARCHED_YEAR,P315_GET_SEARCHED_GC_NO'',',
'       p_values => :P370_SELECTED_GC_NO || '','' || :P370_ISSUE_YR || '','' || :P370_GC_NO',
'     );',
'END;'))
,p_attribute_02=>'P370_SELECTED_RESERVATION_NO'
,p_attribute_03=>'P370_PREPARED_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P370_SELECTED_RESERVATION_NO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39912016763250476)
,p_event_id=>wwv_flow_imp.id(39911067446250475)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// set url to redirect to release dialog modal',
'let url = $v("P370_PREPARED_URL");',
'apex.navigation.redirect(url);'))
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P370_PREPARED_URL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39899165028250454)
,p_name=>'Open inquire popup'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(39883326125250353)
,p_condition_element=>'P370_SELECTED_RESERVATION_NO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39899619472250456)
,p_event_id=>wwv_flow_imp.id(39899165028250454)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P370_PREPARED_URL := apex_page.get_url(',
'       p_page   => 372,',
'       p_items  => ''P372_RESERVE_NO'',',
'       p_values => :P370_SELECTED_RESERVATION_NO',
'     );',
'END;'))
,p_attribute_02=>'P370_SELECTED_RESERVATION_NO'
,p_attribute_03=>'P370_PREPARED_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P370_SELECTED_RESERVATION_NO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39900175549250456)
,p_event_id=>wwv_flow_imp.id(39899165028250454)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// set url to redirect to release dialog modal',
'let url = $v("P370_PREPARED_URL");',
'apex.navigation.redirect(url);'))
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P370_PREPARED_URL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39916784096250482)
,p_name=>'Release GC Close Dialog'
,p_event_sequence=>60
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39917221966250484)
,p_event_id=>wwv_flow_imp.id(39916784096250482)
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
 p_id=>wwv_flow_imp.id(39917766871250485)
,p_event_id=>wwv_flow_imp.id(39916784096250482)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'Refresh table to see update'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(68312076299265971)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39900566204250457)
,p_name=>'Toggle status'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(39884934381250354)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39901012609250457)
,p_event_id=>wwv_flow_imp.id(39900566204250457)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'console.log("ditooo")',
'console.log($(''#P370_TOGGLE_ACTIVE'').val())',
'',
'if ($(''#P370_TOGGLE_ACTIVE'').val() === ''ACTIVE'') { ',
'    console.log("ditooo1")',
'    document.getElementById(''P370_TOGGLE_ACTIVE'').value=''NOT ACTIVE'';',
'console.log($(''#P370_TOGGLE_ACTIVE'').val())',
'} else {',
'    console.log("ditooo1")',
'    document.getElementById(''P370_TOGGLE_ACTIVE'').value=''ACTIVE'';',
'console.log($(''#P370_TOGGLE_ACTIVE'').val())',
'}',
'console.log($(''#P370_TOGGLE_ACTIVE'').val())'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39902575832250460)
,p_event_id=>wwv_flow_imp.id(39900566204250457)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(68312076299265971)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42996230915872705)
,p_event_id=>wwv_flow_imp.id(39900566204250457)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>'To select 1st cell of the table'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(68312076299265971)
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(() => {',
'  $( document ).ready(function() {',
'    $(".a-GV-cell").first().trigger("click");',
' });',
'',
'',
'}, "1000");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39914820546250481)
,p_name=>'Open copies popup'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(39883741000250353)
,p_condition_element=>'P370_SELECTED_RESERVATION_NO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39915307388250481)
,p_event_id=>wwv_flow_imp.id(39914820546250481)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P370_SELECTED_GC_STATUS'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'l_return_value  VARCHAR(1) := NULL;',
'',
'BEGIN',
'',
'    IF LENGTH(:P370_SELECTED_GC_NO) > 0 THEN',
'    ',
'        SELECT GC_STATUS_ID INTO l_return_value',
'        FROM NPT020',
'        WHERE GIFT_CERTIFICATE_ID = :P370_SELECTED_GC_NO;',
'',
'    END IF;',
'',
'    RETURN l_return_value;',
'',
'END;'))
,p_attribute_07=>'P370_SELECTED_RESERVATION_NO'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39915861606250482)
,p_event_id=>wwv_flow_imp.id(39914820546250481)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P370_PREPARED_URL := apex_page.get_url(',
'       p_page   => 313,',
'       p_items  => ''P313_SELECTED_GC_NO'',',
'       p_values => :P370_SELECTED_GC_NO',
'     );',
'END;'))
,p_attribute_02=>'P370_SELECTED_RESERVATION_NO'
,p_attribute_03=>'P370_PREPARED_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'$("#P370_SELECTED_GC_STATUS").val() !== "4" && $("#P370_SELECTED_GC_STATUS").val() !== "5"'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39916370211250482)
,p_event_id=>wwv_flow_imp.id(39914820546250481)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P370_PREPARED_URL");',
'apex.navigation.redirect(url);'))
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'$("#P370_SELECTED_GC_STATUS").val() !== "4" && $("#P370_SELECTED_GC_STATUS").val() !== "5"'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39903894024250464)
,p_name=>'Complete selected reservation'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(39885314985250356)
,p_condition_element=>'P370_SELECTED_RESERVATION_NO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39904362437250465)
,p_event_id=>wwv_flow_imp.id(39903894024250464)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_name=>'Get status'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P370_RESERVE_STATUS'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'l_return_value  VARCHAR(15) := NULL;',
'',
'BEGIN',
'',
'    IF LENGTH(:P370_SELECTED_RESERVATION_NO) > 0 THEN',
'    ',
'        SELECT npm016.STATUS_NAME INTO l_return_value',
'        FROM NPM016 npm016',
'        WHERE (SELECT RESERVE_STATUS_ID',
'               FROM NPT018 npt018',
'               WHERE npt018.RESERVE_ID = TO_NUMBER(:P370_SELECTED_RESERVATION_NO)) = npm016.RESERVE_STATUS_ID;',
'',
'        -- SELECT RESERVE_STATUS_ID INTO l_return_value',
'        -- FROM NPT018 npt018',
'        -- WHERE npt018.RESERVE_ID = :P370_SELECTED_RESERVATION_NO;',
'',
'    END IF;',
'',
'    RETURN l_return_value;',
'',
'END;'))
,p_attribute_07=>'P370_SELECTED_RESERVATION_NO'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39905885478250467)
,p_event_id=>wwv_flow_imp.id(39903894024250464)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_name=>'Update reservation status'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'BEGIN',
'    UPDATE NPT018',
'        SET RESERVE_STATUS_ID = 2,',
'            USER_UPDATE = :app_user,',
'            DATE_UPDATED = SYSDATE',
'        WHERE RESERVE_ID = :P370_SELECTED_RESERVATION_NO;',
'END;',
''))
,p_attribute_02=>'P370_SELECTED_RESERVATION_NO,P370_PRINT_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'$("#P370_RESERVE_STATUS").val().toLowerCase() !== "cancelled" && $("#P370_RESERVE_STATUS").val().toLowerCase() !== "expired"'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39908380363250471)
,p_event_id=>wwv_flow_imp.id(39903894024250464)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_name=>'Show success'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess( "Reservation status updated to completed" );'
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'$("#P370_RESERVE_STATUS").val().toLowerCase() !== "cancelled" && $("#P370_RESERVE_STATUS").val().toLowerCase() !== "expired"'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39908863263250471)
,p_event_id=>wwv_flow_imp.id(39903894024250464)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_name=>'Close success'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(function() {',
'    $(''.t-Button--closeAlert'').click();',
'}, 3000);'))
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'$("#P370_RESERVE_STATUS").val().toLowerCase() !== "cancelled" && $("#P370_RESERVE_STATUS").val().toLowerCase() !== "expired"'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39909210244250473)
,p_event_id=>wwv_flow_imp.id(39903894024250464)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(68312076299265971)
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'$("#P370_RESERVE_STATUS").val().toLowerCase() !== "cancelled" && $("#P370_RESERVE_STATUS").val().toLowerCase() !== "expired"'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42999629441872739)
,p_name=>'Cancel selected reservation'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(39884171171250353)
,p_condition_element=>'P370_SELECTED_RESERVATION_NO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42999779752872740)
,p_event_id=>wwv_flow_imp.id(42999629441872739)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_name=>'Get status'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P370_RESERVE_STATUS'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'l_return_value  VARCHAR(15) := NULL;',
'',
'BEGIN',
'',
'    IF LENGTH(:P370_SELECTED_RESERVATION_NO) > 0 THEN',
'    ',
'        SELECT npm016.STATUS_NAME INTO l_return_value',
'        FROM NPM016 npm016',
'        WHERE (SELECT RESERVE_STATUS_ID',
'               FROM NPT018 npt018',
'               WHERE npt018.RESERVE_ID = TO_NUMBER(:P370_SELECTED_RESERVATION_NO)) = npm016.RESERVE_STATUS_ID;',
'',
'        -- SELECT RESERVE_STATUS_ID INTO l_return_value',
'        -- FROM NPT018 npt018',
'        -- WHERE npt018.RESERVE_ID = :P370_SELECTED_RESERVATION_NO;',
'',
'    END IF;',
'',
'    RETURN l_return_value;',
'',
'END;'))
,p_attribute_07=>'P370_SELECTED_RESERVATION_NO'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42999885446872741)
,p_event_id=>wwv_flow_imp.id(42999629441872739)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'Update reservation status'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'BEGIN',
'    UPDATE NPT018',
'        SET RESERVE_STATUS_ID = 4,',
'            USER_UPDATE = :app_user,',
'            DATE_UPDATED = SYSDATE',
'        WHERE RESERVE_ID = :P370_SELECTED_RESERVATION_NO;',
'END;',
''))
,p_attribute_02=>'P370_SELECTED_RESERVATION_NO,P370_PRINT_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'$("#P370_RESERVE_STATUS").val().toLowerCase() !== "completed" && $("#P370_RESERVE_STATUS").val().toLowerCase() !== "expired"'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42999970517872742)
,p_event_id=>wwv_flow_imp.id(42999629441872739)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'Show success'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess( "Reservation status updated to cancelled" );'
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'$("#P370_RESERVE_STATUS").val().toLowerCase() !== "completed" && $("#P370_RESERVE_STATUS").val().toLowerCase() !== "expired"'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43000028243872743)
,p_event_id=>wwv_flow_imp.id(42999629441872739)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>'Close success'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(function() {',
'    $(''.t-Button--closeAlert'').click();',
'}, 3000);'))
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'$("#P370_RESERVE_STATUS").val().toLowerCase() !== "completed" && $("#P370_RESERVE_STATUS").val().toLowerCase() !== "expired"'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43000148846872744)
,p_event_id=>wwv_flow_imp.id(42999629441872739)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(68312076299265971)
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'$("#P370_RESERVE_STATUS").val().toLowerCase() !== "completed" && $("#P370_RESERVE_STATUS").val().toLowerCase() !== "expired"'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39897378124250451)
,p_name=>'If Add Success'
,p_event_sequence=>120
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39897871519250453)
,p_event_id=>wwv_flow_imp.id(39897378124250451)
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
 p_id=>wwv_flow_imp.id(39898258466250454)
,p_name=>'Show success'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P370_GET_SUCCESS_MSG_1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39898765660250454)
,p_event_id=>wwv_flow_imp.id(39898258466250454)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess( "Successfully released gift certificate" );'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P370_GET_SUCCESS_MSG_1'
,p_client_condition_expression=>'true'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(45464483494718712)
,p_name=>'Open History Update Dialog'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(42996332030872706)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45464532731718713)
,p_event_id=>wwv_flow_imp.id(45464483494718712)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P370_PREPARED_URL := apex_page.get_url(',
'       p_page   => 378,',
'       p_items  => ''P378_RESERVE_NO'',',
'       p_values => :P370_SELECTED_RESERVATION_NO',
'     );',
'END;'))
,p_attribute_02=>'P370_SELECTED_RESERVATION_NO'
,p_attribute_03=>'P370_PREPARED_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45464785333718715)
,p_event_id=>wwv_flow_imp.id(45464483494718712)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P370_PREPARED_URL");',
'apex.navigation.redirect(url);'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(39896984251250450)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CLEAR_SUCCESS_MSG'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'	apex_util.set_session_state(''SUCCESS_MSG'', null);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>39896984251250450
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(39896527509250448)
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
,p_internal_uid=>39896527509250448
);
wwv_flow_imp.component_end;
end;
/
