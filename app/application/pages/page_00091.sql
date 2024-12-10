prompt --application/pages/page_00091
begin
--   Manifest
--     PAGE: 00091
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
 p_id=>91
,p_name=>'Convert Item A to Item B'
,p_alias=>'CONVERT-ITEM-A-TO-ITEM-B'
,p_step_title=>'Convert Item A to Item B'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#js/cmn#MIN#.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p91KeyMap = {',
'    a: (v) => {',
'        $("#a").trigger("click");',
'    },',
'    u: (v) => {',
'        $("#u").trigger("click");',
'    },',
'    i: (v) => {',
'        $("#i").trigger("click");',
'    },',
'    p: (v) => {',
'        $("#p").trigger("click");',
'    },',
'    o: (v) => {',
'        $("#o").trigger("click");',
'    },',
'    r: (v) => {',
'        $("#r").trigger("click");',
'    },',
'    home: (v) => {',
'        $("#home").trigger("click");',
'    },',
'    end: (v) => {',
'        $("#end").trigger("click");',
'    },',
'    s: (v) => {',
'        $("#s").trigger("click");',
'    },',
'    escape: (v) => {',
'        if($("#search").is(":visible")) {',
'            $("#close-search").trigger("click");',
'        } else if($("#sort-by").is(":visible")) {',
'            $("#close-sort").trigger("click");',
'        } else if($("#reports").is(":visible")) {',
'            $("#close-reports").trigger("click");',
'        } else if($("#option").is(":visible")) {',
'            $("#close-option").trigger("click");',
'        } else {',
'            $("#exit").trigger("click");',
'        }',
'    }',
'}',
'',
'function mapP91Keys() {',
'    $(document).off(''keydown.p91keyevents'');',
'    $(document).on(''keydown.p91keyevents'', (ev) => {',
'',
'        const focusedElement = document.activeElement;',
'        if (focusedElement.tagName === "INPUT" || focusedElement.tagName === "TEXTAREA") {',
'            return;',
'        }',
'        ',
'        var key = ev.key?.toLowerCase();',
'        if (p91KeyMap[key]) {',
'            ev.preventDefault();',
'            p91KeyMap[key]();',
'        }',
'    });',
'}',
'',
'function selectFirstRow() {',
'    let region = apex.region("table")',
'    let view = region.call("getCurrentView"),',
'    model = view.model,',
'    view$ = view.view$;',
'    let rec = model.recordAt(0);',
'    if ( rec ) {',
'        let offset,',
'            pi = view$.grid("getPageInfo"),',
'            index = model.indexOf(rec);',
'',
'        offset = index * pi.rowHeight;',
'        $(".a-GV-w-scroll").scrollTop( offset );',
'',
'        view$.grid("setSelectedRecords", [rec], true);',
'    }',
'}',
'',
'function selectLastRow() {',
'    let region = apex.region("table")',
'    let view = region.call("getCurrentView"),',
'    model = view.model,',
'    view$ = view.view$;',
'    ',
'    let totalRec = model.getTotalRecords();',
'    let rec = model.recordAt(totalRec - 1);',
'    if ( rec ) {',
'        let offset,',
'            pi = view$.grid("getPageInfo"),',
'            index = model.indexOf(rec);',
'',
'        offset = index * pi.rowHeight;',
'        $(".a-GV-w-scroll").scrollTop( offset );',
'',
'        view$.grid("setSelectedRecords", [rec], true);',
'    }',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP91Keys();',
'setTitle("Convert Item A to Item B");',
'',
'$(document).ready(function() { ',
'    $("#P91_SEARCH_VALUE").on("keydown", function(event) {',
'        if (event.key === "Enter" || event.keyCode === 13) {',
'            $("#goto").trigger("click");',
'            event.preventDefault();',
'        }',
'    });',
'});',
'',
'$(document).on("keydown", function(e) {',
'    if ($("#sort-by").is(":visible")) {',
'        const buttons = $(".sort-btns");',
'        const focusedIndex = buttons.index(document.activeElement);',
'        ',
'        if (e.key === "ArrowDown") {',
'            e.preventDefault();',
'            const nextIndex = (focusedIndex + 1) % buttons.length;',
'            buttons.eq(nextIndex).focus();',
'        } else if (e.key === "ArrowUp") {',
'            e.preventDefault();',
'            const prevIndex = (focusedIndex - 1 + buttons.length) % buttons.length;',
'            buttons.eq(prevIndex).focus();',
'        }',
'    }',
'',
'    if($("#reports").is(":visible")) {',
'        if(e.key.toLowerCase() === "a") {',
'            setTimeout(() => {',
'                apex.item("P91_REPORT").setValue("A");',
'                $.event.trigger(''reportA'');',
'            }, 100)',
'            e.preventDefault();',
'        } else if(e.key.toLowerCase() === "b") {',
'            apex.item("P91_REPORT").setValue("B");',
'            $.event.trigger(''reportBSetMonth'');',
'            e.preventDefault();',
'        } else if(e.key.toLowerCase() === "c") {',
'            apex.item("P91_REPORT").setValue("C");',
'            $.event.trigger(''reportCSetItem'');',
'            e.preventDefault();',
'        }',
'    }',
'',
'    if($("#option").is(":visible")) {',
'        if(e.key.toLowerCase() === "a") {',
'            $.event.trigger(''printA'');',
'        } else if(e.key.toLowerCase() === "b") {',
'            $.event.trigger(''printB'');',
'        }',
'    }',
'',
'    if($("#crr-b").is(":visible")) {',
'        $("#P91_MONTH_FROM_B, #P91_MONTH_TO_B").on("keydown", function(event) {',
'            if (event.key === "Enter" || event.keyCode === 13) {',
'                $("#submit-months").trigger("click");',
'                event.preventDefault();',
'            }',
'        });',
'    }',
'',
'    if($("#icr-c").is(":visible")) {',
'        $("#P91_ITEM_FROM_C, #P91_ITEM_TO_C").on("keydown", function(event) {',
'            if (event.key === "Enter" || event.keyCode === 13) {',
'                $("#submit-items").trigger("click");',
'                event.preventDefault();',
'            }',
'        });',
'    }',
'});'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#inquire span {',
'    font-size: 1.125rem !important;',
'}',
'',
'#from-to span {',
'    font-size: 1rem !important;',
'}',
'',
'.ui-dialog {',
'    background-color: #056AC8;',
'}',
'',
'.t-Region#table-wrapper {',
'    background-color: white;',
'    border: none;',
'    padding: .5rem .5rem 1.5rem .5rem;',
'}',
'',
'#table-wrapper .t-Region-body {',
'    color: black;',
'}',
'',
'#inquire,',
'#sort-by,',
'#search,',
'#reports,',
'#crr-b,',
'#icr-c {',
'    border-radius: 12px;',
'}',
'',
'#inquire {',
'    overflow: hidden;',
'    background-color: #056AC8 !important;',
'}',
'',
'#sort-by .t-Region-body {',
'    background-color: #056AC8;',
'}',
'',
'#inquire .a-GV-cell,',
'#inquire .a-GV-header {',
'    pointer-events: none;',
'}',
'',
'.t-Region#single ,',
'.t-Region#period,',
'.t-Region#period-two,',
'.t-Region#dot,',
'.t-Region#graphic {',
'    border-radius: 0 !important;',
'    font-size: 1.125rem;',
'    border: none !important;',
'    outline: none !important;',
'    background-color: #056AC8 !important; ',
'    color: white !important;',
'}',
'',
'.sort-btns:focus {',
'    background-color: #beddfa !important;',
'    border: none;',
'    outline: none;',
'}',
'',
'#sort-by .t-DialogRegion-body,',
'#reports .t-DialogRegion-body {',
'    padding-block-end: var(--ut-dialog-region-padding-y, .5rem) !important;',
'    padding-inline-end: var(--ut-dialog-region-padding-x, .5rem) !important;',
'    padding-inline-start: var(--ut-dialog-region-padding-x, .5rem) !important;',
'}',
'',
'.sort-btns {',
'    text-align: left !important;',
'    font-size: 1.125rem;',
'    padding: 1rem .5rem 1rem .5rem;',
'    background-color: white !important;',
'    border-radius: 0 !important;',
'}',
'',
'div#sort-by.ui-dialog-content,',
'div#reports.ui-dialog-content {',
'    padding: 0 !important;',
'    background-color: #056AC8;',
'}',
'',
'',
'.t-Form-labelContainer {',
'    display: flex;',
'    align-items: start;',
'}',
'',
'#inquire .t-DialogRegion-body {',
'    background-color: #056AC8;',
'}',
'',
'.t-DialogRegion-bodyWrapperOut {',
'    overflow: hidden !important;',
'}',
'',
'#search.t-DialogRegion,',
'#crr-b.t-DialogRegion,',
'#icr-c.t-DialogRegion {',
'    min-height: 120px !important;',
'    background-color: white;',
'    border-radius: 12px;',
'}',
'',
'#crr-b.t-DialogRegion,',
'#icr-c.t-DialogRegion {',
'    min-height: auto !important;',
'}',
'',
'.t-Region#search-header,',
'.t-Region#crr-b-header,',
'.t-Region#icr-c-header {',
'    background-color: #056AC8 !important;',
'}',
'',
'#year-sort span.t-Form-itemText,',
'#year-sort span.display_only {',
'    font-size: 1rem !important;',
'    color: white !important;',
'    margin-bottom: 0 !important;',
'}',
'',
'.t-Region#year-sort {',
'    background-color: rgb(30, 58, 138);',
'}',
'',
'.t-Form-inputContainer {',
'    padding-block-end: var(--ut-field-padding-y, .0);',
'    padding-block-start: var(--ut-field-padding-y, .0);',
'}',
'',
'.t-Form-labelContainer {',
'    padding-block-end: var(--ut-field-padding-y, .0);',
'    padding-block-start: var(--ut-field-padding-y, .0);',
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
'.t-Header .t-Header-branding {',
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
'    text-align: left;',
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
'#table .a-GV-header a, #table th.a-GV-header {',
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
'#table .a-GV-table colgroup col:nth-child(1) {',
'    width: 3rem;',
'}',
'',
'#table .a-GV-table colgroup col:nth-child(2) {',
'    width: 7rem;',
'}',
'',
'#table .a-GV-table colgroup col:nth-child(3),',
'#table .a-GV-table colgroup col:nth-child(5) {',
'    width: 8rem;',
'}',
'',
'#table .a-GV-table colgroup col:nth-child(4),',
'#table .a-GV-table colgroup col:nth-child(6) {',
'    width: 20rem;',
'}',
'',
'#table .a-GV-table colgroup col:nth-child(7) {',
'    width: 3rem;',
'}',
'',
'#table1 table,',
'#table1 tr,',
'#table1 th {',
'    font-size: 1rem;',
'    color: black;',
'}',
'',
'#table1 td {',
'    font-size: 1.125rem;',
'}',
'',
'#table1 .a-GV-table {',
'    width: 100% !important;',
'}',
'',
'#table1 .a-GV-table colgroup col:nth-child(1), ',
'#table1 .a-GV-table colgroup col:nth-child(3), ',
'#table1 .a-GV-table colgroup col:nth-child(6) {',
'    width: 3rem;',
'}',
'',
'#table1 .a-GV-table colgroup col:nth-child(8),',
'#table1 .a-GV-table colgroup col:nth-child(9) {',
'    width: 7rem;',
'}',
'',
'#table1 .a-GV-table colgroup col:nth-child(2), ',
'#table1 .a-GV-table colgroup col:nth-child(5) {',
'    width: 4rem;',
'}',
'',
'#table1 .a-GV-table colgroup col:nth-child(4), ',
'#table1 .a-GV-table colgroup col:nth-child(7) {',
'    width: 6rem;',
'}',
'#table1 .a-GV-table colgroup col:nth-child(10) {',
'    width: 9rem;',
'}'))
,p_step_template=>wwv_flow_imp.id(5671392681337017)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(32047105191460408)
,p_plug_name=>'Year & Sort'
,p_region_name=>'year-sort'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--hiddenOverflow:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>50
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(32047261067460409)
,p_plug_name=>'Item From & To'
,p_region_name=>'item-from'
,p_plug_display_sequence=>60
,p_plug_display_column=>2
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="display: flex; margin-left: 6rem; color: white;">',
'    <span>----------------------------------------Item From----------------------------------------</span>',
'    <div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>',
'    <span>-----------------------------------------Item To-----------------------------------------</span>',
'</div>',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(32047525374460412)
,p_plug_name=>'Buttons'
,p_plug_display_sequence=>80
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(32048537665460422)
,p_plug_name=>'Search'
,p_region_name=>'search'
,p_region_template_options=>'#DEFAULT#:t-DialogRegion--noPadding:js-dialog-nosize'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>80
,p_plug_display_point=>'REGION_POSITION_04'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(32049288067460429)
,p_plug_name=>'Header'
,p_region_name=>'search-header'
,p_parent_plug_id=>wwv_flow_imp.id(32048537665460422)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="background-color: #056AC8; font-size: 1.5rem; color: white; padding: .50rem 0 .50rem 0; margin-left: 1rem;"',
'     id="search-header">',
'    Search',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(32049347679460430)
,p_plug_name=>'errorArea'
,p_parent_plug_id=>wwv_flow_imp.id(32048537665460422)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--hiddenOverflow:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>30
,p_location=>null
,p_plug_source=>'<span id="errorArea" class="hide text-red" style="margin-left: 1rem;">Please fill in the search field</span>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(32050570604460442)
,p_plug_name=>'Inquire'
,p_region_name=>'inquire'
,p_region_template_options=>'#DEFAULT#:js-dialog-nosize'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>100
,p_plug_display_point=>'REGION_POSITION_04'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33266037330145308)
,p_plug_name=>'Header'
,p_parent_plug_id=>wwv_flow_imp.id(32050570604460442)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="background-color: #056AC8; font-size: 1.5rem; color: white;">',
'    Converted Item Details',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33266318802145311)
,p_plug_name=>'Table Wrapper'
,p_region_name=>'table-wrapper'
,p_parent_plug_id=>wwv_flow_imp.id(32050570604460442)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(32050626736460443)
,p_plug_name=>'Converted Item Details'
,p_region_name=>'table1'
,p_parent_plug_id=>wwv_flow_imp.id(33266318802145311)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    nim027.warehouse_location AS "WHS_LOCATION",',
'    nit020.from_no_of_units AS "FROM_QTY",',
'    nim026_from.uom_code AS "FROM_UOM",',
'    nit020.from_no_of_units * (SELECT nit02.quantity',
'                               FROM NIT002 nit02',
'                               WHERE nit02.item_id = nit020.from_item_id',
'                               AND nit02.uom_id = nit020.from_uom_id) AS "FROM_UNITS",',
'    nit020.to_no_of_units AS "TO_QTY",',
'    nim026_to.uom_code AS "TO_UOM",',
'    nit020.to_no_of_units * (SELECT nit02.quantity',
'                               FROM NIT002 nit02',
'                               WHERE nit02.item_id = nit020.to_item_id',
'                               AND nit02.uom_id = nit020.to_uom_id) AS "TO_UNITS",',
'    nit020.invoice_number AS "INV_NO",',
'    nit020.invoice_date AS "INV_DATE",',
'    nit020.customer_name AS "CUST_NAME"',
'FROM',
'    NIT020 nit020',
'    JOIN NIM027 nim027 ON nim027.warehouse_id = nit020.warehouse_id',
'    JOIN NIM026 nim026_from ON nim026_from.uom_id = nit020.from_uom_id',
'    JOIN NIM026 nim026_to ON nim026_to.uom_id = nit020.to_uom_id',
'WHERE',
'    nit020.convert_id = :P91_CONVERT_ID;'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P91_CONVERT_ID'
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
 p_id=>wwv_flow_imp.id(40136284132196235)
