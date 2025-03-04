prompt --application/pages/page_00035
begin
--   Manifest
--     PAGE: 00035
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
 p_id=>35
,p_name=>'POS Cashiering Main Screen'
,p_alias=>'POS-CASHIERING-MAIN-SCREEN'
,p_step_title=>'Cashiering'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APP_FILES#onscan.min.js',
'#APP_FILES#onscan#MIN#.js',
'#APP_FILES#js/cmn#MIN#.js'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let lastSelected = null;',
'const quantityInvalidMsg = "Please enter a valid QTY value";',
'',
'const p35KeyMap = {',
'    f2 : (v) => {',
'        $("#f2").click();',
'    },',
'',
'    f3 : (v) => {',
'        $("#f3").trigger("click");',
'    },',
'',
'    f5 : (v) => {',
'        $("#f5").trigger("click");',
'    },',
'    ',
'    f8 : (v) => {',
'        $("#f8").trigger("click");',
'    },',
'',
'    home: (v) => {',
'        $("#to-top").trigger("click");',
'    },',
'',
'    escape: (v) => {',
'        $("#exit").trigger("click");',
'    },',
'',
'    end: (v) => {',
'        $("#to-bottom").trigger("click");',
'    }',
'}',
'',
'function mapP35Keys() {',
'    $(document).off(''keydown.p35keyevents'');',
'    $(document).on(''keydown.p35keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p35KeyMap[key]) {',
'            ev.preventDefault();',
'            p35KeyMap[key]();',
'        }',
'    });',
'}',
'',
'function customEvent(event, data){',
'    mapP35Keys();',
'}',
'',
'let inputEnabled = true; ',
'',
'document.addEventListener("keydown", function (event) {',
'    if (event.key === "Enter") {',
'        inputEnabled = true; ',
'        return; ',
'    }',
'',
'    let activeElement = document.activeElement;',
'    if (activeElement.tagName === "INPUT" || activeElement.tagName === "TEXTAREA") {',
'        return; ',
'    }',
'',
'    if (inputEnabled && event.key.match(/^[a-zA-Z0-9]$/)) {',
'        apex.event.trigger("#f2", "click");',
'',
'    }',
'});',
'',
''))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP35Keys();',
'',
'',
'$("<#orders> .a-GV").on("keydown", "input", function(event) { if (event.which === 13) { event.stopPropagation();} });',
'',
'$(document).on("keydown.posevent", function(ev) {',
'    var eventBlacklist = {',
'        ''input'': true,',
'        ''textarea'': true,',
'        ''select'': true',
'    };',
'',
'    var tagName = document.activeElement.tagName.toLowerCase();',
'    var id = document.activeElement.id;',
'    var shortcut = ev.code;',
'',
'    if (tagName === ''input'' && ev.key === ''Enter'' && id === ''ord-quantity'') {',
'        document.activeElement.blur();',
'    }',
'',
'});',
'',
'onScan.attachTo(document, {onScan: function(sScancode, iQuantity){',
'    apex.item("P35_BARCODE").setValue(JSON.parse(sScancode));',
'}});',
'',
'apex.actions.shortcutSupport("off");',
'',
'$("#f5").trigger("click");',
'',
'setIGInputFilter($("#ord-quantity"), value => /^\d*$/.test(value) || value === "", quantityInvalidMsg);'))
,p_css_file_urls=>'#APP_FILES#css/menu#MIN#.css'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* body, #button-region {',
'    background-color: rgb(30, 58, 138);',
'}',
'',
'.t-Header .t-Header-branding {',
'    background-color: white !important;',
'    color: rgb(30, 58, 138) !important;',
'}',
'',
'#orders table, #orders tr, #orders td, #orders th {',
'     font-size: 1.125rem;',
'}',
'',
'',
'.btns {',
'    font-size: 1.125rem;',
'    color: white;',
'    font-weight: 600;',
'}',
'',
'.hiddenbtn {',
'    display: none;',
'}',
'',
'.text-left {',
'    text-align: left;',
'}',
'',
'.text-right {',
'    text-align: right;',
'}',
'',
'.content-block {',
'    font-size: 1.25rem;',
'    display: flex;',
'    justify-content: space-between;',
'    font-weight: 700;',
'}',
'',
'.a-GV-header a, th.a-GV-header {',
'    background-color: #046BC8;',
'    color: white;',
'}',
'',
'.ui-dialog .ui-dialog-titlebar {',
'    background-color: #056AC8;',
'    color: white;',
'}',
'',
'.ui-dialog-title{',
'    font-size: 1.5rem;',
'}',
'',
'.ui-dialog.inv-qby-w {',
'   left: 50% !important; ',
'}',
'',
'.ui-dialog-titlebar-close{',
'    display: none;',
'}',
'',
'.a-GV-hdr .a-GV-table {',
'    width: 100% !important;',
'}',
'',
'.ui-widget-overlay.ui-front {',
'    background-color: transparent !important;',
'    opacity: 0 !important;',
'}',
'',
'',
'.buttons-row {',
'    position: absolute;',
'    width: 98vw;',
'    bottom: 1rem;',
'}',
'',
'#orders .a-IG {',
'    height: calc(65vh + 2px) !important;',
'} ',
'',
'#orders .a-IG-contentContainer {',
'    height: 65vh !important;',
'}',
'',
'#orders .a-IG-gridView.a-GV {',
'    height: 65vh !important;',
'}',
'',
'.t-Form-label{',
'    color: white;',
'    font-size: 1.125rem;',
'    white-space: nowrap;',
'}',
'',
'.apex-item-display-only {',
'    color: white;',
'    font-size: 1.125rem;',
'    white-space: nowrap;',
'    display: flex;',
'}',
'',
'.t-Button-label {',
'    font-size: 1.125rem;',
'    white-space: nowrap;',
'    font-family: Arial;',
'}',
'',
'.t-Form-fieldContainer--preTextBlock.t-Form-fieldContainer--postTextBlock .t-Form-inputContainer {',
'    padding-right: 14rem;',
'}',
'',
'.col-2:has(#P35_LOC_1_LABEL),',
'.col-2:has(#P35_LOC_2_LABEL),',
'.col-2:has(#P35_LOC_3_LABEL) {',
'    max-width: 5.5rem;',
'}',
'',
'.t-Form-inputContainer:has(#P35_LOC_1),',
'.t-Form-inputContainer:has(#P35_LOC_2),',
'.t-Form-inputContainer:has(#P35_LOC_3) {',
'    text-align: center;',
'    margin: 0 auto;',
'}',
'',
'.t-Form-labelContainer:has(#P35_QOH_LABEL),',
'.t-Form-labelContainer:has(#P35_LOC_1_LABEL),',
'.t-Form-labelContainer:has(#P35_LOC_2_LABEL),',
'.t-Form-labelContainer:has(#P35_LOC_3_LABEL){',
'    text-align: left;',
'    padding-left: 1rem;',
'}',
'',
'#P35_INVOICE_DATE_DISPLAY{',
'    padding-left: 0.2rem;',
'}',
'',
'#P35_ORDER_WRITER_DISPLAY{',
'    padding-left: 0.4rem;',
'} */',
'body, #button-region {',
'    background-color: rgb(30, 58, 138);',
'}',
'',
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
'/* style returned values start */',
'.apex-item-display-only {',
'    font-size: 1.125rem;',
'    font-weight: 400;',
'    color: white;',
'}',
'/* end */',
'',
'#orders table, #orders tr, #orders td, #orders th {',
'     font-size: 1.125rem;',
'}',
'',
'',
'.btns {',
'    font-size: 1.125rem;',
'    color: white;',
'    font-weight: 600 !important;',
'}',
'',
'.hiddenbtn {',
'    display: none;',
'}',
'',
'.text-left {',
'    text-align: left;',
'}',
'',
'.text-right {',
'    text-align: right;',
'}',
'',
'.content-block {',
'    font-size: 1.25rem;',
'    display: flex;',
'    justify-content: space-between;',
'    font-weight: 700;',
'}',
'',
'.a-GV-header a, th.a-GV-header {',
'    background-color: #046BC8;',
'    color: white;',
'}',
'',
'.ml-1 {',
'    margin-left: 1rem;',
'}',
'',
'.ui-dialog .ui-dialog-titlebar {',
'    background-color: #056AC8;',
'    color: white;',
'}',
'',
'.ui-dialog-title{',
'    font-size: 1.5rem;',
'}',
'',
'.ui-dialog.inv-qby-w {',
'   left: 50% !important; ',
'}',
'',
'.ui-dialog-titlebar-close{',
'    display: none;',
'}',
'',
'.a-GV-hdr .a-GV-table {',
'    width: 100% !important;',
'}',
'',
'.ui-widget-overlay.ui-front {',
'    background-color: transparent !important;',
'    opacity: 0 !important;',
'}',
'',
'',
'.buttons-row {',
'    position: absolute;',
'    width: 95vw;',
'    bottom: 1rem;',
'}',
'',
'#orders .a-IG {',
'    height: calc(60vh + 2px) !important;',
'} ',
'',
'#orders .a-IG-contentContainer {',
'    height: 60vh !important;',
'}',
'',
'#orders .a-IG-gridView.a-GV {',
'    height: 60vh !important;',
'}',
'',
'.t-Form-label{',
'    color: white;',
'    font-size: 1.125rem;',
'    white-space: nowrap;',
'    padding-block-start: var(--ut-field-label-padding-y, .15rem);',
'}',
'',
'.apex-item-display-only {',
'    color: white;',
'    font-size: 1.125rem;',
'    white-space: nowrap;',
'    display: flex;',
'}',
'',
'.t-Button-label {',
'    font-size: 1.125rem;',
'    white-space: nowrap;',
'    font-family: Arial;',
'}',
'',
'#P35_CUSTOMER_FIELD_CONTAINER > .t-Form-labelContainer {',
'    max-width: 42%;',
'}',
'',
'#P35_INVOICE_NO_CONTAINER > .t-Form-labelContainer {',
'    max-width: 32%;',
'}',
'',
'.col-2:has(#P35_LOC_1_LABEL),',
'.col-2:has(#P35_LOC_2_LABEL),',
'.col-2:has(#P35_LOC_3_LABEL) {',
'    max-width: 5.5rem;',
'}',
'',
'.t-Form-inputContainer:has(#P35_LOC_1),',
'.t-Form-inputContainer:has(#P35_LOC_2),',
'.t-Form-inputContainer:has(#P35_LOC_3) {',
'    text-align: center;',
'    margin: 0 auto;',
'}',
'',
'.t-Form-labelContainer:has(#P35_QOH_LABEL),',
'.t-Form-labelContainer:has(#P35_LOC_1_LABEL),',
'.t-Form-labelContainer:has(#P35_LOC_2_LABEL),',
'.t-Form-labelContainer:has(#P35_LOC_3_LABEL),',
'.t-Form-labelContainer:has(#P35_SUB_LABEL),',
'.t-Form-labelContainer:has(#P35_DISCOUNT_LABEL),',
'.t-Form-labelContainer:has(#P35_TOTAL_LABEL) {',
'    text-align: left;',
'    padding-left: 1rem;',
'}',
'',
'#P35_SUB_DISPLAY,',
'#P35_DISCOUNT_DISPLAY,',
'#P35_TOTAL_DISPLAY {',
'    font-size: 1.125rem;',
'    font-weight: 700;',
'}',
'',
'.ui-dialog-titlebar {',
'    display: block;',
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
'',
'.ui-dialog:has(#inline-dialog) {',
'    width: 430px !important;',
'}',
'',
'.ui-dialog > #inline-dialog > .t-DialogRegion-wrap {',
'    overflow: hidden;',
'}',
'',
'#P35_DIALOG_CUSTOMER_DBA_LABEL {',
'    color: black !important;',
'    padding-top: 0.5rem;',
'}',
'',
'#P35_DIALOG_CUSTOMER_DBA_input {',
'    font-size: 1.125rem;',
'}',
'',
'#P35_DIALOG_CUSTOMER_DBA {',
'    height: 2rem;',
'    margin-bottom: 0.4rem;',
'    margin-left: 6.5rem;',
'    font-size: 1.125rem;',
'}',
'',
'.error-msg {',
'    color: red;',
'    font-size: 0.75rem;',
'    font-weight: 600;',
'    padding-left: 0.7rem;',
'    padding-bottom: 0.5rem;',
'}',
'',
'.a-GV-table tr.is-selected {',
'    --a-gv-background-color: #F5DC1C;',
'}',
'',
'.a-GV-table .a-GV-cell.is-focused{',
'    box-shadow: inset 0 0 0 1px black;',
'}',
'',
'#P35_INVOICE_DATE_DISPLAY{',
'    padding-left: 0.4rem;',
'    font-weight: 700;',
'}',
'',
'#P35_ORDER_WRITER_DISPLAY{',
'    padding-left: 0.6rem;',
'    font-weight: 700;',
'}',
'',
'#P35_CUSTOMER_FIELD_DISPLAY{',
'    font-weight: 700;',
'}',
'',
'#P35_INVOICE_NO_DISPLAY {',
'    font-weight: 700;',
'}',
'',
'.topless-dialog .ui-dialog-titlebar {',
'    display: none;',
'}',
'',
'.ui-dialog .ui-dialog-title {',
'    line-height: normal !important;',
'}',
'',
'.a-ComboSelect-itemHighlight, .a-ComboSelect-label {',
'    font-size: 1.125rem;',
'}'))
,p_step_template=>wwv_flow_imp.id(5671392681337017)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38713132331254512)
,p_plug_name=>'Header'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--hiddenOverflow:t-Form--noPadding:t-Form--leftLabels:margin-top-none:margin-bottom-sm:margin-left-none'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>20
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38716626724254547)
,p_plug_name=>'Header 2'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody:t-Form--stretchInputs:t-Form--leftLabels'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>60
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(49319882178115216)
,p_plug_name=>'Invoice'
,p_region_name=>'orders'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>40
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH COLLECTION_SUMS AS (',
'    SELECT ''DISCOUNT_A'' AS collection_name, SUM(n005 - (NVL(n004, 0) * n001)) AS TOTAL_EXTENDED_PRICE',
'    FROM apex_collections',
'    WHERE collection_name = ''DISCOUNT_A''',
' ',
'    UNION ALL',
' ',
'    SELECT ''DISCOUNT_B'' AS collection_name, SUM(n005 - (NVL(n004, 0) * n001)) AS TOTAL_EXTENDED_PRICE',
'    FROM apex_collections',
'    WHERE collection_name = ''DISCOUNT_B''',
' ',
'    UNION ALL',
' ',
'    SELECT ''DISCOUNT_C'' AS collection_name, SUM(n005 - (NVL(n004, 0) * n001)) AS TOTAL_EXTENDED_PRICE',
'    FROM apex_collections',
'    WHERE collection_name = ''DISCOUNT_C''',
' ',
'    UNION ALL',
' ',
'    SELECT ''DISCOUNT_D'' AS collection_name, SUM(n005 - (NVL(n004, 0) * n001)) AS TOTAL_EXTENDED_PRICE',
'    FROM apex_collections',
'    WHERE collection_name = ''DISCOUNT_D''',
'),',
'LOWEST_SUM AS (',
'    SELECT collection_name',
'    FROM COLLECTION_SUMS',
'    WHERE TOTAL_EXTENDED_PRICE = (SELECT MIN(TOTAL_EXTENDED_PRICE) FROM COLLECTION_SUMS)',
'    FETCH FIRST 1 ROW ONLY',
')',
'SELECT ',
'    ROWNUM AS "Primary Key",',
'    c001 AS ITEM_NO, ',
'    c002 AS CO, ',
'    c003 AS ITEM_DESCRIPTION, ',
'    n001 AS QTY, ',
'    n002 AS REG_PRICE, ',
'    c004 AS UOM, ',
'    NVL(n003, 0) AS DISC, ',
'    CASE ',
'        WHEN n003 <> 0 THEN ''S''',
'        ELSE ''N''',
'    END AS DT,',
'    n002 - NVL(n004, 0) AS NET_PRICE,',
'    n005 - NVL(n004, 0) * n001 AS EXTENDED_PRICE,',
'    c006 AS BARCODE,',
'    c007 as ITEM_ID',
'FROM apex_collections',
'WHERE collection_name IN (SELECT collection_name FROM LOWEST_SUM);'))
,p_plug_source_type=>'NATIVE_IG'
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
 p_id=>wwv_flow_imp.id(49320056233115218)
