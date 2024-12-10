prompt --application/pages/page_00077
begin
--   Manifest
--     PAGE: 00077
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
 p_id=>77
,p_name=>'Collection & Outstanding Creation'
,p_alias=>'COLLECTION-OUTSTANDING-CREATION'
,p_step_title=>'Collection & Outstanding Creation'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#js/cmn#MIN#.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function isDateValid(dateString) {',
'    var datePattern = /^(0[1-9]|1[0-2])\/(0[1-9]|[12][0-9]|3[01])\/\d{4}$/;',
'    if (!dateString.match(datePattern)) {',
'        return false;',
'    }',
'    var parts = dateString.split("/");',
'    var month = parseInt(parts[0], 10);',
'    var day = parseInt(parts[1], 10);',
'    var year = parseInt(parts[2], 10);',
'    var date = new Date(year, month - 1, day);',
'    return (',
'        date.getFullYear() === year &&',
'        date.getMonth() === (month - 1) &&',
'        date.getDate() === day',
'    );',
'}',
'',
'function parseDate(dateString) {',
'    var parts = dateString.split("/");',
'    return new Date(parts[2], parts[0] - 1, parts[1]);',
'}',
'',
'function getBankCode(check) {',
'    const regex = /^([A-Z]{1,5})#\d{7}$/;',
'    return regex.test(check);',
'}',
'',
'function extractBankCode(check) {',
'    const regex = /^([A-Z]{1,5})#/;',
'    const match = regex.exec(check);',
'    return match ? match[1] : null;',
'}',
'',
'function validateCMEMO(cMemo) {',
'    const regex = /^CMEMO#\d{1,9}$/;',
'    return regex.test(cMemo);',
'}',
'',
'function extractCMEMOId(cMemo) {',
'    const regex = /^CMEMO#0*(\d{1,9})$/;',
'    const match = regex.exec(cMemo);',
'    return match ? match[1] : null;',
'}',
'',
'async function doesBankExist(checkNo) {',
'    const response = await apex.server.process(''CHECK_BANK_EXISTS'', {',
'        x01: checkNo',
'    }, {',
'        dataType: ''json''',
'    });',
'    if (response.success) {',
'        return true;',
'    } else {',
'        throw ''Bank does not exist.'';',
'    }',
'}',
'',
'async function validatateCMemoId(checkNo, dbaId) {',
'    const response = await apex.server.process(''VALIDATE_CMEMO'', {',
'        x01: checkNo,',
'        x02: dbaId',
'    }, {',
'        dataType: ''json''',
'    });',
'    if (response.success) {',
'        return true;',
'    } else {',
'        throw response.errorMessage;',
'    }',
'}',
'',
'function toggleRequired(isRequired) {',
'    const dateFieldLabel = document.querySelector("#P77_CHECK_DATE_CONTAINER span div div:nth-child(1)");',
'    const dateFieldLabel2 = document.querySelector("#P77_CHECK_DATE_CONTAINER span div:nth-child(1)");',
'    const dateField = document.querySelector("#P77_CHECK_DATE")',
'',
'    if(isRequired) {',
'        dateFieldLabel.classList.add("required");',
'        dateField.setAttribute("aria-required", "true");',
'        dateField.removeAttribute("disabled");',
'        dateFieldLabel2.style.marginRight = "2.1rem";',
'    } else {',
'        dateFieldLabel.classList.remove("required");',
'        dateField.setAttribute("aria-required", "false");',
'        dateField.setAttribute("disabled", true);',
'        dateFieldLabel2.style.marginRight = "2.6rem";',
'        apex.item("P77_CHECK_DATE").setValue(null);',
'    }',
'}',
''))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTitle("Collection & Outstanding");',
'',
'const dateFields = [''P77_DATE_PAID'', ''P77_CHECK_DATE''];',
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
'$(document).ready(function() {',
'    $(''#P77_COLLECTION_TYPE, #P77_DATE_PAID, #P77_AMOUNT_PAID, #P77_CHECK_NO, #P77_CHECK_DATE, #P77_OR_NO'').on(''keydown'', function(event) {',
'        if(event.key === ''Enter'' || event.keyCode === 13) {',
'            $.event.trigger("validateFields");',
'            event.preventDefault();',
'        }',
'    })',
'});',
'',
'var grid = apex.region("outstandingGrid").widget().interactiveGrid("getViews", "grid");',
'',
'grid.view$.on("change", "input[type=checkbox]", function(event) {',
'    var checkbox = $(this);',
'    var recordId = checkbox.closest("tr").data("id");',
'    var isChecked = checkbox.prop("checked");',
'    var model = grid.model;',
'    var row = model.getRecord(recordId);',
'    var rowAmount = parseFloat(model.getValue(row, "AMOUNT")) || 0;',
'',
'    var availableFunds = parseFloat($v("P77_AVAILABLE_FUNDS")) || 0;',
'    var totalTagged = parseFloat($v("P77_TOTAL_TAGGED")) || 0;',
'',
'    if (isChecked) {',
'        totalTagged += rowAmount;',
'    } else {',
'        totalTagged -= rowAmount;',
'    }',
'',
'    availableFunds = parseFloat($v("P77_ORIGINAL_FUNDS")) - totalTagged;',
'',
'    $s("P77_TOTAL_TAGGED", totalTagged.toFixed(2));',
'    $s("P77_AVAILABLE_FUNDS", availableFunds.toFixed(2));',
'',
'    console.log("availableFunds", availableFunds);',
'    console.log("rowAmount", rowAmount)',
'});',
'',
'var ig$ = apex.region("outstandingGrid").widget().interactiveGrid("getViews", "grid").model;',
'',
'apex.jQuery("#outstandingGrid").on("keydown", function (event) {',
'    var grid = apex.region("outstandingGrid").widget().interactiveGrid("getViews", "grid");',
'    var activeCell = grid.getActiveCell();',
'    var model = grid.model;',
'    var record = model.getRecord(activeCell[0]);',
'',
'    if (!record) return;',
'',
'    if (event.key === "ArrowUp") {',
'        grid.navigate(-1, 0);',
'        event.preventDefault();',
'    }',
'    else if (event.key === "ArrowDown") {',
'        grid.navigate(1, 0);',
'        event.preventDefault();',
'    }',
'    else if (event.key === "Enter" && activeCell[1] === 0) {',
'        var isChecked = model.getValue(record, "TAG");',
'        model.setValue(record, "TAG", !isChecked);',
'        event.preventDefault();',
'    }',
'});',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* .t-Region {',
'    margin-block-end: var(--ut-region-margin, 0) !important;',
'} */',
'',
'/* .col.col-12:has(.outstanding-header) {',
'    display: none;',
'} */',
'',
'/* ',
'#outstandingGrid {',
'    display: none;',
'} */',
'',
'.mr-1 {',
'    margin-right: 1rem;',
'}',
'',
'.t-Body {',
'    width: 93%;',
'    margin-left: auto;',
'    margin-right: auto;',
'}',
'',
'#readonly-form label,',
'#readonly-form span:not(.t-Form-error),',
'#P77_AVAILABLE_FUNDS_CONTAINER span,',
'#P77_TOTAL_TAGGED_CONTAINER span {',
'    font-size: 1.125rem;',
'    color: white;',
'}',
'',
'.t-Form-error {',
'    color: #FFD700 !important;',
'    margin-left: 8.5rem;',
'}',
'',
'#P77_COLLECTION_TYPE_lov_btn span {',
'    color: black !important;',
'}',
'',
'#readonly-form .t-Form-inputContainer {',
'    padding-block-end: var(--ut-field-padding-y, 0) !important;',
'}',
'',
'.required::after {',
'    content: "*";',
'    color: red;',
'}',
'',
'#P77_AVAILABLE_FUNDS_DISPLAY,',
'#P77_TOTAL_TAGGED_DISPLAY {',
'    text-align: right;',
'    width: 8rem;',
'}',
'',
'.border {',
'    margin-top: 5rem;',
'    border-left: 2px solid white;',
'}',
'',
'.border.col-1 {',
'    max-width: 3% !important;',
'}',
'',
'.hide {',
'    display: none;',
'}',
'',
'.btns {',
'    font-size: 1.125rem;',
'    color: white;',
'    text-align: left;',
'}',
'',
'#outstandingGrid .a-GV-header a, #outstandingGrid th.a-GV-header {',
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
'#outstandingGrid table,',
'#outstandingGrid tr,',
'#outstandingGrid th {',
'    font-size: 1rem;',
'}',
'',
'#outstandingGrid td {',
'    font-size: 1.125rem;',
'}',
'',
'#outstandingGrid .a-GV-table {',
'    width: 100% !important;',
'}',
'',
'.button {',
'    position: fixed;',
'    bottom: 0;',
'    margin-bottom: 4rem;',
'}',
'',
'#outstandingGrid .a-GV-table {',
'    width: 100%;',
'}',
'',
'#outstandingGrid .a-GV-table colgroup col:nth-child(1) {',
'    width: 3rem;',
'}',
'',
'#outstandingGrid .a-GV-table colgroup col:nth-child(2) {',
'    width: 8rem;',
'}',
'',
'#outstandingGrid .a-GV-table colgroup col:nth-child(3),',
'#outstandingGrid .a-GV-table colgroup col:nth-child(4) {',
'    width: 7rem;',
'}',
'',
'/* ----------------------- */',
'',
'.t-Header .t-Header-branding {',
'    background-color: white !important;',
'    color: rgb(30, 58, 138) !important;',
'}',
'',
'body {',
'    background-color: rgb(30, 58, 138);',
'}',
'',
'.btns {',
'    font-size: 1.125rem;',
'    color: white;',
'}',
'',
'#esc, #enter {',
'    display: none;',
'}',
'',
'#readonly-form {',
'    background-color: rgb(30, 58, 138);',
'}',
'',
'.outstanding-header {',
'    font-size: 1.125rem;',
'    color: white;',
'}',
'#header-wrapper {',
'    background-color: rgb(30, 58, 138);;',
'}'))
,p_step_template=>wwv_flow_imp.id(5671392681337017)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(24859739172616231)
,p_plug_name=>'Left Form'
,p_region_name=>'readonly-form'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>6
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(24860355480616237)
,p_plug_name=>'Right Form'
,p_region_name=>'collection-form'
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>5
,p_plug_display_column=>8
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(24861442374616248)
,p_plug_name=>'Outstanding Invoice Header'
,p_region_name=>'header-wrapper'
,p_parent_plug_id=>wwv_flow_imp.id(24860355480616237)
,p_plug_display_sequence=>30
,p_location=>null
,p_plug_source=>'<div role="region" id="header-wrapper"><h3 class="outstanding-header">Outstanding Invoice</h3></div>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(24861559994616249)
,p_plug_name=>'Outstanding Invoice Grid'
,p_region_name=>'outstandingGrid'
,p_parent_plug_id=>wwv_flow_imp.id(24860355480616237)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    ''N'' AS "TAG",',
'    npt001.date_created AS INVOICE_DATE,',
'    npt001.invoice_id AS INVOICE_NUMBER,',
'    npt001.outstanding_balance AS AMOUNT',
'FROM ',
'    NPT001 npt001',
'WHERE',
'    npt001.customer_id = :P77_DBA_ID',
'    AND (npt001.outstanding_balance IS NOT NULL OR npt001.outstanding_balance != 0)'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P77_DBA_ID'
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
 p_id=>wwv_flow_imp.id(45376971673832331)