,p_name=>'WHS_LOCATION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WHS_LOCATION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Locn'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
,p_value_alignment=>'LEFT'
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
 p_id=>wwv_flow_imp.id(40136355520196236)
,p_name=>'FROM_QTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FROM_QTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Qty'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'RIGHT'
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
 p_id=>wwv_flow_imp.id(40136476767196237)
,p_name=>'FROM_UOM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FROM_UOM'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'UOM'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
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
 p_id=>wwv_flow_imp.id(40136549357196238)
,p_name=>'FROM_UNITS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FROM_UNITS'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Total Units'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'RIGHT'
,p_attribute_05=>'BOTH'
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
 p_id=>wwv_flow_imp.id(40136606981196239)
,p_name=>'TO_QTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TO_QTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Qty'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'RIGHT'
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
 p_id=>wwv_flow_imp.id(40136733813196240)
,p_name=>'TO_UOM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TO_UOM'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'UOM'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
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
 p_id=>wwv_flow_imp.id(40136805915196241)
,p_name=>'TO_UNITS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TO_UNITS'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Total Units'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'RIGHT'
,p_attribute_05=>'BOTH'
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
 p_id=>wwv_flow_imp.id(40136937375196242)
,p_name=>'INV_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INV_NO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Invoice No'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
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
 p_id=>wwv_flow_imp.id(40137088305196243)
,p_name=>'INV_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INV_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Invoice Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
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
 p_id=>wwv_flow_imp.id(40137172856196244)
,p_name=>'CUST_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CUST_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Customer Name'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(32050743558460444)
,p_internal_uid=>32050743558460444
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
 p_id=>wwv_flow_imp.id(33288396721176403)