,p_name=>'ITEM_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEM_NO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_AUTO_COMPLETE'
,p_heading=>'Item No'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_01=>'EXACT_IGNORE'
,p_attribute_04=>'Y'
,p_attribute_05=>'7'
,p_attribute_09=>'1'
,p_attribute_10=>'Y'
,p_is_required=>true
,p_max_length=>4000
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a.item_num || '' - '' || UPPER(c.uom_code)',
'  FROM NIT001 a, NIT002 b, NIM026 c, NIM022 d',
' WHERE a.item_id = b.item_id',
'   AND b.uom_id = c.uom_id',
'   AND a.brand_id = d.brand_id',
'',
'UNION ALL',
'',
'SELECT b.upc',
'  FROM NIT001 a, NIT002 b, NIM026 c, NIM022 d',
' WHERE a.item_id = b.item_id',
'   AND b.uom_id = c.uom_id',
'   AND a.brand_id = d.brand_id;'))
,p_lov_display_extra=>true
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(49320138238115219)
,p_name=>'CO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Co'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(49320227633115220)
,p_name=>'ITEM_DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEM_DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Item Description'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(49320369862115221)
,p_name=>'QTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Qty'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_attribute_04=>'decimal'
,p_is_required=>false
,p_enable_filter=>false
,p_filter_is_required=>false
,p_static_id=>'ord-quantity'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(49320498708115222)
,p_name=>'REG_PRICE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REG_PRICE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Reg Price'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_format_mask=>'999G999G999G999G990D00'
,p_is_required=>false
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(49320546741115223)
,p_name=>'UOM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UOM'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'UOM'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(49320647136115224)
,p_name=>'DISC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISC'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Disc'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'CENTER'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>false
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(49320710492115225)
,p_name=>'DT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'DT'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(49320862834115226)
,p_name=>'NET_PRICE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NET_PRICE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Net Price'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>130
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_format_mask=>'999G999G999G999G990D00'
,p_is_required=>false
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(49320986980115227)
,p_name=>'EXTENDED_PRICE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXTENDED_PRICE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Extended Price'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>140
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_format_mask=>'999G999G999G999G990D00'
,p_is_required=>false
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(49321068726115228)
,p_name=>'BARCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BARCODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>150
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(53708912841876739)
,p_name=>'Primary Key'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'Primary Key'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(58962850559220243)
,p_name=>'ITEM_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEM_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(49319981874115217)
,p_internal_uid=>49319981874115217
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>false
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
'}',
''))
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(49343570465149398)
,p_interactive_grid_id=>wwv_flow_imp.id(49319981874115217)
,p_static_id=>'493436'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(49343738423149398)
,p_report_id=>wwv_flow_imp.id(49343570465149398)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(49344248367149403)
,p_view_id=>wwv_flow_imp.id(49343738423149398)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(49320056233115218)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>258
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(49345199480149409)
,p_view_id=>wwv_flow_imp.id(49343738423149398)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(49320138238115219)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>56
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(49346033225149417)
,p_view_id=>wwv_flow_imp.id(49343738423149398)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(49320227633115220)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>440
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(49346816323149425)
,p_view_id=>wwv_flow_imp.id(49343738423149398)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(49320369862115221)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>70
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(49347716405149434)
,p_view_id=>wwv_flow_imp.id(49343738423149398)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(49320498708115222)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>130
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(49348622763149442)
,p_view_id=>wwv_flow_imp.id(49343738423149398)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(49320546741115223)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>60
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(49349587286149451)
,p_view_id=>wwv_flow_imp.id(49343738423149398)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(49320647136115224)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>60
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(49350483844149459)
,p_view_id=>wwv_flow_imp.id(49343738423149398)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(49320710492115225)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>50
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(49351381108149467)
,p_view_id=>wwv_flow_imp.id(49343738423149398)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(49320862834115226)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>130
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(49352241194149473)
,p_view_id=>wwv_flow_imp.id(49343738423149398)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(49320986980115227)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>130
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(49353120145149482)
,p_view_id=>wwv_flow_imp.id(49343738423149398)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(49321068726115228)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(56096421767349914)
,p_view_id=>wwv_flow_imp.id(49343738423149398)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(53708912841876739)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(59897733538238293)
,p_view_id=>wwv_flow_imp.id(49343738423149398)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(58962850559220243)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19652157200695404)
,p_button_sequence=>90
,p_button_name=>'Opening-Balance'
,p_button_static_id=>'f4'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u> F4 </u>  - Opening Balance'
,p_button_redirect_url=>'f?p=&APP_ID.:64:&SESSION.::&DEBUG.:64::'
,p_button_css_classes=>'hiddenbtn'
,p_grid_new_row=>'Y'
,p_grid_column_span=>1
,p_grid_column=>4
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(35547921164882710)
,p_button_sequence=>110
,p_button_name=>'Search-Item'
,p_button_static_id=>'f2'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u> F2 </u>  - Search Item'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns'
,p_grid_new_row=>'N'
,p_grid_column_span=>1
,p_grid_column=>8
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27426872438078118)
,p_button_sequence=>120
,p_button_name=>'Change-Quantity'
,p_button_static_id=>'f3'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>F3 </u> - Change Qty'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns'
,p_grid_new_row=>'N'
,p_grid_column_span=>1
,p_grid_column=>10
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11450069922525328)
,p_button_sequence=>130
,p_button_name=>'Pay'
,p_button_static_id=>'f8'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u> F8 </u>  - Pay '
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns'
,p_grid_new_row=>'N'
,p_grid_column_span=>1
,p_grid_column=>12
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(77860666853642505)
,p_button_sequence=>140
,p_button_name=>'Exit'
,p_button_static_id=>'exit'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Exit'
,p_button_redirect_url=>'f?p=&APP_ID.:139:&SESSION.::&DEBUG.:139::'
,p_button_css_classes=>'hiddenbtn'
,p_grid_new_row=>'Y'
,p_grid_column_span=>1
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9703759774553744)
,p_button_sequence=>150
,p_button_name=>'Customer'
,p_button_static_id=>'f5'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'F5 - SELECT CUSTOMER'
,p_button_redirect_url=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'hiddenbtn'
,p_grid_new_row=>'N'
,p_grid_column_span=>2
,p_grid_column=>4
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(72264368593359924)
,p_button_sequence=>160
,p_button_name=>'Home'
,p_button_static_id=>'esc'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Home'
,p_button_redirect_url=>'f?p=&APP_ID.:305:&SESSION.::&DEBUG.:35::'
,p_button_css_classes=>'hiddenbtn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11449756222525325)
,p_name=>'P35_SUB'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(38716626724254547)
,p_prompt=>'<b>Sub-Total:</b>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_column=>4
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--postTextBlock'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11449899459525326)
,p_name=>'P35_DISCOUNT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(38716626724254547)
,p_prompt=>'<b>Total Discount:</b>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_column=>7
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11449937233525327)
,p_name=>'P35_TOTAL'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(38716626724254547)
,p_prompt=>'<b>Total Amount:</b>'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(16917291056497018)
,p_name=>'P35_CUSTOMER_FIELD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(38713132331254512)
,p_prompt=>'<b>Customer (DBA):</b>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>3
,p_grid_column=>1
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--preTextBlock:t-Form-fieldContainer--postTextBlock:margin-left-none:t-Form-fieldContainer--boldDisplay'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18257830548008506)
,p_name=>'P35_URL'
,p_item_sequence=>170
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35547641814882707)
,p_name=>'P35_INVOICE_NO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(38713132331254512)
,p_prompt=>'<b>Invoice No: </b>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_column=>10
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--postTextBlock:margin-bottom-sm:margin-right-lg'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35547716446882708)
,p_name=>'P35_INVOICE_DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(38713132331254512)
,p_prompt=>'<b>Invoice Date: </b>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_column=>10
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--postTextBlock:margin-bottom-sm:margin-right-lg'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35547832677882709)
,p_name=>'P35_ORDER_WRITER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(38713132331254512)
,p_prompt=>'<b>Order Writer: </b>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_column=>10
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--postTextBlock:margin-right-lg'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38716099666254541)
,p_name=>'P35_QOH'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(38716626724254547)
,p_prompt=>'<span class="btns">QOH</span>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>2
,p_grid_column=>1
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--postTextBlock'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42944764576705435)
,p_name=>'P35_QTY'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(38716626724254547)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>1
,p_grid_column=>2
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--postTextBlock'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(49321440352115232)
,p_name=>'P35_BARCODE'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53708084049876730)
,p_name=>'P35_CLICKED_SEARCH_F2'
,p_item_sequence=>180
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53708342662876733)
,p_name=>'P35_SEARCHED_UPC'
,p_item_sequence=>190
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(57881422742782425)
,p_name=>'P35_UPC_SEARCH'
,p_item_sequence=>210
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT b.upc',
'  FROM NIT001 a, NIT002 b, NIM026 c, NIM022 d',
' WHERE a.item_id = b.item_id',
'   AND b.uom_id = c.uom_id',
'   AND a.brand_id = d.brand_id',
'   AND a.item_num || '' - '' || UPPER(c.uom_code) = :P35_SEARCHED_UPC',
'',
'UNION ALL',
'',
'SELECT b.upc',
'  FROM NIT001 a, NIT002 b, NIM026 c, NIM022 d',
' WHERE a.item_id = b.item_id',
'   AND b.uom_id = c.uom_id',
'   AND a.brand_id = d.brand_id',
'   AND b.upc = :P35_SEARCHED_UPC'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58473125511293834)
,p_name=>'P35_LOC_1'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(38716626724254547)
,p_prompt=>'<span class="btns">LOC #&P35_WH_1.</span>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(4382138690084278)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58473243642293835)
,p_name=>'P35_LOC_2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(38716626724254547)
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
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58473384052293836)
,p_name=>'P35_LOC_3'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(38716626724254547)
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
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58473417120293837)
,p_name=>'P35_WH_1'
,p_item_sequence=>220
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58473526396293838)
,p_name=>'P35_WH_2'
,p_item_sequence=>230
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58473669014293839)
,p_name=>'P35_WH_3'
,p_item_sequence=>240
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58959334106220208)
,p_name=>'P35_SELECTED_ITEM_NO'
,p_item_sequence=>250
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59941949780414818)
,p_name=>'P35_SELECTED_UOM'
,p_item_sequence=>270
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59942061526414819)
,p_name=>'P35_SELECTED_QTY'
,p_item_sequence=>280
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59942269676414821)
,p_name=>'P35_SELECTED_PRICE'
,p_item_sequence=>290
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59945012589414849)
,p_name=>'P35_SELECTED_ITEM_ID'
,p_item_sequence=>260
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60645172820970549)
,p_name=>'P35_SELECTED_INDEX'
,p_item_sequence=>200
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(72263084644359911)
,p_name=>'P35_SELECTED_UPC'
,p_item_sequence=>300
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(82158341745837107)
,p_name=>'P35_INPUT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(38713132331254512)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(35548047946882711)
,p_computation_sequence=>10
,p_computation_item=>'P35_INVOICE_DATE'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TO_CHAR(SYSDATE, ''MM/DD/YYYY'') FROM DUAL;',
''))
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(40390947660268814)
,p_computation_sequence=>20
,p_computation_item=>'P35_ORDER_WRITER'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>'SELECT :APP_USER FROM DUAL'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(53708120682876731)
,p_computation_sequence=>40
,p_computation_item=>'P35_CLICKED_SEARCH_F2'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'null'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(53708488037876734)
,p_computation_sequence=>50
,p_computation_item=>'P35_SEARCHED_UPC'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'null'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(60642965346970527)
,p_computation_sequence=>60
,p_computation_item=>'P35_INVOICE_NO'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT MAX(CASH_INVOICE_ID)',
'  FROM NPT033 ',
'WHERE TOTAL_AMOUNT IS NULL',
'  AND USER_CREATED = v(''APP_USER''); '))
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(72262340010359904)
,p_computation_sequence=>70
,p_computation_item=>'P35_LOC_1'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(72262470159359905)
,p_computation_sequence=>80
,p_computation_item=>'P35_LOC_2'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(72262520212359906)
,p_computation_sequence=>90
,p_computation_item=>'P35_LOC_3'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(49322839816115246)
,p_name=>'Scan Item'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P35_BARCODE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50062429642231845)
,p_event_id=>wwv_flow_imp.id(49322839816115246)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Scan Item'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_seq_id NUMBER;',
'    v_item_id NUMBER;',
'    v_item_num VARCHAR2(50);',
'    v_product_name VARCHAR2(35);',
'    v_price NUMBER;',
'    v_qty NUMBER;',
'    v_total NUMBER;',
'    v_brand VARCHAR2(10);',
'    v_uom VARCHAR2(10);',
'    v_discounted NUMBER;',
'    v_collections SYS.ODCIVARCHAR2LIST := SYS.ODCIVARCHAR2LIST(''DISCOUNT_A'', ''DISCOUNT_B'', ''DISCOUNT_C'', ''DISCOUNT_D'');',
'    v_collection_name VARCHAR2(15);',
'BEGIN',
'    BEGIN',
'    SELECT a.item_num, a.item_id, a.item_desc, b.price, b.price total, UPPER(c.uom_code), d.brand_code ',
'      INTO v_item_num, v_item_id, v_product_name, v_price, v_total, v_uom, v_brand',
'      FROM NIT001 a, NIT002 b, NIM026 c, NIM022 d',
'     WHERE a.item_id = b.item_id',
'       AND b.uom_id = c.uom_id',
'       AND a.brand_id = d.brand_id',
'       AND b.upc = :P35_BARCODE;',
'       EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'            v_item_id := NULL;',
'        END;',
'',
'    FOR i IN 1 .. v_collections.COUNT LOOP',
'        v_collection_name := v_collections(i);',
'',
'        BEGIN',
'            SELECT seq_id, n001, n004 ',
'              INTO v_seq_id, v_qty, v_discounted',
'              FROM apex_collections',
'             WHERE collection_name = v_collection_name',
'               AND c006 = :P35_BARCODE;',
'        EXCEPTION',
'            WHEN NO_DATA_FOUND THEN ',
'                v_seq_id := 0; ',
'        END;',
'',
'        IF v_seq_id != 0 THEN',
'            v_qty := v_qty + 1;',
'            v_total := v_price * v_qty;',
'            v_discounted := v_discounted * v_qty;',
'',
'            apex_collection.update_member_attribute(',
'                p_collection_name => v_collection_name,',
'                p_seq => v_seq_id,',
'                p_attr_number => 1,',
'                p_number_value => v_qty',
'            );',
'',
'            apex_collection.update_member_attribute(',
'                p_collection_name => v_collection_name,',
'                p_seq => v_seq_id,',
'                p_attr_number => 5,',
'                p_number_value => v_total',
'            );',
'        ELSIF v_seq_id = 0 AND v_item_id IS NOT NULL THEN',
'            apex_collection.add_member(',
'                p_collection_name => v_collection_name,',
'                p_c001 => v_item_num,',
'                p_c002 => v_brand,',
'                p_c003 => v_product_name,',
'                p_n001 => 1,',
'                p_n002 => v_price,',
'                p_c004 => v_uom,',
'                p_n005 => v_total,',
'                p_c006 => :P35_BARCODE,',
'                p_c007 => v_item_id',
'            );',
'        END IF;',
'    END LOOP;',
'END;',
''))
,p_attribute_02=>'P35_BARCODE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77861136860642510)
,p_event_id=>wwv_flow_imp.id(49322839816115246)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'Discount'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    APPLY_DISCOUNT_CASHIERING(:P35_CUSTOMER_FIELD, :P35_BARCODE);',
'END;'))
,p_attribute_02=>'P35_CUSTOMER_FIELD,P35_BARCODE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50059069363231811)
,p_event_id=>wwv_flow_imp.id(49322839816115246)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'Discount A'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_disc NUMBER;',
'    v_seq_id NUMBER;',
'    v_seq NUMBER;',
'    v_id NUMBER := 0;',
'    v_bc VARCHAR(50);',
'BEGIN',
'BEGIN',
'    WITH discount_data AS (',
'    SELECT a.discount_id, a.discount_value',
'    FROM NPT028 A, NPT008 B, NPT032 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE a.discount_id = b.discount_id',
'      AND a.discount_id = c.discount_id',
'      AND d.customer_id = c.customer_id',
'      AND a.sic_id = e.sic_id',
'      AND e.item_id = f.item_id',
'      AND d.dba = :P35_CUSTOMER_FIELD',
'      AND b.date_to >= SYSDATE',
'      AND b.date_from <= SYSDATE',
'      AND f.upc = :P35_BARCODE',
'UNION ALL',
'  SELECT a.discount_id, a.discount_value',
'    FROM NPT029 A, NPT008 B, NPT032 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE a.discount_id = b.discount_id',
'      AND a.discount_id = c.discount_id',
'      AND d.customer_id = c.customer_id',
'      AND a.dept_id = e.dept_id',
'      AND e.item_id = f.item_id',
'      AND d.dba = :P35_CUSTOMER_FIELD',
'      AND b.date_to >= SYSDATE',
'      AND b.date_from <= SYSDATE',
'      AND f.upc = :P35_BARCODE',
'UNION ALL',
'    SELECT a.discount_id, a.discount_value',
'    FROM NPT030 A, NPT008 B, NPT032 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE a.discount_id = b.discount_id',
'      AND a.discount_id = c.discount_id',
'      AND d.customer_id = c.customer_id',
'      AND a.class_id = e.class_id',
'      AND e.item_id = f.item_id',
'      AND d.dba = :P35_CUSTOMER_FIELD',
'      AND b.date_to >= SYSDATE',
'      AND b.date_from <= SYSDATE',
'      AND f.upc = :P35_BARCODE',
'UNION ALL',
'    SELECT DISTINCT 0, np09.standard_discount_value',
'     FROM NPT009 np09, NIT001 nt01, NPT032 np032, NIT002 nt02',
'     WHERE np09.class_id = nt01.class_id',
'      AND np09.customer_id = np032.customer_id ',
'      AND np09.dba = :P35_CUSTOMER_FIELD',
'      AND nt01.item_id = nt02.item_id',
'      AND nt02.upc = :P35_BARCODE',
')',
'    SELECT NVL(discount_id, 0), NVL(MAX(discount_value), 0) AS max_discount_value',
'    INTO v_id, v_disc',
'    FROM discount_data',
'    GROUP BY discount_id',
'    ORDER BY discount_id;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_id := -1;',
'END;',
'',
'BEGIN',
'    SELECT seq_id ',
'      INTO v_seq',
'      FROM apex_collections',
'     WHERE collection_name = ''AVAILABLE_DISCOUNTS''',
'       AND n001 = NVL(v_id, 0)',
'       AND c001 IN (''A'', ''B'', ''C'', ''D'');',
'',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq := 0; ',
'END;',
'',
'BEGIN',
'    SELECT seq_id INTO v_seq_id',
'    FROM apex_collections',
'    WHERE collection_name = ''DISCOUNT_A''',
'      AND c006 = :P35_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq_id := 0;',
'END;',
'',
'BEGIN',
'    SELECT a.item_num INTO v_bc',
'    FROM NIT001 a, NIT002 b',
'    WHERE a.item_id = b.item_id',
'      AND b.upc = :P35_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_bc := NULL;',
'        END;',
'        ',
'     IF v_seq BETWEEN 1 AND 4 AND v_bc IS NOT NULL AND v_seq_id != 0 THEN',
'        apex_collection.update_member_attribute(',
'            p_collection_name => CASE v_seq ',
'                                  WHEN 1 THEN ''DISCOUNT_A'' ',
'                                  WHEN 2 THEN ''DISCOUNT_B'' ',
'                                  WHEN 3 THEN ''DISCOUNT_C'' ',
'                                  WHEN 4 THEN ''DISCOUNT_D'' ',
'                                 END,',
'            p_seq => v_seq_id,',
'            p_attr_number => 3,',
'            p_number_value => v_disc',
'        );',
'    END IF;',
'',
'END;',
''))
,p_attribute_02=>'P35_BARCODE,P35_CUSTOMER_FIELD'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_build_option_id=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50062915363231850)
,p_event_id=>wwv_flow_imp.id(49322839816115246)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_name=>'Discount B'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_disc NUMBER;',
'    v_seq_id NUMBER;',
'    v_seq NUMBER;',
'    v_id NUMBER := 0;',
'    v_bc VARCHAR(50);',
'BEGIN',
'BEGIN',
'    WITH discount_data AS (',
'    SELECT a.discount_id, a.discount_value',
'    FROM NPT028 A, NPT008 B, NPT032 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE a.discount_id = b.discount_id',
'      AND a.discount_id = c.discount_id',
'      AND d.customer_id = c.customer_id',
'      AND a.sic_id = e.sic_id',
'      AND e.item_id = f.item_id',
'      AND d.dba = :P35_CUSTOMER_FIELD',
'      AND b.date_to >= SYSDATE',
'      AND b.date_from <= SYSDATE',
'      AND f.upc = :P35_BARCODE',
'UNION ALL',
'  SELECT a.discount_id, a.discount_value',
'    FROM NPT029 A, NPT008 B, NPT032 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE a.discount_id = b.discount_id',
'      AND a.discount_id = c.discount_id',
'      AND d.customer_id = c.customer_id',
'      AND a.dept_id = e.dept_id',
'      AND e.item_id = f.item_id',
'      AND d.dba = :P35_CUSTOMER_FIELD',
'      AND b.date_to >= SYSDATE',
'      AND b.date_from <= SYSDATE',
'      AND f.upc = :P35_BARCODE',
'UNION ALL',
'    SELECT a.discount_id, a.discount_value',
'    FROM NPT030 A, NPT008 B, NPT032 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE a.discount_id = b.discount_id',
'      AND a.discount_id = c.discount_id',
'      AND d.customer_id = c.customer_id',
'      AND a.class_id = e.class_id',
'      AND e.item_id = f.item_id',
'      AND d.dba = :P35_CUSTOMER_FIELD',
'      AND b.date_to >= SYSDATE',
'      AND b.date_from <= SYSDATE',
'      AND f.upc = :P35_BARCODE',
'UNION ALL',
'    SELECT DISTINCT 0, np09.standard_discount_value',
'     FROM NPT009 np09, NIT001 nt01, NPT032 np032, NIT002 nt02',
'     WHERE np09.class_id = nt01.class_id',
'      AND np09.customer_id = np032.customer_id ',
'      AND np09.dba = :P35_CUSTOMER_FIELD',
'      AND nt01.item_id = nt02.item_id',
'      AND nt02.upc = :P35_BARCODE',
')',
'    SELECT NVL(discount_id, 0), NVL(MAX(discount_value), 0) AS max_discount_value',
'    INTO v_id, v_disc',
'    FROM discount_data',
'    GROUP BY discount_id',
'    ORDER BY discount_id',
'    OFFSET 1 ROWS',
'    FETCH NEXT 1 ROWS ONLY;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_id := -1;',
'END;',
'',
'BEGIN',
'    SELECT seq_id ',
'      INTO v_seq',
'      FROM apex_collections',
'     WHERE collection_name = ''AVAILABLE_DISCOUNTS''',
'       AND n001 = NVL(v_id, 0)',
'       AND c001 IN (''A'', ''B'', ''C'', ''D'');',
'',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq := 0; ',
'END;',
'',
'BEGIN',
'    SELECT seq_id INTO v_seq_id',
'    FROM apex_collections',
'    WHERE collection_name = ''DISCOUNT_B''',
'      AND c006 = :P35_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq_id := 0;',
'END;',
'',
'BEGIN',
'    SELECT a.item_num INTO v_bc',
'    FROM NIT001 a, NIT002 b',
'    WHERE a.item_id = b.item_id',
'      AND b.upc = :P35_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_bc := NULL;',
'        END;',
'        ',
'     IF v_seq BETWEEN 1 AND 4 AND v_bc IS NOT NULL AND v_seq_id != 0 THEN',
'        apex_collection.update_member_attribute(',
'            p_collection_name => CASE v_seq ',
'                                  WHEN 1 THEN ''DISCOUNT_A'' ',
'                                  WHEN 2 THEN ''DISCOUNT_B'' ',
'                                  WHEN 3 THEN ''DISCOUNT_C'' ',
'                                  WHEN 4 THEN ''DISCOUNT_D'' ',
'                                 END,',
'            p_seq => v_seq_id,',
'            p_attr_number => 3,',
'            p_number_value => v_disc',
'        );',
'    END IF;',
'',
'END;',
''))
,p_attribute_02=>'P35_BARCODE,P35_CUSTOMER_FIELD'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_build_option_id=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50519114604141301)
,p_event_id=>wwv_flow_imp.id(49322839816115246)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_name=>'Discount C'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_disc NUMBER;',
'    v_seq_id NUMBER;',
'    v_seq NUMBER;',
'    v_id NUMBER := 0;',
'    v_bc VARCHAR(50);',
'BEGIN',
'BEGIN',
'    WITH discount_data AS (',
'    SELECT a.discount_id, a.discount_value',
'    FROM NPT028 A, NPT008 B, NPT032 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE a.discount_id = b.discount_id',
'      AND a.discount_id = c.discount_id',
'      AND d.customer_id = c.customer_id',
'      AND a.sic_id = e.sic_id',
'      AND e.item_id = f.item_id',
'      AND d.dba = :P35_CUSTOMER_FIELD',
'      AND b.date_to >= SYSDATE',
'      AND b.date_from <= SYSDATE',
'      AND f.upc = :P35_BARCODE',
'UNION ALL',
'  SELECT a.discount_id, a.discount_value',
'    FROM NPT029 A, NPT008 B, NPT032 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE a.discount_id = b.discount_id',
'      AND a.discount_id = c.discount_id',
'      AND d.customer_id = c.customer_id',
'      AND a.dept_id = e.dept_id',
'      AND e.item_id = f.item_id',
'      AND d.dba = :P35_CUSTOMER_FIELD',
'      AND b.date_to >= SYSDATE',
'      AND b.date_from <= SYSDATE',
'      AND f.upc = :P35_BARCODE',
'UNION ALL',
'    SELECT a.discount_id, a.discount_value',
'    FROM NPT030 A, NPT008 B, NPT032 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE a.discount_id = b.discount_id',
'      AND a.discount_id = c.discount_id',
'      AND d.customer_id = c.customer_id',
'      AND a.class_id = e.class_id',
'      AND e.item_id = f.item_id',
'      AND d.dba = :P35_CUSTOMER_FIELD',
'      AND b.date_to >= SYSDATE',
'      AND b.date_from <= SYSDATE',
'      AND f.upc = :P35_BARCODE',
'UNION ALL',
'    SELECT DISTINCT 0, np09.standard_discount_value',
'     FROM NPT009 np09, NIT001 nt01, NPT032 np032, NIT002 nt02',
'     WHERE np09.class_id = nt01.class_id',
'      AND np09.customer_id = np032.customer_id ',
'      AND np09.dba = :P35_CUSTOMER_FIELD',
'      AND nt01.item_id = nt02.item_id',
'      AND nt02.upc = :P35_BARCODE',
')',
'    SELECT NVL(discount_id, 0), NVL(MAX(discount_value), 0) AS max_discount_value',
'    INTO v_id, v_disc',
'    FROM discount_data',
'    GROUP BY discount_id',
'    ORDER BY discount_id',
'    OFFSET 2 ROWS',
'    FETCH NEXT 1 ROWS ONLY;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_id := -1;',
'END;',
'',
'BEGIN',
'    SELECT seq_id ',
'      INTO v_seq',
'      FROM apex_collections',
'     WHERE collection_name = ''AVAILABLE_DISCOUNTS''',
'       AND n001 = NVL(v_id, 0)',
'       AND c001 IN (''A'', ''B'', ''C'', ''D'');',
'',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq := 0; ',
'END;',
'',
'BEGIN',
'    SELECT seq_id INTO v_seq_id',
'    FROM apex_collections',
'    WHERE collection_name = ''DISCOUNT_C''',
'      AND c006 = :P35_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq_id := 0;',
'END;',
'',
'BEGIN',
'    SELECT a.item_num INTO v_bc',
'    FROM NIT001 a, NIT002 b',
'    WHERE a.item_id = b.item_id',
'      AND b.upc = :P35_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_bc := NULL;',
'        END;',
'        ',
'     IF v_seq BETWEEN 1 AND 4 AND v_bc IS NOT NULL AND v_seq_id != 0 THEN',
'        apex_collection.update_member_attribute(',
'            p_collection_name => CASE v_seq ',
'                                  WHEN 1 THEN ''DISCOUNT_A'' ',
'                                  WHEN 2 THEN ''DISCOUNT_B'' ',
'                                  WHEN 3 THEN ''DISCOUNT_C'' ',
'                                  WHEN 4 THEN ''DISCOUNT_D'' ',
'                                 END,',
'            p_seq => v_seq_id,',
'            p_attr_number => 3,',
'            p_number_value => v_disc',
'        );',
'    END IF;',
'',
'END;',
''))
,p_attribute_02=>'P35_BARCODE,P35_CUSTOMER_FIELD'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_build_option_id=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50519247551141302)
,p_event_id=>wwv_flow_imp.id(49322839816115246)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_name=>'Discount D'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_disc NUMBER;',
'    v_seq_id NUMBER;',
'    v_seq NUMBER;',
'    v_id NUMBER := 0;',
'    v_bc VARCHAR(50);',
'BEGIN',
'BEGIN',
'    WITH discount_data AS (',
'    SELECT a.discount_id, a.discount_value',
'    FROM NPT028 A, NPT008 B, NPT032 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE a.discount_id = b.discount_id',
'      AND a.discount_id = c.discount_id',
'      AND d.customer_id = c.customer_id',
'      AND a.sic_id = e.sic_id',
'      AND e.item_id = f.item_id',
'      AND d.dba = :P35_CUSTOMER_FIELD',
'      AND b.date_to >= SYSDATE',
'      AND b.date_from <= SYSDATE',
'      AND f.upc = :P35_BARCODE',
'UNION ALL',
'  SELECT a.discount_id, a.discount_value',
'    FROM NPT029 A, NPT008 B, NPT032 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE a.discount_id = b.discount_id',
'      AND a.discount_id = c.discount_id',
'      AND d.customer_id = c.customer_id',
'      AND a.dept_id = e.dept_id',
'      AND e.item_id = f.item_id',
'      AND d.dba = :P35_CUSTOMER_FIELD',
'      AND b.date_to >= SYSDATE',
'      AND b.date_from <= SYSDATE',
'      AND f.upc = :P35_BARCODE',
'UNION ALL',
'    SELECT a.discount_id, a.discount_value',
'    FROM NPT030 A, NPT008 B, NPT032 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE a.discount_id = b.discount_id',
'      AND a.discount_id = c.discount_id',
'      AND d.customer_id = c.customer_id',
'      AND a.class_id = e.class_id',
'      AND e.item_id = f.item_id',
'      AND d.dba = :P35_CUSTOMER_FIELD',
'      AND b.date_to >= SYSDATE',
'      AND b.date_from <= SYSDATE',
'      AND f.upc = :P35_BARCODE',
'UNION ALL',
'    SELECT DISTINCT 0, np09.standard_discount_value',
'     FROM NPT009 np09, NIT001 nt01, NPT032 np032, NIT002 nt02',
'     WHERE np09.class_id = nt01.class_id',
'      AND np09.customer_id = np032.customer_id ',
'      AND np09.dba = :P35_CUSTOMER_FIELD',
'      AND nt01.item_id = nt02.item_id',
'      AND nt02.upc = :P35_BARCODE',
')',
'    SELECT NVL(discount_id, 0), NVL(MAX(discount_value), 0) AS max_discount_value',
'    INTO v_id, v_disc',
'    FROM discount_data',
'    GROUP BY discount_id',
'    ORDER BY discount_id',
'    OFFSET 3 ROWS',
'    FETCH NEXT 1 ROWS ONLY;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_id := -1;',
'END;',
'',
'BEGIN',
'    SELECT seq_id ',
'      INTO v_seq',
'      FROM apex_collections',
'     WHERE collection_name = ''AVAILABLE_DISCOUNTS''',
'       AND n001 = NVL(v_id, 0)',
'       AND c001 IN (''A'', ''B'', ''C'', ''D'');',
'',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq := 0; ',
'END;',
'',
'BEGIN',
'    SELECT seq_id INTO v_seq_id',
'    FROM apex_collections',
'    WHERE collection_name = ''DISCOUNT_D''',
'      AND c006 = :P35_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq_id := 0;',
'END;',
'',
'BEGIN',
'    SELECT a.item_num INTO v_bc',
'    FROM NIT001 a, NIT002 b',
'    WHERE a.item_id = b.item_id',
'      AND b.upc = :P35_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_bc := NULL;',
'        END;',
'        ',
'     IF v_seq BETWEEN 1 AND 4 AND v_bc IS NOT NULL AND v_seq_id != 0 THEN',
'        apex_collection.update_member_attribute(',
'            p_collection_name => CASE v_seq ',
'                                  WHEN 1 THEN ''DISCOUNT_A'' ',
'                                  WHEN 2 THEN ''DISCOUNT_B'' ',
'                                  WHEN 3 THEN ''DISCOUNT_C'' ',
'                                  WHEN 4 THEN ''DISCOUNT_D'' ',
'                                 END,',
'            p_seq => v_seq_id,',
'            p_attr_number => 3,',
'            p_number_value => v_disc',
'        );',
'    END IF;',
'',
'END;',
''))
,p_attribute_02=>'P35_BARCODE,P35_CUSTOMER_FIELD'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_build_option_id=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49323063083115248)
,p_event_id=>wwv_flow_imp.id(49322839816115246)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_name=>'Discounted Price A'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_dc NUMBER;',
'    v_sid NUMBER;',
'    v_seq NUMBER;',
'    v_id NUMBER;',
'    v_bc VARCHAR(50);',
'    v_qty NUMBER;',
'BEGIN',
'BEGIN',
'    WITH discount_data AS (',
'    SELECT a.discount_id AS discount_id, NVL(CASE WHEN c.type = ''Percent'' THEN f.price * (a.discount_value/100) WHEN c.type = ''Fixed'' THEN a.discount_value ELSE f.price END, 0) AS discounted_price',
'     FROM NPT028 A, NPT032 B, NPT008 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE d.dba = :P35_CUSTOMER_FIELD',
'      AND c.discount_id = a.discount_id',
'      AND a.discount_id = b.discount_id',
'      AND d.customer_id = b.customer_id',
'      AND a.sic_id = e.sic_id',
'      AND e.item_id = f.item_id',
'      AND c.date_to >= SYSDATE',
'      AND c.date_from <= SYSDATE',
'      AND f.upc = :P35_BARCODE',
'UNION ALL',
'    SELECT a.discount_id AS discount_id, NVL(CASE WHEN c.type = ''Percent'' THEN f.price * (a.discount_value/100) WHEN c.type = ''Fixed'' THEN a.discount_value ELSE f.price END, 0) AS discounted_price',
'     FROM NPT029 A, NPT032 B, NPT008 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE d.dba = :P35_CUSTOMER_FIELD',
'      AND c.discount_id = a.discount_id',
'      AND a.discount_id = b.discount_id',
'      AND d.customer_id = b.customer_id',
'      AND a.dept_id = e.dept_id',
'      AND e.item_id = f.item_id',
'      AND c.date_to >= SYSDATE',
'      AND c.date_from <= SYSDATE',
'      AND f.upc = :P35_BARCODE',
'UNION ALL',
'    SELECT a.discount_id AS discount_id, NVL(CASE WHEN c.type = ''Percent'' THEN f.price * (a.discount_value/100) WHEN c.type = ''Fixed'' THEN a.discount_value ELSE f.price END, 0) AS discounted_price',
'     FROM NPT030 A, NPT032 B, NPT008 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE d.dba = :P35_CUSTOMER_FIELD',
'      AND c.discount_id = a.discount_id',
'      AND a.discount_id = b.discount_id',
'      AND d.customer_id = b.customer_id',
'      AND a.class_id = e.class_id',
'      AND e.item_id = f.item_id',
'      AND c.date_to >= SYSDATE',
'      AND c.date_from <= SYSDATE',
'      AND f.upc = :P35_BARCODE',
'UNION ALL',
'     SELECT DISTINCT 0 AS discount_id, NVL(d.price * (a.standard_discount_value / 100), 0) AS discounted_price',
'      FROM NPT009 A, NPT032 B, NIT001 C, NIT002 D',
'     WHERE a.dba = :P35_CUSTOMER_FIELD',
'       AND d.upc = :P35_BARCODE',
'       AND a.customer_id = b.customer_id',
'       AND a.class_id = c.class_id',
'       AND d.item_id = c.item_id',
')',
'    SELECT NVL(discount_id, 0), NVL(MAX(discounted_price), 0) AS discounted_price',
'      INTO v_id, v_dc',
'      FROM discount_data',
'  GROUP BY discount_id',
'  ORDER BY discount_id',
'  OFFSET 0 ROWS',
'    FETCH NEXT 1 ROWS ONLY;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_id := -1;',
'END;',
'',
'BEGIN',
'    SELECT seq_id ',
'      INTO v_seq',
'      FROM apex_collections',
'     WHERE collection_name = ''AVAILABLE_DISCOUNTS''',
'       AND n001 = NVL(v_id, 0)',
'       AND c001 IN (''A'', ''B'', ''C'', ''D'');',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq := 0; ',
'END;',
'',
'BEGIN',
'    SELECT seq_id, n001 INTO v_sid, v_qty',
'    FROM apex_collections',
'    WHERE collection_name = ''DISCOUNT_A''',
'      AND c006 = :P35_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_sid := 0;',
'END;',
'',
'BEGIN',
'    SELECT a.item_num INTO v_bc',
'    FROM NIT001 a, NIT002 b',
'    WHERE a.item_id = b.item_id',
'      AND b.upc = :P35_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_bc := NULL;',
'        END;',
'        ',
'     IF v_seq BETWEEN 1 AND 4 AND v_bc IS NOT NULL AND v_sid != 0 THEN',
'        apex_collection.update_member_attribute(',
'            p_collection_name => CASE v_seq ',
'                                  WHEN 1 THEN ''DISCOUNT_A'' ',
'                                  WHEN 2 THEN ''DISCOUNT_B'' ',
'                                  WHEN 3 THEN ''DISCOUNT_C'' ',
'                                  WHEN 4 THEN ''DISCOUNT_D'' ',
'                                 END,',
'            p_seq => v_sid,',
'            p_attr_number => 4,',
'            p_number_value => v_dc',
'        );',
'    END IF;',
'',
'END;'))
,p_attribute_02=>'P35_BARCODE,P35_CUSTOMER_FIELD'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_build_option_id=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52607586457376001)
,p_event_id=>wwv_flow_imp.id(49322839816115246)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'N'
,p_name=>'Discounted Price B'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_dc NUMBER;',
'    v_sid NUMBER;',
'    v_seq NUMBER;',
'    v_id NUMBER;',
'    v_bc VARCHAR(50);',
'    v_qty NUMBER;',
'BEGIN',
'BEGIN',
'    WITH discount_data AS (',
'    SELECT a.discount_id AS discount_id, NVL(CASE WHEN c.type = ''Percent'' THEN f.price * (a.discount_value/100) WHEN c.type = ''Fixed'' THEN a.discount_value ELSE f.price END, 0) AS discounted_price',
'     FROM NPT028 A, NPT032 B, NPT008 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE d.dba = :P35_CUSTOMER_FIELD',
'      AND c.discount_id = a.discount_id',
'      AND a.discount_id = b.discount_id',
'      AND d.customer_id = b.customer_id',
'      AND a.sic_id = e.sic_id',
'      AND e.item_id = f.item_id',
'      AND c.date_to >= SYSDATE',
'      AND c.date_from <= SYSDATE',
'      AND f.upc = :P35_BARCODE',
'UNION ALL',
'    SELECT a.discount_id AS discount_id, NVL(CASE WHEN c.type = ''Percent'' THEN f.price * (a.discount_value/100) WHEN c.type = ''Fixed'' THEN a.discount_value ELSE f.price END, 0) AS discounted_price',
'     FROM NPT029 A, NPT032 B, NPT008 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE d.dba = :P35_CUSTOMER_FIELD',
'      AND c.discount_id = a.discount_id',
'      AND a.discount_id = b.discount_id',
'      AND d.customer_id = b.customer_id',
'      AND a.dept_id = e.dept_id',
'      AND e.item_id = f.item_id',
'      AND c.date_to >= SYSDATE',
'      AND c.date_from <= SYSDATE',
'      AND f.upc = :P35_BARCODE',
'UNION ALL',
'    SELECT a.discount_id AS discount_id, NVL(CASE WHEN c.type = ''Percent'' THEN f.price * (a.discount_value/100) WHEN c.type = ''Fixed'' THEN a.discount_value ELSE f.price END, 0) AS discounted_price',
'     FROM NPT030 A, NPT032 B, NPT008 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE d.dba = :P35_CUSTOMER_FIELD',
'      AND c.discount_id = a.discount_id',
'      AND a.discount_id = b.discount_id',
'      AND d.customer_id = b.customer_id',
'      AND a.class_id = e.class_id',
'      AND e.item_id = f.item_id',
'      AND c.date_to >= SYSDATE',
'      AND c.date_from <= SYSDATE',
'      AND f.upc = :P35_BARCODE',
'UNION ALL',
'     SELECT DISTINCT 0 AS discount_id, NVL(d.price * (a.standard_discount_value / 100), 0) AS discounted_price',
'      FROM NPT009 A, NPT032 B, NIT001 C, NIT002 D',
'     WHERE a.dba = :P35_CUSTOMER_FIELD',
'       AND d.upc = :P35_BARCODE',
'       AND a.customer_id = b.customer_id',
'       AND a.class_id = c.class_id',
'       AND d.item_id = c.item_id',
')',
'    SELECT NVL(discount_id, 0), NVL(MAX(discounted_price), 0) AS discounted_price',
'      INTO v_id, v_dc',
'      FROM discount_data',
'  GROUP BY discount_id',
'  ORDER BY discount_id',
'  OFFSET 1 ROWS',
'    FETCH NEXT 1 ROWS ONLY;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_id := -1;',
'END;',
'',
'BEGIN',
'    SELECT seq_id ',
'      INTO v_seq',
'      FROM apex_collections',
'     WHERE collection_name = ''AVAILABLE_DISCOUNTS''',
'       AND n001 = NVL(v_id, 0)',
'       AND c001 IN (''A'', ''B'', ''C'', ''D'');',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq := 0; ',
'END;',
'',
'BEGIN',
'    SELECT seq_id, n001 INTO v_sid, v_qty',
'    FROM apex_collections',
'    WHERE collection_name = ''DISCOUNT_B''',
'      AND c006 = :P35_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_sid := 0;',
'END;',
'',
'BEGIN',
'    SELECT a.item_num INTO v_bc',
'    FROM NIT001 a, NIT002 b',
'    WHERE a.item_id = b.item_id',
'      AND b.upc = :P35_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_bc := NULL;',
'        END;',
'        ',
'     IF v_seq BETWEEN 1 AND 4 AND v_bc IS NOT NULL AND v_sid != 0 THEN',
'        apex_collection.update_member_attribute(',
'            p_collection_name => CASE v_seq ',
'                                  WHEN 1 THEN ''DISCOUNT_A'' ',
'                                  WHEN 2 THEN ''DISCOUNT_B'' ',
'                                  WHEN 3 THEN ''DISCOUNT_C'' ',
'                                  WHEN 4 THEN ''DISCOUNT_D'' ',
'                                 END,',
'            p_seq => v_sid,',
'            p_attr_number => 4,',
'            p_number_value => v_dc',
'        );',
'    END IF;',
'',
'END;'))
,p_attribute_02=>'P35_BARCODE,P35_CUSTOMER_FIELD'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_build_option_id=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52607650521376002)
,p_event_id=>wwv_flow_imp.id(49322839816115246)
,p_event_result=>'TRUE'
,p_action_sequence=>150
,p_execute_on_page_init=>'N'
,p_name=>'Discounted Price C'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_dc NUMBER;',
'    v_sid NUMBER;',
'    v_seq NUMBER;',
'    v_id NUMBER;',
'    v_bc VARCHAR(50);',
'    v_qty NUMBER;',
'BEGIN',
'BEGIN',
'    WITH discount_data AS (',
'    SELECT a.discount_id AS discount_id, NVL(CASE WHEN c.type = ''Percent'' THEN f.price * (a.discount_value/100) WHEN c.type = ''Fixed'' THEN a.discount_value ELSE f.price END, 0) AS discounted_price',
'     FROM NPT028 A, NPT032 B, NPT008 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE d.dba = :P35_CUSTOMER_FIELD',
'      AND c.discount_id = a.discount_id',
'      AND a.discount_id = b.discount_id',
'      AND d.customer_id = b.customer_id',
'      AND a.sic_id = e.sic_id',
'      AND e.item_id = f.item_id',
'      AND c.date_to >= SYSDATE',
'      AND c.date_from <= SYSDATE',
'      AND f.upc = :P35_BARCODE',
'UNION ALL',
'    SELECT a.discount_id AS discount_id, NVL(CASE WHEN c.type = ''Percent'' THEN f.price * (a.discount_value/100) WHEN c.type = ''Fixed'' THEN a.discount_value ELSE f.price END, 0) AS discounted_price',
'     FROM NPT029 A, NPT032 B, NPT008 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE d.dba = :P35_CUSTOMER_FIELD',
'      AND c.discount_id = a.discount_id',
'      AND a.discount_id = b.discount_id',
'      AND d.customer_id = b.customer_id',
'      AND a.dept_id = e.dept_id',
'      AND e.item_id = f.item_id',
'      AND c.date_to >= SYSDATE',
'      AND c.date_from <= SYSDATE',
'      AND f.upc = :P35_BARCODE',
'UNION ALL',
'    SELECT a.discount_id AS discount_id, NVL(CASE WHEN c.type = ''Percent'' THEN f.price * (a.discount_value/100) WHEN c.type = ''Fixed'' THEN a.discount_value ELSE f.price END, 0) AS discounted_price',
'     FROM NPT030 A, NPT032 B, NPT008 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE d.dba = :P35_CUSTOMER_FIELD',
'      AND c.discount_id = a.discount_id',
'      AND a.discount_id = b.discount_id',
'      AND d.customer_id = b.customer_id',
'      AND a.class_id = e.class_id',
'      AND e.item_id = f.item_id',
'      AND c.date_to >= SYSDATE',
'      AND c.date_from <= SYSDATE',
'      AND f.upc = :P35_BARCODE',
'UNION ALL',
'     SELECT DISTINCT 0 AS discount_id, NVL(d.price * (a.standard_discount_value / 100), 0) AS discounted_price',
'      FROM NPT009 A, NPT032 B, NIT001 C, NIT002 D',
'     WHERE a.dba = :P35_CUSTOMER_FIELD',
'       AND d.upc = :P35_BARCODE',
'       AND a.customer_id = b.customer_id',
'       AND a.class_id = c.class_id',
'       AND d.item_id = c.item_id',
')',
'    SELECT NVL(discount_id, 0), NVL(MAX(discounted_price), 0) AS discounted_price',
'      INTO v_id, v_dc',
'      FROM discount_data',
'  GROUP BY discount_id',
'  ORDER BY discount_id',
'  OFFSET 2 ROWS',
'    FETCH NEXT 1 ROWS ONLY;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_id := -1;',
'END;',
'',
'BEGIN',
'    SELECT seq_id ',
'      INTO v_seq',
'      FROM apex_collections',
'     WHERE collection_name = ''AVAILABLE_DISCOUNTS''',
'       AND n001 = NVL(v_id, 0)',
'       AND c001 IN (''A'', ''B'', ''C'', ''D'');',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq := 0; ',
'END;',
'',
'BEGIN',
'    SELECT seq_id, n001 INTO v_sid, v_qty',
'    FROM apex_collections',
'    WHERE collection_name = ''DISCOUNT_C''',
'      AND c006 = :P35_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_sid := 0;',
'END;',
'',
'BEGIN',
'    SELECT a.item_num INTO v_bc',
'    FROM NIT001 a, NIT002 b',
'    WHERE a.item_id = b.item_id',
'      AND b.upc = :P35_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_bc := NULL;',
'        END;',
'        ',
'     IF v_seq BETWEEN 1 AND 4 AND v_bc IS NOT NULL AND v_sid != 0 THEN',
'        apex_collection.update_member_attribute(',
'            p_collection_name => CASE v_seq ',
'                                  WHEN 1 THEN ''DISCOUNT_A'' ',
'                                  WHEN 2 THEN ''DISCOUNT_B'' ',
'                                  WHEN 3 THEN ''DISCOUNT_C'' ',
'                                  WHEN 4 THEN ''DISCOUNT_D'' ',
'                                 END,',
'            p_seq => v_sid,',
'            p_attr_number => 4,',
'            p_number_value => v_dc',
'        );',
'    END IF;',
'',
'END;'))
,p_attribute_02=>'P35_BARCODE,P35_CUSTOMER_FIELD'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_build_option_id=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52607760301376003)
,p_event_id=>wwv_flow_imp.id(49322839816115246)
,p_event_result=>'TRUE'
,p_action_sequence=>170
,p_execute_on_page_init=>'N'
,p_name=>'Discounted Price D'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_dc NUMBER;',
'    v_sid NUMBER;',
'    v_seq NUMBER;',
'    v_id NUMBER;',
'    v_bc VARCHAR(50);',
'    v_qty NUMBER;',
'BEGIN',
'BEGIN',
'    WITH discount_data AS (',
'    SELECT a.discount_id AS discount_id, NVL(CASE WHEN c.type = ''Percent'' THEN f.price * (a.discount_value/100) WHEN c.type = ''Fixed'' THEN a.discount_value ELSE f.price END, 0) AS discounted_price',
'     FROM NPT028 A, NPT032 B, NPT008 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE d.dba = :P35_CUSTOMER_FIELD',
'      AND c.discount_id = a.discount_id',
'      AND a.discount_id = b.discount_id',
'      AND d.customer_id = b.customer_id',
'      AND a.sic_id = e.sic_id',
'      AND e.item_id = f.item_id',
'      AND c.date_to >= SYSDATE',
'      AND c.date_from <= SYSDATE',
'      AND f.upc = :P35_BARCODE',
'UNION ALL',
'    SELECT a.discount_id AS discount_id, NVL(CASE WHEN c.type = ''Percent'' THEN f.price * (a.discount_value/100) WHEN c.type = ''Fixed'' THEN a.discount_value ELSE f.price END, 0) AS discounted_price',
'     FROM NPT029 A, NPT032 B, NPT008 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE d.dba = :P35_CUSTOMER_FIELD',
'      AND c.discount_id = a.discount_id',
'      AND a.discount_id = b.discount_id',
'      AND d.customer_id = b.customer_id',
'      AND a.dept_id = e.dept_id',
'      AND e.item_id = f.item_id',
'      AND c.date_to >= SYSDATE',
'      AND c.date_from <= SYSDATE',
'      AND f.upc = :P35_BARCODE',
'UNION ALL',
'    SELECT a.discount_id AS discount_id, NVL(CASE WHEN c.type = ''Percent'' THEN f.price * (a.discount_value/100) WHEN c.type = ''Fixed'' THEN a.discount_value ELSE f.price END, 0) AS discounted_price',
'     FROM NPT030 A, NPT032 B, NPT008 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE d.dba = :P35_CUSTOMER_FIELD',
'      AND c.discount_id = a.discount_id',
'      AND a.discount_id = b.discount_id',
'      AND d.customer_id = b.customer_id',
'      AND a.class_id = e.class_id',
'      AND e.item_id = f.item_id',
'      AND c.date_to >= SYSDATE',
'      AND c.date_from <= SYSDATE',
'      AND f.upc = :P35_BARCODE',
'UNION ALL',
'     SELECT DISTINCT 0 AS discount_id, NVL(d.price * (a.standard_discount_value / 100), 0) AS discounted_price',
'      FROM NPT009 A, NPT032 B, NIT001 C, NIT002 D',
'     WHERE a.dba = :P35_CUSTOMER_FIELD',
'       AND d.upc = :P35_BARCODE',
'       AND a.customer_id = b.customer_id',
'       AND a.class_id = c.class_id',
'       AND d.item_id = c.item_id',
')',
'    SELECT NVL(discount_id, 0), NVL(MAX(discounted_price), 0) AS discounted_price',
'      INTO v_id, v_dc',
'      FROM discount_data',
'  GROUP BY discount_id',
'  ORDER BY discount_id',
'  OFFSET 3 ROWS',
'    FETCH NEXT 1 ROWS ONLY;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_id := -1;',
'END;',
'',
'BEGIN',
'    SELECT seq_id ',
'      INTO v_seq',
'      FROM apex_collections',
'     WHERE collection_name = ''AVAILABLE_DISCOUNTS''',
'       AND n001 = NVL(v_id, 0)',
'       AND c001 IN (''A'', ''B'', ''C'', ''D'');',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq := 0; ',
'END;',
'',
'BEGIN',
'    SELECT seq_id, n001 INTO v_sid, v_qty',
'    FROM apex_collections',
'    WHERE collection_name = ''DISCOUNT_D''',
'      AND c006 = :P35_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_sid := 0;',
'END;',
'',
'BEGIN',
'    SELECT a.item_num INTO v_bc',
'    FROM NIT001 a, NIT002 b',
'    WHERE a.item_id = b.item_id',
'      AND b.upc = :P35_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_bc := NULL;',
'        END;',
'        ',
'     IF v_seq BETWEEN 1 AND 4 AND v_bc IS NOT NULL AND v_sid != 0 THEN',
'        apex_collection.update_member_attribute(',
'            p_collection_name => CASE v_seq ',
'                                  WHEN 1 THEN ''DISCOUNT_A'' ',
'                                  WHEN 2 THEN ''DISCOUNT_B'' ',
'                                  WHEN 3 THEN ''DISCOUNT_C'' ',
'                                  WHEN 4 THEN ''DISCOUNT_D'' ',
'                                 END,',
'            p_seq => v_sid,',
'            p_attr_number => 4,',
'            p_number_value => v_dc',
'        );',
'    END IF;',
'',
'END;'))
,p_attribute_02=>'P35_BARCODE,P35_CUSTOMER_FIELD'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_build_option_id=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52611936802376045)
,p_event_id=>wwv_flow_imp.id(49322839816115246)
,p_event_result=>'TRUE'
,p_action_sequence=>190
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(49319882178115216)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72262611559359907)
,p_event_id=>wwv_flow_imp.id(49322839816115246)
,p_event_result=>'TRUE'
,p_action_sequence=>200
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(() => {',
'  $(document).ready(function() {',
'        var gridView = apex.region("orders").widget().interactiveGrid("getViews").grid;',
'        var model = gridView.model;',
'        if (model.getTotalRecords() > 0) {',
'            var editIndex = model.getTotalRecords() - 1;',
'            var recordAt = model.recordAt(editIndex); ',
'            gridView.view$.grid("gotoCell", recordAt[0], "QTY"); ',
'            gridView.view$.find(".a-GV-cell.is-focused").trigger("dbclick"); ',
'        }',
'  });',
'}, 1000);'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49322703976115245)
,p_event_id=>wwv_flow_imp.id(49322839816115246)
,p_event_result=>'TRUE'
,p_action_sequence=>210
,p_execute_on_page_init=>'Y'
,p_name=>'Sub-Total'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P35_SUB'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH COLLECTION_SUMS AS (',
'    SELECT ''DISCOUNT_A'' AS collection_name, SUM(n002 * n001) AS SUB_TOTAL',
'    FROM apex_collections',
'    WHERE collection_name = ''DISCOUNT_A''',
' ',
'    UNION ALL',
' ',
'    SELECT ''DISCOUNT_B'' AS collection_name, SUM(n002 * n001) AS SUB_TOTAL',
'    FROM apex_collections',
'    WHERE collection_name = ''DISCOUNT_B''',
' ',
'    UNION ALL',
' ',
'    SELECT ''DISCOUNT_C'' AS collection_name, SUM(n002 * n001) AS SUB_TOTAL',
'    FROM apex_collections',
'    WHERE collection_name = ''DISCOUNT_C''',
' ',
'    UNION ALL',
' ',
'    SELECT ''DISCOUNT_D'' AS collection_name, SUM(n002 * n001) AS SUB_TOTAL',
'    FROM apex_collections',
'    WHERE collection_name = ''DISCOUNT_D''',
'),',
'LOWEST_SUM AS (',
'    SELECT collection_name',
'    FROM COLLECTION_SUMS',
'    WHERE SUB_TOTAL = (SELECT MIN(SUB_TOTAL) FROM COLLECTION_SUMS)',
'    FETCH FIRST 1 ROW ONLY',
')',
'SELECT TO_CHAR(SUM(n002 * n001), ''FM999G999G999G999D00'' ) ',
'FROM apex_collections',
'WHERE collection_name IN (SELECT collection_name FROM LOWEST_SUM);'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(62595539777570816)
,p_event_id=>wwv_flow_imp.id(49322839816115246)
,p_event_result=>'TRUE'
,p_action_sequence=>220
,p_execute_on_page_init=>'Y'
,p_name=>'Discount'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P35_DISCOUNT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH COLLECTION_SUMS AS (',
'    SELECT ''DISCOUNT_A'' AS collection_name, SUM(n004 * n001) AS TOTAL_DISCOUNT',
'    FROM apex_collections',
'    WHERE collection_name = ''DISCOUNT_A''',
' ',
'    UNION ALL',
' ',
'    SELECT ''DISCOUNT_B'' AS collection_name, SUM(n004 * n001) AS TOTAL_DISCOUNT',
'    FROM apex_collections',
'    WHERE collection_name = ''DISCOUNT_B''',
' ',
'    UNION ALL',
' ',
'    SELECT ''DISCOUNT_C'' AS collection_name, SUM(n004 * n001) AS TOTAL_DISCOUNT',
'    FROM apex_collections',
'    WHERE collection_name = ''DISCOUNT_C''',
' ',
'    UNION ALL',
' ',
'    SELECT ''DISCOUNT_D'' AS collection_name, SUM(n004 * n001) AS TOTAL_DISCOUNT',
'    FROM apex_collections',
'    WHERE collection_name = ''DISCOUNT_D''',
'),',
'LOWEST_SUM AS (',
'    SELECT collection_name',
'    FROM COLLECTION_SUMS',
'    WHERE TOTAL_DISCOUNT = (SELECT MAX(TOTAL_DISCOUNT) FROM COLLECTION_SUMS)',
'    FETCH FIRST 1 ROW ONLY',
')',
'SELECT TO_CHAR(SUM(n004 * n001), ''FM999G999G999G990D00'' ) ',
'FROM apex_collections',
'WHERE collection_name IN (SELECT collection_name FROM LOWEST_SUM);'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(62595652293570817)
,p_event_id=>wwv_flow_imp.id(49322839816115246)
,p_event_result=>'TRUE'
,p_action_sequence=>230
,p_execute_on_page_init=>'Y'
,p_name=>'Total'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P35_TOTAL'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'TO_CHAR(NVL(TO_NUMBER(REPLACE(REPLACE(NVL(:P35_SUB, 0), ''$'', ''''), '','', '''')) - TO_NUMBER(REPLACE(REPLACE(NVL(:P35_DISCOUNT, 0), ''$'', ''''), '','', '''')), 0), ''FM999G999G999G990D00'' ) '
,p_attribute_07=>'P35_SUB,P35_DISCOUNT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(57880723512782418)
,p_event_id=>wwv_flow_imp.id(49322839816115246)
,p_event_result=>'TRUE'
,p_action_sequence=>240
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P35_SUB,P35_DISCOUNT,P35_TOTAL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72266856243359949)
,p_event_id=>wwv_flow_imp.id(49322839816115246)
,p_event_result=>'TRUE'
,p_action_sequence=>250
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var ig = apex.region("orders").widget().interactiveGrid("getViews","grid");',
'ig.view$.grid("gotoCell", $("#P35_SELECTED_INDEX").val(), "QTY");',
'ig.view$.find(".a-GV-cell.is-focused").trigger("dblclick");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(53708543899876735)
,p_name=>'Get typed value'
,p_event_sequence=>110
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(49319882178115216)
,p_triggering_element=>'ITEM_NO'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.key?.toLowerCase() === "enter"'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53708773700876737)
,p_event_id=>wwv_flow_imp.id(53708543899876735)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'QTY'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(".ui-dialog-comboSelect").hide();',
'',
'let upcSearch = this.triggeringElement.value;',
'apex.item("P35_SEARCHED_UPC").setValue(upcSearch);',
'',
'setTimeout(() => {',
'    var gridView = apex.region("orders").widget().interactiveGrid("getViews").grid;',
'    var model = gridView.model;',
'    apex.region("orders").call("getActions").set("edit", false);',
'    model.clearChanges();',
'',
'    $.event.trigger(''Search'');',
'}, 500)'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(57881509841782426)
,p_event_id=>wwv_flow_imp.id(53708543899876735)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>'Set UPC Value'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P35_UPC_SEARCH'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT b.upc',
'  FROM NIT001 a, NIT002 b, NIM026 c, NIM022 d',
' WHERE a.item_id = b.item_id',
'   AND b.uom_id = c.uom_id',
'   AND a.brand_id = d.brand_id',
'   AND a.item_num || '' - '' || UPPER(c.uom_code) = :P35_SEARCHED_UPC',
'',
'UNION ALL',
'',
'SELECT b.upc',
'  FROM NIT001 a, NIT002 b, NIM026 c, NIM022 d',
' WHERE a.item_id = b.item_id',
'   AND b.uom_id = c.uom_id',
'   AND a.brand_id = d.brand_id',
'   AND b.upc = :P35_SEARCHED_UPC'))
,p_attribute_07=>'P35_SEARCHED_UPC'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(57881877917782429)
,p_event_id=>wwv_flow_imp.id(53708543899876735)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P35_UPC_SEARCH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(23638421332246345)
,p_name=>'Add Payment Collection'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11450069922525328)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23638551484246346)
,p_event_id=>wwv_flow_imp.id(23638421332246345)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Add Collection'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    apex_collection.add_member(',
'                p_collection_name => ''ORDERS'',',
'                p_n001 => TO_CHAR(TO_NUMBER(:P35_SUB, ''FM999999999.00'')),',
'                p_n002 => TO_CHAR(TO_NUMBER(:P35_DISCOUNT, ''FM999999999.00'')),',
'                p_n003 => TO_CHAR(TO_NUMBER(:P35_TOTAL, ''FM999999999.00'')),',
'                p_n004 => :P35_INVOICE_NO',
'                );',
'END;'))
,p_attribute_02=>'P35_TOTAL,P35_INVOICE_NO'
,p_attribute_03=>'P35_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29425211050978933)
,p_event_id=>wwv_flow_imp.id(23638421332246345)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'Send Total Value'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P35_URL := apex_page.get_url(',
'       p_page   => 41,',
'       p_items  => ''P41_TOTAL'',',
'       p_values =>  TO_CHAR(',
'                ROUND(TO_NUMBER(REPLACE(REPLACE(:P35_TOTAL, ''$'', ''''), '','', '''')), 2), ''FM999999990.00'')',
'     );',
'END;'))
,p_attribute_02=>'P35_TOTAL'
,p_attribute_03=>'P35_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29425303935978934)
,p_event_id=>wwv_flow_imp.id(23638421332246345)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P35_URL");',
'apex.navigation.redirect(url);'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(35547306039882704)
,p_event_id=>wwv_flow_imp.id(23638421332246345)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>'Disable Key'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(document).off(''keydown.p35keyevents'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18259655158008524)
,p_name=>'Set Customer Value'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(9703759774553744)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18259726504008525)
,p_event_id=>wwv_flow_imp.id(18259655158008524)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P35_CUSTOMER_FIELD'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT c001 ',
'  FROM apex_collections ',
' WHERE collection_name = ''ORDERS''',
'   AND seq_id = (SELECT MAX(seq_id) ',
'                   FROM apex_collections',
'                  WHERE collection_name = ''ORDERS'')'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49322561783115243)
,p_event_id=>wwv_flow_imp.id(18259655158008524)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_count INTEGER := 0; ',
'    v_letter_index INTEGER := 1;',
'BEGIN',
'    SELECT COUNT(*)',
'    INTO v_count',
'    FROM NPT032 npt032, NPT008 npt008, NPT009 npt009',
'    WHERE npt032.customer_id = npt009.customer_id',
'      AND npt032.discount_id = npt008.discount_id',
'      AND npt009.dba = :P35_CUSTOMER_FIELD;',
'',
'    FOR r IN (',
'        SELECT npt032.discount_id',
'        FROM NPT032 npt032, NPT008 npt008, NPT009 npt009',
'        WHERE npt032.customer_id = npt009.customer_id',
'          AND npt032.discount_id = npt008.discount_id',
'          AND npt009.dba = :P35_CUSTOMER_FIELD',
'        ORDER BY npt032.discount_id',
'    ) LOOP',
'        APEX_COLLECTION.ADD_MEMBER(',
'            p_collection_name => ''AVAILABLE_DISCOUNTS'',',
'            p_n001 => r.discount_id,',
'            p_c001 => CHR(64 + v_letter_index) ',
'        );',
'        v_letter_index := v_letter_index + 1; ',
'    END LOOP;',
'',
'    FOR i IN 1..(4 - v_count) LOOP',
'        APEX_COLLECTION.ADD_MEMBER(',
'            p_collection_name => ''AVAILABLE_DISCOUNTS'',',
'            p_n001 => 0,',
'            p_c001 => CHR(64 + v_letter_index) ',
'        );',
'        v_letter_index := v_letter_index + 1; ',
'    END LOOP;',
'END;',
'',
'',
''))
,p_attribute_02=>'P35_CUSTOMER_FIELD'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18259823679008526)
,p_event_id=>wwv_flow_imp.id(18259655158008524)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P35_CUSTOMER_FIELD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(58900090355886017)
,p_name=>'Set QOH'
,p_event_sequence=>140
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(49319882178115216)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58904412685886037)
,p_event_id=>wwv_flow_imp.id(58900090355886017)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (this.data?.selectedRecords?.length > 0) {',
'    var selRec = this.data.selectedRecords;',
'    let itemIdSelected = selRec[0][1];',
'    let itemNoSelected = selRec[0][2];',
'    let priceSelected = selRec[0][6];',
'    let uomSelected = selRec[0][7];',
'    let index = selRec[0][0];',
'    let upcSelected = selRec[0][12];',
'    apex.item("P35_SELECTED_ITEM_NO").setValue(itemNoSelected);',
'    apex.item("P35_SELECTED_ITEM_ID").setValue(itemIdSelected);',
'    apex.item("P35_SELECTED_PRICE").setValue(priceSelected.replace(/[,]/g, ""));',
'    apex.item("P35_SELECTED_UOM").setValue(uomSelected);',
'    apex.item("P35_SELECTED_INDEX").setValue(index);',
'    apex.item("P35_SELECTED_UPC").setValue(upcSelected);',
'} else if (this.data?.record?.length > 0) {',
'    var rec = this.data.record;',
'    let itemNoSelected = rec[1];',
'    let itemIdSelected = rec[2];',
'    let priceSelected = rec[6];',
'    let uomSelected = rec[7];',
'    let index = rec[0][0];',
'    let upcSelected = selRec[0][12];',
'    apex.item("P35_SELECTED_ITEM_NO").setValue(itemNoSelected);',
'    apex.item("P35_SELECTED_ITEM_ID").setValue(itemIdSelected);',
'    apex.item("P35_SELECTED_PRICE").setValue(priceSelected.replace(/[,]/g, ""));',
'    apex.item("P35_SELECTED_UOM").setValue(uomSelected);',
'    apex.item("P35_SELECTED_INDEX").setValue(index);',
'    apex.item("P35_SELECTED_UPC").setValue(upcSelected);',
'}',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58903482589886035)
,p_event_id=>wwv_flow_imp.id(58900090355886017)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(() => {',
'    $.event.trigger(''GetLocWh'');',
'}, 500)'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27426637851078116)
,p_name=>'Focus Quantity'
,p_event_sequence=>160
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27426872438078118)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27426757229078117)
,p_event_id=>wwv_flow_imp.id(27426637851078116)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var ig = apex.region("orders").widget().interactiveGrid("getViews","grid");',
'ig.view$.grid("gotoCell", $("#P35_SELECTED_INDEX").val(), "QTY");',
'ig.view$.find(".a-GV-cell.is-focused").trigger("dblclick");'))
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'$("#P35_SELECTED_INDEX").val() > 0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(34404402717626239)
,p_name=>'Disable Key 1'
,p_event_sequence=>170
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(9703759774553744)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34404558437626240)
,p_event_id=>wwv_flow_imp.id(34404402717626239)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(document).off(''keydown.p35keyevents'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(34404660525626241)
,p_name=>'Enable Key'
,p_event_sequence=>180
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>wwv_flow_string.join(wwv_flow_t_varchar2(
'window',
''))
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34404717774626242)
,p_event_id=>wwv_flow_imp.id(34404660525626241)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mapP35Keys();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37205753444281222)
,p_name=>'Search Item'
,p_event_sequence=>200
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(35547921164882710)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37205844635281223)
,p_event_id=>wwv_flow_imp.id(37205753444281222)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let clickedF2 = ''yes'';',
'apex.item("P35_CLICKED_SEARCH_F2").setValue(clickedF2);'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53708286954876732)
,p_event_id=>wwv_flow_imp.id(37205753444281222)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.region("orders").widget().interactiveGrid("getActions").invoke("selection-add-row");',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(53709073532876740)
,p_name=>'Search'
,p_event_sequence=>220
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'Search'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53709181474876741)
,p_event_id=>wwv_flow_imp.id(53709073532876740)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Search by UPC'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_seq_id number;',
'    v_item_id number;',
'    v_item_num VARCHAR2(50);',
'    v_product_name varchar(35);    ',
'    v_price number;',
'    v_qty number;',
'    v_total number;',
'    v_brand varchar(10);',
'    v_uom varchar(10);',
'    v_upc VARCHAR(14);',
'    v_collections SYS.ODCIVARCHAR2LIST := SYS.ODCIVARCHAR2LIST(''DISCOUNT_A'', ''DISCOUNT_B'', ''DISCOUNT_C'', ''DISCOUNT_D'');',
'    v_collection_name VARCHAR2(15);',
'BEGIN',
'    BEGIN',
'    SELECT a.item_num, b.upc, a.item_id, a.item_desc, b.price, b.price total, UPPER(c.uom_code), d.brand_code INTO v_item_num, v_upc, v_item_id, v_product_name, v_price, v_total, v_uom, v_brand',
'          FROM NIT001 a, NIT002 b, NIM026 c, NIM022 d',
'         WHERE a.item_id = b.item_id',
'           AND b.uom_id = c.uom_id',
'           AND a.brand_id = d.brand_id',
'           AND b.upc = :P35_SEARCHED_UPC; ',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'            v_item_id := NULL;',
'    END;',
'',
'    FOR i IN 1 .. v_collections.COUNT LOOP',
'        v_collection_name := v_collections(i);',
'',
'        BEGIN',
'            SELECT seq_id, n001 INTO v_seq_id, v_qty',
'              FROM apex_collections',
'             WHERE collection_name = v_collection_name',
'               AND c006 = :P35_SEARCHED_UPC;',
'        EXCEPTION WHEN NO_DATA_FOUND THEN v_seq_id := 0; END;',
'',
'        IF v_seq_id != 0 THEN',
'            v_qty := v_qty + 1;',
'            v_total := v_price * v_qty;',
'',
'            apex_collection.update_member_attribute(',
'                p_collection_name => v_collection_name,',
'                p_seq => v_seq_id,',
'                p_attr_number => 1,',
'                p_number_value => v_qty',
'            );',
'',
'            apex_collection.update_member_attribute(',
'                p_collection_name => v_collection_name,',
'                p_seq => v_seq_id,',
'                p_attr_number => 5,',
'                p_number_value => v_total',
'            );',
'        ELSIF v_seq_id = 0 AND v_item_id IS NOT NULL THEN',
'            apex_collection.add_member(',
'                p_collection_name => v_collection_name,',
'                p_c001 => v_item_num,',
'                p_c002 => v_brand,',
'                p_c003 => v_product_name,',
'                p_n001 => 1,',
'                p_n002 => v_price,',
'                p_c004 => v_uom,',
'                p_n005 => v_total,',
'                p_c006 => :P35_SEARCHED_UPC,',
'                p_c007 => v_item_id',
'            );',
'        END IF;',
'    END LOOP;',
'END;',
''))
,p_attribute_02=>'P35_SEARCHED_UPC'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'$(''#P35_SEARCHED_UPC'').val().indexOf(" - ") === -1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53709231851876742)
,p_event_id=>wwv_flow_imp.id(53709073532876740)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'Search by Item number and UOM '
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_item_num_search VARCHAR(20);',
'    v_uom_search VARCHAR(20);',
'    v_item_num VARCHAR(50);',
'    v_seq_id NUMBER;',
'    v_item_id NUMBER;',
'    v_product_name VARCHAR(35);    ',
'    v_price NUMBER;',
'    v_qty NUMBER;',
'    v_total NUMBER;',
'    v_brand VARCHAR(10);',
'    v_uom VARCHAR(10);',
'    v_upc VARCHAR(14);',
'    v_collections SYS.ODCIVARCHAR2LIST := SYS.ODCIVARCHAR2LIST(''DISCOUNT_A'', ''DISCOUNT_B'', ''DISCOUNT_C'', ''DISCOUNT_D'');',
'    v_collection_name VARCHAR2(15);',
'BEGIN',
'    v_item_num_search := SUBSTR (:P35_SEARCHED_UPC, 1, (INSTR(:P35_SEARCHED_UPC, '' - '') - 1));',
'    v_uom_search := SUBSTR (:P35_SEARCHED_UPC, (INSTR(:P35_SEARCHED_UPC, '' - '') + 3));',
'',
'BEGIN',
'    BEGIN',
'    SELECT a.item_id, a.item_num, b.upc, a.item_desc, b.price, b.price total, UPPER(c.uom_code), d.brand_code INTO v_item_id, v_item_num, v_upc, v_product_name, v_price, v_total, v_uom, v_brand',
'          FROM NIT001 a, NIT002 b, NIM026 c, NIM022 d',
'         WHERE a.item_id = b.item_id',
'           AND b.uom_id = c.uom_id',
'           AND a.brand_id = d.brand_id',
'           AND a.item_num = v_item_num_search',
'           AND c.uom_code = LOWER(v_uom_search);',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'            v_item_id := NULL;',
'    END;',
'',
'    FOR i IN 1 .. v_collections.COUNT LOOP',
'        v_collection_name := v_collections(i);',
'',
'        BEGIN',
'            SELECT seq_id, n001 INTO v_seq_id, v_qty ',
'            FROM apex_collections',
'            WHERE collection_name = v_collection_name',
'            AND c001 = v_item_num_search',
'            AND c004 = v_uom_search;',
'            EXCEPTION WHEN NO_DATA_FOUND THEN v_seq_id := 0; END;',
'',
'        IF v_seq_id != 0 THEN',
'        v_qty := v_qty + 1;',
'        v_total := v_price * v_qty;',
'    ',
'            apex_collection.update_member_attribute (',
'                p_collection_name => v_collection_name,',
'                p_seq => v_seq_id,',
'                p_attr_number => 1,',
'                p_number_value => v_qty',
'                );',
'',
'            apex_collection.update_member_attribute (',
'                p_collection_name => v_collection_name,',
'                p_seq => v_seq_id,',
'                p_attr_number => 5,',
'                p_number_value => v_total',
'                );',
'',
'    ELSIF v_seq_id = 0 AND v_item_id IS NOT NULL THEN',
'        apex_collection.add_member(',
'            p_collection_name => v_collection_name,',
'            p_c001 => v_item_num_search,',
'            p_c002 => v_brand,',
'            p_c003 => v_product_name,',
'            p_n001 => 1,',
'            p_n002 => v_price,',
'            p_c004 => v_uom,',
'            p_n005 => v_total,',
'            p_c006 => v_upc,',
'            p_c007 => v_item_id);',
'END IF;',
'END LOOP;',
'END;',
'END;'))
,p_attribute_02=>'P35_SEARCHED_UPC'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'$(''#P35_SEARCHED_UPC'').val().includes(" - ")'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77862040899642519)
,p_event_id=>wwv_flow_imp.id(53709073532876740)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>'Discount'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    APPLY_DISCOUNT_CASHIERING(:P35_CUSTOMER_FIELD, :P35_SEARCHED_UPC);',
'END;'))
,p_attribute_02=>'P35_CUSTOMER_FIELD,P35_SEARCHED_UPC'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53709485727876744)
,p_event_id=>wwv_flow_imp.id(53709073532876740)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(49319882178115216)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53709597518876745)
,p_event_id=>wwv_flow_imp.id(53709073532876740)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let disableUPCSearch = ''no'';',
'apex.item("P35_CLICKED_SEARCH_F2").setValue(disableUPCSearch);',
'',
'setTimeout(() => {',
'  $(document).ready(function() {',
'        var gridView = apex.region("orders").widget().interactiveGrid("getViews").grid;',
'        var model = gridView.model;',
'        if (model.getTotalRecords() > 0) {',
'            var editIndex = model.getTotalRecords() - 1;',
'            var recordAt = model.recordAt(editIndex); ',
'            gridView.view$.grid("gotoCell", recordAt[0], "ITEM_NO"); ',
'            gridView.view$.find(".a-GV-cell.is-focused").trigger("click"); ',
'        }',
'  });',
'}, 600);'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58959601347220211)
,p_event_id=>wwv_flow_imp.id(53709073532876740)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_name=>'Sub-Total'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P35_SUB'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH COLLECTION_SUMS AS (',
'    SELECT ''DISCOUNT_A'' AS collection_name, SUM(n002 * n001) AS SUB_TOTAL',
'    FROM apex_collections',
'    WHERE collection_name = ''DISCOUNT_A''',
' ',
'    UNION ALL',
' ',
'    SELECT ''DISCOUNT_B'' AS collection_name, SUM(n002 * n001) AS SUB_TOTAL',
'    FROM apex_collections',
'    WHERE collection_name = ''DISCOUNT_B''',
' ',
'    UNION ALL',
' ',
'    SELECT ''DISCOUNT_C'' AS collection_name, SUM(n002 * n001) AS SUB_TOTAL',
'    FROM apex_collections',
'    WHERE collection_name = ''DISCOUNT_C''',
' ',
'    UNION ALL',
' ',
'    SELECT ''DISCOUNT_D'' AS collection_name, SUM(n002 * n001) AS SUB_TOTAL',
'    FROM apex_collections',
'    WHERE collection_name = ''DISCOUNT_D''',
'),',
'LOWEST_SUM AS (',
'    SELECT collection_name',
'    FROM COLLECTION_SUMS',
'    WHERE SUB_TOTAL = (SELECT MIN(SUB_TOTAL) FROM COLLECTION_SUMS)',
'    FETCH FIRST 1 ROW ONLY',
')',
'SELECT TO_CHAR(SUM(n002 * n001), ''FM999G999G999G999D00'' ) ',
'FROM apex_collections',
'WHERE collection_name IN (SELECT collection_name FROM LOWEST_SUM);'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58959740784220212)
,p_event_id=>wwv_flow_imp.id(53709073532876740)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'Y'
,p_name=>'Discount'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P35_DISCOUNT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH COLLECTION_SUMS AS (',
'    SELECT ''DISCOUNT_A'' AS collection_name, SUM(n004 * n001) AS TOTAL_DISCOUNT',
'    FROM apex_collections',
'    WHERE collection_name = ''DISCOUNT_A''',
' ',
'    UNION ALL',
' ',
'    SELECT ''DISCOUNT_B'' AS collection_name, SUM(n004 * n001) AS TOTAL_DISCOUNT',
'    FROM apex_collections',
'    WHERE collection_name = ''DISCOUNT_B''',
' ',
'    UNION ALL',
' ',
'    SELECT ''DISCOUNT_C'' AS collection_name, SUM(n004 * n001) AS TOTAL_DISCOUNT',
'    FROM apex_collections',
'    WHERE collection_name = ''DISCOUNT_C''',
' ',
'    UNION ALL',
' ',
'    SELECT ''DISCOUNT_D'' AS collection_name, SUM(n004 * n001) AS TOTAL_DISCOUNT',
'    FROM apex_collections',
'    WHERE collection_name = ''DISCOUNT_D''',
'),',
'LOWEST_SUM AS (',
'    SELECT collection_name',
'    FROM COLLECTION_SUMS',
'    WHERE TOTAL_DISCOUNT = (SELECT MAX(TOTAL_DISCOUNT) FROM COLLECTION_SUMS)',
'    FETCH FIRST 1 ROW ONLY',
')',
'SELECT TO_CHAR(SUM(n004 * n001), ''FM999G999G999G999D00'' ) ',
'FROM apex_collections',
'WHERE collection_name IN (SELECT collection_name FROM LOWEST_SUM);'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58959814253220213)
,p_event_id=>wwv_flow_imp.id(53709073532876740)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'Y'
,p_name=>'Total'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P35_TOTAL'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'TO_CHAR(NVL(TO_NUMBER(REPLACE(REPLACE(NVL(:P35_SUB, 0), ''$'', ''''), '','', '''')) - TO_NUMBER(REPLACE(REPLACE(NVL(:P35_DISCOUNT, 0), ''$'', ''''), '','', '''')), 0), ''FM999G999G999G990D00'' ) '
,p_attribute_07=>'P35_SUB,P35_DISCOUNT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58959958634220214)
,p_event_id=>wwv_flow_imp.id(53709073532876740)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P35_SUB,P35_DISCOUNT,P35_TOTAL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(58961282451220227)
,p_name=>'Update Quantity'
,p_event_sequence=>260
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(49319882178115216)
,p_triggering_element=>'QTY'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59940697811414805)
,p_event_id=>wwv_flow_imp.id(58961282451220227)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Update Quantity'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'QTY'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let selectedQty = this.triggeringElement.value;',
'apex.item("P35_SELECTED_QTY").setValue(selectedQty);',
'',
'setTimeout(() => {',
'    var gridView = apex.region("orders").widget().interactiveGrid("getViews").grid;',
'    var model = gridView.model;',
'    apex.region("orders").call("getActions").set("edit", false);',
'    model.clearChanges();',
'',
'    $.event.trigger(''UpdateQty'');',
'}, 500)'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59942106539414820)
,p_event_id=>wwv_flow_imp.id(58961282451220227)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P35_SELECTED_QTY'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77860245754642501)
,p_event_id=>wwv_flow_imp.id(58961282451220227)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_name=>'delay .5sec'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(() => {',
'}, 500);'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77863236109642531)
,p_event_id=>wwv_flow_imp.id(58961282451220227)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_name=>'focus item no'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var ig = apex.region("orders").widget().interactiveGrid("getViews","grid");',
'ig.view$.grid("gotoCell", $("#P35_SELECTED_INDEX").val(), "ITEM_NO");',
'ig.view$.find(".a-GV-cell.is-focused").trigger("click");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(58963417050220249)
,p_name=>'Update Qty'
,p_event_sequence=>270
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>wwv_flow_string.join(wwv_flow_t_varchar2(
'document',
''))
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'UpdateQty'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64934100307728618)
,p_event_id=>wwv_flow_imp.id(58963417050220249)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_seq_id    NUMBER;',
'    v_price     NUMBER;',
'    v_qty       NUMBER;',
'    v_collection_name VARCHAR2(50);',
'begin',
'    -- Iterate through DISCOUNT_A to DISCOUNT_D',
'    FOR i IN 1..4 LOOP',
'        v_collection_name := ''DISCOUNT_'' || CHR(64 + i); -- CHR(65) = ''A''',
'',
'        -- Check if the item exists in the current collection',
'        begin',
'            select seq_id, n001',
'              into v_seq_id, v_qty',
'              from apex_collections ',
'             where collection_name = v_collection_name',
'               and c001 = :P35_SELECTED_ITEM_NO;',
'               ',
'            -- Update the quantity',
'            APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'                p_collection_name => v_collection_name,',
'                p_seq => v_seq_id,',
'                p_attr_number => 1,',
'                p_number_value => :P35_SELECTED_QTY);',
'',
'            -- Update the calculated price',
'            APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'                p_collection_name => v_collection_name,',
'                p_seq => v_seq_id,',
'                p_attr_number => 5,',
'                p_number_value => :P35_SELECTED_QTY * :P35_SELECTED_PRICE);',
'',
'            -- Check if quantity is zero, and delete the member if needed',
'            IF :P35_SELECTED_QTY = 0 THEN',
'                APEX_COLLECTION.DELETE_MEMBER(',
'                    p_collection_name => v_collection_name,',
'                    p_seq => v_seq_id);',
'            END IF;',
'        exception',
'            when NO_DATA_FOUND then',
'                -- Item not found in the collection; skip to the next',
'                null;',
'        end;',
'    END LOOP;',
'end;',
''))
,p_attribute_02=>'P35_SELECTED_ITEM_NO,P35_SELECTED_QTY,P35_SELECTED_PRICE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58962394561220238)
,p_event_id=>wwv_flow_imp.id(58963417050220249)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(49319882178115216)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72265722251359938)
,p_event_id=>wwv_flow_imp.id(58963417050220249)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(() => {',
'  $(document).ready(function() {',
'        var gridView = apex.region("orders").widget().interactiveGrid("getViews").grid;',
'        var model = gridView.model;',
'        if (model.getTotalRecords() > 0) {',
'            var editIndex = model.getTotalRecords() - 1;',
'            var recordAt = model.recordAt(editIndex); ',
'            gridView.view$.grid("gotoCell", recordAt[0], "ITEM_NO"); ',
'            gridView.view$.find(".a-GV-cell.is-focused").trigger("click"); ',
'        }',
'  });',
'}, 600);'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59943254747414831)
,p_event_id=>wwv_flow_imp.id(58963417050220249)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_name=>'Sub-Total'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P35_SUB'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH COLLECTION_SUMS AS (',
'    SELECT ''DISCOUNT_A'' AS collection_name, SUM(n002 * n001) AS SUB_TOTAL',
'    FROM apex_collections',
'    WHERE collection_name = ''DISCOUNT_A''',
' ',
'    UNION ALL',
' ',
'    SELECT ''DISCOUNT_B'' AS collection_name, SUM(n002 * n001) AS SUB_TOTAL',
'    FROM apex_collections',
'    WHERE collection_name = ''DISCOUNT_B''',
' ',
'    UNION ALL',
' ',
'    SELECT ''DISCOUNT_C'' AS collection_name, SUM(n002 * n001) AS SUB_TOTAL',
'    FROM apex_collections',
'    WHERE collection_name = ''DISCOUNT_C''',
' ',
'    UNION ALL',
' ',
'    SELECT ''DISCOUNT_D'' AS collection_name, SUM(n002 * n001) AS SUB_TOTAL',
'    FROM apex_collections',
'    WHERE collection_name = ''DISCOUNT_D''',
'),',
'LOWEST_SUM AS (',
'    SELECT collection_name',
'    FROM COLLECTION_SUMS',
'    WHERE SUB_TOTAL = (SELECT MIN(SUB_TOTAL) FROM COLLECTION_SUMS)',
'    FETCH FIRST 1 ROW ONLY',
')',
'SELECT TO_CHAR(SUM(n002 * n001), ''FM999999999999.00'' ) ',
'FROM apex_collections',
'WHERE collection_name IN (SELECT collection_name FROM LOWEST_SUM);'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59943378673414832)
,p_event_id=>wwv_flow_imp.id(58963417050220249)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_name=>'Discount'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P35_DISCOUNT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH COLLECTION_SUMS AS (',
'    SELECT ''DISCOUNT_A'' AS collection_name, SUM(n004 * n001) AS TOTAL_DISCOUNT',
'    FROM apex_collections',
'    WHERE collection_name = ''DISCOUNT_A''',
' ',
'    UNION ALL',
' ',
'    SELECT ''DISCOUNT_B'' AS collection_name, SUM(n004 * n001) AS TOTAL_DISCOUNT',
'    FROM apex_collections',
'    WHERE collection_name = ''DISCOUNT_B''',
' ',
'    UNION ALL',
' ',
'    SELECT ''DISCOUNT_C'' AS collection_name, SUM(n004 * n001) AS TOTAL_DISCOUNT',
'    FROM apex_collections',
'    WHERE collection_name = ''DISCOUNT_C''',
' ',
'    UNION ALL',
' ',
'    SELECT ''DISCOUNT_D'' AS collection_name, SUM(n004 * n001) AS TOTAL_DISCOUNT',
'    FROM apex_collections',
'    WHERE collection_name = ''DISCOUNT_D''',
'),',
'LOWEST_SUM AS (',
'    SELECT collection_name',
'    FROM COLLECTION_SUMS',
'    WHERE TOTAL_DISCOUNT = (SELECT MAX(TOTAL_DISCOUNT) FROM COLLECTION_SUMS)',
'    FETCH FIRST 1 ROW ONLY',
')',
'SELECT TO_CHAR(SUM(n004 * n001), ''FM999999999999.00'' ) ',
'FROM apex_collections',
'WHERE collection_name IN (SELECT collection_name FROM LOWEST_SUM);'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59943486034414833)
,p_event_id=>wwv_flow_imp.id(58963417050220249)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_name=>'Total'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P35_TOTAL'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'TO_CHAR(TO_NUMBER(REPLACE(REPLACE(NVL(:P35_SUB, 0), ''$'', ''''), '','', '''')) - TO_NUMBER(REPLACE(REPLACE(NVL(:P35_DISCOUNT, 0), ''$'', ''''), '','', '''')), ''FM999999999999.00'' ) '
,p_attribute_07=>'P35_SUB,P35_DISCOUNT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59943567433414834)
,p_event_id=>wwv_flow_imp.id(58963417050220249)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P35_SUB,P35_DISCOUNT,P35_TOTAL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(59944859614414847)
,p_name=>'GetLocWh'
,p_event_sequence=>310
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>wwv_flow_string.join(wwv_flow_t_varchar2(
'document',
''))
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'GetLocWh'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58900467786886031)
,p_event_id=>wwv_flow_imp.id(59944859614414847)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Set LOC 1 - WH 1'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P35_WH_1'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    no_data_found EXCEPTION;',
'    wh_1 NUMBER := 0;',
'    qty NUMBER := 0;',
'BEGIN',
'    BEGIN ',
'        SELECT nim027.WAREHOUSE_LOCATION, nit004.QTY INTO wh_1, qty',
'        FROM ',
'            NIM027 nim027',
'        JOIN',
'            NIT004 nit004 ON nim027.WAREHOUSE_ID = nit004.WAREHOUSE_ID',
'        WHERE',
'            nit004.ITEM_ID = (SELECT nit001.ITEM_ID',
'                              FROM NIT001 nit001',
'                              WHERE nit001.ITEM_ID = (SELECT nit002.ITEM_ID ',
'                                                      FROM NIT002 nit002',
'                                                      WHERE nit002.UPC = :P35_SELECTED_UPC))',
'        ORDER BY nit004.QTY DESC',
'        OFFSET 0 ROWS',
'        FETCH NEXT 1 ROWS ONLY;',
'',
'        IF wh_1 != 0 THEN',
'            :P35_WH_1 := wh_1;',
'        END IF;',
' ',
'        EXCEPTION ',
'            WHEN no_data_found THEN',
'                :P35_WH_1 := '''';',
'            WHEN OTHERS THEN',
'                :P35_WH_1 := wh_1;',
'    END;',
'',
'    RETURN :P35_WH_1;',
'END;'))
,p_attribute_07=>'P35_SELECTED_UPC'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58902465097886034)
,p_event_id=>wwv_flow_imp.id(59944859614414847)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'Set LOC 2 - WH 2'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P35_WH_2'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    no_data_found exception;',
'    wh_2 NUMBER := 0;',
'    qty NUMBER := 0;',
'BEGIN',
'    BEGIN ',
'        SELECT nim027.WAREHOUSE_LOCATION, nit004.QTY INTO wh_2, qty',
'        FROM ',
'            NIM027 nim027',
'        JOIN',
'            NIT004 nit004 ON nim027.WAREHOUSE_ID = nit004.WAREHOUSE_ID',
'        WHERE',
'            nit004.ITEM_ID = (SELECT nit001.ITEM_ID',
'                              FROM NIT001 nit001',
'                              WHERE nit001.ITEM_ID = (SELECT nit002.ITEM_ID ',
'                                                      FROM NIT002 nit002',
'                                                      WHERE nit002.UPC = :P35_SELECTED_UPC))',
'        ORDER BY nit004.QTY DESC',
'        OFFSET 1 ROWS',
'        FETCH NEXT 1 ROWS ONLY;',
'',
'        IF wh_2 != 0 THEN',
'            :P35_WH_2 := wh_2;',
'        END IF;',
' ',
'        EXCEPTION ',
'            WHEN no_data_found THEN',
'                :P35_WH_2 := '''';',
'            WHEN OTHERS THEN',
'                :P35_WH_2 := wh_2;',
'    END;',
'',
'    RETURN :P35_WH_2;',
'END;'))
,p_attribute_07=>'P35_SELECTED_UPC'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58902932137886035)
,p_event_id=>wwv_flow_imp.id(59944859614414847)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'Set LOC 3 - WH 3'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P35_WH_3'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    no_data_found exception;',
'    wh_3 NUMBER := 0;',
'    qty NUMBER := 0;',
'BEGIN',
'    BEGIN ',
'        SELECT nim027.WAREHOUSE_LOCATION, nit004.QTY INTO wh_3, qty',
'        FROM ',
'            NIM027 nim027',
'        JOIN',
'            NIT004 nit004 ON nim027.WAREHOUSE_ID = nit004.WAREHOUSE_ID',
'        WHERE',
'            nit004.ITEM_ID = (SELECT nit001.ITEM_ID',
'                              FROM NIT001 nit001',
'                              WHERE nit001.ITEM_ID = (SELECT nit002.ITEM_ID ',
'                                                      FROM NIT002 nit002',
'                                                      WHERE nit002.UPC = :P35_SELECTED_UPC))',
'        ORDER BY nit004.QTY DESC',
'        OFFSET 2 ROWS',
'        FETCH NEXT 1 ROWS ONLY;',
'',
'        IF wh_3 != 0 THEN',
'            :P35_WH_3 := wh_3;',
'        END IF;',
' ',
'        EXCEPTION ',
'            WHEN no_data_found THEN',
'                :P35_WH_3 := '''';',
'            WHEN OTHERS THEN',
'                :P35_WH_3 := wh_3;',
'    END;',
'',
'    RETURN :P35_WH_3;',
'END;'))
,p_attribute_07=>'P35_SELECTED_UPC'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58903979016886037)
,p_event_id=>wwv_flow_imp.id(59944859614414847)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>'Set LOC 1 - QTY 1'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P35_LOC_1'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    no_data_found exception;',
'    loc_1 NUMBER := 0;',
'    qty NUMBER := 0;',
'BEGIN',
'    BEGIN ',
'        SELECT nim027.WAREHOUSE_LOCATION, nit004.QTY INTO loc_1, qty',
'        FROM ',
'            NIM027 nim027',
'        JOIN',
'            NIT004 nit004 ON nim027.WAREHOUSE_ID = nit004.WAREHOUSE_ID',
'        WHERE',
'            nit004.ITEM_ID = (SELECT nit001.ITEM_ID',
'                              FROM NIT001 nit001',
'                              WHERE nit001.ITEM_ID = (SELECT nit002.ITEM_ID ',
'                                                      FROM NIT002 nit002',
'                                                      WHERE nit002.UPC = :P35_SELECTED_UPC))',
'        ORDER BY nit004.QTY DESC',
'        OFFSET 0 ROWS',
'        FETCH NEXT 1 ROWS ONLY;',
'',
'        IF qty != 0 THEN',
'            :P35_LOC_1 := NULLIF(qty, 0);',
'        END IF;',
' ',
'        EXCEPTION ',
'            WHEN no_data_found THEN',
'                :P35_LOC_1 := '''';',
'            WHEN OTHERS THEN',
'                :P35_LOC_1 := NULLIF(qty, 0);',
'    END;',
'',
'    RETURN :P35_LOC_1;',
'END;'))
,p_attribute_07=>'P35_SELECTED_UPC'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58901421446886034)
,p_event_id=>wwv_flow_imp.id(59944859614414847)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_name=>'Set LOC 2 - QTY 2'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P35_LOC_2'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    no_data_found exception;',
'    loc_2 NUMBER := 0;',
'    qty NUMBER := 0;',
'BEGIN',
'    BEGIN ',
'        SELECT nim027.WAREHOUSE_LOCATION, nit004.QTY INTO loc_2, qty',
'        FROM ',
'            NIM027 nim027',
'        JOIN',
'            NIT004 nit004 ON nim027.WAREHOUSE_ID = nit004.WAREHOUSE_ID',
'        WHERE',
'            nit004.ITEM_ID = (SELECT nit001.ITEM_ID',
'                              FROM NIT001 nit001',
'                              WHERE nit001.ITEM_ID = (SELECT nit002.ITEM_ID ',
'                                                      FROM NIT002 nit002',
'                                                      WHERE nit002.UPC = :P35_SELECTED_UPC))',
'        ORDER BY nit004.QTY DESC',
'        OFFSET 1 ROWS',
'        FETCH NEXT 1 ROWS ONLY;',
'',
'        IF qty != 0 THEN',
'            :P35_LOC_2 := NULLIF(qty, 0);',
'        END IF;',
' ',
'        EXCEPTION ',
'            WHEN no_data_found THEN',
'                :P35_LOC_2 := '''';',
'            WHEN OTHERS THEN',
'                :P35_LOC_2 := NULLIF(qty, 0);',
'    END;',
'',
'    RETURN :P35_LOC_2;',
'END;'))
,p_attribute_07=>'P35_SELECTED_UPC'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58901950067886034)
,p_event_id=>wwv_flow_imp.id(59944859614414847)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_name=>'Set LOC 3 - QTY 3'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P35_LOC_3'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    no_data_found exception;',
'    loc_3 NUMBER := 0;',
'    qty NUMBER := 0;',
'BEGIN',
'    BEGIN ',
'        SELECT nim027.WAREHOUSE_LOCATION, nit004.QTY INTO loc_3, qty',
'        FROM ',
'            NIM027 nim027',
'        JOIN',
'            NIT004 nit004 ON nim027.WAREHOUSE_ID = nit004.WAREHOUSE_ID',
'        WHERE',
'            nit004.ITEM_ID = (SELECT nit001.ITEM_ID',
'                              FROM NIT001 nit001',
'                              WHERE nit001.ITEM_ID = (SELECT nit002.ITEM_ID ',
'                                                      FROM NIT002 nit002',
'                                                      WHERE nit002.UPC = :P35_SELECTED_UPC))',
'        ORDER BY nit004.QTY DESC',
'        OFFSET 2 ROWS',
'        FETCH NEXT 1 ROWS ONLY;',
'',
'        IF qty != 0 THEN',
'            :P35_LOC_3 := NULLIF(qty, 0);',
'        END IF;',
' ',
'        EXCEPTION ',
'            WHEN no_data_found THEN',
'                :P35_LOC_3 := '''';',
'            WHEN OTHERS THEN',
'                :P35_LOC_3 := NULLIF(qty, 0);',
'    END;',
'',
'    RETURN :P35_LOC_3;',
'END;'))
,p_attribute_07=>'P35_SELECTED_UPC'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58900940898886032)
,p_event_id=>wwv_flow_imp.id(59944859614414847)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($(''#P35_LOC_1'').val() > 0) {',
'    document.getElementById("P35_LOC_1_LABEL").innerHTML = "LOC #" + $(''#P35_WH_1'').val();',
'} else {',
'    document.getElementById("P35_LOC_1_LABEL").innerHTML = "";',
'}',
'',
'if ($(''#P35_LOC_2'').val() > 0) {',
'    document.getElementById("P35_LOC_2_LABEL").innerHTML = "LOC #" + $(''#P35_WH_2'').val();',
'} else {',
'    document.getElementById("P35_LOC_2_LABEL").innerHTML = "";',
'}',
'',
'if ($(''#P35_LOC_3'').val() > 0) {',
'    document.getElementById("P35_LOC_3_LABEL").innerHTML = "LOC #" + $(''#P35_WH_3'').val();',
'} else {',
'    document.getElementById("P35_LOC_3_LABEL").innerHTML = "";',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(72263979276359920)
,p_name=>'Set Total'
,p_event_sequence=>320
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72264079469359921)
,p_event_id=>wwv_flow_imp.id(72263979276359920)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P35_TOTAL'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'null'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72264148505359922)
,p_event_id=>wwv_flow_imp.id(72263979276359920)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P35_TOTAL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(70339067803069509)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(49319882178115216)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Invoice - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>70339067803069509
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27427380071078123)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Invoice No'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_EXISTS NUMBER;',
'BEGIN',
'    BEGIN',
'        SELECT 1 ',
'        INTO V_EXISTS',
'        FROM NPT033 ',
'        WHERE CASH_INVOICE_ID = (SELECT MAX(CASH_INVOICE_ID)',
'                              FROM NPT033',
'                             WHERE TOTAL_AMOUNT IS NULL',
'                               AND USER_CREATED = v(''APP_USER''))',
'          AND USER_CREATED = v(''APP_USER'');',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'            INSERT INTO NPT033 (USER_CREATED, DATE_CREATED)',
'            VALUES (v(''APP_USER''), SYSDATE);',
'    END;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>27427380071078123
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11448055231525308)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Purchase Collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(',
'        p_collection_name => ''PURCHASE'');'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>11448055231525308
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(25490792808440413)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Orders Collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(',
'        p_collection_name => ''ORDERS'');'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>25490792808440413
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(25492303482440429)
,p_process_sequence=>40
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Payment Collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(',
'        p_collection_name => ''PAYMENT'');'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>25492303482440429
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(44525914462129246)
,p_process_sequence=>60
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DISCOUNT_A'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(',
'        p_collection_name => ''DISCOUNT_A'');'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>44525914462129246
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(44526038576129247)
,p_process_sequence=>70
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DISCOUNT_B'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(',
'        p_collection_name => ''DISCOUNT_B'');'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>44526038576129247
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(44526106134129248)
,p_process_sequence=>80
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DISCOUNT_C'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(',
'        p_collection_name => ''DISCOUNT_C'');'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>44526106134129248
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(44526247189129249)
,p_process_sequence=>90
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DISCOUNT_D'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(',
'        p_collection_name => ''DISCOUNT_D'');'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>44526247189129249
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(49322376734115241)
,p_process_sequence=>100
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Available Discounts'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(',
'        p_collection_name => ''AVAILABLE_DISCOUNTS'');'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>49322376734115241
);
wwv_flow_imp.component_end;
end;
/
