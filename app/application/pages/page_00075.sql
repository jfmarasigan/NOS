prompt --application/pages/page_00075
begin
--   Manifest
--     PAGE: 00075
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
 p_id=>75
,p_name=>'Collections Entry'
,p_alias=>'COLLECTIONS-ENTRY'
,p_step_title=>'Collections Entry'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#js/cmn#MIN#.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p75KeyMap = {',
'    c : (v) => {',
'        $("#c").trigger("click");',
'    },',
'    i : (v) => {',
'        $("#i").trigger("click");',
'    },',
'    a : (v) => {',
'        $("#a").trigger("click");',
'    },',
'    u : (v) => {',
'        $("#u").trigger("click");',
'    },',
'    p : (v) => {',
'        $("#p").trigger("click");',
'    }',
'}',
'',
'function mapP75Keys() {',
'    $(document).off(''keydown.p75keyevents'');',
'    $(document).on(''keydown.p75keyevents'', (ev) => {',
'',
'        const focusedElement = document.activeElement;',
'        if (focusedElement.tagName === "INPUT" || focusedElement.tagName === "TEXTAREA") {',
'            return;',
'        }',
'',
'        var key = ev.key?.toLowerCase();',
'        if (p75KeyMap[key]) {',
'            ev.preventDefault();',
'            setTimeout(function() {',
'                p75KeyMap[key]();',
'            }, 350);',
'        }',
'    });',
'}',
'',
'function customEvent(event, data){',
'    mapP75Keys();',
'}',
'',
'function highlightValue() {',
'    const inputFieldIds = ["P75_COLLECT_DATE_FROM", "P75_COLLECT_DATE_TO"];',
'',
'    inputFieldIds.forEach((fieldId) => {',
'        $(`#${fieldId}`).on("focus", function() {',
'            $(this).select();',
'        });',
'    })',
'}',
'',
'function getTotal(ig, col1, col2) {',
'    var model = apex.region(ig).widget().interactiveGrid("getViews", "grid").model;',
'    var amount;',
'    var totals = { totalPosted : 0, totalUnposted : 0 };',
'    var amountKey = model.getFieldKey(col1);',
'    var postKey = model.getFieldKey(col2)',
'',
'    model.forEach(function(row) {',
'        amount = parseFloat(row[amountKey].replace(/,/g, ""));',
'        post = row[postKey];',
'',
'        if (!isNaN(amount)) {',
'            if(post === "P") {',
'                totals.totalPosted += amount;',
'            }',
'            if(post !== "P") {',
'                totals.totalUnposted += amount;',
'            }',
'        }',
'    });',
'',
'    totals.totalUnposted = totals.totalUnposted.toLocaleString("en-US", {',
'        minimumFractionDigits: 2,',
'        maximumFractionDigits: 2',
'    });',
'',
'    totals.totalPosted = totals.totalPosted.toLocaleString("en-US", {',
'        minimumFractionDigits: 2,',
'        maximumFractionDigits: 2',
'    });',
'',
'    return totals;',
'}',
'',
'function getTotalInquire(ig, col1) {',
'    var model = apex.region(ig).widget().interactiveGrid("getViews", "grid").model;',
'    var amount, total = 0;',
'    var amountKey = model.getFieldKey(col1);',
'',
'    model.forEach(function(row) {',
'        amount = parseFloat(row[amountKey].replace(/,/g, ""));',
'',
'        if (!isNaN(amount)) {',
'            total += amount;',
'        }',
'    });',
'',
'    total = total.toLocaleString("en-US", {',
'        minimumFractionDigits: 2,',
'        maximumFractionDigits: 2',
'    });',
'    ',
'    return total;',
'}',
'',
'function selectRecord() {',
'    apex.region("table").call("getCurrentView").model.fetchAll(function(status) {',
'        if (status.done) {',
'            ',
'            let view = apex.region("table").call("getCurrentView"),',
'                model = view.model,',
'                view$ = view.view$,',
'                id = $v("P75_COLLECTION_ID"),',
'                rec = model.getRecord(id);',
'',
'            if (rec) {',
'                let pi = view$.grid("getPageInfo"),',
'                    index = model.indexOf(rec),',
'                    offset = index * pi.rowHeight;',
'',
'                $(".a-GV-w-scroll").scrollTop(offset);',
'                view$.grid("setSelectedRecords", [rec], true);',
'',
'                setTimeout(function () {',
'                    let row$ = view$.find(`tr[data-id=''${id}'']`);',
'                    console.log("row$", row$);',
'                    if (row$.length > 0) {',
'                        $(row$).find(".a-GV-cell").first().trigger("click");',
'                    } else {',
'                        $(".a-GV-cell").first().trigger("click");',
'                    }',
'                }, 500);',
'            } else {',
'                setTimeout(function () {',
'                    $(".a-GV-cell").first().trigger("click");',
'                }, 500);',
'            }',
'        }',
'    });',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP75Keys();',
'setTitle("Collections Entry");',
'highlightValue();',
'var total = getTotal("table", "AMOUNT", "POST")',
'apex.item("P75_TOTAL").setValue(total.totalPosted);',
'apex.item("P75_TOTAL_UNPOSTED").setValue(total.totalUnposted);',
'',
'const dateFields = [''P75_COLLECT_DATE_FROM'', ''P75_COLLECT_DATE_TO''];',
'',
'dateFields.forEach((fieldId) => {',
'  const dateField = document.getElementById(fieldId);',
'',
'  dateField.addEventListener(''input'', function () {',
'    let value = dateField.value.replace(/\D/g, '''');',
'',
'    if (value.length > 2) {',
'      value = value.substring(0, 2) + ''/'' + value.substring(2);',
'    }',
'    if (value.length > 5) {',
'      value = value.substring(0, 5) + ''/'' + value.substring(5, 9);',
'    }',
'',
'    if (value.length > 10) {',
'      value = value.substring(0, 10);',
'    }',
'',
'    dateField.value = value;',
'  });',
'});',
'',
'$(document).ready(function() { ',
'    $("#P75_COLLECT_DATE_FROM, #P75_COLLECT_DATE_TO").on("keydown", function(event) {',
'        if (event.key === "Enter" || event.keyCode === 13) {',
'            apex.region("table").focus();',
'            $.event.trigger(''validateDates'');',
'            event.preventDefault();',
'        }',
'        if(event.key === "a") {',
'            setTimeout(function() {',
'                $("#a").trigger("click");',
'            }, 50)',
'        }',
'',
'        if(event.key === "c") {',
'            setTimeout(function() {',
'                $("#c").trigger("click");',
'            }, 50)',
'        }',
'    });',
'',
'    $(document).on("keydown", function(event) {',
'        if(event.key === "Escape" || event.keyCode === 27) {',
'            if(!$("#makeCollection").is(":visible") && !$("#inquire").is(":visible")) {',
'                $("#exit").trigger("click");',
'                event.preventDefault();',
'            }',
'        }',
'    });',
'});'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-GV-table tr.is-selected .a-GV-cell {',
'     background-color: #F5DC1C;',
'}',
'',
'.a-GV-table .a-GV-cell.is-focused {',
'     box-shadow: 0 0 0 1px black inset !important;',
'}',
'',
'.t-Form-labelContainer #P75_TOTAL_UNPOSTED_LABEL,',
'.t-Form-labelContainer #P75_TOTAL_LABEL  {',
'    display: flex;',
'    align-items: start;',
'}',
'',
'.t-Form-fieldContainer--large {',
'    --ut-field-label-padding-y: 0 !important',
'}',
'',
'.apex-item-text {',
'    background-color: white;',
'}',
'',
'.inquire-header {',
'    display: flex;',
'    justify-content: space-between;',
'    margin-right: 2rem;',
'}',
'',
'#filter span.t-Form-itemText,',
'#filter span.display_only,',
'#filter label {',
'    font-size: 1.125rem !important;',
'    color: white !important;',
'}',
'',
'.t-Region#filter {',
'    background-color: rgb(30, 58, 138);',
'}',
'',
'.formLabel::after {',
'    content: "*" !important;',
'    color: red;',
'}',
'',
'#P75_SEARCH_DBA_CONTAINER .t-Form-itemText {',
'    background-color: transparent;',
'    border: none;',
'    font-size: 1.125rem;',
'    margin-left: 2.5rem;',
'}',
'',
'.ui-dialog-titlebar {',
'    display: none !important;',
'}',
'',
'.t-Region#add-header {',
'    background-color: #056AC8;',
'    border-radius: 12px 12px 0 0;',
'}',
'',
'#makeCollection .t-Region-body {',
'    border-radius: 12px;',
'}',
'',
'#makeCollection.t-DialogRegion {',
'    min-height: auto !important;',
'    background-color: white;',
'    border-radius: 12px;',
'}',
'',
'.ui-dialog:not(.ui-dialog-autocomplete) {',
'    background-color: #056AC8;',
'}',
'',
'.t-DialogRegion-bodyWrapperOut {',
'    overflow: hidden !important;',
'}',
'',
'#inquire .a-GV-cell,',
'#inquire .a-GV-header {',
'    pointer-events: none;',
'}',
'',
'.text-red {',
'    color: red;',
'    font-weight: 700;',
'}',
'',
'#filter span div#P75_COLLECT_DATE_FROM_error {',
'    margin-left: 15.3rem;',
'}',
'#filter span div#P75_COLLECT_DATE_TO_error {',
'    margin-left: 2.1rem;',
'}',
'',
'.t-Form-error {',
'    color: #FFD700 !important;',
'    font-weight: 700;',
'}',
'',
'.btns {',
'    font-size: 1.125rem;',
'    color: white;',
'}',
'',
'#table .a-IG {',
'    height: calc(70vh + 2px) !important;',
'} ',
'',
'#table .a-IG-contentContainer {',
'    height: 705vh !important;',
'}',
'',
'#table .a-IG-gridView.a-GV {',
'    height: 70vh !important;',
'}',
'',
'#table .a-GV-bdy {',
'    height: calc(70vh - 2.5625rem) !important;',
'}',
'',
'.t-Header .t-Header-branding {',
'    background-color: white !important;',
'    color: rgb(30, 58, 138) !important;',
'}',
'',
'.hide {',
'    display: none;',
'}',
'',
'body {',
'    background-color: rgb(30, 58, 138);',
'}',
'',
'.text-left {',
'    text-align: left;',
'}',
'',
'#table table, #inquire table,',
'#table tr, #inquire tr,',
'#table th, #inquire th {',
'    font-size: 1rem;',
'}',
'',
'',
'#table td, #table td {',
'    font-size: 1.125rem;',
'}',
'',
'.a-IG,',
'.a-GV-table .a-GV-cell, th.a-GV-header{',
'    border-color: 	black !important;',
'}',
'',
'#table .a-GV-header a, #table th.a-GV-header {',
'    background-color: #046BC8;',
'    color: white;',
'    pointer-events: none;',
'}',
'',
' /* Hide scrollbar for Chrome, Safari and Opera */',
'/* html::-webkit-scrollbar {',
'  display: none;',
'} */',
'',
'/* Hide scrollbar for IE, Edge and Firefox */',
'/* html { */',
'  /* -ms-overflow-style: none;  IE and Edge */',
'  /* scrollbar-width: none;  Firefox */',
'/* }  */',
'',
' /* Hide scrollbar for Chrome, Safari and Opera */',
'/* .a-GV-w-scroll::-webkit-scrollbar {',
'  display: none;',
'} */',
'',
'/* Hide scrollbar for IE, Edge and Firefox */',
'/* .a-GV-w-scroll { */',
'  /* -ms-overflow-style: none;  IE and Edge */',
'  /* scrollbar-width: none;  Firefox */',
'/* } */',
'',
'#table .a-GV-table,',
'#inquire .a-GV-table {',
'    width: 100% !important;',
'}',
'',
'#table .a-GV-table colgroup col:nth-child(1),',
'#table .a-GV-table colgroup col:nth-child(8) {',
'    width: 3rem;',
'}',
'',
'#table .a-GV-table colgroup col:nth-child(3) {',
'    width: 17rem;',
'}',
'',
'#table .a-GV-table colgroup col:nth-child(2),',
'#table .a-GV-table colgroup col:nth-child(5),',
'#table .a-GV-table colgroup col:nth-child(6),',
'#table .a-GV-table colgroup col:nth-child(7) {',
'    width: 8rem;',
'}',
'',
'#table .a-GV-table colgroup col:nth-child(4) {',
'    width: 7rem;',
'}',
'',
'#table .a-GV-table colgroup col:nth-child(9) {',
'    width: 0;',
'}',
'',
'#inquire .a-GV-table colgroup col:nth-child(1),',
'#inquire .a-GV-table colgroup col:nth-child(2),',
'#inquire .a-GV-table colgroup col:nth-child(3) {',
'    width: 9rem;',
'}',
'',
'#inquire .a-GV-table colgroup col:nth-child(4) {',
'    width: 4rem;   ',
'}'))
,p_step_template=>wwv_flow_imp.id(5671392681337017)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22495299283163640)
,p_plug_name=>'Collection Grid'
,p_region_name=>'table'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>80
,p_plug_grid_column_span=>10
,p_plug_display_column=>2
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT',
'    CASE WHEN npt005.posted = ''Y'' THEN ''P'' ELSE NULL END AS "POST",',
'    TO_CHAR(npt005.date_created, ''YYYY'') || ''-'' || LPAD(npt005.collection_id, 5, ''0'') AS "COLLECTION_ID",',
'    npt009."DBA" AS "DBA",',
'    npt005.amount AS "AMOUNT",',
'    npt005.cashcheck AS "CHECK_NO",',
'    TO_CHAR(npt005.check_date, ''MM/DD/YYYY'') AS "CHECK_DATE",',
'    npt005.or_no AS "OR_NO",',
'    npm015.collection_type_code AS "TYPE",',
'    npt005.collection_id AS "ORIG_COL_ID",',
'    npt005.date_created AS "DATE_CREATED",',
'    npt009.customer_id AS "CUSTOMER_ID"',
'FROM',
'    NPT005 npt005',
'-- LEFT JOIN',
'--     NPT038 npt038 ON NPT005.collection_id = npt038.collection_id',
'-- LEFT JOIN',
'--     NPT001 npt001 ON npt038.invoice_id = npt001.invoice_id',
'LEFT JOIN',
'    NPT009 npt009 ON npt005.customer_id = npt009.customer_id',
'LEFT JOIN',
'    NPM015 npm015 ON npt005.collection_type_id = npm015.collection_type_id',
'WHERE',
'    (',
'        (:P75_COLLECT_DATE_FROM IS NOT NULL AND :P75_COLLECT_DATE_TO IS NULL AND TO_DATE(npt005.date_created, ''MM/DD/YYYY'') = TO_DATE(:P75_COLLECT_DATE_FROM, ''MM/DD/YYYY''))',
'        OR',
'        (:P75_COLLECT_DATE_FROM IS NOT NULL AND :P75_COLLECT_DATE_TO IS NOT NULL AND TO_DATE(npt005.date_created, ''MM/DD/YYYY'') BETWEEN TO_DATE(:P75_COLLECT_DATE_FROM, ''MM/DD/YYYY'') AND TO_DATE(:P75_COLLECT_DATE_TO, ''MM/DD/YYYY''))',
'    )',
'    AND (:P75_COLLECT_DATE_FROM IS NOT NULL OR :P75_COLLECT_DATE_TO IS NOT NULL)',
'    -- AND npt009.customer_id = (',
'    --     SELECT COALESCE(',
'    --         MAX(CASE WHEN n9.account_type_id = 2 THEN n9.customer_id END),',
'    --         MAX(n9.customer_id)',
'    --     )',
'    --     FROM NPT009 n9',
'    --     JOIN NPT001 n1 ON n9.customer_id = n1.customer_id',
'    --     JOIN NPT038 n3 ON n1.invoice_id = n3.invoice_id',
'    --     WHERE n3.collection_id = npt005.collection_id',
'    -- )'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P75_COLLECT_DATE_FROM,P75_COLLECT_DATE_TO'
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
 p_id=>wwv_flow_imp.id(43600379563093303)
,p_name=>'POST'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POST'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Post'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
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
 p_id=>wwv_flow_imp.id(43600452086093304)
,p_name=>'COLLECTION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COLLECTION_ID'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Collection ID'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
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
 p_id=>wwv_flow_imp.id(43600537368093305)
,p_name=>'DBA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DBA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Customer Name (DBA)'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
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
 p_id=>wwv_flow_imp.id(43600649001093306)
,p_name=>'AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AMOUNT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Paid Amount'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>40
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_attribute_04=>'decimal'
,p_format_mask=>'999G999G999G999G990D00'
,p_is_required=>false
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
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43600794344093307)
,p_name=>'CHECK_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CHECK_NO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cash/Check No'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
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
 p_id=>wwv_flow_imp.id(43600821922093308)
,p_name=>'CHECK_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CHECK_DATE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Check Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>true
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
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43600922692093309)
,p_name=>'OR_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OR_NO'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'OR No'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
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
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43601082890093310)
,p_name=>'TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Type'
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
 p_id=>wwv_flow_imp.id(46855810608898211)
,p_name=>'ORIG_COL_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORIG_COL_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
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
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(47420601908411436)
,p_name=>'DATE_CREATED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DATE_CREATED'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(47421444350411444)
,p_name=>'CUSTOMER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CUSTOMER_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>110
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(22495460824163642)
,p_internal_uid=>22495460824163642
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
,p_fixed_header_max_height=>600
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
 p_id=>wwv_flow_imp.id(24829357872558904)
,p_interactive_grid_id=>wwv_flow_imp.id(22495460824163642)
,p_static_id=>'248294'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(24829576395558906)
,p_report_id=>wwv_flow_imp.id(24829357872558904)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43619391779259006)
,p_view_id=>wwv_flow_imp.id(24829576395558906)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(43600379563093303)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43620257299259017)
,p_view_id=>wwv_flow_imp.id(24829576395558906)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(43600452086093304)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43621114611259025)
,p_view_id=>wwv_flow_imp.id(24829576395558906)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(43600537368093305)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43622028608259032)
,p_view_id=>wwv_flow_imp.id(24829576395558906)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(43600649001093306)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43622910846259045)
,p_view_id=>wwv_flow_imp.id(24829576395558906)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(43600794344093307)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43623861132259054)
,p_view_id=>wwv_flow_imp.id(24829576395558906)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(43600821922093308)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43624729778259062)
,p_view_id=>wwv_flow_imp.id(24829576395558906)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(43600922692093309)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43625626326259071)
,p_view_id=>wwv_flow_imp.id(24829576395558906)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(43601082890093310)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(47063811858758484)
,p_view_id=>wwv_flow_imp.id(24829576395558906)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(46855810608898211)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(48500872513802296)
,p_view_id=>wwv_flow_imp.id(24829576395558906)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(47420601908411436)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(48659467559294373)
,p_view_id=>wwv_flow_imp.id(24829576395558906)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(47421444350411444)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(24859249164616226)
,p_plug_name=>'Make Collection'
,p_region_name=>'makeCollection'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:t-DialogRegion--noPadding:js-dialog-nosize'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>80
,p_plug_display_point=>'REGION_POSITION_04'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(43601921230093319)
,p_plug_name=>'Header'
,p_region_name=>'add-header'
,p_parent_plug_id=>wwv_flow_imp.id(24859249164616226)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>20
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="background-color: #056AC8; font-size: 1.5rem; color: white; padding: .50rem 0 .50rem 0; margin-left: 1rem;"',
'     id="add-header">',
'    Add Collection Entry',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(44254389736146506)
,p_plug_name=>'errorArea'
,p_parent_plug_id=>wwv_flow_imp.id(24859249164616226)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--hiddenOverflow:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>30
,p_location=>null
,p_plug_source=>'<span id="errorArea" class="hide text-red" style="margin-left: 3rem;"></span>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38695553248196554)
,p_plug_name=>'Buttons'
,p_plug_display_sequence=>100
,p_plug_grid_row_css_classes=>'buttons-row'
,p_plug_grid_column_span=>10
,p_plug_display_column=>2
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(43600247903093302)
,p_plug_name=>'Filter'
,p_region_name=>'filter'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--hiddenOverflow:margin-bottom-md:margin-left-md:margin-right-md'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>70
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(43601244102093312)
,p_plug_name=>'Inquire'
,p_region_name=>'inquire'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>90
,p_plug_display_point=>'REGION_POSITION_04'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    npt001.invoice_id AS "INVOICE_NO",',
'    npt038.amount_paid AS "P_AMOUNT",',
'    TO_CHAR(npt001.date_created, ''MM/DD/YYYY'') AS "INVOICE_DATE",',
'    CASE npt009.account_type_id WHEN 2 THEN npm003.account_type_code',
'                                WHEN 3 THEN npm003.account_type_code',
'                                WHEN 4 THEN npm003.account_type_code',
'                                WHEN 5 THEN npm003.account_type_code',
'                                END AS ACCOUNT_TYPE',
'FROM',
'    NPT001 npt001',
'LEFT JOIN',
'    NPT038 npt038 ON npt001.invoice_id = npt038.invoice_id',
'LEFT JOIN',
'    NPT009 npt009 ON npt001.customer_id = npt009.customer_id',
'JOIN',
'    NPM003 npm003 ON npt009.account_type_id = npm003.account_type_id',
'WHERE',
'    npt038.collection_id = :P75_COLLECTION_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P75_COLLECTION_ID'
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
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="font-size: 1.125rem; font-weight: 600; margin-bottom: 1rem; color: white;" class="inquire-header">',
'    <div class="col-id"></div>',
'    <div class="col-total"></div>',
'</div>'))
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43601482406093314)
,p_name=>'INVOICE_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INVOICE_NO'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Invoice Number'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
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
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43601593229093315)
,p_name=>'P_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'P_AMOUNT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Paid Amount'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
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
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43601698257093316)
,p_name=>'INVOICE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INVOICE_DATE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Invoice Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
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
 p_id=>wwv_flow_imp.id(77038356512800901)
,p_name=>'ACCOUNT_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACCOUNT_TYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Type'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>2
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
 p_id=>wwv_flow_imp.id(43601361016093313)
,p_internal_uid=>43601361016093313
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
,p_fixed_header_max_height=>200
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
 p_id=>wwv_flow_imp.id(43726938186678412)
,p_interactive_grid_id=>wwv_flow_imp.id(43601361016093313)
,p_static_id=>'437270'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(43727136375678414)
,p_report_id=>wwv_flow_imp.id(43726938186678412)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43727635065678418)
,p_view_id=>wwv_flow_imp.id(43727136375678414)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(43601482406093314)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43728599353678425)
,p_view_id=>wwv_flow_imp.id(43727136375678414)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(43601593229093315)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43729465116678431)
,p_view_id=>wwv_flow_imp.id(43727136375678414)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(43601698257093316)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(77044324965804337)
,p_view_id=>wwv_flow_imp.id(43727136375678414)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(77038356512800901)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(43602729860093327)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(43601244102093312)
,p_button_name=>'CLOSE_INQUIRE'
,p_button_static_id=>'close-inquire'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Close Inquire'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'hide'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(35235292010472418)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(38695553248196554)
,p_button_name=>'CHANGE_DATE'
,p_button_static_id=>'c'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>C</u> - Change Collection Date'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'Y'
,p_grid_column_span=>3
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(24837174509564057)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(38695553248196554)
,p_button_name=>'MAKE_COLLECTION'
,p_button_static_id=>'a'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>A</u> - Make Collection'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>3
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(35235637111472422)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(38695553248196554)
,p_button_name=>'UPDATE'
,p_button_static_id=>'u'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>U</u> - Update'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(24838386068564060)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(38695553248196554)
,p_button_name=>'INQUIRE'
,p_button_static_id=>'i'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>I</u> - Inquire'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(43602340685093323)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(24859249164616226)
,p_button_name=>'CLOSE_COLLECTION'
,p_button_static_id=>'close-collection'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Close Collection'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'hide'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(43601171438093311)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(38695553248196554)
,p_button_name=>'POST'
,p_button_static_id=>'p'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>P</u> -Post'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(43602218630093322)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(38695553248196554)
,p_button_name=>'Exit'
,p_button_static_id=>'exit'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Exit'
,p_button_redirect_url=>'f?p=&APP_ID.:306:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'hide'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22495308494163641)
,p_name=>'P75_COLLECT_DATE_FROM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(43600247903093302)
,p_placeholder=>'MM/DD/YYYY'
,p_pre_element_text=>'<div class="formLabel" style="margin-left: 5.5rem;">Collection Date</div>:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>4
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_warn_on_unsaved_changes=>'I'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24859492356616228)
,p_name=>'P75_SEARCH_DBA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(24859249164616226)
,p_use_cache_before_default=>'NO'
,p_pre_element_text=>'<div id="dba">DBA:&nbsp;&nbsp;&nbsp;</div>'
,p_post_element_text=>'<div style="margin-right: .1rem;"></div>'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>'SELECT DBA FROM NPT009'
,p_cSize=>30
,p_colspan=>12
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:margin-bottom-md'
,p_warn_on_unsaved_changes=>'I'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'Y'
,p_attribute_05=>'7'
,p_attribute_09=>'1'
,p_attribute_10=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35235968182472425)
,p_name=>'P75_PREPARED_URL'
,p_item_sequence=>90
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43600182907093301)
,p_name=>'P75_COLLECT_DATE_TO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(43600247903093302)
,p_placeholder=>'MM/DD/YYYY'
,p_pre_element_text=>'To&nbsp;&nbsp;&nbsp;'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_warn_on_unsaved_changes=>'I'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44255537365146518)
,p_name=>'P75_COLLECTION_ID'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47417758642411407)
,p_name=>'P75_DBA'
,p_item_sequence=>50
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47420238818411432)
,p_name=>'P75_YEAR_COLLECTION_ID'
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47421578743411445)
,p_name=>'P75_DBA_ID'
,p_item_sequence=>60
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(49035651838299801)
,p_name=>'P75_FROM'
,p_item_sequence=>20
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65874316588340909)
,p_name=>'P75_TOTAL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(43600247903093302)
,p_prompt=>'TOTAL POSTED AMOUNT:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_column=>9
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:t-Form-fieldContainer--normalDisplay'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70215167895391747)
,p_name=>'P75_TOTAL_UNPOSTED'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(43600247903093302)
,p_prompt=>'TOTAL UNPOSTED AMOUNT:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:t-Form-fieldContainer--normalDisplay'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24859590679616229)
,p_name=>'Open Make Collection'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(24837174509564057)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43602178804093321)
,p_event_id=>wwv_flow_imp.id(24859590679616229)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("#makeCollection").dialog("option", "width", 600);'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24859644009616230)
,p_event_id=>wwv_flow_imp.id(24859590679616229)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(24859249164616226)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(35235303327472419)
,p_name=>'ON C press'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(35235292010472418)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(35235451033472420)
,p_event_id=>wwv_flow_imp.id(35235303327472419)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P75_COLLECT_DATE_FROM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(35235763219472423)
,p_name=>'Go to Create Collection'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P75_SEARCH_DBA'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.key?.toLowerCase() === ''enter'';'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keyup'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(35235830618472424)
,p_event_id=>wwv_flow_imp.id(35235763219472423)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P75_PREPARED_URL := apex_page.get_url(',
'    p_page => 77,',
'    p_items => ''P77_DBA,P77_FROM'',',
'    p_values => :P75_SEARCH_DBA || '','' || ''A''',
');'))
,p_attribute_02=>'P75_SEARCH_DBA,P75_YEAR_COLLECTION_ID,P75_COLLECTION_ID'
,p_attribute_03=>'P75_PREPARED_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44254469108146507)
,p_event_id=>wwv_flow_imp.id(35235763219472423)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'async function searchDBA() {',
'    const searchDBA = $v("P75_SEARCH_DBA");',
'',
'    try {',
'        await doesDBAExists(searchDBA);',
'',
'        let url = $v("P75_PREPARED_URL");',
'        apex.navigation.redirect(url);',
'    } catch (error) {',
'        errorArea.style.display = "block";',
'        errorArea.innerText = error;',
'        document.getElementById("P75_SEARCH_DBA").focus();',
'    }',
'}',
'',
'async function doesDBAExists(searchDBA) {',
'    const response = await apex.server.process(''DBA_EXISTS'', {',
'        pageItems: ''#P75_SEARCH_DBA'',',
'        x01: searchDBA',
'    }, {',
'        dataType: ''json''',
'    });',
'    if (response.success) {',
'        return true;',
'    } else {',
'        throw ''The entered DBA does not exist.''',
'    }',
'}',
'',
'searchDBA();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(43601725347093317)
,p_name=>'Open Inquire'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(24838386068564060)
,p_condition_element=>'P75_COLLECTION_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43602677114093326)
,p_event_id=>wwv_flow_imp.id(43601725347093317)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#inquire").dialog({',
'  width: 600,',
'  position: { my: "right", at: "right-140", of: window }',
'});'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43601843240093318)
,p_event_id=>wwv_flow_imp.id(43601725347093317)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(43601244102093312)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47420144023411431)
,p_event_id=>wwv_flow_imp.id(43601725347093317)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(43601244102093312)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47420359768411433)
,p_event_id=>wwv_flow_imp.id(43601725347093317)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var idValue = $v("P75_YEAR_COLLECTION_ID");',
'',
'$(".inquire-header .col-id").text("Collection ID: " + idValue);',
'$(".inquire-header .col-total").text("TOTAL PAID AMOUNT: ");',
'apex.region("inquire").call("getCurrentView").model.fetchAll(function(status) {',
'    if (status.done) {',
'        $(".inquire-header .col-total").text("TOTAL PAID AMOUNT: " + getTotalInquire("inquire", "P_AMOUNT"));',
'        $("#inquire .a-GV-cell").first().trigger("click");',
'    }',
'});',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44255914566146522)
,p_event_id=>wwv_flow_imp.id(43601725347093317)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).off(''keydown.p75keyevents'');',
'$(document).on(''keydown.p75keyevents'', (ev) => {',
'    const excludedKeys = [',
'        "PageUp", ',
'        "PageDown",  ',
'        "ArrowUp", ',
'        "ArrowDown"',
'    ];',
'    if (!excludedKeys.includes(ev.key)) {',
'        $(''#inquire'').dialog("close")',
'    }',
'});',
'',
'$("#inquire").on("dialogbeforeclose", function(event, ui) {',
'    setTimeout(mapP75Keys, 0);',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(43602444578093324)
,p_name=>'Close Make Collection'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(43602340685093323)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43602552474093325)
,p_event_id=>wwv_flow_imp.id(43602444578093324)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(24859249164616226)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(43602802142093328)
,p_name=>'Close Inquire'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(43602729860093327)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43602974386093329)
,p_event_id=>wwv_flow_imp.id(43602802142093328)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(43601244102093312)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44254640401146509)
,p_name=>'Validate Dates'
,p_event_sequence=>100
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'validateDates'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44254705361146510)
,p_event_id=>wwv_flow_imp.id(44254640401146509)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var dateFrom = $v(''P75_COLLECT_DATE_FROM'');',
'var dateTo = $v(''P75_COLLECT_DATE_TO'');',
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
'var dateFromParsed = parseDate(dateFrom);',
'var dateToParsed = parseDate(dateTo);',
'',
'if (dateFrom == "") {',
'    apex.message.showErrors([{',
'        type: "error",location: ["inline"],',
'        pageItem: "P75_COLLECT_DATE_FROM",',
'        message: "Collection Date is required",',
'        unsafe: false',
'    }])',
'    hasErrors = true;',
'} else if (!isDateValid(dateFrom)) {',
'    apex.message.showErrors([{',
'        type: "error",location: ["inline"],',
'        pageItem: "P75_COLLECT_DATE_FROM",',
'        message: "Please Enter a valid date",',
'        unsafe: false',
'    }])',
'    hasErrors = true;',
'} else if (dateTo !== "" && dateFromParsed > dateToParsed) {',
'    apex.message.showErrors([{',
'        type: "error",',
'        location: ["inline"],',
'        pageItem: "P75_COLLECT_DATE_FROM",',
'        message: "Date must be earlier than Date To",',
'        unsafe: false',
'    }]);',
'    hasErrors = true;',
'}',
'',
'if (!isDateValid(dateTo) && dateTo !== "") {',
'    apex.message.showErrors([{',
'        type: "error",location: ["inline"],',
'        pageItem: "P75_COLLECT_DATE_TO",',
'        message: "Please Enter a valid date",',
'        unsafe: false',
'    }])',
'    hasErrors = true;',
'} else if (dateToParsed > currentDate) {',
'    apex.message.showErrors([{',
'        type: "error",',
'        location: ["inline"],',
'        pageItem: "P75_COLLECT_DATE_TO",',
'        message: "Date cannot exceed today''s date",',
'        unsafe: false',
'    }]);',
'    hasErrors = true;',
'}',
'',
'if (hasErrors) {',
'    return false;',
'}',
'',
'apex.message.clearErrors();'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49038103387299826)
,p_event_id=>wwv_flow_imp.id(44254640401146509)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P75_COLLECTION_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44254879911146511)
,p_event_id=>wwv_flow_imp.id(44254640401146509)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(22495299283163640)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72829446433498303)
,p_event_id=>wwv_flow_imp.id(44254640401146509)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region("table").focus();'
,p_build_option_id=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44255309866146516)
,p_name=>'Selection Change'
,p_event_sequence=>110
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(22495299283163640)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44255426957146517)
,p_event_id=>wwv_flow_imp.id(44255309866146516)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (this.data.selectedRecords && this.data.selectedRecords.length > 0) {',
'    let collectionIdSelected = this.data.selectedRecords[0][8];',
'    let dbaSelected = this.data.selectedRecords[0][2];',
'    let yearCollectionSelected = this.data.selectedRecords[0][1];',
'    let dbaIdSelected = this.data.selectedRecords[0][10];',
'    apex.item("P75_COLLECTION_ID").setValue(collectionIdSelected);',
'    apex.item("P75_YEAR_COLLECTION_ID").setValue(yearCollectionSelected);',
'    apex.item("P75_DBA").setValue(dbaSelected);',
'    apex.item("P75_DBA_ID").setValue(dbaIdSelected);',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44256052353146523)
,p_name=>'Select First Cell'
,p_event_sequence=>120
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(22495299283163640)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|gridpagechange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44256144525146524)
,p_event_id=>wwv_flow_imp.id(44256052353146523)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let isVisible = $(".g-popup-div").is(":visible");',
'setTimeout(function() {',
'    selectRecord();',
'}, isVisible ? 2100 : 50);'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65874682114340912)
,p_event_id=>wwv_flow_imp.id(44256052353146523)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var total = getTotal("table", "AMOUNT", "POST")',
'apex.item("P75_TOTAL").setValue(total.totalPosted);',
'apex.item("P75_TOTAL_UNPOSTED").setValue(total.totalUnposted);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(46855663092898209)
,p_name=>'Select First Cell on Load'
,p_event_sequence=>130
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46855797995898210)
,p_event_id=>wwv_flow_imp.id(46855663092898209)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let fromF = $v("P75_FROM");',
'setTimeout(function() {',
'    $( document ).ready(function() {',
'        $("#table .a-GV-bdy .a-GV-w-scroll .a-GV-table tbody").children(".a-GV-row").each( function () {',
'            if( $(this).attr("data-id") == $v(''P75_COLLECTION_ID'') ){',
'                $(this).find(".a-GV-cell").first().trigger("click");',
'            } else if($v(''P75_COLLECTION_ID'') === "") {',
'                $(".a-GV-cell").first().trigger("click");',
'            }',
'        });',
'    });',
'}, fromF ? 2100 : 500);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(47417481213411404)
,p_name=>'Update Collection'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(35235637111472422)
,p_condition_element=>'P75_COLLECTION_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47420578853411435)
,p_event_id=>wwv_flow_imp.id(47417481213411404)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const ICON_FAIL_LARGE = ''fa fa-lg fa-times-circle msg-icon-yellow'';',
'',
'var collectionId = $v("P75_YEAR_COLLECTION_ID");',
'',
'var grid = apex.region("table").widget().interactiveGrid(''getViews'', ''grid'');',
'var model = grid.model;',
'var selectedRecord = grid.getSelectedRecords()[0];',
'',
'var dateCreatedStr = selectedRecord[9];',
'var posted = selectedRecord[0];',
'',
'function isWithinTwoBusinessDays(dateCreatedStr) {',
'    const createdDate = new Date(dateCreatedStr);',
'    const today = new Date();',
'    today.setHours(0, 0, 0, 0);',
'',
'    let businessDays = 0;',
'    let currentDate = new Date(createdDate);',
'',
'    while (currentDate <= today) {',
'        const dayOfWeek = currentDate.getDay();',
'        if (dayOfWeek !== 0 && dayOfWeek !== 6) {',
'            businessDays++;',
'        }',
'        currentDate.setDate(currentDate.getDate() + 1);',
'    }',
'',
'    return businessDays <= 2;',
'}',
'',
'if (posted === "P") {',
'    showGPopup({ message: `Collection: ${collectionId} is already posted!`, width: 600, icon: ICON_FAIL_LARGE, top: "85%", timeoutActive: true });',
'    return false;',
'}',
'',
'if (isWithinTwoBusinessDays(dateCreatedStr)) {',
'    return true;',
'} else {',
'    showGPopup({ message: `Collection: ${collectionId} is older than 2 business days.`, width: 600, icon: ICON_FAIL_LARGE, top: "85%", timeoutActive: true });',
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47417533323411405)
,p_event_id=>wwv_flow_imp.id(47417481213411404)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P75_PREPARED_URL := apex_page.get_url(',
'    p_page => 77,',
'    p_items => ''P77_DBA,P77_COLLECTION_ID_F,P77_FROM'',',
'    p_values => :P75_DBA || '','' || :P75_COLLECTION_ID || '','' || ''U''',
');'))
,p_attribute_02=>'P75_DBA,P75_COLLECTION_ID,P75_YEAR_COLLECTION_ID,P75_DBA_ID'
,p_attribute_03=>'P75_PREPARED_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47417690421411406)
,p_event_id=>wwv_flow_imp.id(47417481213411404)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P75_PREPARED_URL");',
'apex.navigation.redirect(url);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(47420944878411439)
,p_name=>'Post Collection'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(43601171438093311)
,p_condition_element=>'P75_COLLECTION_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47421016735411440)
,p_event_id=>wwv_flow_imp.id(47420944878411439)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P75_COLLECTION_ID'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const ICON_FAIL_LARGE = ''fa fa-lg fa-times-circle msg-icon-yellow'';',
'',
'var collectionId = $v("P75_YEAR_COLLECTION_ID");',
'',
'var grid = apex.region("table").widget().interactiveGrid(''getViews'', ''grid'');',
'var model = grid.model;',
'var selectedRecord = grid.getSelectedRecords()[0][0];',
'',
'if(selectedRecord === "P") {',
'    showGPopup({ message: `Collection: ${collectionId} is already posted!`, width: 600, icon: ICON_FAIL_LARGE, top: "85%", timeoutActive: true });',
'    return false;',
'} else {',
'    return true;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47421167466411441)
,p_event_id=>wwv_flow_imp.id(47420944878411439)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const ICON_FAIL_LARGE = ''fa fa-lg fa-times-circle msg-icon-yellow'';',
'const ICON_OK_LARGE = ''fa fa-lg fa-check-circle'';',
'',
'const collectionId = $v("P75_YEAR_COLLECTION_ID");',
'',
'async function postCollection() {',
'    try {',
'        await doesCollectionExists();',
'        await checkMatchingBalance();',
'        await insertToNPT022();',
'        await subtractFromBalance();',
'        await postCollectionRecord();',
'        showGPopup({ message: `Collection: ${collectionId} has been posted!`, width: 600, icon: ICON_OK_LARGE, top: "85%", timeoutActive: true });',
'    } catch(error) {',
'        showGPopup({ message: error, width: 600, icon: ICON_FAIL_LARGE, top: "85%", timeoutActive: true });',
'    }',
'}',
'',
'async function doesCollectionExists() {',
'    const response = await apex.server.process("NPT038_COLLECTION_EXISTS", {',
'        pageItems: ''#P75_COLLECTION_ID''',
'    }, {',
'        dataType: ''json''',
'    });',
'',
'    if (response.success) {',
'        return true;',
'    } else {',
'        throw response.message',
'    }',
'}',
'',
'async function checkMatchingBalance() {',
'    const response = await apex.server.process("CHECK_BALANCE_MATCH", {',
'        pageItems: ''#P75_COLLECTION_ID, #P75_DBA_ID''',
'    }, {',
'        dataType: ''json''',
'    });',
'',
'    if (response.success) {',
'        return true;',
'    } else {',
'        throw response.message',
'    }',
'}',
'',
'async function insertToNPT022() {',
'    const response = await apex.server.process("INSERT_TO_NPT022", {',
'        pageItems: ''#P75_DBA_ID, #P75_COLLECTION_ID''',
'    }, {',
'        dataType: ''json''',
'    });',
'',
'    if (response.success) {',
'        return true;',
'    } else {',
'        throw response.message',
'    }',
'}',
'',
'async function subtractFromBalance() {',
'    const response = await apex.server.process("SUBTRACT_FROM_BALANCE", {',
'        pageItems: ''#P75_COLLECTION_ID''',
'    }, {',
'        dataType: ''json''',
'    });',
'',
'    if (response.success) {',
'        return true;',
'    } else {',
'        throw ''An unknown error occured.''',
'    }',
'}',
'',
'async function postCollectionRecord() {',
'    const response = await apex.server.process("POST_COLLECTION", {',
'        pageItems: ''#P75_COLLECTION_ID''',
'    }, {',
'        dataType: ''json''',
'    });',
'',
'    if(response.success) {',
'        apex.region("table").refresh();',
'        return true;',
'    } else {',
'        throw ''An unknown error occured.''',
'    }',
'}',
'',
'postCollection();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(49035766226299802)
,p_name=>'Show Success Popup'
,p_event_sequence=>160
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49035848588299803)
,p_event_id=>wwv_flow_imp.id(49035766226299802)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const ICON_OK_LARGE = "fa fa-lg fa-check-circle";',
'let fromF = $v("P75_FROM");',
'if(fromF) {',
'    if(fromF === "A") {',
'        showGPopup({message: `Collection has been created!`, ',
'        icon: ICON_OK_LARGE, width: 540, top: "85%", timeoutActive: true})',
'    } else if(fromF === "U") {',
'        showGPopup({message: `Collection has been updated!`, ',
'        icon: ICON_OK_LARGE, width: 540, top: "85%", timeoutActive: true})',
'    }',
'',
'    apex.item("P75_FROM").setValue(null);',
'}'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(44254568427146508)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DBA_EXISTS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_exists NUMBER;',
'BEGIN',
'    SELECT COUNT(*)',
'    INTO v_exists',
'    FROM NPT009',
'    WHERE "DBA" = apex_application.g_x01;',
'',
'    IF v_exists = 0 THEN',
'        HTP.P(''{"success": false}'');',
'    ELSE',
'        HTP.P(''{"success": true}'');',
'    END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>44254568427146508
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(47421210620411442)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CHECK_BALANCE_MATCH'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_mismatch_found BOOLEAN := FALSE;',
'BEGIN',
'    FOR rec IN (',
'        SELECT 1',
'        FROM NPT038',
'        JOIN NPT001 USING (invoice_id)',
'        WHERE collection_id = :P75_COLLECTION_ID',
'          AND pre_collected != outstanding_balance',
'    ) LOOP',
'        l_mismatch_found := TRUE;',
'        EXIT;',
'    END LOOP;',
'',
'    IF l_mismatch_found THEN',
'        HTP.P(''{"success": false, "message": "Invoice outstanding balance was updated. Please update this collection."}'');',
'    ELSE',
'        HTP.P(''{"success": true}'');',
'    END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>47421210620411442
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(47421373962411443)
,p_process_sequence=>30
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'INSERT_TO_NPT022'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_bank_code    VARCHAR2(20);',
'    l_check_digits VARCHAR2(20);',
'    l_bank_id      NUMBER;',
'    l_cashcheck NPT005.cashcheck%TYPE;',
'    l_check_date NPT005.check_date%TYPE;',
'    l_amount NPT005.amount%TYPE;',
'    l_current_balance NPT015.current_balance%TYPE;',
'    l_cm_balance NPT003.cm_balance%TYPE;',
'BEGIN',
'    SELECT cashcheck, amount, check_date',
'    INTO l_cashcheck, l_amount, l_check_date',
'    FROM NPT005',
'    WHERE collection_id = :P75_COLLECTION_ID;',
'',
'    IF INSTR(l_cashcheck, ''#'') > 0 THEN',
'        l_bank_code := SUBSTR(l_cashcheck, 1, INSTR(l_cashcheck, ''#'') - 1);',
'        l_check_digits := SUBSTR(l_cashcheck, INSTR(l_cashcheck, ''#'') + 1);',
'',
'        IF l_bank_code = ''CMEMO'' THEN',
'            l_check_digits := TO_NUMBER(l_check_digits);',
'',
'            BEGIN',
'                SELECT current_balance',
'                INTO l_current_balance',
'                FROM NPT015',
'                WHERE credit_memo_id = l_check_digits;',
'',
'                INSERT INTO NPT003 (',
'                    credit_memo_id, collection_id, cm_balance, user_created, date_created',
'                )',
'                VALUES (',
'                    l_check_digits, :P75_COLLECTION_ID, l_current_balance, V(''APP_USER''), SYSDATE',
'                );',
'',
'                SELECT cm_balance',
'                INTO l_cm_balance',
'                FROM NPT003',
'                WHERE credit_memo_id = l_check_digits',
'                AND collection_id = :P75_COLLECTION_ID;',
'',
'                UPDATE NPT015',
'                SET current_balance = l_cm_balance - l_amount',
'                WHERE credit_memo_id = l_check_digits;',
'',
'                HTP.P(''{"success":true}'');',
'             EXCEPTION',
'                    WHEN NO_DATA_FOUND THEN',
'                        HTP.P(''{"success":false, "error":"Invalid Credit Memo: '' || l_check_digits || ''"}'');',
'            END;',
'        ELSE',
'            IF REGEXP_LIKE(l_check_digits, ''^\d{1,7}$'') THEN',
'                BEGIN',
'                    SELECT bank_id INTO l_bank_id',
'                    FROM NPM007',
'                    WHERE bank_code = l_bank_code;',
'',
'                    INSERT INTO NPT022 (',
'                        customer_id, bank_id, check_number, amount, ',
'                        user_created, date_created, check_date',
'                    )',
'                    VALUES (',
'                        :P75_DBA_ID,',
'                        l_bank_id,',
'                        l_check_digits,',
'                        TO_NUMBER(l_amount),',
'                        V(''APP_USER''),',
'                        SYSDATE,',
'                        l_check_date',
'                    );',
'',
'                    HTP.P(''{"success":true}'');',
'                EXCEPTION',
'                    WHEN NO_DATA_FOUND THEN',
'                        HTP.P(''{"success":false, "error":"Invalid Bank Code: '' || l_bank_code || ''"}'');',
'                END;',
'            ELSE',
'                HTP.P(''{"success":true}'');',
'            END IF;',
'        END IF;',
'    ELSE',
'        HTP.P(''{"success":true}'');',
'    END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>47421373962411443
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(47421656372411446)
,p_process_sequence=>40
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SUBTRACT_FROM_BALANCE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    FOR r IN (',
'        SELECT invoice_id, amount_paid',
'        FROM NPT038',
'        WHERE collection_id = :P75_COLLECTION_ID',
'    ) LOOP',
'        UPDATE NPT001',
'        SET outstanding_balance = outstanding_balance - r.amount_paid',
'        WHERE invoice_id = r.invoice_id;',
'    END LOOP;',
'',
'    HTP.P(''{"success": true}'');',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>47421656372411446
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(47421759997411447)
,p_process_sequence=>50
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'POST_COLLECTION'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    UPDATE NPT005',
'    SET posted = ''Y''',
'    WHERE collection_id = :P75_COLLECTION_ID;',
'',
'    HTP.P(''{"success": true}'');',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>47421759997411447
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(47421893308411448)
,p_process_sequence=>60
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'NPT038_COLLECTION_EXISTS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_exists NUMBER;',
'BEGIN',
'    SELECT COUNT(*)',
'    INTO l_exists',
'    FROM NPT038',
'    WHERE collection_id = :P75_COLLECTION_ID;',
'',
'    IF l_exists = 0 THEN',
'        HTP.P(''{"success":false, "message":"Collection does not have an outstanding invoice."}'');',
'    ELSE',
'        HTP.P(''{"success":true}'');',
'    END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>47421893308411448
);
wwv_flow_imp.component_end;
end;
/