,p_interactive_grid_id=>wwv_flow_imp.id(32050743558460444)
,p_static_id=>'332884'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(33288568086176404)
,p_report_id=>wwv_flow_imp.id(33288396721176403)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(40448933720528832)
,p_view_id=>wwv_flow_imp.id(33288568086176404)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(40136284132196235)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(40449845255528839)
,p_view_id=>wwv_flow_imp.id(33288568086176404)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(40136355520196236)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(40450798955528845)
,p_view_id=>wwv_flow_imp.id(33288568086176404)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(40136476767196237)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(40451623546528851)
,p_view_id=>wwv_flow_imp.id(33288568086176404)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(40136549357196238)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(40452504826528857)
,p_view_id=>wwv_flow_imp.id(33288568086176404)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(40136606981196239)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(40453451245528865)
,p_view_id=>wwv_flow_imp.id(33288568086176404)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(40136733813196240)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(40454363931528875)
,p_view_id=>wwv_flow_imp.id(33288568086176404)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(40136805915196241)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(40455297551528884)
,p_view_id=>wwv_flow_imp.id(33288568086176404)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(40136937375196242)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(40456129759528890)
,p_view_id=>wwv_flow_imp.id(33288568086176404)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(40137088305196243)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(40457084449528898)
,p_view_id=>wwv_flow_imp.id(33288568086176404)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(40137172856196244)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33266557148145313)
,p_plug_name=>'Conversion Item Info'
,p_parent_plug_id=>wwv_flow_imp.id(33266318802145311)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--hiddenOverflow:margin-top-none:margin-bottom-lg:margin-left-none:margin-right-none'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33267378852145321)
,p_plug_name=>'Item From & To'
,p_parent_plug_id=>wwv_flow_imp.id(33266318802145311)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="display: flex; margin-left: 4.3rem;" id="from-to">',
'    <span>--------------Item From--------------</span>',
'    <div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>',
'    <span>---------------Item To---------------</span>',
'</div>',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33267237541145320)
,p_plug_name=>'Footer'
,p_parent_plug_id=>wwv_flow_imp.id(32050570604460442)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="text-align: center; color: white; font-size: 1rem;">',
'    Press any key to exit',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33082059287059321)
,p_plug_name=>'Convert Item A to Item B'
,p_region_name=>'table'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>70
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH my_select AS (',
'    SELECT',
'        SUBSTR(nit020.convert_id, 6, 8) AS "NO",',
'        nit020.processing_date AS "PROCESS_DATE",',
'        nit001_from_item.item_num AS "FROM_ITEM_NUM",',
'        nit001_from_item.item_desc AS "FROM_ITEM_DESC",',
'        nit001_to_item.item_num AS "TO_ITEM_NUM",',
'        nit001_to_item.item_desc AS "TO_ITEM_DESC",',
'        CASE WHEN nit020.is_posted = ''N'' THEN NULL',
'        ELSE ''P''',
'        END AS "POST",',
'        nit020.convert_id AS "CONVERT_ID"',
'    FROM',
'        NIT020 nit020',
'    LEFT JOIN',
'        NIT001 nit001_from_item ON nit020.from_item_id = nit001_from_item.item_id',
'    LEFT JOIN',
'        NIT001 nit001_to_item ON nit020.to_item_id = nit001_to_item.item_id',
'    WHERE',
'        (:P91_YEAR IS NOT NULL AND SUBSTR(nit020.convert_id, 1, 4) = :P91_YEAR)',
'    ORDER BY ',
'        CASE ',
'            WHEN :P91_SORTED_BY = ''Item From'' THEN nit001_from_item.item_num',
'            WHEN :P91_SORTED_BY = ''Item To'' THEN nit001_to_item.item_num',
'        END,',
'        CASE',
'            WHEN :P91_SORTED_BY = ''Conversion Record Number'' THEN nit020.convert_id',
'        END',
')',
'',
'SELECT * FROM my_select;'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P91_YEAR,P91_SORTED_BY'
,p_prn_page_header=>'Convert Item A to Item B'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(33083329196059335)
,p_name=>'NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'No'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>0
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
,p_enable_pivot=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(33084356039059340)
,p_name=>'PROCESS_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PROCESS_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Processing Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>0
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(33085398031059342)
,p_name=>'FROM_ITEM_NUM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FROM_ITEM_NUM'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Item Number'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>0
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(33086315983059342)
,p_name=>'FROM_ITEM_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FROM_ITEM_DESC'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Item Description'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>0
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(33087378480059345)
,p_name=>'TO_ITEM_NUM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TO_ITEM_NUM'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Item Number'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>0
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(33088383545059346)
,p_name=>'TO_ITEM_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TO_ITEM_DESC'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Item Description'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>0
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(33089356420059348)
,p_name=>'POST'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POST'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Post'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>0
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(40133206946196205)
,p_name=>'CONVERT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CONVERT_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>80
,p_attribute_01=>'Y'
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(33082525300059328)
,p_internal_uid=>33082525300059328
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
 p_id=>wwv_flow_imp.id(33082962172059329)
,p_interactive_grid_id=>wwv_flow_imp.id(33082525300059328)
,p_static_id=>'330830'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(33083152022059329)
,p_report_id=>wwv_flow_imp.id(33082962172059329)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(33083768855059339)
,p_view_id=>wwv_flow_imp.id(33083152022059329)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(33083329196059335)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(33084781006059340)
,p_view_id=>wwv_flow_imp.id(33083152022059329)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(33084356039059340)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(33085706219059342)
,p_view_id=>wwv_flow_imp.id(33083152022059329)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(33085398031059342)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(33086773893059343)
,p_view_id=>wwv_flow_imp.id(33083152022059329)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(33086315983059342)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(33087747383059345)
,p_view_id=>wwv_flow_imp.id(33083152022059329)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(33087378480059345)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(33088776756059346)
,p_view_id=>wwv_flow_imp.id(33083152022059329)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(33088383545059346)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(33089782560059348)
,p_view_id=>wwv_flow_imp.id(33083152022059329)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(33089356420059348)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(40151883772234990)
,p_view_id=>wwv_flow_imp.id(33083152022059329)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(40133206946196205)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33268666928145334)
,p_plug_name=>'Sort By'
,p_region_name=>'sort-by'
,p_region_template_options=>'#DEFAULT#:js-dialog-nosize'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>110
,p_plug_display_point=>'REGION_POSITION_04'
,p_location=>null
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="font-size: 1.5rem; font-weight: 600; margin-bottom: 1rem;" class="text-white">',
'    Sort By',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33623591866196801)
,p_plug_name=>'Reports'
,p_region_name=>'reports'
,p_region_template_options=>'#DEFAULT#:js-dialog-nosize'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>120
,p_plug_display_point=>'REGION_POSITION_04'
,p_location=>null
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="font-size: 1.5rem; font-weight: 600; margin-bottom: 1rem;" class="text-white">',
'    Report Options',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33623638622196802)
,p_plug_name=>'Conversion Record Report (Single)'
,p_region_name=>'single'
,p_parent_plug_id=>wwv_flow_imp.id(33623591866196801)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--hiddenOverflow:margin-bottom-none'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source=>'A - Conversion Record Report (single)'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33623913404196805)
,p_plug_name=>'Conversion Record Report (period)'
,p_region_name=>'period'
,p_parent_plug_id=>wwv_flow_imp.id(33623591866196801)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--hiddenOverflow:margin-top-none:margin-bottom-none'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source=>'B - Conversion Record Report (for a period)'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(40829263142330228)
,p_plug_name=>'Item Conversion Report (period)'
,p_region_name=>'period-two'
,p_parent_plug_id=>wwv_flow_imp.id(33623591866196801)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--hiddenOverflow:margin-top-none:margin-bottom-none'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source=>'C - Item Conversion Report (for a period)'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(40829341937330229)
,p_plug_name=>'Printing Options'
,p_region_name=>'option'
,p_region_template_options=>'#DEFAULT#:js-dialog-nosize'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>130
,p_plug_display_point=>'REGION_POSITION_04'
,p_location=>null
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="font-size: 1.5rem; font-weight: 600; margin-bottom: 1rem;" class="text-white">',
'    Printing Options',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(40829801115330234)
,p_plug_name=>'Dotmatrix'
,p_region_name=>'dot'
,p_parent_plug_id=>wwv_flow_imp.id(40829341937330229)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--hiddenOverflow:margin-bottom-none'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>40
,p_location=>null
,p_plug_source=>'A - Dotmatrix'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(40829924775330235)
,p_plug_name=>'Graphic Printer'
,p_region_name=>'graphic'
,p_parent_plug_id=>wwv_flow_imp.id(40829341937330229)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--hiddenOverflow:margin-bottom-none'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>50
,p_location=>null
,p_plug_source=>'B - Graphic Printer'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(42170243821532402)
,p_plug_name=>'Convert Record Report'
,p_region_name=>'crr-b'
,p_region_template_options=>'#DEFAULT#:t-DialogRegion--noPadding:js-dialog-nosize'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>140
,p_plug_display_point=>'REGION_POSITION_04'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(42170654560532406)
,p_plug_name=>'Header'
,p_region_name=>'crr-b-header'
,p_parent_plug_id=>wwv_flow_imp.id(42170243821532402)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="background-color: #056AC8; font-size: 1.5rem; color: white; padding: .50rem 0 .50rem 0;"',
'     id="crr-b-header">',
'     <div id="crr-b-header-two" style="margin-left: 1rem;">',
'        ',
'     </div>',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(42170784417532407)
,p_plug_name=>'errorArea'
,p_parent_plug_id=>wwv_flow_imp.id(42170243821532402)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--hiddenOverflow:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>30
,p_location=>null
,p_plug_source=>'<span id="errorAreaTwo" class="hide text-red" style="margin-left: 1rem;">Please fill in the search fields</span>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(42171779600532417)
,p_plug_name=>'Item Conversion Report'
,p_region_name=>'icr-c'
,p_region_template_options=>'#DEFAULT#:t-DialogRegion--noPadding:js-dialog-nosize'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>150
,p_plug_display_point=>'REGION_POSITION_04'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(42171828100532418)
,p_plug_name=>'Header'
,p_region_name=>'icr-c-header'
,p_parent_plug_id=>wwv_flow_imp.id(42171779600532417)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="background-color: #056AC8; font-size: 1.5rem; color: white; padding: .50rem 0 .50rem 0;"',
'     id="icr-c-header">',
'     <div id="icr-c-header-two" style="margin-left: 1rem;">',
'        Item Conversion Report (for a period)',
'     </div>',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(42172337831532423)
,p_plug_name=>'errorArea'
,p_parent_plug_id=>wwv_flow_imp.id(42171779600532417)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--hiddenOverflow:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>20
,p_location=>null
,p_plug_source=>'<span id="errorAreaThree" class="hide text-red" style="margin-left: 1rem;">Please fill in the search fields</span>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(32047624867460413)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(32047525374460412)
,p_button_name=>'ADD'
,p_button_static_id=>'a'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>A</u> - Add'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33268712051145335)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(33268666928145334)
,p_button_name=>'RECORD_NO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Conversion Record Number'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'sort-btns'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33624161728196807)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(33623591866196801)
,p_button_name=>'Close_Reports'
,p_button_static_id=>'close-reports'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Close Reports'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'hide'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(32047766404460414)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(32047525374460412)
,p_button_name=>'UPDATE'
,p_button_static_id=>'u'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>U</u> - Update'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33268823119145336)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(33268666928145334)
,p_button_name=>'ITEM_FROM'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Item From'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'sort-btns'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(32047834132460415)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(32047525374460412)
,p_button_name=>'INQUIRE'
,p_button_static_id=>'i'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>I</u> - Inquire'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33268941078145337)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(33268666928145334)
,p_button_name=>'ITEM_TO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Item To'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'sort-btns'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(40830297808330238)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(40829341937330229)
,p_button_name=>'Close_Options'
,p_button_static_id=>'close-option'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Close Sort'
,p_warn_on_unsaved_changes=>null
,p_grid_column_css_classes=>'hide'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(32047963502460416)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(32047525374460412)
,p_button_name=>'POST'
,p_button_static_id=>'p'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>P</u> - Post'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33269710094145345)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(33268666928145334)
,p_button_name=>'Close_Sort'
,p_button_static_id=>'close-sort'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Close Sort'
,p_warn_on_unsaved_changes=>null
,p_grid_column_css_classes=>'hide'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(32048013028460417)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(32047525374460412)
,p_button_name=>'SORT'
,p_button_static_id=>'o'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>O</u> - Sort'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(32048195510460418)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(32047525374460412)
,p_button_name=>'REPORTS'
,p_button_static_id=>'r'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>R</u> - Reports'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns'
,p_grid_new_row=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33268178127145329)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(32048537665460422)
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
 p_id=>wwv_flow_imp.id(42172974757532429)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(42171779600532417)
