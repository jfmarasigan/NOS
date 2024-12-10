prompt --application/pages/page_00083
begin
--   Manifest
--     PAGE: 00083
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
 p_id=>83
,p_name=>'Customer Item Purchase History'
,p_alias=>'CUSTOMER-ITEM-PURCHASE-HISTORY'
,p_step_title=>'Customer Item Purchase History'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#js/cmn#MIN#.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p83KeyMap = {',
'    s: (v) => {',
'        $("#s").trigger("click");',
'    },',
'    c: (v) => {',
'        $("#c").trigger("click");',
'    },',
'    d: (v) => {',
'        $("#d").trigger("click");',
'    },',
'    o: (v) => {',
'        $("#sort-by").trigger("click");',
'    },',
'    escape: (v) => {',
'        if($("#search").is(":visible")) {',
'            $("#close").trigger("click");',
'        } else {',
'            $("#exit").trigger("click");',
'        }',
'    }',
'}',
'',
'function mapP83Keys() {',
'    $(document).off(''keydown.p83keyevents'');',
'    $(document).on(''keydown.p83keyevents'', (ev) => {',
'',
'        const focusedElement = document.activeElement;',
'        if (focusedElement.tagName === "INPUT" || focusedElement.tagName === "TEXTAREA") {',
'            return;',
'        }',
'        ',
'        var key = ev.key?.toLowerCase();',
'        if (p83KeyMap[key]) {',
'            ev.preventDefault();',
'            p83KeyMap[key]();',
'        }',
'    });',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP83Keys();',
'setTitle("Customer Item Purchase History");',
'$(document).ready(function() { ',
'    $("#P83_DBA, #P83_DATE_FROM, #P83_DATE_TO").on("keydown", function(event) {',
'        if (event.key === "Enter" || event.keyCode === 13) {',
'            $.event.trigger(''customValidations'');',
'            event.preventDefault();',
'        }',
'',
'        if(event.key === "Escape" || event.keyCode === 27) {',
'                $("#exit").trigger("click");',
'                event.preventDefault();',
'        }',
'    });',
'',
'    $("#P83_SEARCH_VALUE").on("keydown", function(event) {',
'        if (event.key === "Enter" || event.keyCode === 13) {',
'            $("#goto").trigger("click");',
'            event.preventDefault();',
'        }',
'    });',
'});'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#search.t-DialogRegion {',
'    background-color: white;',
'    border-radius: 12px;',
'}',
'',
'.ui-dialog {',
'    background-color: #056AC8;',
'}',
'',
'.formLabel::after {',
'    content: " *" !important;',
'    color: red;',
'}',
'',
'.t-Form-error {',
'    color: #FFD700 !important;',
'}',
'',
'#sort-filter span.t-Form-itemText,',
'#sort-filter span.display_only {',
'    font-size: 1.125rem !important;',
'    color: white !important;',
'}',
'',
'#sort-filter span div#P83_DATE_FROM_error {',
'    margin-left: 4rem;',
'}',
'#sort-filter span div#P83_DATE_TO_error {',
'    margin-left: 2.10rem;',
'}',
'#sort-filter span div#P83_DBA_error {',
'    margin-left: 3.85rem;',
'}',
'',
'#sort-by {',
'    text-align: left;',
'}',
'',
'.apex-page-item-error.inline {',
'    display: block;',
'    margin-left: 1rem;',
'}',
'',
'.t-Region#sort-filter {',
'    background-color: rgb(30, 58, 138);',
'}',
'',
'.t-Region#search-header {',
'    background-color: #056AC8;',
'    border-radius: 12px 12px 0 0;',
'}',
'',
'#search .t-Region-body {',
'    border-radius: 12px;',
'}',
'',
'#search.t-DialogRegion {',
'    min-height: 140px !important;',
'    height: 140px;',
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
'.sort-btns {',
'    text-align: left !important;',
'    font-size: 1.125rem;',
'    padding: 1rem .5rem 1rem .5rem;',
'}',
'',
'.text-white {',
'    color: white;',
'}',
'',
'.t-Header .t-Header-branding,',
'.sort-btns {',
'    background-color: white !important;',
'    color: rgb(30, 58, 138) !important;',
'}',
'',
'body {',
'    background-color: rgb(30, 58, 138);',
'}',
'',
'#table table,',
'#table tr,',
'#table th {',
'    font-size: 1rem;',
'}',
'',
'#table td {',
'    font-size: 1.125rem;',
'}',
'',
'.btns {',
'    font-size: 1.125rem;',
'    color: white;',
'}',
'',
'.hide {',
'    display: none;',
'}',
'',
'.text-red {',
'    color: red;',
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
'.ui-dialog-titlebar {',
'    display: none !important;',
'}',
'',
'#table .a-GV-table {',
'    width: 100% !important;',
'}',
'',
'#table .a-GV-table colgroup col:nth-child(1),',
'#table .a-GV-table colgroup col:nth-child(2),',
'#table .a-GV-table colgroup col:nth-child(3),',
'#table .a-GV-table colgroup col:nth-child(7),',
'#table .a-GV-table colgroup col:nth-child(11) {',
'    width: 8rem;',
'}',
'',
'#table .a-GV-table colgroup col:nth-child(4),',
'#table .a-GV-table colgroup col:nth-child(6),',
'#table .a-GV-table colgroup col:nth-child(8),',
'#table .a-GV-table colgroup col:nth-child(10) {',
'    width: 5rem;',
'}',
'',
'#table .a-GV-table colgroup col:nth-child(5) {',
'    width: 20rem;',
'}',
'',
'#table .a-GV-table colgroup col:nth-child(9) {',
'    width: 5rem;',
'}'))
,p_step_template=>wwv_flow_imp.id(5671392681337017)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(29988284033862734)
,p_plug_name=>'Sort & Filter'
,p_region_name=>'sort-filter'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--hiddenOverflow:margin-bottom-none:margin-left-md:margin-right-md'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>10
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(29988735390862739)
,p_plug_name=>'Buttons'
,p_plug_display_sequence=>40
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(29989208121862744)
,p_plug_name=>'Search'
,p_region_name=>'search'
,p_region_template_options=>'#DEFAULT#:t-DialogRegion--noPadding:js-dialog-nosize'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>50
,p_plug_display_point=>'REGION_POSITION_04'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31375176614216333)
,p_plug_name=>'Header'
,p_region_name=>'search-header'
,p_parent_plug_id=>wwv_flow_imp.id(29989208121862744)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="background-color: #056AC8; font-size: 1.5rem; color: white; padding: .50rem 0 .50rem 0; margin-left: 1rem;"',
'     id="searchHeader">',
'    ',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(32046464032460401)
,p_plug_name=>'errorArea'
,p_parent_plug_id=>wwv_flow_imp.id(29989208121862744)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--hiddenOverflow:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>20
,p_location=>null
,p_plug_source=>'<span id="errorArea" class="hide text-red" style="margin-left: 3rem;">Please fill in the search field</span>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(37836317583283637)
,p_plug_name=>'Search Value Wrapper'
,p_region_name=>'svw'
,p_parent_plug_id=>wwv_flow_imp.id(29989208121862744)
,p_plug_display_sequence=>40
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31324245411885426)
,p_plug_name=>'Customer Item Purchase History'
,p_region_name=>'table'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH my_select AS (',
'    SELECT',
'    TO_CHAR(npt001.INVOICE_ID, ''000000'') AS "INVOICE_NO",',
'    npt001.DATE_CREATED AS "INVOICE_DATE",',
'    SUBSTR(npt002.ITEM_NUM, 1, 10) AS "ITEM_NO",',
'    npt002.BRAND_CODE AS "CO",',
'    npt002.ITEM_DESC AS "ITEM_DESC",',
'    npt002.QUANTITY AS "QTY",',
'    npt002.ITEM_PRICE AS "REG_PRICE",',
'    npt002.UOM_CODE AS "UOM",',
'    NVL(npt002.DISCOUNT_VALUE, 0) AS "DISCOUNT",',
'    npt002.DS AS "DT",',
'    CASE',
'        WHEN npt002.DISCOUNTED_PRICE IS NOT NULL THEN npt002.DISCOUNTED_PRICE',
'        ELSE npt002.ITEM_PRICE',
'    END AS "NET_PRICE"',
'    FROM',
'        NPT001 npt001',
'    JOIN',
'        NPT002 npt002 ON npt001.invoice_id = npt002.invoice_id',
'    JOIN',
'        NPT009 npt009 ON npt001.customer_id = npt009.customer_id',
'    WHERE',
'        UPPER(npt009.dba) LIKE ''%'' || UPPER(:P83_DBA) || ''%''',
'        AND TO_DATE(npt001.date_created, ''MM/DD/YYYY'') BETWEEN TO_DATE(:P83_DATE_FROM, ''MM/DD/YYYY'') ',
'        AND TO_DATE(:P83_DATE_TO, ''MM/DD/YYYY'')',
'        AND (',
'            (:P83_SEARCH_VALUE IS NULL OR :P83_SEARCH_VALUE = '''') OR',
'            (',
'                (:P83_SORTED_BY = ''Item No'' AND UPPER(npt002.ITEM_NUM) = UPPER(:P83_SEARCH_VALUE)) OR',
'                (:P83_SORTED_BY = ''Item Description''AND UPPER(npt002.ITEM_DESC) = UPPER(:P83_SEARCH_VALUE))',
'            )',
'        )',
'    ORDER BY ',
'        CASE ',
'            WHEN :P83_SORTED_BY = ''Item No'' THEN UPPER(npt002.item_num)',
'            WHEN :P83_SORTED_BY = ''Item Description'' THEN UPPER(npt002.item_desc)',
'        END',
')',
'',
'SELECT * FROM my_select;',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P83_DBA,P83_DATE_FROM,P83_DATE_TO,P83_SEARCH_VALUE,P83_SORTED_BY'
,p_prn_page_header=>'Customer Item Purchase History'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(29989341693862745)
,p_name=>'INVOICE_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INVOICE_NO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Invoice No'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
,p_value_alignment=>'CENTER'
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
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(29989488411862746)
,p_name=>'INVOICE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INVOICE_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Invoice Date'
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
 p_id=>wwv_flow_imp.id(29989522370862747)
,p_name=>'ITEM_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEM_NO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Item No'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'RIGHT'
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
 p_id=>wwv_flow_imp.id(29989603150862748)
,p_name=>'CO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Co'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>12
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
 p_id=>wwv_flow_imp.id(29989720502862749)
,p_name=>'ITEM_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEM_DESC'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Item Description'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>120
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
 p_id=>wwv_flow_imp.id(29989822554862750)
,p_name=>'QTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Qty'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
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
 p_id=>wwv_flow_imp.id(31371996198216301)
,p_name=>'REG_PRICE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REG_PRICE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Reg Price'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_format_mask=>'999G999G999G999G990D00'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
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
 p_id=>wwv_flow_imp.id(31372039462216302)
,p_name=>'UOM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UOM'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'UOM'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>16
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
 p_id=>wwv_flow_imp.id(31372177099216303)
,p_name=>'DISCOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISCOUNT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Disc %'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
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
 p_id=>wwv_flow_imp.id(31372278478216304)
,p_name=>'DT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'DT'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'CENTER'
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
 p_id=>wwv_flow_imp.id(31372354700216305)
,p_name=>'NET_PRICE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NET_PRICE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Net Price'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_format_mask=>'999G999G999G999G990D00'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(31324751112885431)
,p_internal_uid=>31324751112885431
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
,p_fixed_header_max_height=>100
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
 p_id=>wwv_flow_imp.id(31325188384885435)
,p_interactive_grid_id=>wwv_flow_imp.id(31324751112885431)
,p_static_id=>'313252'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(31325356176885437)
,p_report_id=>wwv_flow_imp.id(31325188384885435)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31378441455216673)
,p_view_id=>wwv_flow_imp.id(31325356176885437)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(29989341693862745)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31379397531216689)
,p_view_id=>wwv_flow_imp.id(31325356176885437)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(29989488411862746)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31380273824216701)
,p_view_id=>wwv_flow_imp.id(31325356176885437)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(29989522370862747)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31381116726216710)
,p_view_id=>wwv_flow_imp.id(31325356176885437)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(29989603150862748)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31382074036216717)
,p_view_id=>wwv_flow_imp.id(31325356176885437)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(29989720502862749)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31382929210216726)
,p_view_id=>wwv_flow_imp.id(31325356176885437)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(29989822554862750)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31383849840216735)
,p_view_id=>wwv_flow_imp.id(31325356176885437)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(31371996198216301)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31384776481216743)
,p_view_id=>wwv_flow_imp.id(31325356176885437)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(31372039462216302)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31385604416216750)
,p_view_id=>wwv_flow_imp.id(31325356176885437)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(31372177099216303)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31386563058216756)
,p_view_id=>wwv_flow_imp.id(31325356176885437)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(31372278478216304)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31387341493216764)
,p_view_id=>wwv_flow_imp.id(31325356176885437)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(31372354700216305)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(29988858285862740)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(29988735390862739)
,p_button_name=>'SEARCH'
,p_button_static_id=>'s'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>S</u> - Search'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns'
,p_grid_new_row=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(29988935291862741)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(29988735390862739)
,p_button_name=>'CHANGE_DBA'
,p_button_static_id=>'c'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>C</u> - Change Customer DBA'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(29989035292862742)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(29988735390862739)
,p_button_name=>'CHANGE_DATE'
,p_button_static_id=>'d'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>D</u> - Change Date'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(29989113912862743)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(29988735390862739)
,p_button_name=>'SORT_BY'
,p_button_static_id=>'sort-by'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>O</u> - Sort By Item Description'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31374235696216324)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(29988735390862739)
,p_button_name=>'Exit'
,p_button_static_id=>'exit'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Exit'
,p_button_redirect_url=>'f?p=&APP_ID.:305:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'hide'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31376301914216345)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(29989208121862744)
,p_button_name=>'Search'
,p_button_static_id=>'goto'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Search'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'hide'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31374588838216327)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(29989208121862744)
,p_button_name=>'Close'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Close'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'hide'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29988383670862735)
,p_name=>'P83_DBA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(29988284033862734)
,p_prompt=>'DBA:'
,p_pre_element_text=>'<div class="formLabel">DBA</div>&nbsp;:&nbsp;'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>4
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29988480946862736)
,p_name=>'P83_DATE_FROM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(29988284033862734)
,p_prompt=>'Date:'
,p_pre_element_text=>'<div class="formLabel">Date</div>&nbsp;:&nbsp;'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>2
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29988559646862737)
,p_name=>'P83_DATE_TO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(29988284033862734)
,p_prompt=>'To'
,p_pre_element_text=>'To &nbsp;&nbsp;'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29988661317862738)
,p_name=>'P83_SORTED_BY'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(29988284033862734)
,p_item_default=>'Item No'
,p_prompt=>'Sorted By'
,p_pre_element_text=>'Sorted By: &nbsp;'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_column=>11
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--normalDisplay'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31374891878216330)
,p_name=>'P83_SEARCH_VALUE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(37836317583283637)
,p_prompt=>'Search Value'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>10
,p_grid_column=>2
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(31373063809216312)
,p_name=>'Validations'
,p_event_sequence=>30
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'customValidations'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31373106142216313)
,p_event_id=>wwv_flow_imp.id(31373063809216312)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var dba = $v(''P83_DBA'');',
'var dateFrom = $v(''P83_DATE_FROM'');',
'var dateTo = $v(''P83_DATE_TO'');',
'var currentDate = new Date();',
'',
'apex.message.clearErrors();',
'',
'var hasErrors = false;',
'',
'function isDateValid(dateString) {',
'    var datePattern = /^(0[1-9]|1[0-2])\/(0[1-9]|[12][0-9]|3[01])\/\d{4}$/;',
'',
'    if (!dateString.match(datePattern)) {',
'        return false;',
'    }',
'',
'    var parts = dateString.split("/");',
'    var month = parseInt(parts[0], 10);',
'    var day = parseInt(parts[1], 10);',
'    var year = parseInt(parts[2], 10);',
'',
'    var date = new Date(year, month - 1, day);',
'    return (date.getFullYear() === year && date.getMonth() === (month - 1) && date.getDate() === day);',
'}',
'',
'function parseDate(dateString) {',
'    var parts = dateString.split("/");',
'    return new Date(parts[2], parts[0] - 1, parts[1]);',
'}',
'',
'if (dba == "") {',
'    apex.message.showErrors([{',
'        type: "error",location: ["inline"],',
'        pageItem: "P83_DBA",',
'        message: "DBA cannot be empty",',
'        unsafe: false',
'    }])',
'    hasErrors = true;',
'} else if (dba.length > 100) {',
'    apex.message.showErrors([{',
'        type: "error",location: ["inline"],',
'        pageItem: "P83_DBA",',
'        message: "DBA cannot exceed 100 characters",',
'        unsafe: false',
'    }])',
'    hasErrors = true;',
'}',
'',
'var dateFromParsed = parseDate(dateFrom);',
'var dateToParsed = parseDate(dateTo);',
'',
'if (dateFrom == "") {',
'    apex.message.showErrors([{',
'        type: "error",location: ["inline"],',
'        pageItem: "P83_DATE_FROM",',
'        message: "Date From is required",',
'        unsafe: false',
'    }])',
'    hasErrors = true;',
'} else if (!isDateValid(dateFrom)) {',
'    apex.message.showErrors([{',
'        type: "error",location: ["inline"],',
'        pageItem: "P83_DATE_FROM",',
'        message: "Please Enter a valid date",',
'        unsafe: false',
'    }])',
'    hasErrors = true;',
'} else if (dateFromParsed > dateToParsed) {',
'    apex.message.showErrors([{',
'        type: "error",',
'        location: ["inline"],',
'        pageItem: "P83_DATE_FROM",',
'        message: "Date must be earlier than Date To",',
'        unsafe: false',
'    }]);',
'    hasErrors = true;',
'}',
'',
'if (dateTo == "") {',
'    apex.message.showErrors([{',
'        type: "error",location: ["inline"],',
'        pageItem: "P83_DATE_TO",',
'        message: "Date To is required",',
'        unsafe: false',
'    }])',
'    hasErrors = true;',
'} else if (!isDateValid(dateTo)) {',
'    apex.message.showErrors([{',
'        type: "error",location: ["inline"],',
'        pageItem: "P83_DATE_TO",',
'        message: "Please Enter a valid date",',
'        unsafe: false',
'    }])',
'    hasErrors = true;',
'} else if (dateToParsed > currentDate) {',
'    apex.message.showErrors([{',
'        type: "error",',
'        location: ["inline"],',
'        pageItem: "P83_DATE_TO",',
'        message: "Date cannot exceed today''s date",',
'        unsafe: false',
'    }]);',
'    hasErrors = true;',
'}',
'',
'if (hasErrors) {',
'    return false;',
'} else {',
'    $(document.activeElement).blur();',
'    apex.item(''P83_SEARCH_VALUE'').setValue('''');',
'}',
'',
'apex.message.clearErrors();',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31373273089216314)
,p_event_id=>wwv_flow_imp.id(31373063809216312)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(31324245411885426)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31376259912216344)
,p_event_id=>wwv_flow_imp.id(31373063809216312)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(function() {',
'    $(".a-GV-cell").first().trigger("click");',
'}, 500);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(31373341999216315)
,p_name=>'Change Sorting'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(29989113912862743)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31373480434216316)
,p_event_id=>wwv_flow_imp.id(31373341999216315)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P83_SORTED_BY'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var currentValue = apex.item("P83_SORTED_BY").getValue();',
'var newValue = currentValue === "Item No" ? "Item Description" : "Item No";',
'apex.item("P83_SORTED_BY").setValue(newValue);',
'',
'$("#sort-by").html(newValue === "Item No" ? "<u>O</u> - Sort by Item Description" : "<u>O</u> - Sort by Item No");'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31373989722216321)
,p_event_id=>wwv_flow_imp.id(31373341999216315)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(31324245411885426)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(31373592833216317)
,p_name=>'Focus on DBA'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(29988935291862741)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31373621971216318)
,p_event_id=>wwv_flow_imp.id(31373592833216317)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P83_DBA'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(31373792561216319)
,p_name=>'Focus on Date'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(29989035292862742)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31373827149216320)
,p_event_id=>wwv_flow_imp.id(31373792561216319)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P83_DATE_FROM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(31374043136216322)
,p_name=>'Open Search'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(29988858285862740)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31374902841216331)
,p_event_id=>wwv_flow_imp.id(31374043136216322)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#search").dialog("option", "width", 450);',
'',
'if(apex.item("P83_SORTED_BY").getValue() === "Item No") {',
'    $("#searchHeader").text("Go To Item No")',
'} else {',
'    $("#searchHeader").text("Go To Item Description")',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31374132074216323)
,p_event_id=>wwv_flow_imp.id(31374043136216322)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(29989208121862744)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(31374631323216328)
,p_name=>'Close'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(31374588838216327)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31374766356216329)
,p_event_id=>wwv_flow_imp.id(31374631323216328)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(29989208121862744)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(31376483791216346)
,p_name=>'Search'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(31376301914216345)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(32046780040460404)
,p_event_id=>wwv_flow_imp.id(31376483791216346)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var searchValue = $v("P83_SEARCH_VALUE");',
'var errorArea = document.getElementById("errorArea")',
'',
'if(!searchValue) {',
'    errorArea.style.display = "block";',
'    document.getElementById("P83_SEARCH_VALUE").focus();',
'    return false;',
'} else {',
'    errorArea.style.display = "none";',
'    return true;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31376598403216347)
,p_event_id=>wwv_flow_imp.id(31376483791216346)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(29989208121862744)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31376684001216348)
,p_event_id=>wwv_flow_imp.id(31376483791216346)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(31324245411885426)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31376747901216349)
,p_event_id=>wwv_flow_imp.id(31376483791216346)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P83_SEARCH_VALUE'
);
wwv_flow_imp.component_end;
end;
/