,p_name=>'TAG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TAG'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'Tag'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
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
 p_id=>wwv_flow_imp.id(45377030349832332)
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
,p_is_required=>false
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
 p_id=>wwv_flow_imp.id(45377105162832333)
,p_name=>'INVOICE_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INVOICE_NUMBER'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Invoice Number'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'CENTER'
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
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(45377295395832334)
,p_name=>'AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AMOUNT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Amount'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(24861621919616250)
,p_internal_uid=>24861621919616250
,p_is_editable=>true
,p_edit_operations=>'u'
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
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
,p_fixed_header_max_height=>400
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
 p_id=>wwv_flow_imp.id(25320652834944776)
,p_interactive_grid_id=>wwv_flow_imp.id(24861621919616250)
,p_static_id=>'253207'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(25320842749944778)
,p_report_id=>wwv_flow_imp.id(25320652834944776)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(45575842292127925)
,p_view_id=>wwv_flow_imp.id(25320842749944778)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(45376971673832331)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(45576734860127932)
,p_view_id=>wwv_flow_imp.id(25320842749944778)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(45377030349832332)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(45577623970127940)
,p_view_id=>wwv_flow_imp.id(25320842749944778)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(45377105162832333)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(45578478357127946)
,p_view_id=>wwv_flow_imp.id(25320842749944778)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(45377295395832334)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(43603804748093338)
,p_plug_name=>'Border'
,p_region_name=>'border'
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'border'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(43604331877093343)
,p_plug_name=>'Button'
,p_plug_display_sequence=>40
,p_plug_grid_column_span=>6
,p_plug_grid_column_css_classes=>'button'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(43604454508093344)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(43604331877093343)
,p_button_name=>'Navigate'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>N</u> - Navigate'
,p_button_css_classes=>'btns'
,p_grid_new_row=>'Y'
,p_grid_column=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(44255017515146513)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(43604331877093343)
,p_button_name=>'Exit'
,p_button_static_id=>'exit'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Exit'
,p_button_redirect_url=>'f?p=&APP_ID.:75:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'hide'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(45377746729832339)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(43604331877093343)
,p_button_name=>'TEST'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Test'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24859868106616232)
,p_name=>'P77_LEGAL_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(24859739172616231)
,p_use_cache_before_default=>'NO'
,p_pre_element_text=>'<div style="margin-right: 2.4rem;">Legal Name:</div>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:margin-bottom-sm:t-Form-fieldContainer--normalDisplay:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24859919831616233)
,p_name=>'P77_DBA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(24859739172616231)
,p_pre_element_text=>'<div style="margin-right: 6.2rem;">DBA:</div>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:margin-bottom-sm:t-Form-fieldContainer--normalDisplay'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24860062919616234)
,p_name=>'P77_COLLECTION_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(24859739172616231)
,p_use_cache_before_default=>'NO'
,p_prompt=>'New'
,p_pre_element_text=>'<div style="margin-right: .7rem;">Collection Date:</div>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>7
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:margin-bottom-sm:t-Form-fieldContainer--normalDisplay:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24860161944616235)
,p_name=>'P77_AVAILABLE_FUNDS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(24860355480616237)
,p_item_default=>'0.00'
,p_prompt=>'New'
,p_pre_element_text=>'<div>Available Funds:&nbsp;</div>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'u-textEnd'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35236314657472429)
,p_name=>'P77_TOTAL_TAGGED'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(24860355480616237)
,p_item_default=>'0.00'
,p_pre_element_text=>'<div>Total Tagged:&nbsp;</div>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43603050452093330)
,p_name=>'P77_COLLECTION_TYPE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(24859739172616231)
,p_prompt=>'New'
,p_pre_element_text=>'<div style="margin-right: .2rem; display: flex;"><div class="required">Collection Type</div>:</div>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT collection_type_name AS d, COLLECTION_TYPE_ID AS r',
'FROM NPM015'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>7
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge:margin-bottom-lg'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET_FILTER'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43603137905093331)
,p_name=>'P77_DATE_PAID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(24859739172616231)
,p_pre_element_text=>'<div style="margin-right: 3.05rem; display: flex;"><div class="required">Date Paid</div>:</div>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>7
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:margin-bottom-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43603211513093332)
,p_name=>'P77_AMOUNT_PAID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(24859739172616231)
,p_prompt=>'Amount Paid'
,p_pre_element_text=>'<div style="margin-right: 1.40rem; display: flex;"><div class="required">Amount Paid</div>:</div>'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>7
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:margin-bottom-sm'
,p_attribute_03=>'right'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43603345164093333)
,p_name=>'P77_CHECK_NO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(24859739172616231)
,p_pre_element_text=>'<div style="margin-right: 2.95rem; display: flex;"><div class="required">Check No</div>:</div>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>7
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:margin-bottom-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43603434023093334)
,p_name=>'P77_CHECK_DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(24859739172616231)
,p_pre_element_text=>'<div style="margin-right: 2.6rem; display: flex;"><div>Check Date</div>:</div>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>7
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:margin-bottom-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43603501652093335)
,p_name=>'P77_OR_NO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(24859739172616231)
,p_pre_element_text=>'<div style="margin-right: 4.9rem;">OR No:</div>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>7
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:margin-bottom-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44254942823146512)
,p_name=>'P77_DBA_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(24859739172616231)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45376739465832329)
,p_name=>'P77_ORIGINAL_FUNDS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(24860355480616237)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45378094942832342)
,p_name=>'P77_CURRENT_TARGET'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(35236196139472427)
,p_name=>'Set Read Only'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(35236200276472428)
,p_event_id=>wwv_flow_imp.id(35236196139472427)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_legal_name NPT009.legal_name%TYPE;',
'    v_collection_date DATE;',
'    v_customer_id NPT009.customer_id%TYPE;',
'BEGIN',
'    SELECT legal_name, customer_id',
'    INTO v_legal_name, v_customer_id',
'    FROM NPT009',
'    WHERE "DBA" = :P77_DBA;',
'',
'    v_collection_date := SYSDATE;',
'',
'    :P77_LEGAL_NAME := v_legal_name;',
'    :P77_COLLECTION_DATE := TO_CHAR(v_collection_date, ''MM/DD/YYYY'');',
'    :P77_DBA_ID := v_customer_id;',
'END;'))
,p_attribute_02=>'P77_DBA'
,p_attribute_03=>'P77_COLLECTION_DATE,P77_LEGAL_NAME,P77_DBA_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44256236052146525)
,p_name=>'Validate Fields'
,p_event_sequence=>30
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'validateFields'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44256341217146526)
,p_event_id=>wwv_flow_imp.id(44256236052146525)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var amountPaid;',
'async function validateForm() {',
'    var collectionType = $v("P77_COLLECTION_TYPE");',
'    var datePaid = $v("P77_DATE_PAID");',
'    amountPaid = $v("P77_AMOUNT_PAID");',
'    var checkNo = $v("P77_CHECK_NO");',
'    var dbaId = $v("P77_DBA_ID");',
'    var checkDate = $v("P77_CHECK_DATE");',
'    var orNo = $v("P77_OR_NO");',
'    var currentDate = new Date()',
'',
'    var datePaidParsed = parseDate(datePaid);',
'',
'    function showError(item, errorMessage) {',
'        apex.message.showErrors([{',
'            type: "error",',
'            location: ["inline"],',
'            pageItem: item,',
'            message: errorMessage,',
'            unsafe: false',
'        }]);',
'        hasErrors = true;',
'    }',
'',
'    apex.message.clearErrors();',
'',
'    var hasErrors = false;',
'',
'    if (collectionType == "") {',
'        showError("P77_COLLECTION_TYPE", "Collection Type cannot be empty");',
'    }',
'',
'    if (datePaid == "") {',
'        showError("P77_DATE_PAID", "Date Paid cannot be empty");',
'    } else if (!isDateValid(datePaid)) {',
'        showError("P77_DATE_PAID", "Please enter a valid date");',
'    } else if (datePaidParsed > currentDate) {',
'        showError("P77_DATE_PAID", "Date Paid cannot be greater than the current date");',
'    }',
'',
'    if (amountPaid == "") {',
'        showError("P77_AMOUNT_PAID", "Amount Paid cannot be empty");',
'    } else if (amountPaid.replace(/,/g, '''').length > 12) {',
'        showError("P77_AMOUNT_PAID", "Amount Paid cannot exceed 9 digits");',
'    }',
'',
'    if (checkNo == "") {',
'        showError("P77_CHECK_NO", "Check No cannot be empty");',
'        toggleRequired(false);',
'    } else if (checkNo !== "CASH" && checkNo !== "OFFSET" && checkNo !== "WRITEOFF" && !getBankCode(checkNo) && !validateCMEMO(checkNo)) {',
'        showError("P77_CHECK_NO", "Check No must follow the allowed values");',
'        toggleRequired(false);',
'    } else if (getBankCode(checkNo)) {',
'        let bankCode = extractBankCode(checkNo);',
'        try {',
'            await doesBankExist(bankCode);',
'            toggleRequired(true);',
'        } catch (error) {',
'            toggleRequired(false);',
'            showError("P77_CHECK_NO", error);',
'        }',
'    } else if (validateCMEMO(checkNo)) {',
'        let cMemoId = extractCMEMOId(checkNo);',
'        try {',
'            await validatateCMemoId(cMemoId, dbaId);',
'            toggleRequired(false);',
'        } catch (error) {',
'            showError("P77_CHECK_NO", error);',
'            toggleRequired(false);',
'        }',
'    } else {',
'        toggleRequired(false);',
'    }',
'',
'    const checkDateLabel = document.querySelector("#P77_CHECK_DATE_CONTAINER span div div:nth-child(1)");',
'    const isCheckDateRequired = checkDateLabel.classList.contains("required");',
'    if(isCheckDateRequired && !checkDate) {',
'        if(isCheckDateRequired) {',
'            showError("P77_CHECK_DATE", "Check Date is required");',
'        }',
'    } else if (checkDate && !isDateValid(checkDate)) {',
'        if(isCheckDateRequired) {',
'            showError("P77_CHECK_DATE", "Please enter a valid date");',
'        }',
'    }',
'',
'    if(orNo && orNo.length > 12) {',
'        showError("P77_OR_NO", "OR No cannot exceed 12 characters");',
'    }',
'',
'    return hasErrors;',
'}',
'',
'async function hasError() {',
'    const hasErrors = await validateForm();',
'    if(!hasErrors) {',
'        $("#header-wrapper").show();',
'        $("#outstandingGrid").show();',
'        apex.region("outstandingGrid").refresh();',
'        apex.item("P77_AVAILABLE_FUNDS").setValue(amountPaid);',
'        apex.item("P77_ORIGINAL_FUNDS").setValue(amountPaid);',
'    }',
'}',
'',
'hasError()'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44256982910146532)
,p_name=>'Set Check Date Disable'
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44257074926146533)
,p_event_id=>wwv_flow_imp.id(44256982910146532)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const checkDate = document.querySelector("#P77_CHECK_DATE");',
'',
'checkDate.setAttribute("disabled", true);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44258200779146545)
,p_name=>'Hide Table'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45377621191832338)
,p_event_id=>wwv_flow_imp.id(44258200779146545)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(24861442374616248)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44258378583146546)
,p_event_id=>wwv_flow_imp.id(44258200779146545)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(24861559994616249)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(45377335790832335)
,p_name=>'Select Grid'
,p_event_sequence=>60
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(24861559994616249)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|gridpagechange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45377448212832336)
,p_event_id=>wwv_flow_imp.id(45377335790832335)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$( document ).ready(function() {',
'    $(".a-GV-cell").first().trigger("dblclick");',
'    apex.item("P77_CURRENT_TARGET").setValue("IG");',
' });'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(45377864183832340)
,p_name=>'New'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(45377746729832339)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45377951104832341)
,p_event_id=>wwv_flow_imp.id(45377864183832340)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var currentTarget = $v("P77_CURRENT_TARGET");',
'',
'if (currentTarget === "FIELD") {',
'    apex.region("outstandingGrid").widget().interactiveGrid("getViews", "grid").focus();',
'    apex.item("P77_CURRENT_TARGET").setValue("IG");',
'} else if (currentTarget === "IG") {',
'    $("#P77_COLLECTION_TYPE").focus();',
'    $(".a-GV-cell").first().trigger("dblclick");',
'    apex.item("P77_CURRENT_TARGET").setValue("FIELD");',
'}'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(45376554315832327)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(24861559994616249)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Outstanding Invoice Grid - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>45376554315832327
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(44256468516146527)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CHECK_BANK_EXISTS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_exists NUMBER;',
'BEGIN',
'    SELECT COUNT(*)',
'    INTO v_exists',
'    FROM NPM007',
'    WHERE bank_code = apex_application.g_x01;',
'',
'    IF v_exists = 0 THEN',
'        HTP.P(''{"success": false}'');',
'    ELSE',
'        HTP.P(''{"success": true}'');',
'    END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>44256468516146527
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(44256626902146529)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'VALIDATE_CMEMO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_exists NUMBER;',
'    v_customer_id NPT009.customer_id%TYPE;',
'    v_balance NUMBER;',
'BEGIN',
'    SELECT COUNT(*)',
'    INTO v_exists',
'    FROM NPT015',
'    WHERE credit_memo_id = apex_application.g_x01;',
'',
'    IF v_exists = 0 THEN',
'        HTP.P(''{"success":false, "errorMessage": "Credit Memo does not exist"}'');',
'        RETURN;',
'    END IF;',
'',
'    SELECT customer_id',
'    INTO v_customer_id',
'    FROM NPT015',
'    WHERE credit_memo_id = apex_application.g_x01;',
'',
'    IF v_customer_id != apex_application.g_x02 THEN',
'        HTP.P(''{"success":false, "errorMessage": "Credit Memo is from a different customer"}'');',
'        RETURN;',
'    END IF;',
'',
'    SELECT current_balance',
'    INTO v_balance',
'    FROM NPT015',
'    WHERE credit_memo_id = apex_application.g_x01;',
'',
'    IF v_balance = 0 THEN',
'        HTP.P(''{"success":false, "errorMessage": "Credit Memo has 0 balance"}'');',
'        RETURN;',
'    END IF;',
'',
'    HTP.P(''{"success": true}'');',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>44256626902146529
);
wwv_flow_imp.component_end;
end;
/