,p_button_name=>'SubmitItems'
,p_button_static_id=>'submit-items'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Submititems'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'hide'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(32048262227460419)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(32047525374460412)
,p_button_name=>'HOME'
,p_button_static_id=>'home'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>Home</u> - Top'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33269431505145342)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(32048537665460422)
,p_button_name=>'Close_Search'
,p_button_static_id=>'close-search'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Close Search'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'hide'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(42170899477532408)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(42170243821532402)
,p_button_name=>'SubmitMonths'
,p_button_static_id=>'submit-months'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Submitmonths'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'hide'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(32048361391460420)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(32047525374460412)
,p_button_name=>'END'
,p_button_static_id=>'end'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>End</u> - Bottom'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(32048423211460421)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(32047525374460412)
,p_button_name=>'SEARCH'
,p_button_static_id=>'s'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>S</u> - Search'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33269347580145341)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(32047525374460412)
,p_button_name=>'EXIT'
,p_button_static_id=>'exit'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Exit'
,p_button_redirect_url=>'f?p=&APP_ID.:300:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'hide'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32046926496460406)
,p_name=>'P91_YEAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(32047105191460408)
,p_prompt=>'New'
,p_pre_element_text=>'Review Conversion Records'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:margin-top-none:margin-bottom-none:t-Form-fieldContainer--normalDisplay'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32047051860460407)
,p_name=>'P91_SORTED_BY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(32047105191460408)
,p_prompt=>'New'
,p_pre_element_text=>'Sorted By:&nbsp;'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:margin-top-none:margin-bottom-none:t-Form-fieldContainer--normalDisplay'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32049139180460428)
,p_name=>'P91_SEARCH_VALUE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(32048537665460422)
,p_prompt=>'Search Value'
,p_pre_element_text=>'<div style="font-size: 1.125rem; margin-left: 1rem;">Conversion Record Year: &nbsp;&nbsp;</div>'
,p_post_element_text=>'<div style="margin-right: 1rem;"></div>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>12
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
 p_id=>wwv_flow_imp.id(33266637869145314)
,p_name=>'P91_RECORD_NO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(33266557148145313)
,p_prompt=>'Conversion Record No'
,p_pre_element_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div>',
'    Conversion Record No <span style="margin-left: 1rem">:&nbsp;</span>',
'</div>'))
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:margin-top-none:margin-bottom-none:t-Form-fieldContainer--normalDisplay'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33266772192145315)
,p_name=>'P91_PROCESS_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(33266557148145313)
,p_prompt=>'Processing Date'
,p_pre_element_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div>',
'    Processing Date <span style="margin-left: 1rem">:&nbsp;</span>',
'</div>'))
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_column=>9
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:margin-top-none:margin-bottom-none:t-Form-fieldContainer--normalDisplay'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33266837267145316)
,p_name=>'P91_ITEM_FROM'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(33266557148145313)
,p_prompt=>'Item From'
,p_pre_element_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div>',
'    Item From <span style="margin-left: 7rem">:&nbsp;</span>',
'</div>'))
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>4
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:margin-top-none:margin-bottom-none:t-Form-fieldContainer--normalDisplay'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33266968058145317)
,p_name=>'P91_POSTED'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(33266557148145313)
,p_prompt=>'Posted'
,p_pre_element_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div>',
'    Posted <span style="margin-left: 5.6rem">:&nbsp;</span>',
'</div>'))
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_column=>9
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:margin-top-none:margin-bottom-none:t-Form-fieldContainer--normalDisplay'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33267082837145318)
,p_name=>'P91_ITEM_TO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(33266557148145313)
,p_prompt=>'Item To'
,p_pre_element_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div>',
'    Item To <span style="margin-left: 8.4rem">:&nbsp;</span>',
'</div>'))
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>4
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:margin-top-none:margin-bottom-none:t-Form-fieldContainer--normalDisplay'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33267158695145319)
,p_name=>'P91_NOTE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(33266557148145313)
,p_prompt=>'Note'
,p_pre_element_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div>',
'    Note <span style="margin-left: 6.5rem">:&nbsp;</span>',
'</div>'))
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_column=>9
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:margin-top-none:margin-bottom-none:t-Form-fieldContainer--normalDisplay'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39855693415059233)
,p_name=>'P91_URL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(33082059287059321)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39856916321059246)
,p_name=>'P91_CONVERT_ID'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40135759902196230)
,p_name=>'P91_ITEM_FROM_DESC'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(33266557148145313)
,p_prompt=>'Item From'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:margin-top-none:margin-bottom-none:t-Form-fieldContainer--normalDisplay'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40135829293196231)
,p_name=>'P91_ITEM_TO_DESC'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(33266557148145313)
,p_prompt=>'Item To'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:margin-top-none:margin-bottom-none:t-Form-fieldContainer--normalDisplay'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40826546899330201)
,p_name=>'P91_FROM'
,p_item_sequence=>40
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40826698641330202)
,p_name=>'P91_CONVERT_ID_F'
,p_item_sequence=>30
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40829429451330230)
,p_name=>'P91_REPORT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(40829341937330229)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40830925104330245)
,p_name=>'P91_MONTH_FROM_B'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(42170243821532402)
,p_placeholder=>'MM/DD/YYYY'
,p_pre_element_text=>'<div style="font-size: 1.125rem; margin-left: 1rem;">Month From &nbsp;&nbsp;</div>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>9
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:margin-bottom-sm'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42170568260532405)
,p_name=>'P91_MONTH_TO_B'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(42170243821532402)
,p_placeholder=>'MM/DD/YYYY'
,p_pre_element_text=>'<div style="font-size: 1.125rem; margin-left: 1rem; margin-right: 1.45rem">Month To &nbsp;&nbsp;</div>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>9
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:margin-bottom-md'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42172034135532420)
,p_name=>'P91_ITEM_FROM_C'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(42171779600532417)
,p_pre_element_text=>'<div style="font-size: 1.125rem; margin-left: 1rem;">Item From &nbsp;&nbsp;</div>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>9
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:margin-bottom-sm'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42172114881532421)
,p_name=>'P91_ITEM_TO_C'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(42171779600532417)
,p_pre_element_text=>'<div style="font-size: 1.125rem; margin-left: 1rem; margin-right: 1.45rem;">Item To &nbsp;&nbsp;</div>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>9
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:margin-bottom-md'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42174821286532448)
,p_name=>'P91_MODE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(40829341937330229)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(32048694850460423)
,p_name=>'Open Search'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(32048423211460421)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(32048702864460424)
,p_event_id=>wwv_flow_imp.id(32048694850460423)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("#search").dialog("option", "width", 450);'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(32048804669460425)
,p_event_id=>wwv_flow_imp.id(32048694850460423)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(32048537665460422)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33265755526145305)
,p_name=>'Open Inquire'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(32047834132460415)
,p_condition_element=>'P91_CONVERT_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33265964113145307)
,p_event_id=>wwv_flow_imp.id(33265755526145305)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#inquire").dialog({',
'  width: 1150,',
'  position: { my: "right", at: "right-20", of: window }',
'});'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33265840963145306)
,p_event_id=>wwv_flow_imp.id(33265755526145305)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(32050570604460442)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40135574535196228)
,p_event_id=>wwv_flow_imp.id(33265755526145305)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    i_convert_id NIT020.convert_id%TYPE := :P91_CONVERT_ID;',
'    i_process_date NIT020.processing_date%TYPE;',
'    i_item_from_id NIT020.from_item_id%TYPE;',
'    i_item_to_id NIT020.to_item_id%TYPE;',
'    i_item_from NIT001.item_num%TYPE;',
'    i_item_to NIT001.item_num%TYPE;',
'    i_posted NIT020.is_posted%TYPE;',
'    i_note NIT020.notes%TYPE;',
'    i_item_from_desc NIT001.item_desc%TYPE;',
'    i_item_to_desc NIT001.item_desc%TYPE;',
'BEGIN',
'    SELECT processing_date, from_item_id, to_item_id, is_posted, notes',
'    INTO i_process_date, i_item_from_id, i_item_to_id, i_posted, i_note',
'    FROM NIT020',
'    WHERE convert_id = i_convert_id;',
'',
'    :P91_RECORD_NO := i_convert_id;',
'    :P91_PROCESS_DATE := i_process_date;',
'    IF i_posted = ''N'' THEN ',
'        :P91_POSTED := ''NO'';',
'    ELSIF i_posted = ''P'' THEN ',
'        :P91_POSTED := ''YES'';',
'    END IF;',
'    :P91_NOTE := i_note;',
'',
'    SELECT item_num, item_desc',
'    INTO i_item_from, i_item_from_desc',
'    FROM NIT001',
'    WHERE item_id = i_item_from_id;',
'',
'    :P91_ITEM_FROM := i_item_from;',
'    :P91_ITEM_FROM_DESC := i_item_from_desc;',
'',
'    SELECT item_num, item_desc',
'    INTO i_item_to, i_item_to_desc',
'    FROM NIT001',
'    WHERE item_id = i_item_to_id;',
'',
'    :P91_ITEM_TO := i_item_to;',
'    :P91_ITEM_TO_DESC := i_item_to_desc;',
'    ',
'END;'))
,p_attribute_02=>'P91_CONVERT_ID'
,p_attribute_03=>'P91_RECORD_NO,P91_PROCESS_DATE,P91_POSTED,P91_NOTE,P91_ITEM_TO,P91_ITEM_FROM_DESC,P91_ITEM_TO_DESC,P91_ITEM_FROM'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40137207107196245)
,p_event_id=>wwv_flow_imp.id(33265755526145305)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(32050626736460443)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33267418635145322)
,p_event_id=>wwv_flow_imp.id(33265755526145305)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).off(''keydown.p91keyevents'');',
'$(document).on(''keydown.p91keyevents'', (ev) => {',
'    $(''#inquire'').dialog("close")',
'});',
'',
'$("#inquire").on("dialogbeforeclose", function(event, ui) {',
'    setTimeout(mapP91Keys, 0);',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33267744770145325)
,p_name=>'Close Modal'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(32050570604460442)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33267852399145326)
,p_event_id=>wwv_flow_imp.id(33267744770145325)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(32050570604460442)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33268297804145330)
,p_name=>'On Search'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(33268178127145329)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33268389381145331)
,p_event_id=>wwv_flow_imp.id(33268297804145330)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var searchValue = $v("P91_SEARCH_VALUE");',
'var errorArea = document.getElementById("errorArea");',
'',
'var isFourDigitNumber = /^\d{4}$/;',
'',
'if (!searchValue) {',
'    errorArea.textContent = "Please fill in the search field";',
'    errorArea.style.display = "block";',
'    document.getElementById("P91_SEARCH_VALUE").focus();',
'    return false;',
'} else if (!isFourDigitNumber.test(searchValue)) {',
'    errorArea.textContent = "Search value must be a year (YYYY)";',
'    errorArea.style.display = "block";',
'    document.getElementById("P91_SEARCH_VALUE").focus();',
'    return false;',
'} else {',
'    errorArea.style.display = "none";',
'    $("#P91_YEAR_CONTAINER .t-Form-itemText").html("Review Conversion Records for the year&nbsp;")',
'    return true;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33268411327145332)
,p_event_id=>wwv_flow_imp.id(33268297804145330)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(32048537665460422)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33270100365145349)
,p_event_id=>wwv_flow_imp.id(33268297804145330)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P91_YEAR'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$v("P91_SEARCH_VALUE")'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33268550107145333)
,p_event_id=>wwv_flow_imp.id(33268297804145330)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P91_SEARCH_VALUE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39857002727059247)
,p_event_id=>wwv_flow_imp.id(33268297804145330)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(33082059287059321)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40133170749196204)
,p_event_id=>wwv_flow_imp.id(33268297804145330)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(function() {',
'    $(".a-GV-cell").first().trigger("click");',
'}, 500);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33269017783145338)
,p_name=>'Open Sort'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(32048013028460417)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33269128864145339)
,p_event_id=>wwv_flow_imp.id(33269017783145338)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(33268666928145334)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33624708132196813)
,p_event_id=>wwv_flow_imp.id(33269017783145338)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).off(''keydown.p91keyevents'');',
'$("#sort-by").on("dialogbeforeclose", function(event, ui) {',
'    setTimeout(mapP91Keys, 0);',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33269539753145343)
,p_name=>'Close'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(33269431505145342)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33269687362145344)
,p_event_id=>wwv_flow_imp.id(33269539753145343)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(32048537665460422)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33269820973145346)
,p_name=>'Close Sort'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(33269710094145345)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33269959764145347)
,p_event_id=>wwv_flow_imp.id(33269820973145346)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(33268666928145334)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33623760397196803)
,p_name=>'Open Reports'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(32048195510460418)
,p_condition_element=>'P91_CONVERT_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33624015790196806)
,p_event_id=>wwv_flow_imp.id(33623760397196803)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("#reports").dialog("option", "width", 400);'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33623884350196804)
,p_event_id=>wwv_flow_imp.id(33623760397196803)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(33623591866196801)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33624898659196814)
,p_event_id=>wwv_flow_imp.id(33623760397196803)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).off(''keydown.p91keyevents'');',
'$("#reports").on("dialogbeforeclose", function(event, ui) {',
'    setTimeout(mapP91Keys, 0);',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33624233198196808)
,p_name=>'Close Reports'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(33624161728196807)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33624317787196809)
,p_event_id=>wwv_flow_imp.id(33624233198196808)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(33623591866196801)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33625042411196816)
,p_name=>'Set Sorted'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(33268712051145335)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33625120943196817)
,p_event_id=>wwv_flow_imp.id(33625042411196816)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P91_SORTED_BY'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'Conversion Record Number'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39857136556059248)
,p_event_id=>wwv_flow_imp.id(33625042411196816)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(33082059287059321)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33625643287196822)
,p_event_id=>wwv_flow_imp.id(33625042411196816)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(33268666928145334)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40132888041196201)
,p_event_id=>wwv_flow_imp.id(33625042411196816)
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
 p_id=>wwv_flow_imp.id(33625260238196818)
,p_name=>'Set Sorted to Item From'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(33268823119145336)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33625351877196819)
,p_event_id=>wwv_flow_imp.id(33625260238196818)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P91_SORTED_BY'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'Item From'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39857245817059249)
,p_event_id=>wwv_flow_imp.id(33625260238196818)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(33082059287059321)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33625783336196823)
,p_event_id=>wwv_flow_imp.id(33625260238196818)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(33268666928145334)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40132972249196202)
,p_event_id=>wwv_flow_imp.id(33625260238196818)
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
 p_id=>wwv_flow_imp.id(33625485253196820)
,p_name=>'Set Sorted to Item To'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(33268941078145337)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33625579936196821)
,p_event_id=>wwv_flow_imp.id(33625485253196820)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P91_SORTED_BY'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'Item To'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39857328355059250)
,p_event_id=>wwv_flow_imp.id(33625485253196820)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(33082059287059321)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33625836038196824)
,p_event_id=>wwv_flow_imp.id(33625485253196820)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(33268666928145334)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40133033452196203)
,p_event_id=>wwv_flow_imp.id(33625485253196820)
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
 p_id=>wwv_flow_imp.id(33625956018196825)
,p_name=>'Open Search on Load'
,p_event_sequence=>130
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33626139444196827)
,p_event_id=>wwv_flow_imp.id(33625956018196825)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("#search").dialog("option", "width", 450);'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33626043825196826)
,p_event_id=>wwv_flow_imp.id(33625956018196825)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(32048537665460422)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39855796899059234)
,p_name=>'Redirect To Add'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(32047624867460413)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39855862649059235)
,p_event_id=>wwv_flow_imp.id(39855796899059234)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P91_URL := apex_page.get_url(',
'       p_page   => 94,',
'       p_items  => ''P94_FROM'',',
'       p_values => ''A''',
'     );',
'END;'))
,p_attribute_03=>'P91_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39855913564059236)
,p_event_id=>wwv_flow_imp.id(39855796899059234)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P91_URL");',
'apex.navigation.redirect(url);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39856544778059242)
,p_name=>'Redirect to Update'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(32047766404460414)
,p_condition_element=>'P91_CONVERT_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40828364693330219)
,p_event_id=>wwv_flow_imp.id(39856544778059242)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var grid = apex.region("table").widget().interactiveGrid(''getViews'', ''grid'');',
'var model = grid.model;',
'var selectedRecord = grid.getSelectedRecords()[0][6];',
'',
'if(selectedRecord === ''P'') {',
'    return false;',
'} else {',
'    return true;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40133302991196206)
,p_event_id=>wwv_flow_imp.id(39856544778059242)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P91_URL := apex_page.get_url(',
'       p_page   => 94,',
'       p_items  => ''P94_FROM,P94_RECORD_NUM'',',
'       p_values => ''U'' || '','' || :P91_CONVERT_ID',
'     );',
'END;'))
,p_attribute_02=>'P91_CONVERT_ID'
,p_attribute_03=>'P91_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40133422426196207)
,p_event_id=>wwv_flow_imp.id(39856544778059242)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P91_URL");',
'apex.navigation.redirect(url);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39856744525059244)
,p_name=>'Selection Change'
,p_event_sequence=>160
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(33082059287059321)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39856874902059245)
,p_event_id=>wwv_flow_imp.id(39856744525059244)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (this.data.selectedRecords && this.data.selectedRecords.length > 0) {',
'    let convertIDSelected = this.data.selectedRecords[0][7];',
'    apex.item("P91_CONVERT_ID").setValue(convertIDSelected);',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(40135180242196224)
,p_name=>'Go to Top'
,p_event_sequence=>170
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(32048262227460419)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40135283454196225)
,p_event_id=>wwv_flow_imp.id(40135180242196224)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'selectFirstRow();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(40135314329196226)
,p_name=>'Go to Bottom'
,p_event_sequence=>180
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(32048361391460420)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40135401138196227)
,p_event_id=>wwv_flow_imp.id(40135314329196226)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'selectLastRow();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(40826790680330203)
,p_name=>'Show Success Pop-up'
,p_event_sequence=>190
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40826858502330204)
,p_event_id=>wwv_flow_imp.id(40826790680330203)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const ICON_OK_LARGE = "fa fa-lg fa-check-circle";',
'let convertIdF = $v("P91_CONVERT_ID_F");',
'let fromF = $v("P91_FROM");',
'if(convertIdF && fromF) {',
'    if(fromF === "A") {',
'        showGPopup({message: `Conversion Record Number : ${convertIdF} has been created!`, ',
'        icon: ICON_OK_LARGE, width: 540, top: "85%", timeoutActive: true})',
'    } else if(fromF === "U") {',
'        showGPopup({message: `Conversion Record Number : ${convertIdF} has been updated!`, ',
'        icon: ICON_OK_LARGE, width: 540, top: "85%", timeoutActive: true})',
'    }',
'',
'    apex.item("P91_CONVERT_ID_F").setValue(null);',
'    apex.item("P91_FROM").setValue(null);',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(40827394191330209)
,p_name=>'Posting'
,p_event_sequence=>200
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(32047963502460416)
,p_condition_element=>'P91_CONVERT_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40828247387330218)
,p_event_id=>wwv_flow_imp.id(40827394191330209)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var grid = apex.region("table").widget().interactiveGrid(''getViews'', ''grid'');',
'var model = grid.model;',
'var selectedRecord = grid.getSelectedRecords()[0][6];',
'',
'if(selectedRecord === ''P'') {',
'    return false;',
'} else {',
'    return true;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40827448750330210)
,p_event_id=>wwv_flow_imp.id(40827394191330209)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const ICON_FAIL_LARGE = ''fa fa-lg fa-times-circle msg-icon-yellow'';',
'const ICON_OK_LARGE = ''fa fa-lg fa-check-circle'';',
'',
'async function processPosting() {',
'',
'    const convertId = $v("P91_CONVERT_ID");',
'',
'    try {',
'        const fromExistsInWarehouse = await checkItemInWarehouse(convertId, ''FROM'');',
'        console.log("FROM WAREHOUSE:", fromExistsInWarehouse)',
'        // if (!fromExistsInWarehouse) {',
'        //     throw `Item From does not exist in the warehouse.`;',
'        // }',
'',
'        const fromUomExists = await checkUomForItem(convertId, ''FROM'');',
'        console.log("FROM UOM:", fromUomExists)',
'        // if (!fromUomExists) {',
'        //     throw `Item From UOM for Item From does not exist.`;',
'        // }',
'',
'        const toExistsInWarehouse = await checkItemInWarehouse(convertId, ''TO'');',
'        console.log("TO WAREHOUSE:", fromUomExists)',
'        if (!toExistsInWarehouse) {',
'            throw `Item To does not exist in the warehouse.`;',
'        }',
'',
'        const toUomExists = await checkUomForItem(convertId, ''TO'');',
'        console.log("TO UOM:", fromUomExists)',
'        if (!toUomExists) {',
'            throw `Item To UOM for Item To does not exist.`;',
'        }',
'',
'        await updateNit004Qty(convertId, ''FROM'');',
'        await updateNit004Qty(convertId, ''TO'');',
'',
'        await updateIsPosted(convertId);',
'',
'        showGPopup({ message: `Conversion Record Number: ${convertId} has been posted!`, width: 600, icon: ICON_OK_LARGE, top: "85%", timeoutActive: true });',
'',
'    } catch (error) {',
'        showGPopup({ message: error, width: 600, icon: ICON_FAIL_LARGE, top: "85%", timeoutActive: true });',
'    }',
'}',
'',
'async function checkItemInWarehouse(convertId, itemType) {',
'    const response = await apex.server.process(''CHECK_ITEM_IN_WAREHOUSE'', {',
'        pageItems: ''#P91_CONVERT_ID'',',
'        x01: convertId,',
'        x02: itemType',
'    }, {',
'        dataType: ''json''',
'    });',
'    console.log("Warehouse response:", response)',
'    if (response.success) {',
'        return true;',
'    } else {',
'        throw response.message || ''An unknown error occured.''',
'    }',
'}',
'',
'async function checkUomForItem(convertId, itemType) {',
'    const response = await apex.server.process(''CHECK_UOM_FOR_ITEM'', {',
'        pageItems: ''#P91_CONVERT_ID'',',
'        x01: convertId,',
'        x02: itemType',
'    }, {',
'        dataType: ''json''',
'    });',
'    console.log("UOM response:", response)',
'    if (response.success) {',
'        return true;',
'    } else {',
'        throw response.message || ''An unknown error occured.''',
'    }',
'}',
'',
'async function updateNit004Qty(convertId, itemType) {',
'    const response = await apex.server.process(''UPDATE_NIT004_QTY'', {',
'        pageItems: ''#P91_CONVERT_ID'',',
'        x01: convertId,',
'        x02: itemType',
'    }, {',
'        dataType: ''json''',
'    });',
'    console.log("Qty response:", response)',
'',
'    if (response.success) {',
'        return true;',
'    } else {',
'        throw response.message || ''An unknown error occured. Row not Updated.''',
'    }',
'}',
'',
'async function updateIsPosted(convertId) {',
'    const response = await apex.server.process(''UPDATE_IS_POSTED'', {',
'        pageItems: ''#P91_CONVERT_ID'',',
'        x01: convertId',
'    }, {',
'        dataType: ''json''',
'    });',
'',
'    if (response.success) {',
'        apex.region("table").refresh();',
'        return true;',
'    } else {',
'        throw response.message || ''An unknown error occured while Posting.''',
'    }',
'}',
'',
'processPosting()'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(40829562723330231)
,p_name=>'Report A'
,p_event_sequence=>210
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>wwv_flow_string.join(wwv_flow_t_varchar2(
'document',
''))
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'reportA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40829641487330232)
,p_event_id=>wwv_flow_imp.id(40829562723330231)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(33623591866196801)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40829707947330233)
,p_event_id=>wwv_flow_imp.id(40829562723330231)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(40829341937330229)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40830021119330236)
,p_event_id=>wwv_flow_imp.id(40829562723330231)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(() => {',
'    $(document).off(''keydown.p91keyevents'');',
'}, 100)',
'',
'$("#option").on("dialogbeforeclose", function(event, ui) {',
'    setTimeout(mapP91Keys, 0);',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(40830308915330239)
,p_name=>'Close Options'
,p_event_sequence=>220
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(40830297808330238)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40830407345330240)
,p_event_id=>wwv_flow_imp.id(40830308915330239)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(40829341937330229)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42171140204532411)
,p_name=>'Report B'
,p_event_sequence=>220
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'reportB'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42171267690532412)
,p_event_id=>wwv_flow_imp.id(42171140204532411)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(42170243821532402)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42171340079532413)
,p_event_id=>wwv_flow_imp.id(42171140204532411)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(40829341937330229)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42171429173532414)
,p_event_id=>wwv_flow_imp.id(42171140204532411)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(() => {',
'    $(document).off(''keydown.p91keyevents'');',
'}, 100)',
'',
'$("#option").on("dialogbeforeclose", function(event, ui) {',
'    setTimeout(mapP91Keys, 0);',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42173242925532432)
,p_name=>'Report C'
,p_event_sequence=>230
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'reportC'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42173391118532433)
,p_event_id=>wwv_flow_imp.id(42173242925532432)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(42171779600532417)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42173773568532437)
,p_event_id=>wwv_flow_imp.id(42173242925532432)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#crr-b").dialog("option", "width", 460);',
'',
'let reportValue = $v("P91_REPORT")',
'',
'$("#crr-b-header-two").html(reportValue === "B" ? "Conversion Record Report (for a period)" : "Item Conversion Report (for a period)");'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42173468726532434)
,p_event_id=>wwv_flow_imp.id(42173242925532432)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(42170243821532402)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42173547064532435)
,p_event_id=>wwv_flow_imp.id(42173242925532432)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(() => {',
'    $(document).off(''keydown.p91keyevents'');',
'}, 100)',
'',
'$("#option").on("dialogbeforeclose", function(event, ui) {',
'    setTimeout(mapP91Keys, 0);',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(40831029519330246)
,p_name=>'Report B Set Month'
,p_event_sequence=>240
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'reportBSetMonth'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40831153710330247)
,p_event_id=>wwv_flow_imp.id(40831029519330246)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(33623591866196801)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42170444279532404)
,p_event_id=>wwv_flow_imp.id(40831029519330246)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#crr-b").dialog("option", "width", 460);',
'',
'let reportValue = $v("P91_REPORT")',
'',
'$("#crr-b-header-two").html(reportValue === "B" ? "Conversion Record Report (for a period)" : "Item Conversion Report (for a period)");'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42170336523532403)
,p_event_id=>wwv_flow_imp.id(40831029519330246)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(42170243821532402)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42170102761532401)
,p_event_id=>wwv_flow_imp.id(40831029519330246)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(() => {',
'    $(document).off(''keydown.p91keyevents'');',
'}, 100)',
'',
'$("#crr-b").on("dialogbeforeclose", function(event, ui) {',
'    setTimeout(mapP91Keys, 0);',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42170985663532409)
,p_name=>'SubmitMonths'
,p_event_sequence=>240
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(42170899477532408)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42171089444532410)
,p_event_id=>wwv_flow_imp.id(42170985663532409)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var monthFrom = $v("P91_MONTH_FROM_B");',
'var monthTo = $v("P91_MONTH_TO_B")',
'var errorArea = document.getElementById("errorAreaTwo");',
'var hasError = false;',
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
'if (!monthFrom || !monthTo) {',
'    errorArea.textContent = "Please fill in the search fields";',
'    errorArea.style.display = "block";',
'    if(!monthFrom) {',
'        document.getElementById("P91_MONTH_FROM_B").focus();',
'    } else {',
'        document.getElementById("P91_MONTH_TO_B").focus();',
'    }',
'    hasError = true;',
'} else if (!isDateValid(monthFrom) || !isDateValid(monthTo)) {',
'    errorArea.textContent = "Search Value must follow this date format (MM/DD/YYYY)";',
'    errorArea.style.display = "block";',
'    if(!isDateValid(monthFrom)) {',
'        document.getElementById("P91_MONTH_FROM_B").focus();',
'    } else {',
'        document.getElementById("P91_MONTH_TO_B").focus();',
'    }',
'    hasError = true;',
'}',
'',
'if(hasError) {',
'    return false',
'} else {',
'    errorArea.style.display = "none";',
'    return true;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42171524905532415)
,p_event_id=>wwv_flow_imp.id(42170985663532409)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$.event.trigger(''reportB'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42172453240532424)
,p_name=>'Report C Set Item'
,p_event_sequence=>250
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'reportCSetItem'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42172544583532425)
,p_event_id=>wwv_flow_imp.id(42172453240532424)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(33623591866196801)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42172680672532426)
,p_event_id=>wwv_flow_imp.id(42172453240532424)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("#icr-c").dialog("option", "width", 460);'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42172780162532427)
,p_event_id=>wwv_flow_imp.id(42172453240532424)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(42171779600532417)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42172811986532428)
,p_event_id=>wwv_flow_imp.id(42172453240532424)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(() => {',
'    $(document).off(''keydown.p91keyevents'');',
'}, 100)',
'',
'$("#icr-c").on("dialogbeforeclose", function(event, ui) {',
'    setTimeout(mapP91Keys, 0);',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42173007103532430)
,p_name=>'Submit Items'
,p_event_sequence=>260
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(42172974757532429)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42173130350532431)
,p_event_id=>wwv_flow_imp.id(42173007103532430)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var itemFrom = $v("P91_ITEM_FROM_C");',
'var itemTo = $v("P91_ITEM_TO_C")',
'var errorArea = document.getElementById("errorAreaThree");',
'var hasError = false;',
'',
'if (itemFrom && itemTo) {',
'    errorArea.textContent = "Only one field can be filled in.";',
'    errorArea.style.display = "block";',
'    hasError = true;',
'} else if (!itemFrom && !itemTo) {',
'    errorArea.textContent = "Please fill in one search field.";',
'    errorArea.style.display = "block";',
'    hasError = true;',
'}',
'',
'if(hasError) {',
'    return false',
'} else {',
'    errorArea.style.display = "none";',
'    return true;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42173610864532436)
,p_event_id=>wwv_flow_imp.id(42173007103532430)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if($v("P91_ITEM_FROM_C") && !$v("P91_ITEM_TO_C")) {',
'    apex.item("P91_MODE").setValue("Item From");',
'} else if($v("P91_ITEM_TO_C") && !$v("P91_ITEM_FROM_C")) {',
'    apex.item("P91_MODE").setValue("Item To");',
'}',
'$.event.trigger("reportC");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42174126582532441)
,p_name=>'PrintA'
,p_event_sequence=>270
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'printA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42174247131532442)
,p_event_id=>wwv_flow_imp.id(42174126582532441)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let currentDate = new Date();',
'let formattedDate = currentDate.getFullYear().toString() + ',
'    (currentDate.getMonth() + 1).toString().padStart(2, ''0'') + ',
'    currentDate.getDate().toString().padStart(2, ''0'');',
'let monthFrom = $v("P91_MONTH_FROM_B");',
'let monthTo = $v("P91_MONTH_TO_B");',
'let sortedBy = $v("P91_SORTED_BY");',
'',
'let mode = $v("P91_MODE");',
'let itemFromC = $v("P91_ITEM_FROM_C");',
'let itemToC = $v("P91_ITEM_TO_C");',
'',
'if($v("P91_REPORT") === "A") {',
'    generateReport("CONVERT_ITEM_PRINT_REPORT_A_COURIER_NEW", "pdf", {',
'        fileName: `ConversionRecordReport(single)_${formattedDate}`,',
'        mode : "print",',
'        parameters : {',
'            P_CONVERT_ID : $v("P91_CONVERT_ID"),',
'        },',
'        spinnerEnabled : true',
'    });',
'} else if($v("P91_REPORT") === "B") {',
'    generateReport("CONVERT_ITEM_PRINT_REPORT_B_COURIER_NEW", "pdf", {',
'        fileName: `ConversionRecordReport(for a period)_${formattedDate}`,',
'        mode : "print",',
'        parameters : {',
'            P_MONTH_FROM : monthFrom,',
'            P_MONTH_TO   : monthTo,',
'            P_SORTED_BY  : sortedBy',
'        },',
'        spinnerEnabled : true',
'    });',
'} else if($v("P91_REPORT") === "C") {',
'    generateReport("CONVERT_ITEM_PRINT_REPORT_C_COURIER_NEW", "pdf", {',
'        fileName: `ItemConversionReport_${formattedDate}`,',
'        mode : "print",',
'        parameters : {',
'            P_MONTH_FROM : monthFrom,',
'            P_MONTH_TO   : monthTo,',
'            P_SEARCH_MODE  : mode,',
'            P_ITEM_NUM : mode === "Item From" ? itemFromC : itemToC',
'        },',
'        spinnerEnabled : true',
'    });',
'}'))
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P91_CONVERT_ID'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42174528349532445)
,p_name=>'PrintB'
,p_event_sequence=>280
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'printB'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42174786261532447)
,p_event_id=>wwv_flow_imp.id(42174528349532445)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let currentDate = new Date();',
'let formattedDate = currentDate.getFullYear().toString() + ',
'    (currentDate.getMonth() + 1).toString().padStart(2, ''0'') + ',
'    currentDate.getDate().toString().padStart(2, ''0'');',
'',
'let monthFrom = $v("P91_MONTH_FROM_B");',
'let monthTo = $v("P91_MONTH_TO_B");',
'let sortedBy = $v("P91_SORTED_BY");',
'',
'let mode = $v("P91_MODE");',
'let itemFromC = $v("P91_ITEM_FROM_C");',
'let itemToC = $v("P91_ITEM_TO_C");',
'',
'if($v("P91_REPORT") === "A") {',
'    generateReport("CONVERT_ITEM_PRINT_REPORT_A_ARIAL", "pdf", {',
'        fileName: `ConversionRecordReport(single)_${formattedDate}`,',
'        mode : "print",',
'        parameters : {',
'            P_CONVERT_ID : $v("P91_CONVERT_ID"),',
'        },',
'        spinnerEnabled : true',
'    });',
'} else if($v("P91_REPORT") === "B") {',
'    generateReport("CONVERT_ITEM_PRINT_REPORT_B_ARIAL", "pdf", {',
'        fileName: `ConversionRecordReport(for a period)_${formattedDate}`,',
'        mode : "print",',
'        parameters : {',
'            P_MONTH_FROM : monthFrom,',
'            P_MONTH_TO   : monthTo,',
'            P_SORTED_BY  : sortedBy',
'        },',
'        spinnerEnabled : true',
'    });',
'} else if($v("P91_REPORT") === "C") {',
'    generateReport("CONVERT_ITEM_PRINT_REPORT_C_ARIAL", "pdf", {',
'        fileName: `ItemConversionReport_${formattedDate}`,',
'        mode : "print",',
'        parameters : {',
'            P_MONTH_FROM : monthFrom,',
'            P_MONTH_TO   : monthTo,',
'            P_SEARCH_MODE  : mode,',
'            P_ITEM_NUM : mode === "Item From" ? itemFromC : itemToC',
'        },',
'        spinnerEnabled : true',
'    });',
'}'))
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P91_CONVERT_ID'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(40827545157330211)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CHECK_ITEM_IN_WAREHOUSE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_warehouse_id NUMBER;',
'    v_warehouse_loc NUMBER;',
'    v_item_id NUMBER;',
'    v_exists NUMBER;',
'    v_item_num VARCHAR(30);',
'BEGIN',
'    SELECT warehouse_id, ',
'           CASE WHEN apex_application.g_x02 = ''FROM'' THEN from_item_id ELSE to_item_id END',
'    INTO v_warehouse_id, v_item_id',
'    FROM NIT020',
'    WHERE convert_id = apex_application.g_x01;',
'',
'    SELECT item_num',
'    INTO v_item_num',
'    FROM NIT001',
'    WHERE item_id = v_item_id;',
'',
'    SELECT warehouse_location',
'    INTO v_warehouse_loc',
'    FROM NIM027',
'    WHERE warehouse_id = v_warehouse_id;',
'',
'    SELECT COUNT(*)',
'    INTO v_exists',
'    FROM NIT004',
'    WHERE ITEM_ID = v_item_id',
'      AND WAREHOUSE_ID = v_warehouse_id;',
'',
'    IF v_exists = 0 THEN',
'        HTP.P(''{"success": false, "message": "Item: '' || v_item_num || '' does not exist in Warehouse: '' || v_warehouse_loc || ''"}'');',
'    ELSE',
'        HTP.P(''{"success": true}'');',
'    END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>40827545157330211
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(40827649334330212)
,p_process_sequence=>30
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CHECK_UOM_FOR_ITEM'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_warehouse_id NUMBER;',
'    v_item_id NUMBER;',
'    v_uom_id NUMBER;',
'    v_exists NUMBER;',
'    v_uom_code VARCHAR(10);',
'    v_item_num VARCHAR(30);',
'BEGIN',
'    SELECT warehouse_id,',
'           CASE apex_application.g_x02 WHEN ''FROM'' THEN from_item_id ELSE to_item_id END,',
'           CASE apex_application.g_x02 WHEN ''FROM'' THEN from_uom_id ELSE to_uom_id END',
'    INTO v_warehouse_id, v_item_id, v_uom_id',
'    FROM NIT020',
'    WHERE convert_id = apex_application.g_x01;',
'',
'    SELECT item_num',
'    INTO v_item_num',
'    FROM NIT001',
'    WHERE item_id = v_item_id;',
'',
'    SELECT uom_code',
'    INTO v_uom_code',
'    FROM NIM026',
'    WHERE uom_id = v_uom_id;',
'',
'    SELECT COUNT(*)',
'    INTO v_exists',
'    FROM NIT004',
'    WHERE ITEM_ID = v_item_id',
'      AND UOM_ID = v_uom_id',
'      AND WAREHOUSE_ID = v_warehouse_id;',
'',
'    IF v_exists = 0 THEN',
'        HTP.P(''{"success": false, "message": "UOM: '' || v_uom_code || '' does not exist for Item: ''|| v_item_num ||''."}'');',
'    ELSE',
'        HTP.P(''{"success": true}'');',
'    END IF;',
'END;',
'',
'-- DECLARE',
'--     v_warehouse_id NUMBER;',
'--     v_item_id NUMBER;',
'--     v_uom_id NUMBER;',
'--     v_exists NUMBER;',
'-- BEGIN',
'--     SELECT warehouse_id,',
'--            CASE :x02 WHEN ''FROM'' THEN from_item_id ELSE to_item_id END,',
'--            CASE :x02 WHEN ''FROM'' THEN from_uom_id ELSE to_uom_id END',
'--     INTO v_warehouse_id, v_item_id, v_uom_id',
'--     FROM NIT020',
'--     WHERE convert_id = :x01;',
'',
'--     SELECT COUNT(*)',
'--     INTO v_exists',
'--     FROM NIT004',
'--     WHERE ITEM_ID = v_item_id',
'--       AND WAREHOUSE_ID = v_warehouse_id',
'--       AND UOM_ID = v_uom_id;',
'',
'--     IF v_exists = 0 THEN',
'--         HTP.P(''false'');',
'--     ELSE',
'--         HTP.P(''true'');',
'--     END IF;',
'-- END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>40827649334330212
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(40827780260330213)
,p_process_sequence=>40
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UPDATE_NIT004_QTY'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- DECLARE',
'--     v_warehouse_id NUMBER;',
'--     v_item_id NUMBER;',
'--     v_uom_id NUMBER;',
'--     v_no_of_units NUMBER;',
'-- BEGIN',
'--     SELECT warehouse_id,',
'--            CASE apex_application.g_x02 WHEN ''FROM'' THEN from_item_id ELSE to_item_id END,',
'--            CASE apex_application.g_x02 WHEN ''FROM'' THEN from_uom_id ELSE to_uom_id END,',
'--            CASE apex_application.g_x02 WHEN ''FROM'' THEN from_no_of_units ELSE to_no_of_units END',
'--     INTO v_warehouse_id, v_item_id, v_uom_id, v_no_of_units',
'--     FROM NIT020',
'--     WHERE convert_id = apex_application.g_x01;',
'',
'--     UPDATE NIT004',
'--     SET QTY = v_no_of_units',
'--     WHERE ITEM_ID = v_item_id',
'--       AND UOM_ID = v_uom_id',
'--       AND WAREHOUSE_ID = v_warehouse_id;',
'',
'--     COMMIT;',
'-- END;',
'',
'DECLARE',
'    v_warehouse_id NUMBER;',
'    v_item_id NUMBER;',
'    v_uom_id NUMBER;',
'    v_no_of_units NUMBER;',
'BEGIN',
'    SELECT warehouse_id,',
'           CASE apex_application.g_x02 WHEN ''FROM'' THEN from_item_id ELSE to_item_id END,',
'           CASE apex_application.g_x02 WHEN ''FROM'' THEN from_uom_id ELSE to_uom_id END,',
'           CASE apex_application.g_x02 WHEN ''FROM'' THEN from_no_of_units ELSE to_no_of_units END',
'    INTO v_warehouse_id, v_item_id, v_uom_id, v_no_of_units',
'    FROM NIT020',
'    WHERE convert_id = apex_application.g_x01;',
'',
'    UPDATE NIT004',
'    SET QTY = v_no_of_units',
'    WHERE ITEM_ID = v_item_id',
'      AND UOM_ID = v_uom_id',
'      AND WAREHOUSE_ID = v_warehouse_id;',
'',
'    IF SQL%ROWCOUNT = 0 THEN',
'        HTP.P(''{"success": false}'');',
'    ELSE',
'        HTP.P(''{"success": true}'');',
'    END IF;',
'',
'    COMMIT;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>40827780260330213
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(40827840996330214)
,p_process_sequence=>50
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UPDATE_IS_POSTED'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    UPDATE NIT020',
'    SET IS_POSTED = ''Y''',
'    WHERE CONVERT_ID = apex_application.g_x01;',
'',
'    COMMIT;',
'',
'    HTP.P(''{"success": true}'');',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>40827840996330214
);
wwv_flow_imp.component_end;
end;
/
