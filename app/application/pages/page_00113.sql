prompt --application/pages/page_00113
begin
--   Manifest
--     PAGE: 00113
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
 p_id=>113
,p_name=>'Charge COD Invoicing - Update Invoice'
,p_alias=>'CHARGE-COD-INVOICING-UPDATE-INVOICE'
,p_step_title=>'Charge COD Invoicing -Update Invoice'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APP_FILES#onscan.min.js',
'#APP_FILES#onscan#MIN#.js',
'#APP_FILES#js/cmn#MIN#.js'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p113KeyMap = {',
'    f2 : (v) => {',
'        $("#f2").click();',
'    },',
'    f3 : (v) => {',
'        $("#f3").click();',
'    },',
'    f5 : (v) => {',
'        $("#f5").click();',
'    },',
'    f6 : (v) => {',
'        $("#f6").click();',
'    },',
'    f7: (v) => {',
'        $("#f7").click();',
'    },',
'    f8: (v) => {',
'        $("#f8").trigger("click");',
'    }',
'',
'',
'}',
'',
'function mapP113Keys() {',
'    $(document).off(''keydown.p113keyevents'');',
'    $(document).on(''keydown.p113keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p113KeyMap[key]) {',
'            ev.preventDefault();',
'            p113KeyMap[key]();',
'        }',
'    });',
'}',
'',
'function customEvent(event, data){',
'    mapP81Keys();',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP113Keys();',
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
'    if (tagName === ''input'' && ev.key === ''Enter'' && id === ''quantity'') {',
'        document.activeElement.blur();',
'    }',
'',
'',
'});',
'',
'onScan.attachTo(document, {onScan: function(sScancode, iQuantity){',
'    apex.item("P113_BARCODE").setValue(JSON.parse(sScancode));',
'    console.log(JSON.parse(sScancode))',
'}});',
'',
'setTitle("Charge/COD Invoicing Update")'))
,p_css_file_urls=>'#APP_FILES#wholesale-invoicing#MIN#.css'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'body, #button-region {',
'    background-color: rgb(30, 58, 138);',
'}',
'',
'.t-Header .t-Header-branding {',
'    background-color: white !important;',
'    color: rgb(30, 58, 138) !important;',
'}',
'',
'#wholesale table, #wholesale tr, #wholesale td, #wholesale th {',
'     font-size: 1.125rem;',
'}',
'',
'',
'.btns {',
'    font-size: 1.125rem;',
'    color: white;',
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
'    background-color: #046BC8;',
'    color: white;',
'}',
'',
'.ui-dialog-title{',
'    font-size: 1.5rem;',
'    padding-top: .2rem;',
'    padding-bottom: .2rem;',
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
'#wholesale .a-IG {',
'    height: calc(60vh) !important;',
'} ',
'',
'#wholesale .a-IG-contentContainer {',
'    height: 60vh !important;',
'}',
'',
'#itemwholesale .a-IG-gridView.a-GV {',
'    height: 60vh !important;',
'}',
'',
'#wholesale .a-GV-bdy {',
'    height: calc(60) !important;',
'}',
'',
'.t-Form-label {',
'    font-size: 1.125rem;',
'    color: white;',
'    font-weight: 700;',
'    white-space: nowrap;',
'}',
'',
'.apex-item-display-only {',
'    font-size: 1.125rem;',
'    color: white;',
'    white-space: nowrap;',
'    display: flex;',
'',
'}',
'',
'.t-Form-labelContainer{',
'    text-align: start;',
'}',
'',
'.t-Body-contentInner {',
'    padding-inline-end: var(--ut-body-content-padding-x, 2.5rem);',
'    padding-inline-start: var(--ut-body-content-padding-x, 2.5rem);',
'}',
'',
'#P113_CUSTOMER_CODE {',
'    padding-left: 2rem;',
'}',
'',
'#P113_DBA {',
'    padding-left: 2rem;',
'}',
'',
'#P113_BILLING_ADDRESS {',
'    padding-left: 1rem;',
'}',
'',
'#P113_PAYMENT_TERMS{',
'    padding-left: 1.2rem;',
'}'))
,p_step_template=>wwv_flow_imp.id(5671392681337017)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(132817781323811785)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>60
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(171716140614507769)
,p_plug_name=>'Header'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--textContent:t-Region--hiddenOverflow:t-Form--noPadding:t-Form--leftLabels:margin-top-none:margin-left-lg'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_08'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(171719635007507804)
,p_plug_name=>'Header 2'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody:t-Form--stretchInputs:t-Form--leftLabels'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>50
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(182322890461368473)
,p_plug_name=>'Invoice'
,p_region_name=>'wholesale'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>40
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH COLLECTION_SUMS AS (',
'    SELECT ''UPD_INVOICE_A'' AS collection_name, SUM(n002 - NVL(n004, 0)) AS TOTAL_EXTENDED_PRICE',
'    FROM apex_collections',
'    WHERE collection_name = ''UPD_INVOICE_A''',
' ',
'    UNION ALL',
' ',
'    SELECT ''UPD_INVOICE_B'' AS collection_name, SUM(n002 - NVL(n004, 0)) AS TOTAL_EXTENDED_PRICE',
'    FROM apex_collections',
'    WHERE collection_name = ''UPD_INVOICE_B''',
' ',
'    UNION ALL',
' ',
'    SELECT ''UPD_INVOICE_C'' AS collection_name, SUM(n002 - NVL(n004, 0)) AS TOTAL_EXTENDED_PRICE',
'    FROM apex_collections',
'    WHERE collection_name = ''UPD_INVOICE_C''',
' ',
'    UNION ALL',
' ',
'    SELECT ''UPD_INVOICE_D'' AS collection_name, SUM(n002 - NVL(n004, 0)) AS TOTAL_EXTENDED_PRICE',
'    FROM apex_collections',
'    WHERE collection_name = ''UPD_INVOICE_D''',
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
'    c007 AS ITEM_ID',
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(182323064516368475)
,p_name=>'ITEM_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEM_NO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_AUTO_COMPLETE'
,p_heading=>'Item No'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
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
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(182323146521368476)
,p_name=>'CO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Co'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(182323235916368477)
,p_name=>'ITEM_DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEM_DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Item Description'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(182323378145368478)
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
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'ord-quantity'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(182323506991368479)
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(182323555024368480)
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
,p_is_required=>false
,p_max_length=>4000
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(182323655419368481)
,p_name=>'DISC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISC'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Disc'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(182323718775368482)
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
,p_max_length=>4000
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(182323871117368483)
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
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(182323995263368484)
,p_name=>'EXTENDED_PRICE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXTENDED_PRICE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Extended Price'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_format_mask=>'999G999G999G999G990D00'
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(182324077009368485)
,p_name=>'BARCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BARCODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>130
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(186711921125129996)
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(191965858842473500)
,p_name=>'ITEM_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEM_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>20
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(182322990157368474)
,p_internal_uid=>182322990157368474
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
,p_show_total_row_count=>false
,p_show_toolbar=>false
,p_toolbar_buttons=>null
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>false
,p_define_chart_view=>false
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
 p_id=>wwv_flow_imp.id(182346578748402655)
,p_interactive_grid_id=>wwv_flow_imp.id(182322990157368474)
,p_static_id=>'493436'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(182346746706402655)
,p_report_id=>wwv_flow_imp.id(182346578748402655)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(182347256650402660)
,p_view_id=>wwv_flow_imp.id(182346746706402655)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(182323064516368475)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>221.433
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(182348207763402666)
,p_view_id=>wwv_flow_imp.id(182346746706402655)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(182323146521368476)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>52.0333
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(182349041508402674)
,p_view_id=>wwv_flow_imp.id(182346746706402655)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(182323235916368477)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>550.417
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(182349824606402682)
,p_view_id=>wwv_flow_imp.id(182346746706402655)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(182323378145368478)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>53.11699999999999
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(182350724688402691)
,p_view_id=>wwv_flow_imp.id(182346746706402655)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(182323506991368479)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>113.11699999999999
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(182351631046402699)
,p_view_id=>wwv_flow_imp.id(182346746706402655)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(182323555024368480)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>56.11699999999999
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(182352595569402708)
,p_view_id=>wwv_flow_imp.id(182346746706402655)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(182323655419368481)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>54.11699999999999
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(182353492127402716)
,p_view_id=>wwv_flow_imp.id(182346746706402655)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(182323718775368482)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>40
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(182354389391402724)
,p_view_id=>wwv_flow_imp.id(182346746706402655)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(182323871117368483)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>112.11699999999999
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(182355249477402730)
,p_view_id=>wwv_flow_imp.id(182346746706402655)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(182323995263368484)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(182356128428402739)
,p_view_id=>wwv_flow_imp.id(182346746706402655)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(182324077009368485)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(189099430050603171)
,p_view_id=>wwv_flow_imp.id(182346746706402655)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(186711921125129996)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(192900741821491550)
,p_view_id=>wwv_flow_imp.id(182346746706402655)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(191965858842473500)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69217062939213957)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(132817781323811785)
,p_button_name=>'Search-Item'
,p_button_static_id=>'f2'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>F2</u> - Search Item'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns'
,p_grid_new_row=>'N'
,p_grid_column_span=>1
,p_grid_column=>1
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69217869516213959)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(132817781323811785)
,p_button_name=>'Change-Qty'
,p_button_static_id=>'f3'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>F3</u> - Change Qty'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns'
,p_grid_new_row=>'N'
,p_grid_column_span=>1
,p_grid_column=>3
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69216673153213956)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(132817781323811785)
,p_button_name=>'Add-Discount'
,p_button_static_id=>'f5'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>F5</u> - Add Discount'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns'
,p_grid_new_row=>'N'
,p_grid_column_span=>1
,p_grid_column=>5
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69217487971213957)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(132817781323811785)
,p_button_name=>'Add-Special-Inst'
,p_button_static_id=>'f6'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>F6</u> - Add Special Instructions'
,p_button_redirect_url=>'f?p=&APP_ID.:116:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'btns'
,p_grid_new_row=>'N'
,p_grid_column_span=>1
,p_grid_column=>7
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69215830525213954)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(132817781323811785)
,p_button_name=>'Update'
,p_button_static_id=>'f7'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>F7</u> - Update'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns'
,p_grid_new_row=>'N'
,p_grid_column=>10
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69216231078213956)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(132817781323811785)
,p_button_name=>'Print'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>F8</u> - Print Invoice'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns'
,p_grid_new_row=>'N'
,p_grid_column=>11
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(132819688182811843)
,p_name=>'P113_ORDER_WRITER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(171716140614507769)
,p_prompt=>'Order Writer:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:margin-top-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(132819957303811845)
,p_name=>'P113_DBA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(171716140614507769)
,p_prompt=>'Customer (DBA):'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>3
,p_grid_column=>1
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:margin-top-sm:margin-left-md'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(132820069804811846)
,p_name=>'P113_INVOICE_DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(171716140614507769)
,p_prompt=>'Invoice Date:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_column=>8
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:margin-top-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133186010728526397)
,p_name=>'P113_CUST_PO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(171716140614507769)
,p_prompt=>'Cust PO#:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:margin-top-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133186223708526399)
,p_name=>'P113_BILLING_ADDRESS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(171716140614507769)
,p_prompt=>'Billing Address:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:margin-top-sm:margin-left-md'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133186370002526400)
,p_name=>'P113_PAYMENT_TERMS'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(171716140614507769)
,p_prompt=>'Payment Terms:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_column=>8
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:margin-top-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133186423731526401)
,p_name=>'P113_QUOTATION_NO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(171716140614507769)
,p_prompt=>'Quotation #:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:margin-top-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133186511530526402)
,p_name=>'P113_SPECIAL_INSTRUCTIONS'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(171716140614507769)
,p_prompt=>'Instructions:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:margin-top-sm:margin-left-md'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(134799317749482644)
,p_name=>'P113_CUSTOMER_ID'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(171716140614507769)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(134812730102482704)
,p_name=>'P113_ADDITIONAL_DISCOUNT'
,p_item_sequence=>260
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(137208882837287820)
,p_name=>'P113_TOTAL'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(171719635007507804)
,p_prompt=>'Total Amount:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_column=>10
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(144468359251778756)
,p_name=>'P113_SUB'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(171719635007507804)
,p_prompt=>'Sub-Total:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_column=>4
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--postTextBlock'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(144468502488778757)
,p_name=>'P113_DISCOUNT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(171719635007507804)
,p_prompt=>'Total Discount:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_column=>7
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(149923897581750389)
,p_name=>'P113_CUSTOMER_CODE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(171716140614507769)
,p_prompt=>'Customer Code:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>3
,p_grid_column=>1
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:margin-top-sm:margin-left-md'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(151290844118262018)
,p_name=>'P113_URL'
,p_item_sequence=>130
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(168554248340136078)
,p_name=>'P113_INVOICE_NO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(171716140614507769)
,p_prompt=>'Invoice No:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_column=>8
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:margin-top-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(171734702695507972)
,p_name=>'P113_QOH'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(171719635007507804)
,p_prompt=>'<b>QOH</b>'
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(175963367605958866)
,p_name=>'P113_QTY'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(171719635007507804)
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(182354453922368744)
,p_name=>'P113_BARCODE'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(186741097620130242)
,p_name=>'P113_CLICKED_SEARCH_F2'
,p_item_sequence=>140
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(186741356233130245)
,p_name=>'P113_SEARCHED_UPC'
,p_item_sequence=>150
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(190914436313035937)
,p_name=>'P113_UPC_SEARCH'
,p_item_sequence=>170
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT b.upc',
'  FROM NIT001 a, NIT002 b, NIM026 c, NIM022 d',
' WHERE a.item_id = b.item_id',
'   AND b.uom_id = c.uom_id',
'   AND a.brand_id = d.brand_id',
'   AND a.item_num || '' - '' || UPPER(c.uom_code) = :P113_SEARCHED_UPC',
'',
'UNION ALL',
'',
'SELECT b.upc',
'  FROM NIT001 a, NIT002 b, NIM026 c, NIM022 d',
' WHERE a.item_id = b.item_id',
'   AND b.uom_id = c.uom_id',
'   AND a.brand_id = d.brand_id',
'   AND b.upc = :P113_SEARCHED_UPC'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(191491728540547265)
,p_name=>'P113_LOC_1'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(171719635007507804)
,p_prompt=>'<span class="btns">LOC #&P377_WH_1.</span>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(4382138690084278)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(191491846671547266)
,p_name=>'P113_LOC_2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(171719635007507804)
,p_prompt=>'<span class="btns">LOC #2</span>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(4382138690084278)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(191491987081547267)
,p_name=>'P113_LOC_3'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(171719635007507804)
,p_prompt=>'<span class="btns">LOC #3</span>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(4382138690084278)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(191506430690547349)
,p_name=>'P113_WH_1'
,p_item_sequence=>180
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(191506539966547350)
,p_name=>'P113_WH_2'
,p_item_sequence=>190
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(191506682584547351)
,p_name=>'P113_WH_3'
,p_item_sequence=>200
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(191992347676473720)
,p_name=>'P113_SELECTED_ITEM_NO'
,p_item_sequence=>210
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(192974963350668330)
,p_name=>'P113_SELECTED_UOM'
,p_item_sequence=>230
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(192975075096668331)
,p_name=>'P113_SELECTED_QTY'
,p_item_sequence=>240
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(192975283246668333)
,p_name=>'P113_SELECTED_PRICE'
,p_item_sequence=>250
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(192978026159668361)
,p_name=>'P113_SELECTED_ITEM_ID'
,p_item_sequence=>220
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193678186391224061)
,p_name=>'P113_SELECTED_INDEX'
,p_item_sequence=>160
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(69223047500213990)
,p_computation_sequence=>10
,p_computation_item=>'P113_CLICKED_SEARCH_F2'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69246279630214032)
,p_name=>'Scan Item'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P113_BARCODE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69250644796214042)
,p_event_id=>wwv_flow_imp.id(69246279630214032)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'Scan Item'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_item_num VARCHAR2(50);',
'    v_brand VARCHAR(10);',
'    v_item_desc VARCHAR2(30);',
'    v_uom VARCHAR(10);',
'    v_upc NUMBER;',
'    v_item_id NUMBER;',
'',
'    v_qty NUMBER;',
'    v_price NUMBER;',
'    v_disc_val NUMBER;',
'    v_disc_price NUMBER;',
'    v_ext_price NUMBER;',
'BEGIN',
'    FOR rec IN (',
'        SELECT ',
'            NPT002.ITEM_NUM, NPT002.BRAND_CODE, NPT002.ITEM_DESC, ',
'            NPT002.UOM_CODE, nit002.UPC, NPT002.ITEM_ID, ',
'            NPT002.QUANTITY, NPT002.ITEM_PRICE, NPT002.DISCOUNT_VALUE, ',
'            NPT002.DISCOUNTED_PRICE, (NPT002.ITEM_PRICE * NPT002.QUANTITY) AS EXTENDED_PRICE',
'        FROM',
'            NPT002 npt002',
'        JOIN',
'            NIT002 nit002 ON nit002.ITEM_ID = NPT002.ITEM_ID',
'        WHERE',
'            NPT002.UOM_ID = nit002.UOM_ID AND',
'            NPT002.INVOICE_ID = :P113_INVOICE_NO',
'    ) LOOP',
'        apex_collection.add_member(',
'            p_collection_name => ''UPD_INVOICE_A'',',
'            p_c001 => rec.ITEM_NUM,',
'            p_c002 => rec.BRAND_CODE,',
'            p_c003 => rec.ITEM_DESC,',
'            p_c004 => rec.UOM_CODE,',
'            p_c006 => rec.UPC,',
'            p_c007 => rec.ITEM_ID,',
'',
'            p_n001 => rec.QUANTITY,',
'            p_n002 => rec.ITEM_PRICE,',
'            p_n003 => rec.DISCOUNT_VALUE,',
'            p_n004 => rec.DISCOUNTED_PRICE,',
'            p_n005 => rec.EXTENDED_PRICE);',
'        ',
'        apex_collection.add_member(',
'            p_collection_name => ''UPD_INVOICE_B'',',
'            p_c001 => rec.ITEM_NUM,',
'            p_c002 => rec.BRAND_CODE,',
'            p_c003 => rec.ITEM_DESC,',
'            p_c004 => rec.UOM_CODE,',
'            p_c006 => rec.UPC,',
'            p_c007 => rec.ITEM_ID,',
'',
'            p_n001 => rec.QUANTITY,',
'            p_n002 => rec.ITEM_PRICE,',
'            p_n003 => rec.DISCOUNT_VALUE,',
'            p_n004 => rec.DISCOUNTED_PRICE,',
'            p_n005 => rec.EXTENDED_PRICE);',
'        ',
'        apex_collection.add_member(',
'            p_collection_name => ''UPD_INVOICE_C'',',
'            p_c001 => rec.ITEM_NUM,',
'            p_c002 => rec.BRAND_CODE,',
'            p_c003 => rec.ITEM_DESC,',
'            p_c004 => rec.UOM_CODE,',
'            p_c006 => rec.UPC,',
'            p_c007 => rec.ITEM_ID,',
'',
'            p_n001 => rec.QUANTITY,',
'            p_n002 => rec.ITEM_PRICE,',
'            p_n003 => rec.DISCOUNT_VALUE,',
'            p_n004 => rec.DISCOUNTED_PRICE,',
'            p_n005 => rec.EXTENDED_PRICE);',
'        ',
'        apex_collection.add_member(',
'            p_collection_name => ''UPD_INVOICE_D'',',
'            p_c001 => rec.ITEM_NUM,',
'            p_c002 => rec.BRAND_CODE,',
'            p_c003 => rec.ITEM_DESC,',
'            p_c004 => rec.UOM_CODE,',
'            p_c006 => rec.UPC,',
'            p_c007 => rec.ITEM_ID,',
'',
'            p_n001 => rec.QUANTITY,',
'            p_n002 => rec.ITEM_PRICE,',
'            p_n003 => rec.DISCOUNT_VALUE,',
'            p_n004 => rec.DISCOUNTED_PRICE,',
'            p_n005 => rec.EXTENDED_PRICE);',
'        ',
'    END LOOP;',
'',
'END;',
''))
,p_attribute_02=>'P113_BARCODE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69248696310214037)
,p_event_id=>wwv_flow_imp.id(69246279630214032)
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
'      AND d.dba = :P113_DBA',
'      AND b.date_to >= SYSDATE',
'      AND b.date_from <= SYSDATE',
'      AND f.upc = :P113_BARCODE',
'UNION ALL',
'  SELECT a.discount_id, a.discount_value',
'    FROM NPT029 A, NPT008 B, NPT032 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE a.discount_id = b.discount_id',
'      AND a.discount_id = c.discount_id',
'      AND d.customer_id = c.customer_id',
'      AND a.dept_id = e.dept_id',
'      AND e.item_id = f.item_id',
'      AND d.dba = :P113_DBA',
'      AND b.date_to >= SYSDATE',
'      AND b.date_from <= SYSDATE',
'      AND f.upc = :P113_BARCODE',
'UNION ALL',
'    SELECT a.discount_id, a.discount_value',
'    FROM NPT030 A, NPT008 B, NPT032 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE a.discount_id = b.discount_id',
'      AND a.discount_id = c.discount_id',
'      AND d.customer_id = c.customer_id',
'      AND a.class_id = e.class_id',
'      AND e.item_id = f.item_id',
'      AND d.dba = :P113_DBA',
'      AND b.date_to >= SYSDATE',
'      AND b.date_from <= SYSDATE',
'      AND f.upc = :P113_BARCODE',
'UNION ALL',
'    SELECT DISTINCT 0, np09.standard_discount_value',
'     FROM NPT009 np09, NIT001 nt01, NPT032 np032, NIT002 nt02',
'     WHERE np09.class_id = nt01.class_id',
'      AND np09.customer_id = np032.customer_id ',
'      AND np09.dba = :P113_DBA',
'      AND nt01.item_id = nt02.item_id',
'      AND nt02.upc = :P113_BARCODE',
')',
'    SELECT NVL(discount_id, 0), NVL(MAX(discount_value), 0) AS max_discount_value',
'    INTO v_id, v_disc',
'    FROM discount_data',
'    GROUP BY discount_id',
'    ORDER BY discount_id',
'    OFFSET 0 ROWS',
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
'     WHERE collection_name = ''INVOICE_UPD_DISCOUNTS''',
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
'    WHERE collection_name = ''UPD_INVOICE_A''',
'      AND c006 = :P113_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq_id := 0;',
'END;',
'',
'BEGIN',
'    SELECT a.item_num INTO v_bc',
'    FROM NIT001 a, NIT002 b',
'    WHERE a.item_id = b.item_id',
'      AND b.upc = :P113_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_bc := NULL;',
'        END;',
'        ',
'     IF v_seq BETWEEN 1 AND 4 AND v_bc IS NOT NULL AND v_seq_id != 0 THEN',
'        apex_collection.update_member_attribute(',
'            p_collection_name => CASE v_seq ',
'                                  WHEN 1 THEN ''UPD_INVOICE_A'' ',
'                                  WHEN 2 THEN ''UPD_INVOICE_B'' ',
'                                  WHEN 3 THEN ''UPD_INVOICE_C'' ',
'                                  WHEN 4 THEN ''UPD_INVOICE_D'' ',
'                                 END,',
'            p_seq => v_seq_id,',
'            p_attr_number => 3,',
'            p_number_value => v_disc',
'        );',
'    END IF;',
'',
'END;',
''))
,p_attribute_02=>'P113_BARCODE,P113_DBA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69249149579214039)
,p_event_id=>wwv_flow_imp.id(69246279630214032)
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
'      AND d.dba = :P113_DBA',
'      AND b.date_to >= SYSDATE',
'      AND b.date_from <= SYSDATE',
'      AND f.upc = :P113_BARCODE',
'UNION ALL',
'  SELECT a.discount_id, a.discount_value',
'    FROM NPT029 A, NPT008 B, NPT032 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE a.discount_id = b.discount_id',
'      AND a.discount_id = c.discount_id',
'      AND d.customer_id = c.customer_id',
'      AND a.dept_id = e.dept_id',
'      AND e.item_id = f.item_id',
'      AND d.dba = :P113_DBA',
'      AND b.date_to >= SYSDATE',
'      AND b.date_from <= SYSDATE',
'      AND f.upc = :P113_BARCODE',
'UNION ALL',
'    SELECT a.discount_id, a.discount_value',
'    FROM NPT030 A, NPT008 B, NPT032 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE a.discount_id = b.discount_id',
'      AND a.discount_id = c.discount_id',
'      AND d.customer_id = c.customer_id',
'      AND a.class_id = e.class_id',
'      AND e.item_id = f.item_id',
'      AND d.dba = :P113_DBA',
'      AND b.date_to >= SYSDATE',
'      AND b.date_from <= SYSDATE',
'      AND f.upc = :P113_BARCODE',
'UNION ALL',
'    SELECT DISTINCT 0, np09.standard_discount_value',
'     FROM NPT009 np09, NIT001 nt01, NPT032 np032, NIT002 nt02',
'     WHERE np09.class_id = nt01.class_id',
'      AND np09.customer_id = np032.customer_id ',
'      AND np09.dba = :P113_DBA',
'      AND nt01.item_id = nt02.item_id',
'      AND nt02.upc = :P113_BARCODE',
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
'     WHERE collection_name = ''INVOICE_UPD_DISCOUNTS''',
'       AND n001 = NVL(v_id, 0)',
'       AND c001 IN (''A'', ''B'', ''C'', ''D'');',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq := 0; ',
'END;',
'',
'BEGIN',
'    SELECT seq_id INTO v_seq_id',
'    FROM apex_collections',
'    WHERE collection_name = ''UPD_INVOICE_B''',
'      AND c006 = :P113_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq_id := 0;',
'END;',
'',
'BEGIN',
'    SELECT a.item_num INTO v_bc',
'    FROM NIT001 a, NIT002 b',
'    WHERE a.item_id = b.item_id',
'      AND b.upc = :P113_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_bc := NULL;',
'        END;',
'        ',
'     IF v_seq BETWEEN 1 AND 4 AND v_bc IS NOT NULL AND v_seq_id != 0 THEN',
'        apex_collection.update_member_attribute(',
'            p_collection_name => CASE v_seq ',
'                                  WHEN 1 THEN ''UPD_INVOICE_A'' ',
'                                  WHEN 2 THEN ''UPD_INVOICE_B'' ',
'                                  WHEN 3 THEN ''UPD_INVOICE_C'' ',
'                                  WHEN 4 THEN ''UPD_INVOICE_D'' ',
'                                 END,',
'            p_seq => v_seq_id,',
'            p_attr_number => 3,',
'            p_number_value => v_disc',
'        );',
'    END IF;',
'',
'END;',
''))
,p_attribute_02=>'P113_BARCODE,P113_DBA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69249612137214040)
,p_event_id=>wwv_flow_imp.id(69246279630214032)
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
'      AND d.dba = :P113_DBA',
'      AND b.date_to >= SYSDATE',
'      AND b.date_from <= SYSDATE',
'      AND f.upc = :P113_BARCODE',
'UNION ALL',
'  SELECT a.discount_id, a.discount_value',
'    FROM NPT029 A, NPT008 B, NPT032 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE a.discount_id = b.discount_id',
'      AND a.discount_id = c.discount_id',
'      AND d.customer_id = c.customer_id',
'      AND a.dept_id = e.dept_id',
'      AND e.item_id = f.item_id',
'      AND d.dba = :P113_DBA',
'      AND b.date_to >= SYSDATE',
'      AND b.date_from <= SYSDATE',
'      AND f.upc = :P113_BARCODE',
'UNION ALL',
'    SELECT a.discount_id, a.discount_value',
'    FROM NPT030 A, NPT008 B, NPT032 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE a.discount_id = b.discount_id',
'      AND a.discount_id = c.discount_id',
'      AND d.customer_id = c.customer_id',
'      AND a.class_id = e.class_id',
'      AND e.item_id = f.item_id',
'      AND d.dba = :P113_DBA',
'      AND b.date_to >= SYSDATE',
'      AND b.date_from <= SYSDATE',
'      AND f.upc = :P113_BARCODE',
'UNION ALL',
'    SELECT DISTINCT 0, np09.standard_discount_value',
'     FROM NPT009 np09, NIT001 nt01, NPT032 np032, NIT002 nt02',
'     WHERE np09.class_id = nt01.class_id',
'      AND np09.customer_id = np032.customer_id ',
'      AND np09.dba = :P113_DBA',
'      AND nt01.item_id = nt02.item_id',
'      AND nt02.upc = :P113_BARCODE',
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
'     WHERE collection_name = ''INVOICE_UPD_DISCOUNTS''',
'       AND n001 = NVL(v_id, 0)',
'       AND c001 IN (''A'', ''B'', ''C'', ''D'');',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq := 0; ',
'END;',
'',
'BEGIN',
'    SELECT seq_id INTO v_seq_id',
'    FROM apex_collections',
'    WHERE collection_name = ''UPD_INVOICE_C''',
'      AND c006 = :P113_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq_id := 0;',
'END;',
'',
'BEGIN',
'    SELECT a.item_num INTO v_bc',
'    FROM NIT001 a, NIT002 b',
'    WHERE a.item_id = b.item_id',
'      AND b.upc = :P113_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_bc := NULL;',
'        END;',
'        ',
'     IF v_seq BETWEEN 1 AND 4 AND v_bc IS NOT NULL AND v_seq_id != 0 THEN',
'        apex_collection.update_member_attribute(',
'            p_collection_name => CASE v_seq ',
'                                  WHEN 1 THEN ''UPD_INVOICE_A'' ',
'                                  WHEN 2 THEN ''UPD_INVOICE_B'' ',
'                                  WHEN 3 THEN ''UPD_INVOICE_C'' ',
'                                  WHEN 4 THEN ''UPD_INVOICE_D'' ',
'                                 END,',
'            p_seq => v_seq_id,',
'            p_attr_number => 3,',
'            p_number_value => v_disc',
'        );',
'    END IF;',
'',
'END;',
''))
,p_attribute_02=>'P113_BARCODE,P113_DBA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69250186916214040)
,p_event_id=>wwv_flow_imp.id(69246279630214032)
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
'      AND d.dba = :P113_DBA',
'      AND b.date_to >= SYSDATE',
'      AND b.date_from <= SYSDATE',
'      AND f.upc = :P113_BARCODE',
'UNION ALL',
'  SELECT a.discount_id, a.discount_value',
'    FROM NPT029 A, NPT008 B, NPT032 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE a.discount_id = b.discount_id',
'      AND a.discount_id = c.discount_id',
'      AND d.customer_id = c.customer_id',
'      AND a.dept_id = e.dept_id',
'      AND e.item_id = f.item_id',
'      AND d.dba = :P113_DBA',
'      AND b.date_to >= SYSDATE',
'      AND b.date_from <= SYSDATE',
'      AND f.upc = :P113_BARCODE',
'UNION ALL',
'    SELECT a.discount_id, a.discount_value',
'    FROM NPT030 A, NPT008 B, NPT032 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE a.discount_id = b.discount_id',
'      AND a.discount_id = c.discount_id',
'      AND d.customer_id = c.customer_id',
'      AND a.class_id = e.class_id',
'      AND e.item_id = f.item_id',
'      AND d.dba = :P113_DBA',
'      AND b.date_to >= SYSDATE',
'      AND b.date_from <= SYSDATE',
'      AND f.upc = :P113_BARCODE',
'UNION ALL',
'    SELECT DISTINCT 0, np09.standard_discount_value',
'     FROM NPT009 np09, NIT001 nt01, NPT032 np032, NIT002 nt02',
'     WHERE np09.class_id = nt01.class_id',
'      AND np09.customer_id = np032.customer_id ',
'      AND np09.dba = :P113_DBA',
'      AND nt01.item_id = nt02.item_id',
'      AND nt02.upc = :P113_BARCODE',
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
'     WHERE collection_name = ''INVOICE_UPD_DISCOUNTS''',
'       AND n001 = NVL(v_id, 0)',
'       AND c001 IN (''A'', ''B'', ''C'', ''D'');',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq := 0; ',
'END;',
'',
'BEGIN',
'    SELECT seq_id INTO v_seq_id',
'    FROM apex_collections',
'    WHERE collection_name = ''UPD_INVOICE_D''',
'      AND c006 = :P113_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq_id := 0;',
'END;',
'',
'BEGIN',
'    SELECT a.item_num INTO v_bc',
'    FROM NIT001 a, NIT002 b',
'    WHERE a.item_id = b.item_id',
'      AND b.upc = :P113_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_bc := NULL;',
'        END;',
'        ',
'     IF v_seq BETWEEN 1 AND 4 AND v_bc IS NOT NULL AND v_seq_id != 0 THEN',
'        apex_collection.update_member_attribute(',
'            p_collection_name => CASE v_seq ',
'                                  WHEN 1 THEN ''UPD_INVOICE_A'' ',
'                                  WHEN 2 THEN ''UPD_INVOICE_B'' ',
'                                  WHEN 3 THEN ''UPD_INVOICE_C'' ',
'                                  WHEN 4 THEN ''UPD_INVOICE_D'' ',
'                                 END,',
'            p_seq => v_seq_id,',
'            p_attr_number => 3,',
'            p_number_value => v_disc',
'        );',
'    END IF;',
'',
'END;',
''))
,p_attribute_02=>'P113_BARCODE,P113_DBA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69248284050214037)
,p_event_id=>wwv_flow_imp.id(69246279630214032)
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
'    WHERE d.dba = :P113_DBA',
'      AND c.discount_id = a.discount_id',
'      AND a.discount_id = b.discount_id',
'      AND d.customer_id = b.customer_id',
'      AND a.sic_id = e.sic_id',
'      AND e.item_id = f.item_id',
'      AND c.date_to >= SYSDATE',
'      AND c.date_from <= SYSDATE',
'      AND f.upc = :P113_BARCODE',
'UNION ALL',
'    SELECT a.discount_id AS discount_id, NVL(CASE WHEN c.type = ''Percent'' THEN f.price * (a.discount_value/100) WHEN c.type = ''Fixed'' THEN a.discount_value ELSE f.price END, 0) AS discounted_price',
'     FROM NPT029 A, NPT032 B, NPT008 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE d.dba = :P113_DBA',
'      AND c.discount_id = a.discount_id',
'      AND a.discount_id = b.discount_id',
'      AND d.customer_id = b.customer_id',
'      AND a.dept_id = e.dept_id',
'      AND e.item_id = f.item_id',
'      AND c.date_to >= SYSDATE',
'      AND c.date_from <= SYSDATE',
'      AND f.upc = :P113_BARCODE',
'UNION ALL',
'    SELECT a.discount_id AS discount_id, NVL(CASE WHEN c.type = ''Percent'' THEN f.price * (a.discount_value/100) WHEN c.type = ''Fixed'' THEN a.discount_value ELSE f.price END, 0) AS discounted_price',
'     FROM NPT030 A, NPT032 B, NPT008 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE d.dba = :P113_DBA',
'      AND c.discount_id = a.discount_id',
'      AND a.discount_id = b.discount_id',
'      AND d.customer_id = b.customer_id',
'      AND a.class_id = e.class_id',
'      AND e.item_id = f.item_id',
'      AND c.date_to >= SYSDATE',
'      AND c.date_from <= SYSDATE',
'      AND f.upc = :P113_BARCODE',
'UNION ALL',
'     SELECT DISTINCT 0 AS discount_id, NVL(d.price * (a.standard_discount_value / 100), 0) AS discounted_price',
'      FROM NPT009 A, NPT032 B, NIT001 C, NIT002 D',
'     WHERE a.dba = :P113_DBA',
'       AND d.upc = :P113_BARCODE',
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
'     WHERE collection_name = ''INVOICE_UPD_DISCOUNTS''',
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
'    WHERE collection_name = ''UPD_INVOICE_A''',
'      AND c006 = :P113_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_sid := 0;',
'END;',
'',
'BEGIN',
'    SELECT a.item_num INTO v_bc',
'    FROM NIT001 a, NIT002 b',
'    WHERE a.item_id = b.item_id',
'      AND b.upc = :P113_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_bc := NULL;',
'        END;',
'        ',
'     IF v_seq BETWEEN 1 AND 4 AND v_bc IS NOT NULL AND v_sid != 0 THEN',
'        apex_collection.update_member_attribute(',
'            p_collection_name => CASE v_seq ',
'                                  WHEN 1 THEN ''UPD_INVOICE_A'' ',
'                                  WHEN 2 THEN ''UPD_INVOICE_B'' ',
'                                  WHEN 3 THEN ''UPD_INVOICE_C'' ',
'                                  WHEN 4 THEN ''UPD_INVOICE_D'' ',
'                                 END,',
'            p_seq => v_sid,',
'            p_attr_number => 4,',
'            p_number_value => v_dc',
'        );',
'    END IF;',
'',
'END;'))
,p_attribute_02=>'P113_BARCODE,P113_DBA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69246752558214032)
,p_event_id=>wwv_flow_imp.id(69246279630214032)
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
'    WHERE d.dba = :P113_DBA',
'      AND c.discount_id = a.discount_id',
'      AND a.discount_id = b.discount_id',
'      AND d.customer_id = b.customer_id',
'      AND a.sic_id = e.sic_id',
'      AND e.item_id = f.item_id',
'      AND c.date_to >= SYSDATE',
'      AND c.date_from <= SYSDATE',
'      AND f.upc = :P113_BARCODE',
'UNION ALL',
'    SELECT a.discount_id AS discount_id, NVL(CASE WHEN c.type = ''Percent'' THEN f.price * (a.discount_value/100) WHEN c.type = ''Fixed'' THEN a.discount_value ELSE f.price END, 0) AS discounted_price',
'     FROM NPT029 A, NPT032 B, NPT008 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE d.dba = :P113_DBA',
'      AND c.discount_id = a.discount_id',
'      AND a.discount_id = b.discount_id',
'      AND d.customer_id = b.customer_id',
'      AND a.dept_id = e.dept_id',
'      AND e.item_id = f.item_id',
'      AND c.date_to >= SYSDATE',
'      AND c.date_from <= SYSDATE',
'      AND f.upc = :P113_BARCODE',
'UNION ALL',
'    SELECT a.discount_id AS discount_id, NVL(CASE WHEN c.type = ''Percent'' THEN f.price * (a.discount_value/100) WHEN c.type = ''Fixed'' THEN a.discount_value ELSE f.price END, 0) AS discounted_price',
'     FROM NPT030 A, NPT032 B, NPT008 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE d.dba = :P113_DBA',
'      AND c.discount_id = a.discount_id',
'      AND a.discount_id = b.discount_id',
'      AND d.customer_id = b.customer_id',
'      AND a.class_id = e.class_id',
'      AND e.item_id = f.item_id',
'      AND c.date_to >= SYSDATE',
'      AND c.date_from <= SYSDATE',
'      AND f.upc = :P113_BARCODE',
'UNION ALL',
'     SELECT DISTINCT 0 AS discount_id, NVL(d.price * (a.standard_discount_value / 100), 0) AS discounted_price',
'      FROM NPT009 A, NPT032 B, NIT001 C, NIT002 D',
'     WHERE a.dba = :P113_DBA',
'       AND d.upc = :P113_BARCODE',
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
'     WHERE collection_name = ''INVOICE_UPD_DISCOUNTS''',
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
'    WHERE collection_name = ''UPD_INVOICE_B''',
'      AND c006 = :P113_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_sid := 0;',
'END;',
'',
'BEGIN',
'    SELECT a.item_num INTO v_bc',
'    FROM NIT001 a, NIT002 b',
'    WHERE a.item_id = b.item_id',
'      AND b.upc = :P113_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_bc := NULL;',
'        END;',
'        ',
'     IF v_seq BETWEEN 1 AND 4 AND v_bc IS NOT NULL AND v_sid != 0 THEN',
'        apex_collection.update_member_attribute(',
'            p_collection_name => CASE v_seq ',
'                                  WHEN 1 THEN ''UPD_INVOICE_A'' ',
'                                  WHEN 2 THEN ''UPD_INVOICE_B'' ',
'                                  WHEN 3 THEN ''UPD_INVOICE_C'' ',
'                                  WHEN 4 THEN ''UPD_INVOICE_D'' ',
'                                 END,',
'            p_seq => v_sid,',
'            p_attr_number => 4,',
'            p_number_value => v_dc',
'        );',
'    END IF;',
'',
'END;'))
,p_attribute_02=>'P113_BARCODE,P113_DBA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69247264393214034)
,p_event_id=>wwv_flow_imp.id(69246279630214032)
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
'    WHERE d.dba = :P113_DBA',
'      AND c.discount_id = a.discount_id',
'      AND a.discount_id = b.discount_id',
'      AND d.customer_id = b.customer_id',
'      AND a.sic_id = e.sic_id',
'      AND e.item_id = f.item_id',
'      AND c.date_to >= SYSDATE',
'      AND c.date_from <= SYSDATE',
'      AND f.upc = :P113_BARCODE',
'UNION ALL',
'    SELECT a.discount_id AS discount_id, NVL(CASE WHEN c.type = ''Percent'' THEN f.price * (a.discount_value/100) WHEN c.type = ''Fixed'' THEN a.discount_value ELSE f.price END, 0) AS discounted_price',
'     FROM NPT029 A, NPT032 B, NPT008 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE d.dba = :P113_DBA',
'      AND c.discount_id = a.discount_id',
'      AND a.discount_id = b.discount_id',
'      AND d.customer_id = b.customer_id',
'      AND a.dept_id = e.dept_id',
'      AND e.item_id = f.item_id',
'      AND c.date_to >= SYSDATE',
'      AND c.date_from <= SYSDATE',
'      AND f.upc = :P113_BARCODE',
'UNION ALL',
'    SELECT a.discount_id AS discount_id, NVL(CASE WHEN c.type = ''Percent'' THEN f.price * (a.discount_value/100) WHEN c.type = ''Fixed'' THEN a.discount_value ELSE f.price END, 0) AS discounted_price',
'     FROM NPT030 A, NPT032 B, NPT008 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE d.dba = :P113_DBA',
'      AND c.discount_id = a.discount_id',
'      AND a.discount_id = b.discount_id',
'      AND d.customer_id = b.customer_id',
'      AND a.class_id = e.class_id',
'      AND e.item_id = f.item_id',
'      AND c.date_to >= SYSDATE',
'      AND c.date_from <= SYSDATE',
'      AND f.upc = :P113_BARCODE',
'UNION ALL',
'     SELECT DISTINCT 0 AS discount_id, NVL(d.price * (a.standard_discount_value / 100), 0) AS discounted_price',
'      FROM NPT009 A, NPT032 B, NIT001 C, NIT002 D',
'     WHERE a.dba = :P113_DBA',
'       AND d.upc = :P113_BARCODE',
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
'     WHERE collection_name = ''INVOICE_UPD_DISCOUNTS''',
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
'    WHERE collection_name = ''UPD_INVOICE_C''',
'      AND c006 = :P113_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_sid := 0;',
'END;',
'',
'BEGIN',
'    SELECT a.item_num INTO v_bc',
'    FROM NIT001 a, NIT002 b',
'    WHERE a.item_id = b.item_id',
'      AND b.upc = :P113_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_bc := NULL;',
'        END;',
'        ',
'     IF v_seq BETWEEN 1 AND 4 AND v_bc IS NOT NULL AND v_sid != 0 THEN',
'        apex_collection.update_member_attribute(',
'            p_collection_name => CASE v_seq ',
'                                  WHEN 1 THEN ''UPD_INVOICE_A'' ',
'                                  WHEN 2 THEN ''UPD_INVOICE_B'' ',
'                                  WHEN 3 THEN ''UPD_INVOICE_C'' ',
'                                  WHEN 4 THEN ''UPD_INVOICE_D'' ',
'                                 END,',
'            p_seq => v_sid,',
'            p_attr_number => 4,',
'            p_number_value => v_dc',
'        );',
'    END IF;',
'',
'END;'))
,p_attribute_02=>'P113_BARCODE,P113_DBA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69247733187214035)
,p_event_id=>wwv_flow_imp.id(69246279630214032)
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
'    WHERE d.dba = :P113_DBA',
'      AND c.discount_id = a.discount_id',
'      AND a.discount_id = b.discount_id',
'      AND d.customer_id = b.customer_id',
'      AND a.sic_id = e.sic_id',
'      AND e.item_id = f.item_id',
'      AND c.date_to >= SYSDATE',
'      AND c.date_from <= SYSDATE',
'      AND f.upc = :P113_BARCODE',
'UNION ALL',
'    SELECT a.discount_id AS discount_id, NVL(CASE WHEN c.type = ''Percent'' THEN f.price * (a.discount_value/100) WHEN c.type = ''Fixed'' THEN a.discount_value ELSE f.price END, 0) AS discounted_price',
'     FROM NPT029 A, NPT032 B, NPT008 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE d.dba = :P113_DBA',
'      AND c.discount_id = a.discount_id',
'      AND a.discount_id = b.discount_id',
'      AND d.customer_id = b.customer_id',
'      AND a.dept_id = e.dept_id',
'      AND e.item_id = f.item_id',
'      AND c.date_to >= SYSDATE',
'      AND c.date_from <= SYSDATE',
'      AND f.upc = :P113_BARCODE',
'UNION ALL',
'    SELECT a.discount_id AS discount_id, NVL(CASE WHEN c.type = ''Percent'' THEN f.price * (a.discount_value/100) WHEN c.type = ''Fixed'' THEN a.discount_value ELSE f.price END, 0) AS discounted_price',
'     FROM NPT030 A, NPT032 B, NPT008 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE d.dba = :P113_DBA',
'      AND c.discount_id = a.discount_id',
'      AND a.discount_id = b.discount_id',
'      AND d.customer_id = b.customer_id',
'      AND a.class_id = e.class_id',
'      AND e.item_id = f.item_id',
'      AND c.date_to >= SYSDATE',
'      AND c.date_from <= SYSDATE',
'      AND f.upc = :P113_BARCODE',
'UNION ALL',
'     SELECT DISTINCT 0 AS discount_id, NVL(d.price * (a.standard_discount_value / 100), 0) AS discounted_price',
'      FROM NPT009 A, NPT032 B, NIT001 C, NIT002 D',
'     WHERE a.dba = :P113_DBA',
'       AND d.upc = :P113_BARCODE',
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
'     WHERE collection_name = ''INVOICE_UPD_DISCOUNTS''',
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
'    WHERE collection_name = ''UPD_INVOICE_D''',
'      AND c006 = :P113_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_sid := 0;',
'END;',
'',
'BEGIN',
'    SELECT a.item_num INTO v_bc',
'    FROM NIT001 a, NIT002 b',
'    WHERE a.item_id = b.item_id',
'      AND b.upc = :P113_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_bc := NULL;',
'        END;',
'        ',
'     IF v_seq BETWEEN 1 AND 4 AND v_bc IS NOT NULL AND v_sid != 0 THEN',
'        apex_collection.update_member_attribute(',
'            p_collection_name => CASE v_seq ',
'                                  WHEN 1 THEN ''UPD_INVOICE_A'' ',
'                                  WHEN 2 THEN ''UPD_INVOICE_B'' ',
'                                  WHEN 3 THEN ''UPD_INVOICE_C'' ',
'                                  WHEN 4 THEN ''UPD_INVOICE_D'' ',
'                                 END,',
'            p_seq => v_sid,',
'            p_attr_number => 4,',
'            p_number_value => v_dc',
'        );',
'    END IF;',
'',
'END;'))
,p_attribute_02=>'P113_BARCODE,P113_DBA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69251656564214043)
,p_event_id=>wwv_flow_imp.id(69246279630214032)
,p_event_result=>'TRUE'
,p_action_sequence=>190
,p_execute_on_page_init=>'Y'
,p_name=>'Sub-Total'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P113_SUB'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH COLLECTION_SUMS AS (',
'    SELECT ''UPD_INVOICE_A'' AS collection_name, SUM(n002 * n001) AS SUB_TOTAL',
'    FROM apex_collections',
'    WHERE collection_name = ''UPD_INVOICE_A''',
' ',
'    UNION ALL',
' ',
'    SELECT ''UPD_INVOICE_B'' AS collection_name, SUM(n002 * n001) AS SUB_TOTAL',
'    FROM apex_collections',
'    WHERE collection_name = ''UPD_INVOICE_B''',
' ',
'    UNION ALL',
' ',
'    SELECT ''UPD_INVOICE_C'' AS collection_name, SUM(n002 * n001) AS SUB_TOTAL',
'    FROM apex_collections',
'    WHERE collection_name = ''UPD_INVOICE_C''',
' ',
'    UNION ALL',
' ',
'    SELECT ''UPD_INVOICE_D'' AS collection_name, SUM(n002 * n001) AS SUB_TOTAL',
'    FROM apex_collections',
'    WHERE collection_name = ''UPD_INVOICE_D''',
'),',
'LOWEST_SUM AS (',
'    SELECT collection_name',
'    FROM COLLECTION_SUMS',
'    WHERE SUB_TOTAL = (SELECT MIN(SUB_TOTAL) FROM COLLECTION_SUMS)',
'    FETCH FIRST 1 ROW ONLY',
')',
'SELECT TO_CHAR(NVL(SUM(n002 * n001), 0), ''FM999G999G999G990D00'' ) ',
'FROM apex_collections',
'WHERE collection_name IN (SELECT collection_name FROM LOWEST_SUM);'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69252114943214043)
,p_event_id=>wwv_flow_imp.id(69246279630214032)
,p_event_result=>'TRUE'
,p_action_sequence=>210
,p_execute_on_page_init=>'Y'
,p_name=>'Discount'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P113_DISCOUNT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH COLLECTION_SUMS AS (',
'    SELECT ''UPD_INVOICE_A'' AS collection_name, SUM(n004 * n001) AS TOTAL_DISCOUNT',
'    FROM apex_collections',
'    WHERE collection_name = ''UPD_INVOICE_A''',
' ',
'    UNION ALL',
' ',
'    SELECT ''UPD_INVOICE_B'' AS collection_name, SUM(n004 * n001) AS TOTAL_DISCOUNT',
'    FROM apex_collections',
'    WHERE collection_name = ''UPD_INVOICE_B''',
' ',
'    UNION ALL',
' ',
'    SELECT ''UPD_INVOICE_C'' AS collection_name, SUM(n004 * n001) AS TOTAL_DISCOUNT',
'    FROM apex_collections',
'    WHERE collection_name = ''UPD_INVOICE_C''',
' ',
'    UNION ALL',
' ',
'    SELECT ''UPD_INVOICE_D'' AS collection_name, SUM(n004 * n001) AS TOTAL_DISCOUNT',
'    FROM apex_collections',
'    WHERE collection_name = ''UPD_INVOICE_D''',
'',
'),',
'LOWEST_SUM AS (',
'    SELECT collection_name',
'    FROM COLLECTION_SUMS',
'    WHERE TOTAL_DISCOUNT = (SELECT MAX(TOTAL_DISCOUNT) FROM COLLECTION_SUMS)',
'    FETCH FIRST 1 ROW ONLY',
')',
'SELECT TO_CHAR(NVL(SUM(n004 * n001), 0) + NVL(:P113_ADDITIONAL_DISCOUNT, 0), ''FM999G999G999G990D00'' ) ',
'FROM apex_collections',
'WHERE collection_name IN (SELECT collection_name FROM LOWEST_SUM);'))
,p_attribute_07=>'P113_ADDITIONAL_DISCOUNT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69253193048214045)
,p_event_id=>wwv_flow_imp.id(69246279630214032)
,p_event_result=>'TRUE'
,p_action_sequence=>230
,p_execute_on_page_init=>'Y'
,p_name=>'Total'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P113_TOTAL'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'TO_CHAR(NVL(TO_NUMBER(REPLACE(REPLACE(NVL(:P113_SUB, 0), ''$'', ''''), '','', '''')) - TO_NUMBER(REPLACE(REPLACE(NVL(:P113_DISCOUNT, 0), ''$'', ''''), '','', '''')), 0), ''FM999G999G999G990D00'' ) '
,p_attribute_07=>'P113_SUB,P113_DISCOUNT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69252630401214043)
,p_event_id=>wwv_flow_imp.id(69246279630214032)
,p_event_result=>'TRUE'
,p_action_sequence=>250
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P113_SUB,P113_DISCOUNT,P113_ADDITIONAL_DISCOUNT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69251194790214042)
,p_event_id=>wwv_flow_imp.id(69246279630214032)
,p_event_result=>'TRUE'
,p_action_sequence=>260
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(182322890461368473)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69234688027214012)
,p_name=>'Click last row'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P113_BARCODE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69235157590214012)
,p_event_id=>wwv_flow_imp.id(69234688027214012)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Scan Item 4'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(() => {',
'  $(document).ready(function() {',
'        var gridView = apex.region("wholesale").widget().interactiveGrid("getViews").grid;',
'        var model = gridView.model;',
'        var editIndex = model.getTotalRecords() - 1;',
'        var recordAt = model.recordAt(editIndex); ',
'        gridView.view$.grid("gotoCell", recordAt[0], "ITEM_NO"); ',
'        gridView.view$.find(".a-GV-cell.is-focused").trigger("click"); ',
'  });',
'}, 5000);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69254931175214048)
,p_name=>'Get typed value'
,p_event_sequence=>110
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(182322890461368473)
,p_triggering_element=>'ITEM_NO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69255451891214048)
,p_event_id=>wwv_flow_imp.id(69254931175214048)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'QTY'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let upcSearch = this.triggeringElement.value;',
'apex.item("P113_SEARCHED_UPC").setValue(upcSearch);',
'console.log(upcSearch);',
'',
'',
'setTimeout(() => {',
'    var gridView = apex.region("wholesale").widget().interactiveGrid("getViews").grid;',
'    var model = gridView.model;',
'    apex.region("wholesale").call("getActions").set("edit", false);',
'    model.clearChanges();',
'',
'    $.event.trigger(''Search'');',
'}, 500)'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69256447806214050)
,p_event_id=>wwv_flow_imp.id(69254931175214048)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>'Set UPC Value'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P113_UPC_SEARCH'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT b.upc',
'  FROM NIT001 a, NIT002 b, NIM026 c, NIM022 d',
' WHERE a.item_id = b.item_id',
'   AND b.uom_id = c.uom_id',
'   AND a.brand_id = d.brand_id',
'   AND a.item_num || '' - '' || UPPER(c.uom_code) = :P113_SEARCHED_UPC',
'',
'UNION ALL',
'',
'SELECT b.upc',
'  FROM NIT001 a, NIT002 b, NIM026 c, NIM022 d',
' WHERE a.item_id = b.item_id',
'   AND b.uom_id = c.uom_id',
'   AND a.brand_id = d.brand_id',
'   AND b.upc = :P113_SEARCHED_UPC'))
,p_attribute_07=>'P113_SEARCHED_UPC'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69255937050214050)
,p_event_id=>wwv_flow_imp.id(69254931175214048)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P113_UPC_SEARCH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69243973095214029)
,p_name=>'Set QOH'
,p_event_sequence=>140
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(182322890461368473)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69244917540214031)
,p_event_id=>wwv_flow_imp.id(69243973095214029)
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
'    console.log(itemIdSelected);',
'    console.log(itemNoSelected);',
'    apex.item("P113_SELECTED_ITEM_NO").setValue(itemNoSelected);',
'    apex.item("P113_SELECTED_ITEM_ID").setValue(itemIdSelected);',
'    apex.item("P113_SELECTED_PRICE").setValue(priceSelected.replace(/[,]/g, ""));',
'    apex.item("P113_SELECTED_UOM").setValue(uomSelected);',
'    apex.item("P113_SELECTED_INDEX").setValue(index);',
'',
'} else if (this.data?.record?.length > 0) {',
'    var rec = this.data.record;',
'    let itemNoSelected = rec[1];',
'    let itemIdSelected = rec[2];',
'    let priceSelected = rec[6];',
'    let uomSelected = rec[7];',
'    let index = rec[0][0];',
'    console.log(itemIdSelected);',
'    console.log(itemNoSelected);',
'    apex.item("P113_SELECTED_ITEM_NO").setValue(itemNoSelected);',
'    apex.item("P113_SELECTED_ITEM_ID").setValue(itemIdSelected);',
'    apex.item("P113_SELECTED_PRICE").setValue(priceSelected.replace(/[,]/g, ""));',
'    apex.item("P113_SELECTED_UOM").setValue(uomSelected);',
'    apex.item("P113_SELECTED_INDEX").setValue(index);',
'',
'}',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69244473528214029)
,p_event_id=>wwv_flow_imp.id(69243973095214029)
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
 p_id=>wwv_flow_imp.id(69245385559214031)
,p_name=>'Focus Quantity'
,p_event_sequence=>160
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(69217869516213959)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69245887147214031)
,p_event_id=>wwv_flow_imp.id(69245385559214031)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var ig = apex.region("wholesale").widget().interactiveGrid("getViews","grid");',
'ig.view$.grid("gotoCell", $("#P113_SELECTED_INDEX").val(), "QTY");',
'ig.view$.find(".a-GV-cell.is-focused").trigger("dblclick");'))
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'$("#P113_SELECTED_INDEX").val() > 0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69253566571214045)
,p_name=>'Pass Total'
,p_event_sequence=>190
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(69216673153213956)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69254051084214045)
,p_event_id=>wwv_flow_imp.id(69253566571214045)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P113_URL := apex_page.get_url(',
'       p_page   => 128,',
'       p_items  => ''P128_TOTAL'',',
'       p_values => TO_CHAR(NVL(:P113_TOTAL, 0) , ''FM999G999G999G990D00'' ) ',
'     );',
'END;'))
,p_attribute_02=>'P113_TOTAL'
,p_attribute_03=>'P113_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69254546679214046)
,p_event_id=>wwv_flow_imp.id(69253566571214045)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P113_URL");',
'apex.navigation.redirect(url);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69235559553214014)
,p_name=>'Searched'
,p_event_sequence=>220
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'Search'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69236526747214015)
,p_event_id=>wwv_flow_imp.id(69235559553214014)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Search by UPC '
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
'    v_collections SYS.ODCIVARCHAR2LIST := SYS.ODCIVARCHAR2LIST(''UPD_INVOICE_A'', ''UPD_INVOICE_B'', ''UPD_INVOICE_C'', ''UPD_INVOICE_D'');',
'    v_collection_name VARCHAR2(15);',
'BEGIN',
'    BEGIN',
'    SELECT a.item_num, b.upc, a.item_id, a.item_desc, b.price, b.price total, UPPER(c.uom_code), d.brand_code INTO v_item_num, v_upc, v_item_id, v_product_name, v_price, v_total, v_uom, v_brand',
'          FROM NIT001 a, NIT002 b, NIM026 c, NIM022 d',
'         WHERE a.item_id = b.item_id',
'           AND b.uom_id = c.uom_id',
'           AND a.brand_id = d.brand_id',
'           AND b.upc = :P113_SEARCHED_UPC; ',
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
'               AND c006 = :P113_SEARCHED_UPC;',
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
'                p_c006 => :P113_SEARCHED_UPC,',
'                p_c007 => v_item_id',
'            );',
'        END IF;',
'    END LOOP;',
'END;',
''))
,p_attribute_02=>'P113_SEARCHED_UPC'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69237091437214015)
,p_event_id=>wwv_flow_imp.id(69235559553214014)
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
'    v_collections SYS.ODCIVARCHAR2LIST := SYS.ODCIVARCHAR2LIST(''UPD_INVOICE_A'', ''UPD_INVOICE_B'', ''UPD_INVOICE_C'', ''UPD_INVOICE_D'');',
'    v_collection_name VARCHAR2(15);',
'BEGIN',
'    v_item_num_search := SUBSTR (:P113_SEARCHED_UPC, 1, (INSTR(:P113_SEARCHED_UPC, '' - '') - 1));',
'    v_uom_search := SUBSTR (:P113_SEARCHED_UPC, (INSTR(:P113_SEARCHED_UPC, '' - '') + 3));',
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
,p_attribute_02=>'P113_SEARCHED_UPC'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69242588049214026)
,p_event_id=>wwv_flow_imp.id(69235559553214014)
,p_event_result=>'TRUE'
,p_action_sequence=>50
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
'      AND d.dba = :P113_DBA',
'      AND b.date_to >= SYSDATE',
'      AND b.date_from <= SYSDATE',
'      AND f.upc = :P113_UPC_SEARCH',
'UNION ALL',
'  SELECT a.discount_id, a.discount_value',
'    FROM NPT029 A, NPT008 B, NPT032 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE a.discount_id = b.discount_id',
'      AND a.discount_id = c.discount_id',
'      AND d.customer_id = c.customer_id',
'      AND a.dept_id = e.dept_id',
'      AND e.item_id = f.item_id',
'      AND d.dba = :P113_DBA',
'      AND b.date_to >= SYSDATE',
'      AND b.date_from <= SYSDATE',
'      AND f.upc = :P113_UPC_SEARCH',
'UNION ALL',
'    SELECT a.discount_id, a.discount_value',
'    FROM NPT030 A, NPT008 B, NPT032 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE a.discount_id = b.discount_id',
'      AND a.discount_id = c.discount_id',
'      AND d.customer_id = c.customer_id',
'      AND a.class_id = e.class_id',
'      AND e.item_id = f.item_id',
'      AND d.dba = :P113_DBA',
'      AND b.date_to >= SYSDATE',
'      AND b.date_from <= SYSDATE',
'      AND f.upc = :P113_UPC_SEARCH',
'UNION ALL',
'    SELECT DISTINCT 0, np09.standard_discount_value',
'     FROM NPT009 np09, NIT001 nt01, NPT032 np032, NIT002 nt02',
'     WHERE np09.class_id = nt01.class_id',
'      AND np09.customer_id = np032.customer_id ',
'      AND np09.dba = :P113_DBA',
'      AND nt01.item_id = nt02.item_id',
'      AND nt02.upc = :P113_UPC_SEARCH',
')',
'    SELECT NVL(discount_id, 0), NVL(MAX(discount_value), 0) AS max_discount_value',
'    INTO v_id, v_disc',
'    FROM discount_data',
'    GROUP BY discount_id',
'    ORDER BY discount_id',
'    OFFSET 0 ROWS',
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
'     WHERE collection_name = ''INVOICE_UPD_DISCOUNTS''',
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
'    WHERE collection_name = ''UPD_INVOICE_A''',
'      AND c006 = :P113_UPC_SEARCH;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq_id := 0;',
'END;',
'',
'BEGIN',
'    SELECT a.item_num INTO v_bc',
'    FROM NIT001 a, NIT002 b',
'    WHERE a.item_id = b.item_id',
'      AND b.upc = :P113_UPC_SEARCH;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_bc := NULL;',
'        END;',
'        ',
'     IF v_seq BETWEEN 1 AND 4 AND v_bc IS NOT NULL AND v_seq_id != 0 THEN',
'        apex_collection.update_member_attribute(',
'            p_collection_name => CASE v_seq ',
'                                  WHEN 1 THEN ''UPD_INVOICE_A'' ',
'                                  WHEN 2 THEN ''UPD_INVOICE_B'' ',
'                                  WHEN 3 THEN ''UPD_INVOICE_C'' ',
'                                  WHEN 4 THEN ''UPD_INVOICE_D'' ',
'                                 END,',
'            p_seq => v_seq_id,',
'            p_attr_number => 3,',
'            p_number_value => v_disc',
'        );',
'    END IF;',
'',
'END;',
''))
,p_attribute_02=>'P113_UPC_SEARCH,P113_DBA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69243054546214028)
,p_event_id=>wwv_flow_imp.id(69235559553214014)
,p_event_result=>'TRUE'
,p_action_sequence=>60
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
'      AND d.dba = :P113_DBA',
'      AND b.date_to >= SYSDATE',
'      AND b.date_from <= SYSDATE',
'      AND f.upc = :P113_UPC_SEARCH',
'UNION ALL',
'  SELECT a.discount_id, a.discount_value',
'    FROM NPT029 A, NPT008 B, NPT032 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE a.discount_id = b.discount_id',
'      AND a.discount_id = c.discount_id',
'      AND d.customer_id = c.customer_id',
'      AND a.dept_id = e.dept_id',
'      AND e.item_id = f.item_id',
'      AND d.dba = :P113_DBA',
'      AND b.date_to >= SYSDATE',
'      AND b.date_from <= SYSDATE',
'      AND f.upc = :P113_UPC_SEARCH',
'UNION ALL',
'    SELECT a.discount_id, a.discount_value',
'    FROM NPT030 A, NPT008 B, NPT032 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE a.discount_id = b.discount_id',
'      AND a.discount_id = c.discount_id',
'      AND d.customer_id = c.customer_id',
'      AND a.class_id = e.class_id',
'      AND e.item_id = f.item_id',
'      AND d.dba = :P113_DBA',
'      AND b.date_to >= SYSDATE',
'      AND b.date_from <= SYSDATE',
'      AND f.upc = :P113_UPC_SEARCH',
'UNION ALL',
'    SELECT DISTINCT 0, np09.standard_discount_value',
'     FROM NPT009 np09, NIT001 nt01, NPT032 np032, NIT002 nt02',
'     WHERE np09.class_id = nt01.class_id',
'      AND np09.customer_id = np032.customer_id ',
'      AND np09.dba = :P113_DBA',
'      AND nt01.item_id = nt02.item_id',
'      AND nt02.upc = :P113_UPC_SEARCH',
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
'     WHERE collection_name = ''INVOICE_UPD_DISCOUNTS''',
'       AND n001 = NVL(v_id, 0)',
'       AND c001 IN (''A'', ''B'', ''C'', ''D'');',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq := 0; ',
'END;',
'',
'BEGIN',
'    SELECT seq_id INTO v_seq_id',
'    FROM apex_collections',
'    WHERE collection_name = ''UPD_INVOICE_B''',
'      AND c006 = :P113_UPC_SEARCH;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq_id := 0;',
'END;',
'',
'BEGIN',
'    SELECT a.item_num INTO v_bc',
'    FROM NIT001 a, NIT002 b',
'    WHERE a.item_id = b.item_id',
'      AND b.upc = :P113_UPC_SEARCH;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_bc := NULL;',
'        END;',
'        ',
'     IF v_seq BETWEEN 1 AND 4 AND v_bc IS NOT NULL AND v_seq_id != 0 THEN',
'        apex_collection.update_member_attribute(',
'            p_collection_name => CASE v_seq ',
'                                  WHEN 1 THEN ''UPD_INVOICE_A'' ',
'                                  WHEN 2 THEN ''UPD_INVOICE_B'' ',
'                                  WHEN 3 THEN ''UPD_INVOICE_C'' ',
'                                  WHEN 4 THEN ''UPD_INVOICE_D'' ',
'                                 END,',
'            p_seq => v_seq_id,',
'            p_attr_number => 3,',
'            p_number_value => v_disc',
'        );',
'    END IF;',
'',
'END;',
''))
,p_attribute_02=>'P113_UPC_SEARCH,P113_DBA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69243535658214029)
,p_event_id=>wwv_flow_imp.id(69235559553214014)
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
'      AND d.dba = :P113_DBA',
'      AND b.date_to >= SYSDATE',
'      AND b.date_from <= SYSDATE',
'      AND f.upc = :P113_UPC_SEARCH',
'UNION ALL',
'  SELECT a.discount_id, a.discount_value',
'    FROM NPT029 A, NPT008 B, NPT032 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE a.discount_id = b.discount_id',
'      AND a.discount_id = c.discount_id',
'      AND d.customer_id = c.customer_id',
'      AND a.dept_id = e.dept_id',
'      AND e.item_id = f.item_id',
'      AND d.dba = :P113_DBA',
'      AND b.date_to >= SYSDATE',
'      AND b.date_from <= SYSDATE',
'      AND f.upc = :P113_UPC_SEARCH',
'UNION ALL',
'    SELECT a.discount_id, a.discount_value',
'    FROM NPT030 A, NPT008 B, NPT032 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE a.discount_id = b.discount_id',
'      AND a.discount_id = c.discount_id',
'      AND d.customer_id = c.customer_id',
'      AND a.class_id = e.class_id',
'      AND e.item_id = f.item_id',
'      AND d.dba = :P113_DBA',
'      AND b.date_to >= SYSDATE',
'      AND b.date_from <= SYSDATE',
'      AND f.upc = :P113_UPC_SEARCH',
'UNION ALL',
'    SELECT DISTINCT 0, np09.standard_discount_value',
'     FROM NPT009 np09, NIT001 nt01, NPT032 np032, NIT002 nt02',
'     WHERE np09.class_id = nt01.class_id',
'      AND np09.customer_id = np032.customer_id ',
'      AND np09.dba = :P113_DBA',
'      AND nt01.item_id = nt02.item_id',
'      AND nt02.upc = :P113_UPC_SEARCH',
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
'     WHERE collection_name = ''INVOICE_UPD_DISCOUNTS''',
'       AND n001 = NVL(v_id, 0)',
'       AND c001 IN (''A'', ''B'', ''C'', ''D'');',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq := 0; ',
'END;',
'',
'BEGIN',
'    SELECT seq_id INTO v_seq_id',
'    FROM apex_collections',
'    WHERE collection_name = ''UPD_INVOICE_C''',
'      AND c006 = :P113_UPC_SEARCH;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq_id := 0;',
'END;',
'',
'BEGIN',
'    SELECT a.item_num INTO v_bc',
'    FROM NIT001 a, NIT002 b',
'    WHERE a.item_id = b.item_id',
'      AND b.upc = :P113_UPC_SEARCH;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_bc := NULL;',
'        END;',
'        ',
'     IF v_seq BETWEEN 1 AND 4 AND v_bc IS NOT NULL AND v_seq_id != 0 THEN',
'        apex_collection.update_member_attribute(',
'            p_collection_name => CASE v_seq ',
'                                  WHEN 1 THEN ''UPD_INVOICE_A'' ',
'                                  WHEN 2 THEN ''UPD_INVOICE_B'' ',
'                                  WHEN 3 THEN ''UPD_INVOICE_C'' ',
'                                  WHEN 4 THEN ''UPD_INVOICE_D'' ',
'                                 END,',
'            p_seq => v_seq_id,',
'            p_attr_number => 3,',
'            p_number_value => v_disc',
'        );',
'    END IF;',
'',
'END;',
''))
,p_attribute_02=>'P113_UPC_SEARCH,P113_DBA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69242089718214025)
,p_event_id=>wwv_flow_imp.id(69235559553214014)
,p_event_result=>'TRUE'
,p_action_sequence=>80
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
'      AND d.dba = :P113_DBA',
'      AND b.date_to >= SYSDATE',
'      AND b.date_from <= SYSDATE',
'      AND f.upc = :P113_UPC_SEARCH',
'UNION ALL',
'  SELECT a.discount_id, a.discount_value',
'    FROM NPT029 A, NPT008 B, NPT032 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE a.discount_id = b.discount_id',
'      AND a.discount_id = c.discount_id',
'      AND d.customer_id = c.customer_id',
'      AND a.dept_id = e.dept_id',
'      AND e.item_id = f.item_id',
'      AND d.dba = :P113_DBA',
'      AND b.date_to >= SYSDATE',
'      AND b.date_from <= SYSDATE',
'      AND f.upc = :P113_UPC_SEARCH',
'UNION ALL',
'    SELECT a.discount_id, a.discount_value',
'    FROM NPT030 A, NPT008 B, NPT032 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE a.discount_id = b.discount_id',
'      AND a.discount_id = c.discount_id',
'      AND d.customer_id = c.customer_id',
'      AND a.class_id = e.class_id',
'      AND e.item_id = f.item_id',
'      AND d.dba = :P113_DBA',
'      AND b.date_to >= SYSDATE',
'      AND b.date_from <= SYSDATE',
'      AND f.upc = :P113_UPC_SEARCH',
'UNION ALL',
'    SELECT DISTINCT 0, np09.standard_discount_value',
'     FROM NPT009 np09, NIT001 nt01, NPT032 np032, NIT002 nt02',
'     WHERE np09.class_id = nt01.class_id',
'      AND np09.customer_id = np032.customer_id ',
'      AND np09.dba = :P113_DBA',
'      AND nt01.item_id = nt02.item_id',
'      AND nt02.upc = :P113_UPC_SEARCH',
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
'     WHERE collection_name = ''INVOICE_UPD_DISCOUNTS''',
'       AND n001 = NVL(v_id, 0)',
'       AND c001 IN (''A'', ''B'', ''C'', ''D'');',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq := 0; ',
'END;',
'',
'BEGIN',
'    SELECT seq_id INTO v_seq_id',
'    FROM apex_collections',
'    WHERE collection_name = ''UPD_INVOICE_D''',
'      AND c006 = :P113_UPC_SEARCH;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq_id := 0;',
'END;',
'',
'BEGIN',
'    SELECT a.item_num INTO v_bc',
'    FROM NIT001 a, NIT002 b',
'    WHERE a.item_id = b.item_id',
'      AND b.upc = :P113_UPC_SEARCH;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_bc := NULL;',
'        END;',
'        ',
'     IF v_seq BETWEEN 1 AND 4 AND v_bc IS NOT NULL AND v_seq_id != 0 THEN',
'        apex_collection.update_member_attribute(',
'            p_collection_name => CASE v_seq ',
'                                  WHEN 1 THEN ''UPD_INVOICE_A'' ',
'                                  WHEN 2 THEN ''UPD_INVOICE_B'' ',
'                                  WHEN 3 THEN ''UPD_INVOICE_C'' ',
'                                  WHEN 4 THEN ''UPD_INVOICE_D'' ',
'                                 END,',
'            p_seq => v_seq_id,',
'            p_attr_number => 3,',
'            p_number_value => v_disc',
'        );',
'    END IF;',
'',
'END;',
''))
,p_attribute_02=>'P113_UPC_SEARCH,P113_DBA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69240502730214021)
,p_event_id=>wwv_flow_imp.id(69235559553214014)
,p_event_result=>'TRUE'
,p_action_sequence=>90
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
'    WHERE d.dba = :P113_DBA',
'      AND c.discount_id = a.discount_id',
'      AND a.discount_id = b.discount_id',
'      AND d.customer_id = b.customer_id',
'      AND a.sic_id = e.sic_id',
'      AND e.item_id = f.item_id',
'      AND c.date_to >= SYSDATE',
'      AND c.date_from <= SYSDATE',
'      AND f.upc = :P113_UPC_SEARCH',
'UNION ALL',
'    SELECT a.discount_id AS discount_id, NVL(CASE WHEN c.type = ''Percent'' THEN f.price * (a.discount_value/100) WHEN c.type = ''Fixed'' THEN a.discount_value ELSE f.price END, 0) AS discounted_price',
'     FROM NPT029 A, NPT032 B, NPT008 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE d.dba = :P113_DBA',
'      AND c.discount_id = a.discount_id',
'      AND a.discount_id = b.discount_id',
'      AND d.customer_id = b.customer_id',
'      AND a.dept_id = e.dept_id',
'      AND e.item_id = f.item_id',
'      AND c.date_to >= SYSDATE',
'      AND c.date_from <= SYSDATE',
'      AND f.upc = :P113_UPC_SEARCH',
'UNION ALL',
'    SELECT a.discount_id AS discount_id, NVL(CASE WHEN c.type = ''Percent'' THEN f.price * (a.discount_value/100) WHEN c.type = ''Fixed'' THEN a.discount_value ELSE f.price END, 0) AS discounted_price',
'     FROM NPT030 A, NPT032 B, NPT008 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE d.dba = :P113_DBA',
'      AND c.discount_id = a.discount_id',
'      AND a.discount_id = b.discount_id',
'      AND d.customer_id = b.customer_id',
'      AND a.class_id = e.class_id',
'      AND e.item_id = f.item_id',
'      AND c.date_to >= SYSDATE',
'      AND c.date_from <= SYSDATE',
'      AND f.upc = :P113_UPC_SEARCH',
'UNION ALL',
'     SELECT DISTINCT 0 AS discount_id, NVL(d.price * (a.standard_discount_value / 100), 0) AS discounted_price',
'      FROM NPT009 A, NPT032 B, NIT001 C, NIT002 D',
'     WHERE a.dba = :P113_DBA',
'       AND d.upc = :P113_UPC_SEARCH',
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
'     WHERE collection_name = ''INVOICE_UPD_DISCOUNTS''',
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
'    WHERE collection_name = ''UPD_INVOICE_A''',
'      AND c006 = :P113_UPC_SEARCH;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_sid := 0;',
'END;',
'',
'BEGIN',
'    SELECT a.item_num INTO v_bc',
'    FROM NIT001 a, NIT002 b',
'    WHERE a.item_id = b.item_id',
'      AND b.upc = :P113_UPC_SEARCH;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_bc := NULL;',
'        END;',
'        ',
'     IF v_seq BETWEEN 1 AND 4 AND v_bc IS NOT NULL AND v_sid != 0 THEN',
'        apex_collection.update_member_attribute(',
'            p_collection_name => CASE v_seq ',
'                                  WHEN 1 THEN ''UPD_INVOICE_A'' ',
'                                  WHEN 2 THEN ''UPD_INVOICE_B'' ',
'                                  WHEN 3 THEN ''UPD_INVOICE_C'' ',
'                                  WHEN 4 THEN ''UPD_INVOICE_D'' ',
'                                 END,',
'            p_seq => v_sid,',
'            p_attr_number => 4,',
'            p_number_value => v_dc',
'        );',
'    END IF;',
'',
'END;'))
,p_attribute_02=>'P113_UPC_SEARCH,P113_DBA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69241075108214023)
,p_event_id=>wwv_flow_imp.id(69235559553214014)
,p_event_result=>'TRUE'
,p_action_sequence=>100
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
'    WHERE d.dba = :P113_DBA',
'      AND c.discount_id = a.discount_id',
'      AND a.discount_id = b.discount_id',
'      AND d.customer_id = b.customer_id',
'      AND a.sic_id = e.sic_id',
'      AND e.item_id = f.item_id',
'      AND c.date_to >= SYSDATE',
'      AND c.date_from <= SYSDATE',
'      AND f.upc = :P113_UPC_SEARCH',
'UNION ALL',
'    SELECT a.discount_id AS discount_id, NVL(CASE WHEN c.type = ''Percent'' THEN f.price * (a.discount_value/100) WHEN c.type = ''Fixed'' THEN a.discount_value ELSE f.price END, 0) AS discounted_price',
'     FROM NPT029 A, NPT032 B, NPT008 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE d.dba = :P113_DBA',
'      AND c.discount_id = a.discount_id',
'      AND a.discount_id = b.discount_id',
'      AND d.customer_id = b.customer_id',
'      AND a.dept_id = e.dept_id',
'      AND e.item_id = f.item_id',
'      AND c.date_to >= SYSDATE',
'      AND c.date_from <= SYSDATE',
'      AND f.upc = :P113_UPC_SEARCH',
'UNION ALL',
'    SELECT a.discount_id AS discount_id, NVL(CASE WHEN c.type = ''Percent'' THEN f.price * (a.discount_value/100) WHEN c.type = ''Fixed'' THEN a.discount_value ELSE f.price END, 0) AS discounted_price',
'     FROM NPT030 A, NPT032 B, NPT008 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE d.dba = :P113_DBA',
'      AND c.discount_id = a.discount_id',
'      AND a.discount_id = b.discount_id',
'      AND d.customer_id = b.customer_id',
'      AND a.class_id = e.class_id',
'      AND e.item_id = f.item_id',
'      AND c.date_to >= SYSDATE',
'      AND c.date_from <= SYSDATE',
'      AND f.upc = :P113_UPC_SEARCH',
'UNION ALL',
'     SELECT DISTINCT 0 AS discount_id, NVL(d.price * (a.standard_discount_value / 100), 0) AS discounted_price',
'      FROM NPT009 A, NPT032 B, NIT001 C, NIT002 D',
'     WHERE a.dba = :P113_DBA',
'       AND d.upc = :P113_UPC_SEARCH',
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
'     WHERE collection_name = ''INVOICE_UPD_DISCOUNTS''',
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
'    WHERE collection_name = ''UPD_INVOICE_B''',
'      AND c006 = :P113_UPC_SEARCH;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_sid := 0;',
'END;',
'',
'BEGIN',
'    SELECT a.item_num INTO v_bc',
'    FROM NIT001 a, NIT002 b',
'    WHERE a.item_id = b.item_id',
'      AND b.upc = :P113_UPC_SEARCH;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_bc := NULL;',
'        END;',
'        ',
'     IF v_seq BETWEEN 1 AND 4 AND v_bc IS NOT NULL AND v_sid != 0 THEN',
'        apex_collection.update_member_attribute(',
'            p_collection_name => CASE v_seq ',
'                                  WHEN 1 THEN ''UPD_INVOICE_A'' ',
'                                  WHEN 2 THEN ''UPD_INVOICE_B'' ',
'                                  WHEN 3 THEN ''UPD_INVOICE_C'' ',
'                                  WHEN 4 THEN ''UPD_INVOICE_D'' ',
'                                 END,',
'            p_seq => v_sid,',
'            p_attr_number => 4,',
'            p_number_value => v_dc',
'        );',
'    END IF;',
'',
'END;'))
,p_attribute_02=>'P113_UPC_SEARCH,P113_DBA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69241548314214025)
,p_event_id=>wwv_flow_imp.id(69235559553214014)
,p_event_result=>'TRUE'
,p_action_sequence=>110
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
'    WHERE d.dba = :P113_DBA',
'      AND c.discount_id = a.discount_id',
'      AND a.discount_id = b.discount_id',
'      AND d.customer_id = b.customer_id',
'      AND a.sic_id = e.sic_id',
'      AND e.item_id = f.item_id',
'      AND c.date_to >= SYSDATE',
'      AND c.date_from <= SYSDATE',
'      AND f.upc = :P113_UPC_SEARCH',
'UNION ALL',
'    SELECT a.discount_id AS discount_id, NVL(CASE WHEN c.type = ''Percent'' THEN f.price * (a.discount_value/100) WHEN c.type = ''Fixed'' THEN a.discount_value ELSE f.price END, 0) AS discounted_price',
'     FROM NPT029 A, NPT032 B, NPT008 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE d.dba = :P113_DBA',
'      AND c.discount_id = a.discount_id',
'      AND a.discount_id = b.discount_id',
'      AND d.customer_id = b.customer_id',
'      AND a.dept_id = e.dept_id',
'      AND e.item_id = f.item_id',
'      AND c.date_to >= SYSDATE',
'      AND c.date_from <= SYSDATE',
'      AND f.upc = :P113_UPC_SEARCH',
'UNION ALL',
'    SELECT a.discount_id AS discount_id, NVL(CASE WHEN c.type = ''Percent'' THEN f.price * (a.discount_value/100) WHEN c.type = ''Fixed'' THEN a.discount_value ELSE f.price END, 0) AS discounted_price',
'     FROM NPT030 A, NPT032 B, NPT008 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE d.dba = :P113_DBA',
'      AND c.discount_id = a.discount_id',
'      AND a.discount_id = b.discount_id',
'      AND d.customer_id = b.customer_id',
'      AND a.class_id = e.class_id',
'      AND e.item_id = f.item_id',
'      AND c.date_to >= SYSDATE',
'      AND c.date_from <= SYSDATE',
'      AND f.upc = :P113_UPC_SEARCH',
'UNION ALL',
'     SELECT DISTINCT 0 AS discount_id, NVL(d.price * (a.standard_discount_value / 100), 0) AS discounted_price',
'      FROM NPT009 A, NPT032 B, NIT001 C, NIT002 D',
'     WHERE a.dba = :P113_DBA',
'       AND d.upc = :P113_UPC_SEARCH',
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
'     WHERE collection_name = ''INVOICE_UPD_DISCOUNTS''',
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
'    WHERE collection_name = ''UPD_INVOICE_C''',
'      AND c006 = :P113_UPC_SEARCH;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_sid := 0;',
'END;',
'',
'BEGIN',
'    SELECT a.item_num INTO v_bc',
'    FROM NIT001 a, NIT002 b',
'    WHERE a.item_id = b.item_id',
'      AND b.upc = :P113_UPC_SEARCH;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_bc := NULL;',
'        END;',
'        ',
'     IF v_seq BETWEEN 1 AND 4 AND v_bc IS NOT NULL AND v_sid != 0 THEN',
'        apex_collection.update_member_attribute(',
'            p_collection_name => CASE v_seq ',
'                                  WHEN 1 THEN ''UPD_INVOICE_A'' ',
'                                  WHEN 2 THEN ''UPD_INVOICE_B'' ',
'                                  WHEN 3 THEN ''UPD_INVOICE_C'' ',
'                                  WHEN 4 THEN ''UPD_INVOICE_D'' ',
'                                 END,',
'            p_seq => v_sid,',
'            p_attr_number => 4,',
'            p_number_value => v_dc',
'        );',
'    END IF;',
'',
'END;'))
,p_attribute_02=>'P113_UPC_SEARCH,P113_DBA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69240091507214021)
,p_event_id=>wwv_flow_imp.id(69235559553214014)
,p_event_result=>'TRUE'
,p_action_sequence=>120
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
'    WHERE d.dba = :P113_DBA',
'      AND c.discount_id = a.discount_id',
'      AND a.discount_id = b.discount_id',
'      AND d.customer_id = b.customer_id',
'      AND a.sic_id = e.sic_id',
'      AND e.item_id = f.item_id',
'      AND c.date_to >= SYSDATE',
'      AND c.date_from <= SYSDATE',
'      AND f.upc = :P113_UPC_SEARCH',
'UNION ALL',
'    SELECT a.discount_id AS discount_id, NVL(CASE WHEN c.type = ''Percent'' THEN f.price * (a.discount_value/100) WHEN c.type = ''Fixed'' THEN a.discount_value ELSE f.price END, 0) AS discounted_price',
'     FROM NPT029 A, NPT032 B, NPT008 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE d.dba = :P113_DBA',
'      AND c.discount_id = a.discount_id',
'      AND a.discount_id = b.discount_id',
'      AND d.customer_id = b.customer_id',
'      AND a.dept_id = e.dept_id',
'      AND e.item_id = f.item_id',
'      AND c.date_to >= SYSDATE',
'      AND c.date_from <= SYSDATE',
'      AND f.upc = :P113_UPC_SEARCH',
'UNION ALL',
'    SELECT a.discount_id AS discount_id, NVL(CASE WHEN c.type = ''Percent'' THEN f.price * (a.discount_value/100) WHEN c.type = ''Fixed'' THEN a.discount_value ELSE f.price END, 0) AS discounted_price',
'     FROM NPT030 A, NPT032 B, NPT008 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE d.dba = :P113_DBA',
'      AND c.discount_id = a.discount_id',
'      AND a.discount_id = b.discount_id',
'      AND d.customer_id = b.customer_id',
'      AND a.class_id = e.class_id',
'      AND e.item_id = f.item_id',
'      AND c.date_to >= SYSDATE',
'      AND c.date_from <= SYSDATE',
'      AND f.upc = :P113_UPC_SEARCH',
'UNION ALL',
'     SELECT DISTINCT 0 AS discount_id, NVL(d.price * (a.standard_discount_value / 100), 0) AS discounted_price',
'      FROM NPT009 A, NPT032 B, NIT001 C, NIT002 D',
'     WHERE a.dba = :P113_DBA',
'       AND d.upc = :P113_UPC_SEARCH',
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
'     WHERE collection_name = ''INVOICE_UPD_DISCOUNTS''',
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
'    WHERE collection_name = ''UPD_INVOICE_D''',
'      AND c006 = :P113_UPC_SEARCH;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_sid := 0;',
'END;',
'',
'BEGIN',
'    SELECT a.item_num INTO v_bc',
'    FROM NIT001 a, NIT002 b',
'    WHERE a.item_id = b.item_id',
'      AND b.upc = :P113_UPC_SEARCH;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_bc := NULL;',
'        END;',
'        ',
'     IF v_seq BETWEEN 1 AND 4 AND v_bc IS NOT NULL AND v_sid != 0 THEN',
'        apex_collection.update_member_attribute(',
'            p_collection_name => CASE v_seq ',
'                                  WHEN 1 THEN ''UPD_INVOICE_A'' ',
'                                  WHEN 2 THEN ''UPD_INVOICE_B'' ',
'                                  WHEN 3 THEN ''UPD_INVOICE_C'' ',
'                                  WHEN 4 THEN ''UPD_INVOICE_D'' ',
'                                 END,',
'            p_seq => v_sid,',
'            p_attr_number => 4,',
'            p_number_value => v_dc',
'        );',
'    END IF;',
'',
'END;'))
,p_attribute_02=>'P113_UPC_SEARCH,P113_DBA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69237590338214017)
,p_event_id=>wwv_flow_imp.id(69235559553214014)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'Y'
,p_name=>'Sub-Total'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P113_SUB'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH COLLECTION_SUMS AS (',
'    SELECT ''UPD_INVOICE_A'' AS collection_name, SUM(n002 * n001) AS SUB_TOTAL',
'    FROM apex_collections',
'    WHERE collection_name = ''UPD_INVOICE_A''',
' ',
'    UNION ALL',
' ',
'    SELECT ''UPD_INVOICE_B'' AS collection_name, SUM(n002 * n001) AS SUB_TOTAL',
'    FROM apex_collections',
'    WHERE collection_name = ''UPD_INVOICE_B''',
' ',
'    UNION ALL',
' ',
'    SELECT ''UPD_INVOICE_C'' AS collection_name, SUM(n002 * n001) AS SUB_TOTAL',
'    FROM apex_collections',
'    WHERE collection_name = ''UPD_INVOICE_C''',
' ',
'    UNION ALL',
' ',
'    SELECT ''UPD_INVOICE_D'' AS collection_name, SUM(n002 * n001) AS SUB_TOTAL',
'    FROM apex_collections',
'    WHERE collection_name = ''UPD_INVOICE_D''',
'),',
'LOWEST_SUM AS (',
'    SELECT collection_name',
'    FROM COLLECTION_SUMS',
'    WHERE SUB_TOTAL = (SELECT MIN(SUB_TOTAL) FROM COLLECTION_SUMS)',
'    FETCH FIRST 1 ROW ONLY',
')',
'SELECT TO_CHAR(NVL(SUM(n002 * n001), 0), ''FM999G999G999G990D00'' ) ',
'FROM apex_collections',
'WHERE collection_name IN (SELECT collection_name FROM LOWEST_SUM);'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69238080098214017)
,p_event_id=>wwv_flow_imp.id(69235559553214014)
,p_event_result=>'TRUE'
,p_action_sequence=>140
,p_execute_on_page_init=>'Y'
,p_name=>'Discount'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P113_DISCOUNT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH COLLECTION_SUMS AS (',
'    SELECT ''UPD_INVOICE_A'' AS collection_name, SUM(n004 * n001) AS TOTAL_DISCOUNT',
'    FROM apex_collections',
'    WHERE collection_name = ''UPD_INVOICE_A''',
' ',
'    UNION ALL',
' ',
'    SELECT ''UPD_INVOICE_B'' AS collection_name, SUM(n004 * n001) AS TOTAL_DISCOUNT',
'    FROM apex_collections',
'    WHERE collection_name = ''UPD_INVOICE_B''',
' ',
'    UNION ALL',
' ',
'    SELECT ''UPD_INVOICE_C'' AS collection_name, SUM(n004 * n001) AS TOTAL_DISCOUNT',
'    FROM apex_collections',
'    WHERE collection_name = ''UPD_INVOICE_C''',
' ',
'    UNION ALL',
' ',
'    SELECT ''UPD_INVOICE_D'' AS collection_name, SUM(n004 * n001) AS TOTAL_DISCOUNT',
'    FROM apex_collections',
'    WHERE collection_name = ''UPD_INVOICE_D''',
'',
'),',
'LOWEST_SUM AS (',
'    SELECT collection_name',
'    FROM COLLECTION_SUMS',
'    WHERE TOTAL_DISCOUNT = (SELECT MAX(TOTAL_DISCOUNT) FROM COLLECTION_SUMS)',
'    FETCH FIRST 1 ROW ONLY',
')',
'SELECT TO_CHAR(NVL(SUM(n004 * n001), 0) + NVL(:P113_ADDITIONAL_DISCOUNT, 0), ''FM999G999G999G990D00'' ) ',
'FROM apex_collections',
'WHERE collection_name IN (SELECT collection_name FROM LOWEST_SUM);'))
,p_attribute_07=>'P113_ADDITIONAL_DISCOUNT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69236075759214014)
,p_event_id=>wwv_flow_imp.id(69235559553214014)
,p_event_result=>'TRUE'
,p_action_sequence=>150
,p_execute_on_page_init=>'Y'
,p_name=>'Total'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P113_TOTAL'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'TO_CHAR(NVL(TO_NUMBER(REPLACE(REPLACE(NVL(:P113_SUB, 0), ''$'', ''''), '','', '''')) - TO_NUMBER(REPLACE(REPLACE(NVL(:P113_DISCOUNT, 0), ''$'', ''''), '','', '''')), 0), ''FM999G999G999G990D00'' ) '
,p_attribute_07=>'P113_SUB,P113_DISCOUNT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69238597699214018)
,p_event_id=>wwv_flow_imp.id(69235559553214014)
,p_event_result=>'TRUE'
,p_action_sequence=>170
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P113_SUB,P113_DISCOUNT,P113_ADDITIONAL_DISCOUNT,P113_TOTAL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69239011059214020)
,p_event_id=>wwv_flow_imp.id(69235559553214014)
,p_event_result=>'TRUE'
,p_action_sequence=>180
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(182322890461368473)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69239576763214020)
,p_event_id=>wwv_flow_imp.id(69235559553214014)
,p_event_result=>'TRUE'
,p_action_sequence=>190
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let disableUPCSearch = ''no'';',
'apex.item("P113_CLICKED_SEARCH_F2").setValue(disableUPCSearch);',
'',
'setTimeout(() => {',
'    $(document).ready(function() {',
'            var gridView = apex.region("wholesale").widget().interactiveGrid("getViews").grid;',
'            var model = gridView.model;',
'            if (model.getTotalRecords() > 0) {',
'                var editIndex = model.getTotalRecords() - 1;',
'                var recordAt = model.recordAt(editIndex); // record number always start at 0',
'                gridView.view$.grid("gotoCell", recordAt[0], "ITEM_NO"); // focus on ITEM_NO column',
'                gridView.view$.find(".a-GV-cell.is-focused").trigger("dblclick"); // trigger double click on focused cell',
'            }',
'    });',
'}, 1000);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69260796891214054)
,p_name=>'Update Quantity'
,p_event_sequence=>250
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(182322890461368473)
,p_triggering_element=>'QTY'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69261715404214056)
,p_event_id=>wwv_flow_imp.id(69260796891214054)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'QTY'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let selectedQty = this.triggeringElement.value;',
'apex.item("P113_SELECTED_QTY").setValue(selectedQty);',
'',
'setTimeout(() => {',
'    var gridView = apex.region("wholesale").widget().interactiveGrid("getViews").grid;',
'    var model = gridView.model;',
'    apex.region("wholesale").call("getActions").set("edit", false);',
'    model.clearChanges();',
'',
'    $.event.trigger(''UpdateQty'');',
'}, 500)'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69261204880214056)
,p_event_id=>wwv_flow_imp.id(69260796891214054)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P113_SELECTED_QTY'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69262114075214057)
,p_name=>'UpdateQty'
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
 p_id=>wwv_flow_imp.id(69264107230214060)
,p_event_id=>wwv_flow_imp.id(69262114075214057)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Update'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_seq_id    NUMBER;',
'    v_price     NUMBER;',
'    v_qty       NUMBER;',
'    v_collection_name VARCHAR2(50);',
'begin',
'    FOR i IN 1..4 LOOP',
'        v_collection_name := ''INVOICE_'' || CHR(64 + i);',
'',
'        begin',
'            select seq_id, n001',
'              into v_seq_id, v_qty',
'              from apex_collections ',
'             where collection_name = v_collection_name',
'               and c001 = :P113_SELECTED_ITEM_NO;',
'               ',
'            APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'                p_collection_name => v_collection_name,',
'                p_seq => v_seq_id,',
'                p_attr_number => 1,',
'                p_number_value => :P113_SELECTED_QTY);',
'',
'            APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'                p_collection_name => v_collection_name,',
'                p_seq => v_seq_id,',
'                p_attr_number => 5,',
'                p_number_value => :P113_SELECTED_QTY * :P113_SELECTED_PRICE);',
'',
'            IF :P113_SELECTED_QTY = 0 THEN',
'                APEX_COLLECTION.DELETE_MEMBER(',
'                    p_collection_name => v_collection_name,',
'                    p_seq => v_seq_id);',
'            END IF;',
'        EXCEPTION',
'            when NO_DATA_FOUND then',
'                -- Item not found in the collection; skip to the next',
'                null;',
'        end;',
'    END LOOP;',
'end;',
''))
,p_attribute_02=>'P113_SELECTED_ITEM_NO,P113_SELECTED_QTY,P113_SELECTED_PRICE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69263187958214059)
,p_event_id=>wwv_flow_imp.id(69262114075214057)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_name=>'Sub-Total'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P113_SUB'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH COLLECTION_SUMS AS (',
'    SELECT ''UPD_INVOICE_A'' AS collection_name, SUM(n002 * n001) AS SUB_TOTAL',
'    FROM apex_collections',
'    WHERE collection_name = ''UPD_INVOICE_A''',
' ',
'    UNION ALL',
' ',
'    SELECT ''UPD_INVOICE_B'' AS collection_name, SUM(n002 * n001) AS SUB_TOTAL',
'    FROM apex_collections',
'    WHERE collection_name = ''UPD_INVOICE_B''',
' ',
'    UNION ALL',
' ',
'    SELECT ''UPD_INVOICE_C'' AS collection_name, SUM(n002 * n001) AS SUB_TOTAL',
'    FROM apex_collections',
'    WHERE collection_name = ''UPD_INVOICE_C''',
' ',
'    UNION ALL',
' ',
'    SELECT ''UPD_INVOICE_D'' AS collection_name, SUM(n002 * n001) AS SUB_TOTAL',
'    FROM apex_collections',
'    WHERE collection_name = ''UPD_INVOICE_D''',
'),',
'LOWEST_SUM AS (',
'    SELECT collection_name',
'    FROM COLLECTION_SUMS',
'    WHERE SUB_TOTAL = (SELECT MIN(SUB_TOTAL) FROM COLLECTION_SUMS)',
'    FETCH FIRST 1 ROW ONLY',
')',
'SELECT TO_CHAR(SUM(n002 * n001), ''FM999G999G999G990D00'' ) ',
'FROM apex_collections',
'WHERE collection_name IN (SELECT collection_name FROM LOWEST_SUM);'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69262689717214057)
,p_event_id=>wwv_flow_imp.id(69262114075214057)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_name=>'Discount'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P113_DISCOUNT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH COLLECTION_SUMS AS (',
'    SELECT ''UPD_INVOICE_A'' AS collection_name, SUM(n004 * n001) AS TOTAL_DISCOUNT',
'    FROM apex_collections',
'    WHERE collection_name = ''UPD_INVOICE_A''',
' ',
'    UNION ALL',
' ',
'    SELECT ''UPD_INVOICE_B'' AS collection_name, SUM(n004 * n001) AS TOTAL_DISCOUNT',
'    FROM apex_collections',
'    WHERE collection_name = ''UPD_INVOICE_B''',
' ',
'    UNION ALL',
' ',
'    SELECT ''UPD_INVOICE_C'' AS collection_name, SUM(n004 * n001) AS TOTAL_DISCOUNT',
'    FROM apex_collections',
'    WHERE collection_name = ''UPD_INVOICE_C''',
' ',
'    UNION ALL',
' ',
'    SELECT ''UPD_INVOICE_D'' AS collection_name, SUM(n004 * n001) AS TOTAL_DISCOUNT',
'    FROM apex_collections',
'    WHERE collection_name = ''UPD_INVOICE_D''',
'',
'),',
'LOWEST_SUM AS (',
'    SELECT collection_name',
'    FROM COLLECTION_SUMS',
'    WHERE TOTAL_DISCOUNT = (SELECT MAX(TOTAL_DISCOUNT) FROM COLLECTION_SUMS)',
'    FETCH FIRST 1 ROW ONLY',
')',
'SELECT TO_CHAR(NVL(SUM(n004 * n001), 0) + NVL(:P113_ADDITIONAL_DISCOUNT, 0), ''FM999G999G999G990D00'' ) ',
'FROM apex_collections',
'WHERE collection_name IN (SELECT collection_name FROM LOWEST_SUM);'))
,p_attribute_07=>'P113_ADDITIONAL_DISCOUNT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69265159860214062)
,p_event_id=>wwv_flow_imp.id(69262114075214057)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_name=>'Total'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P113_TOTAL'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'TO_CHAR(NVL(TO_NUMBER(REPLACE(REPLACE(NVL(:P113_SUB, 0), ''$'', ''''), '','', '''')) - TO_NUMBER(REPLACE(REPLACE(NVL(:P113_DISCOUNT, 0), ''$'', ''''), '','', '''')), 0), ''FM999G999G999G990D00'' ) '
,p_attribute_07=>'P113_SUB,P113_DISCOUNT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69263628782214059)
,p_event_id=>wwv_flow_imp.id(69262114075214057)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P113_SUB,P113_DISCOUNT,P113_ADDITIONAL_DISCOUNT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69264656318214062)
,p_event_id=>wwv_flow_imp.id(69262114075214057)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(182322890461368473)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69256803091214050)
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
 p_id=>wwv_flow_imp.id(69257395982214051)
,p_event_id=>wwv_flow_imp.id(69256803091214050)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_name=>'Set LOC 1 - WH 1'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P113_WH_1'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    no_data_found exception;',
'    wh_1 NUMBER := 0;',
'    qty NUMBER := 0;',
'BEGIN',
'',
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
'                                                      WHERE nit002.UPC = :P113_SELECTED_ITEM_NO))',
'        ORDER BY nit004.QTY DESC',
'        OFFSET 0 ROWS',
'        FETCH NEXT 1 ROWS ONLY;',
'',
'        -- For some reason, it only works when this code is added',
'        raise_application_error(-20001, wh_1);',
' ',
'        EXCEPTION ',
'            WHEN no_data_found THEN',
'                :P113_WH_1 := '''';',
'            WHEN OTHERS THEN',
'                :P113_WH_1 := wh_1;',
'    END;',
'',
'    RETURN :P113_WH_1;',
'END;'))
,p_attribute_07=>'P113_SELECTED_ITEM_NO'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_elem_type=>'COLUMN'
,p_client_condition_element=>'ITEM_NO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69259338833214053)
,p_event_id=>wwv_flow_imp.id(69256803091214050)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_name=>'Set LOC 2 - WH 2'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P113_WH_2'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    no_data_found exception;',
'    wh_2 NUMBER := 0;',
'    qty NUMBER := 0;',
'BEGIN',
'',
'    -- USED FOR SEARCHING USING BARCODE (SHOULD BE ITEM_NUM)',
'    -- BUT ACCORDING TO SIR ERNAN, UPC IS BEING USED IN BARCODE SEARCH',
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
'                                                      WHERE nit002.UPC = :P113_SELECTED_ITEM_NO))',
'        ORDER BY nit004.QTY DESC',
'        OFFSET 1 ROWS',
'        FETCH NEXT 1 ROWS ONLY;',
'',
'        -- For some reason, it only works when this code is added',
'        raise_application_error(-20001, wh_2);',
' ',
'        EXCEPTION ',
'            WHEN no_data_found THEN',
'                :P113_WH_2 := '''';',
'            WHEN OTHERS THEN',
'                :P113_WH_2 := wh_2;',
'    END;',
'',
'    RETURN :P113_WH_2;',
'END;'))
,p_attribute_07=>'P113_SELECTED_ITEM_NO'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_elem_type=>'COLUMN'
,p_client_condition_element=>'ITEM_NO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69259890354214054)
,p_event_id=>wwv_flow_imp.id(69256803091214050)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_name=>'Set LOC 3 - WH 3'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P113_WH_3'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    no_data_found exception;',
'    wh_3 NUMBER := 0;',
'    qty NUMBER := 0;',
'BEGIN',
'',
'    -- USED FOR SEARCHING USING BARCODE (SHOULD BE ITEM_NUM)',
'    -- BUT ACCORDING TO SIR ERNAN, UPC IS BEING USED IN BARCODE SEARCH',
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
'                                                      WHERE nit002.UPC = :P113_SELECTED_ITEM_NO))',
'        ORDER BY nit004.QTY DESC',
'        OFFSET 2 ROWS',
'        FETCH NEXT 1 ROWS ONLY;',
'',
'        -- For some reason, it only works when this code is added',
'        raise_application_error(-20001, wh_3);',
' ',
'        EXCEPTION ',
'            WHEN no_data_found THEN',
'                :P113_WH_3 := '''';',
'            WHEN OTHERS THEN',
'                :P113_WH_3 := wh_3;',
'    END;',
'',
'    RETURN :P113_WH_3;',
'END;'))
,p_attribute_07=>'P113_SELECTED_ITEM_NO'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_elem_type=>'COLUMN'
,p_client_condition_element=>'ITEM_NO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69260382770214054)
,p_event_id=>wwv_flow_imp.id(69256803091214050)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_name=>'Set LOC 1 - QTY 1'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P113_LOC_1'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    no_data_found exception;',
'    loc_1 NUMBER := 0;',
'    qty NUMBER := 0;',
'BEGIN',
'',
'    -- USED FOR SEARCHING USING BARCODE (SHOULD BE ITEM_NUM)',
'    -- BUT ACCORDING TO SIR ERNAN, UPC IS BEING USED IN BARCODE SEARCH',
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
'                                                      WHERE nit002.UPC = :P113_SELECTED_ITEM_NO))',
'        ORDER BY nit004.QTY DESC',
'        OFFSET 0 ROWS',
'        FETCH NEXT 1 ROWS ONLY;',
'',
'        -- For some reason, it only works when this code is added',
'        raise_application_error(-20001, qty);',
' ',
'        EXCEPTION ',
'            WHEN no_data_found THEN',
'                :P113_LOC_1 := '''';',
'            WHEN OTHERS THEN',
'                :P113_LOC_1 := NULLIF(qty, 0);',
'    END;',
'',
'    RETURN :P113_LOC_1;',
'END;'))
,p_attribute_07=>'P113_SELECTED_ITEM_NO'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_elem_type=>'COLUMN'
,p_client_condition_element=>'ITEM_NO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69258355840214053)
,p_event_id=>wwv_flow_imp.id(69256803091214050)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_name=>'Set LOC 2 - QTY 2'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P113_LOC_2'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    no_data_found exception;',
'    loc_2 NUMBER := 0;',
'    qty NUMBER := 0;',
'BEGIN',
'',
'    -- USED FOR SEARCHING USING BARCODE (SHOULD BE ITEM_NUM)',
'    -- BUT ACCORDING TO SIR ERNAN, UPC IS BEING USED IN BARCODE SEARCH',
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
'                                                      WHERE nit002.UPC = :P113_SELECTED_ITEM_NO))',
'        ORDER BY nit004.QTY DESC',
'        OFFSET 1 ROWS',
'        FETCH NEXT 1 ROWS ONLY;',
'',
'        raise_application_error(-20001, qty);',
' ',
'        EXCEPTION ',
'            WHEN no_data_found THEN',
'                :P113_LOC_2 := '''';',
'            WHEN OTHERS THEN',
'                :P113_LOC_2 := NULLIF(qty, 0);',
'    END;',
'',
'    RETURN :P113_LOC_2;',
'END;'))
,p_attribute_07=>'P113_SELECTED_ITEM_NO'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_elem_type=>'COLUMN'
,p_client_condition_element=>'ITEM_NO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69258819805214053)
,p_event_id=>wwv_flow_imp.id(69256803091214050)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_name=>'Set LOC 3 - QTY 3'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P113_LOC_3'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    no_data_found exception;',
'    loc_3 NUMBER := 0;',
'    qty NUMBER := 0;',
'BEGIN',
'',
'    -- USED FOR SEARCHING USING BARCODE (SHOULD BE ITEM_NUM)',
'    -- BUT ACCORDING TO SIR ERNAN, UPC IS BEING USED IN BARCODE SEARCH',
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
'                                                      WHERE nit002.UPC = :P113_SELECTED_ITEM_NO))',
'        ORDER BY nit004.QTY DESC',
'        OFFSET 2 ROWS',
'        FETCH NEXT 1 ROWS ONLY;',
'',
'        raise_application_error(-20001, qty);',
' ',
'        EXCEPTION ',
'            WHEN no_data_found THEN',
'                :P113_LOC_3 := '''';',
'            WHEN OTHERS THEN',
'                :P113_LOC_3 := NULLIF(qty, 0);',
'    END;',
'',
'    RETURN :P113_LOC_3;',
'END;'))
,p_attribute_07=>'P113_SELECTED_ITEM_NO'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_elem_type=>'COLUMN'
,p_client_condition_element=>'ITEM_NO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69257896173214051)
,p_event_id=>wwv_flow_imp.id(69256803091214050)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($(''#P113_LOC_1'').val() > 0) {',
'    document.getElementById("P113_LOC_1_LABEL").innerHTML = "LOC #" + $(''#P113_WH_1'').val();',
'} else {',
'    document.getElementById("P113_LOC_1_LABEL").innerHTML = "";',
'}',
'',
'if ($(''#P113_LOC_2'').val() > 0) {',
'    document.getElementById("P113_LOC_2_LABEL").innerHTML = "LOC #" + $(''#P113_WH_2'').val();',
'} else {',
'    document.getElementById("P113_LOC_2_LABEL").innerHTML = "";',
'}',
'',
'if ($(''#P113_LOC_3'').val() > 0) {',
'    document.getElementById("P113_LOC_3_LABEL").innerHTML = "LOC #" + $(''#P113_WH_3'').val();',
'} else {',
'    document.getElementById("P113_LOC_3_LABEL").innerHTML = "";',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69265573762214062)
,p_name=>'Search'
,p_event_sequence=>320
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(69217062939213957)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69266027595214064)
,p_event_id=>wwv_flow_imp.id(69265573762214062)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let clickedF2 = ''yes'';',
'apex.item("P113_CLICKED_SEARCH_F2").setValue(clickedF2);'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69266503847214064)
,p_event_id=>wwv_flow_imp.id(69265573762214062)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region("wholesale").widget().interactiveGrid("getActions").invoke("selection-add-row");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69228971205214000)
,p_name=>'Set Special Instructions'
,p_event_sequence=>340
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>wwv_flow_string.join(wwv_flow_t_varchar2(
'window',
''))
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69229965590214006)
,p_event_id=>wwv_flow_imp.id(69228971205214000)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_name=>'Special Instructions'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P113_SPECIAL_INSTRUCTIONS'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT c001',
'  FROM apex_collections',
' WHERE collection_name = ''INVOICE_UPD_INSTRUCTIONS''',
'   AND seq_id = (SELECT MAX(seq_id)',
'                   FROM apex_collections',
'                  WHERE collection_name = ''INVOICE_UPD_INSTRUCTIONS'')'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69230489111214006)
,p_event_id=>wwv_flow_imp.id(69228971205214000)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_name=>'Additional Discount'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P113_ADDITIONAL_DISCOUNT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  NVL(n001, 0) ',
'FROM apex_collections',
'WHERE collection_name = ''INVOICE_UPD_ADDITIONAL''',
'AND seq_id = (SELECT MAX(seq_id)',
'                FROM apex_collections',
'               WHERE collection_name = ''INVOICE_UPD_ADDITIONAL'')'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69229480355214004)
,p_event_id=>wwv_flow_imp.id(69228971205214000)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_name=>'Discount'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P113_DISCOUNT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH COLLECTION_SUMS AS (',
'    SELECT ''UPD_INVOICE_A'' AS collection_name, SUM(n004 * n001) AS TOTAL_DISCOUNT',
'    FROM apex_collections',
'    WHERE collection_name = ''UPD_INVOICE_A''',
' ',
'    UNION ALL',
' ',
'    SELECT ''UPD_INVOICE_B'' AS collection_name, SUM(n004 * n001) AS TOTAL_DISCOUNT',
'    FROM apex_collections',
'    WHERE collection_name = ''UPD_INVOICE_B''',
' ',
'    UNION ALL',
' ',
'    SELECT ''UPD_INVOICE_C'' AS collection_name, SUM(n004 * n001) AS TOTAL_DISCOUNT',
'    FROM apex_collections',
'    WHERE collection_name = ''UPD_INVOICE_C''',
' ',
'    UNION ALL',
' ',
'    SELECT ''UPD_INVOICE_D'' AS collection_name, SUM(n004 * n001) AS TOTAL_DISCOUNT',
'    FROM apex_collections',
'    WHERE collection_name = ''UPD_INVOICE_D''',
'',
'),',
'LOWEST_SUM AS (',
'    SELECT collection_name',
'    FROM COLLECTION_SUMS',
'    WHERE TOTAL_DISCOUNT = (SELECT MAX(TOTAL_DISCOUNT) FROM COLLECTION_SUMS)',
'    FETCH FIRST 1 ROW ONLY',
')',
'SELECT TO_CHAR(NVL(SUM(n004 * n001), 0) + NVL(:P113_ADDITIONAL_DISCOUNT, 0), ''FM999G999G999G990D00'' ) ',
'FROM apex_collections',
'WHERE collection_name IN (SELECT collection_name FROM LOWEST_SUM);'))
,p_attribute_07=>'P113_ADDITIONAL_DISCOUNT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69231450416214009)
,p_event_id=>wwv_flow_imp.id(69228971205214000)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_name=>'Total'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P113_TOTAL'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'TO_CHAR(',
'    NVL(',
'        TO_NUMBER(REPLACE(REPLACE(NVL(:P113_SUB, ''0''), ''$'', ''''), '','', '''')) ',
'        - TO_NUMBER(REPLACE(REPLACE(NVL(:P113_DISCOUNT, ''0''), ''$'', ''''), '','', '''')),',
'        0',
'    ),',
'    ''FM999G999G999G990D00''',
')',
'',
''))
,p_attribute_07=>'P113_SUB,P113_DISCOUNT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69230966453214007)
,p_event_id=>wwv_flow_imp.id(69228971205214000)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P113_DISCOUNT,P113_TOTAL,P113_ADDITIONAL_DISCOUNT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69531102149822609)
,p_event_id=>wwv_flow_imp.id(69228971205214000)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_name=>'Enable Key'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mapP113Keys();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69233238710214010)
,p_name=>'Update'
,p_event_sequence=>350
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(69215830525213954)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69233781546214012)
,p_event_id=>wwv_flow_imp.id(69233238710214010)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P113_URL := apex_page.get_url(',
'        p_page   => 118,',
'        p_items  => ''P118_TOTAL,P118_INVOICE_NO'',',
'        p_values => TO_CHAR(NVL(:P113_TOTAL, 0), ''FM999G999G999G990D00'') || '','' || :P113_INVOICE_NO',
'    );',
'END;',
''))
,p_attribute_02=>'P113_TOTAL'
,p_attribute_03=>'P113_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69234264050214012)
,p_event_id=>wwv_flow_imp.id(69233238710214010)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P113_URL");',
'apex.navigation.redirect(url);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(68005929706073938)
,p_name=>'Get Invoice Details'
,p_event_sequence=>360
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68006076061073939)
,p_event_id=>wwv_flow_imp.id(68005929706073938)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_name=>'Set Customer DBA'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P113_DBA'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT npt009.DBA INTO :P113_DBA',
'    FROM NPT009 npt009',
'    WHERE (SELECT npt001.CUSTOMER_ID',
'           FROM NPT001 npt001',
'           WHERE npt001.INVOICE_ID = :P113_INVOICE_NO) = npt009.CUSTOMER_ID;',
'',
'    RETURN :P113_DBA;',
'END;'))
,p_attribute_07=>'P113_INVOICE_NO'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68006426380073943)
,p_event_id=>wwv_flow_imp.id(68005929706073938)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_name=>'Set Customer Code'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P113_CUSTOMER_CODE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT CUSTOMER_CODE',
'FROM NPT009 ',
'WHERE DBA = :P113_DBA'))
,p_attribute_07=>'P113_DBA'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68006255211073941)
,p_event_id=>wwv_flow_imp.id(68005929706073938)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_name=>'Set Billing Address'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P113_BILLING_ADDRESS'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT REPLACE(npt009.BILLING_ADDRESS, ''%'' , '', '')',
'    FROM NPT009 npt009',
'    WHERE (SELECT npt001.CUSTOMER_ID',
'           FROM NPT001 npt001',
'           WHERE npt001.INVOICE_ID = :P113_INVOICE_NO) = npt009.CUSTOMER_ID;'))
,p_attribute_07=>'P113_INVOICE_NO'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68006336252073942)
,p_event_id=>wwv_flow_imp.id(68005929706073938)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_name=>'Set Special Instructions'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P113_SPECIAL_INSTRUCTIONS'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT npt001.special_instructions',
'    FROM NPT001 npt001',
'    WHERE npt001.INVOICE_ID = :P113_INVOICE_NO;'))
,p_attribute_07=>'P113_INVOICE_NO'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68006699619073945)
,p_event_id=>wwv_flow_imp.id(68005929706073938)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_name=>'Set Invoice Date'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P113_INVOICE_DATE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT npt001.DATE_CREATED INTO :P113_INVOICE_DATE',
'    FROM NPT001 npt001',
'    WHERE npt001.INVOICE_ID = :P113_INVOICE_NO;',
'',
'    RETURN :P113_INVOICE_DATE;',
'END;'))
,p_attribute_07=>'P113_INVOICE_NO'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69530331289822601)
,p_event_id=>wwv_flow_imp.id(68005929706073938)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_name=>'Set Order Writer'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P113_ORDER_WRITER'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    SELECT npt001.user_created ',
'    FROM NPT001 npt001',
'    WHERE npt001.INVOICE_ID = :P113_INVOICE_NO;'))
,p_attribute_07=>'P113_INVOICE_NO'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68007102425073950)
,p_event_id=>wwv_flow_imp.id(68005929706073938)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_name=>'Set Payment Terms'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P113_PAYMENT_TERMS'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT npm006.payment_terms_name',
'  FROM NPT009 npt009, NPM006 npm006',
' WHERE npt009.payment_terms_id = npm006.payment_terms_id',
'   AND npt009.dba = :P113_DBA'))
,p_attribute_07=>'P113_DBA'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68006903039073948)
,p_event_id=>wwv_flow_imp.id(68005929706073938)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_name=>'Set Invoice Update Records'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_item_num VARCHAR2(50);',
'    v_brand VARCHAR(10);',
'    v_item_desc VARCHAR2(30);',
'    v_uom VARCHAR(10);',
'    v_upc NUMBER;',
'    v_item_id NUMBER;',
'',
'    v_qty NUMBER;',
'    v_price NUMBER;',
'    v_disc_val NUMBER;',
'    v_disc_price NUMBER;',
'    v_ext_price NUMBER;',
'BEGIN',
'    FOR rec IN (',
'        SELECT ',
'            NPT002.ITEM_NUM, NPT002.BRAND_CODE, NPT002.ITEM_DESC, ',
'            NPT002.UOM_CODE, nit002.UPC, NPT002.ITEM_ID, ',
'            NPT002.QUANTITY, NPT002.ITEM_PRICE, NPT002.DISCOUNT_VALUE, ',
'            NPT002.DISCOUNTED_PRICE, (NPT002.ITEM_PRICE * NPT002.QUANTITY) AS EXTENDED_PRICE',
'        FROM',
'            NPT002 npt002',
'        JOIN',
'            NIT002 nit002 ON nit002.ITEM_ID = NPT002.ITEM_ID',
'        WHERE',
'            NPT002.UOM_ID = nit002.UOM_ID AND',
'            NPT002.INVOICE_ID = :P113_INVOICE_NO',
'    ) LOOP',
'        apex_collection.add_member(',
'            p_collection_name => ''UPD_INVOICE_A'',',
'            p_c001 => rec.ITEM_NUM,',
'            p_c002 => rec.BRAND_CODE,',
'            p_c003 => rec.ITEM_DESC,',
'            p_c004 => rec.UOM_CODE,',
'            p_c006 => rec.UPC,',
'            p_c007 => rec.ITEM_ID,',
'',
'            p_n001 => rec.QUANTITY,',
'            p_n002 => rec.ITEM_PRICE,',
'            p_n003 => rec.DISCOUNT_VALUE,',
'            p_n004 => rec.DISCOUNTED_PRICE,',
'            p_n005 => rec.EXTENDED_PRICE);',
'        ',
'        apex_collection.add_member(',
'            p_collection_name => ''UPD_INVOICE_B'',',
'            p_c001 => rec.ITEM_NUM,',
'            p_c002 => rec.BRAND_CODE,',
'            p_c003 => rec.ITEM_DESC,',
'            p_c004 => rec.UOM_CODE,',
'            p_c006 => rec.UPC,',
'            p_c007 => rec.ITEM_ID,',
'',
'            p_n001 => rec.QUANTITY,',
'            p_n002 => rec.ITEM_PRICE,',
'            p_n003 => rec.DISCOUNT_VALUE,',
'            p_n004 => rec.DISCOUNTED_PRICE,',
'            p_n005 => rec.EXTENDED_PRICE);',
'        ',
'        apex_collection.add_member(',
'            p_collection_name => ''UPD_INVOICE_C'',',
'            p_c001 => rec.ITEM_NUM,',
'            p_c002 => rec.BRAND_CODE,',
'            p_c003 => rec.ITEM_DESC,',
'            p_c004 => rec.UOM_CODE,',
'            p_c006 => rec.UPC,',
'            p_c007 => rec.ITEM_ID,',
'',
'            p_n001 => rec.QUANTITY,',
'            p_n002 => rec.ITEM_PRICE,',
'            p_n003 => rec.DISCOUNT_VALUE,',
'            p_n004 => rec.DISCOUNTED_PRICE,',
'            p_n005 => rec.EXTENDED_PRICE);',
'        ',
'        apex_collection.add_member(',
'            p_collection_name => ''UPD_INVOICE_D'',',
'            p_c001 => rec.ITEM_NUM,',
'            p_c002 => rec.BRAND_CODE,',
'            p_c003 => rec.ITEM_DESC,',
'            p_c004 => rec.UOM_CODE,',
'            p_c006 => rec.UPC,',
'            p_c007 => rec.ITEM_ID,',
'',
'            p_n001 => rec.QUANTITY,',
'            p_n002 => rec.ITEM_PRICE,',
'            p_n003 => rec.DISCOUNT_VALUE,',
'            p_n004 => rec.DISCOUNTED_PRICE,',
'            p_n005 => rec.EXTENDED_PRICE);',
'        ',
'        apex_collection.add_member(',
'            p_collection_name => ''INVOICE_UPD_INITIAL'',',
'            p_c001 => rec.ITEM_NUM,',
'            p_c002 => rec.BRAND_CODE,',
'            p_c003 => rec.ITEM_DESC,',
'            p_c004 => rec.UOM_CODE,',
'            p_c006 => rec.UPC,',
'            p_c007 => rec.ITEM_ID,',
'',
'            p_n001 => rec.QUANTITY,',
'            p_n002 => rec.ITEM_PRICE,',
'            p_n003 => rec.DISCOUNT_VALUE,',
'            p_n004 => rec.DISCOUNTED_PRICE,',
'            p_n005 => rec.EXTENDED_PRICE);',
'    END LOOP;',
'',
'END;',
''))
,p_attribute_02=>'P113_INVOICE_NO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68006845299073947)
,p_event_id=>wwv_flow_imp.id(68005929706073938)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_name=>'Set Invoice Update Discount'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_count INTEGER := 0; ',
'    v_letter_index INTEGER := 1; ',
'BEGIN',
'    SELECT COUNT(*)',
'    INTO v_count',
'    FROM NPT032 npt032, NPT008 npt008, NPT009 npt009',
'    WHERE npt032.customer_id = npt009.customer_id',
'      AND npt032.discount_id = npt008.discount_id',
'      AND npt009.dba = :P113_DBA;',
'',
'    -- Add discount IDs in order',
'    FOR r IN (',
'        SELECT npt032.discount_id',
'        FROM NPT032 npt032, NPT008 npt008, NPT009 npt009',
'        WHERE npt032.customer_id = npt009.customer_id',
'          AND npt032.discount_id = npt008.discount_id',
'          AND npt009.dba = :P113_DBA',
'        ORDER BY npt032.discount_id',
'    ) LOOP',
'        APEX_COLLECTION.ADD_MEMBER(',
'            p_collection_name => ''INVOICE_UPD_DISCOUNTS'',',
'            p_n001 => r.discount_id,',
'            p_c001 => CHR(64 + v_letter_index) -- Dynamically assign ''A'', ''B'', etc.',
'        );',
'        v_letter_index := v_letter_index + 1; -- Increment letter counter',
'    END LOOP;',
'',
'    -- Fill remaining slots with zeros',
'    FOR i IN 1..(4 - v_count) LOOP',
'        APEX_COLLECTION.ADD_MEMBER(',
'            p_collection_name => ''INVOICE_UPD_DISCOUNTS'',',
'            p_n001 => 0,',
'            p_c001 => CHR(64 + v_letter_index) -- Assign remaining letters',
'        );',
'        v_letter_index := v_letter_index + 1; -- Increment letter counter',
'    END LOOP;',
'END;'))
,p_attribute_02=>'P113_DBA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69530506794822603)
,p_event_id=>wwv_flow_imp.id(68005929706073938)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'Y'
,p_name=>'Sub-Total'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P113_SUB'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH COLLECTION_SUMS AS (',
'    SELECT ''UPD_INVOICE_A'' AS collection_name, SUM(n002 * n001) AS SUB_TOTAL',
'    FROM apex_collections',
'    WHERE collection_name = ''UPD_INVOICE_A''',
' ',
'    UNION ALL',
' ',
'    SELECT ''UPD_INVOICE_B'' AS collection_name, SUM(n002 * n001) AS SUB_TOTAL',
'    FROM apex_collections',
'    WHERE collection_name = ''UPD_INVOICE_B''',
' ',
'    UNION ALL',
' ',
'    SELECT ''UPD_INVOICE_C'' AS collection_name, SUM(n002 * n001) AS SUB_TOTAL',
'    FROM apex_collections',
'    WHERE collection_name = ''UPD_INVOICE_C''',
' ',
'    UNION ALL',
' ',
'    SELECT ''UPD_INVOICE_D'' AS collection_name, SUM(n002 * n001) AS SUB_TOTAL',
'    FROM apex_collections',
'    WHERE collection_name = ''UPD_INVOICE_D''',
'),',
'LOWEST_SUM AS (',
'    SELECT collection_name',
'    FROM COLLECTION_SUMS',
'    WHERE SUB_TOTAL = (SELECT MIN(SUB_TOTAL) FROM COLLECTION_SUMS)',
'    FETCH FIRST 1 ROW ONLY',
')',
'SELECT TO_CHAR(NVL(SUM(n002 * n001), 0), ''FM999G999G999G990D00'' ) ',
'FROM apex_collections',
'WHERE collection_name IN (SELECT collection_name FROM LOWEST_SUM);'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69530608723822604)
,p_event_id=>wwv_flow_imp.id(68005929706073938)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'Y'
,p_name=>'Discount'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P113_DISCOUNT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH COLLECTION_SUMS AS (',
'    SELECT ''UPD_INVOICE_A'' AS collection_name, SUM(n004 * n001) AS TOTAL_DISCOUNT',
'    FROM apex_collections',
'    WHERE collection_name = ''UPD_INVOICE_A''',
' ',
'    UNION ALL',
' ',
'    SELECT ''UPD_INVOICE_B'' AS collection_name, SUM(n004 * n001) AS TOTAL_DISCOUNT',
'    FROM apex_collections',
'    WHERE collection_name = ''UPD_INVOICE_B''',
' ',
'    UNION ALL',
' ',
'    SELECT ''UPD_INVOICE_C'' AS collection_name, SUM(n004 * n001) AS TOTAL_DISCOUNT',
'    FROM apex_collections',
'    WHERE collection_name = ''UPD_INVOICE_C''',
' ',
'    UNION ALL',
' ',
'    SELECT ''UPD_INVOICE_D'' AS collection_name, SUM(n004 * n001) AS TOTAL_DISCOUNT',
'    FROM apex_collections',
'    WHERE collection_name = ''UPD_INVOICE_D''',
'',
'),',
'LOWEST_SUM AS (',
'    SELECT collection_name',
'    FROM COLLECTION_SUMS',
'    WHERE TOTAL_DISCOUNT = (SELECT MAX(TOTAL_DISCOUNT) FROM COLLECTION_SUMS)',
'    FETCH FIRST 1 ROW ONLY',
')',
'SELECT TO_CHAR(NVL(SUM(n004 * n001), 0) + NVL(:P113_ADDITIONAL_DISCOUNT, 0), ''FM999G999G999G990D00'' ) ',
'FROM apex_collections',
'WHERE collection_name IN (SELECT collection_name FROM LOWEST_SUM);'))
,p_attribute_07=>'P113_ADDITIONAL_DISCOUNT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69530796466822605)
,p_event_id=>wwv_flow_imp.id(68005929706073938)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'Y'
,p_name=>'Total'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P113_TOTAL'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'TO_CHAR(NVL(TO_NUMBER(REPLACE(REPLACE(NVL(:P113_SUB, 0), ''$'', ''''), '','', '''')) - TO_NUMBER(REPLACE(REPLACE(NVL(:P113_DISCOUNT, 0), ''$'', ''''), '','', '''')), 0), ''FM999G999G999G990D00'' ) '
,p_attribute_07=>'P113_SUB,P113_DISCOUNT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68007047259073949)
,p_event_id=>wwv_flow_imp.id(68005929706073938)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(182322890461368473)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69530451513822602)
,p_event_id=>wwv_flow_imp.id(68005929706073938)
,p_event_result=>'TRUE'
,p_action_sequence=>140
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P113_SUB,P113_DISCOUNT,P113_TOTAL,P113_ADDITIONAL_DISCOUNT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69531294425822610)
,p_name=>'Disable Key'
,p_event_sequence=>370
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(69217487971213957)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69531348754822611)
,p_event_id=>wwv_flow_imp.id(69531294425822610)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Disable Key'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(document).off(''keydown.p113keyevents'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69531907357822617)
,p_name=>'Update Table'
,p_event_sequence=>380
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P113_QUOTATION_NO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(69215163354213951)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(182322890461368473)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Invoice - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>69215163354213951
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(69225794977213995)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UPDATE_INVOICE_A'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(',
'        p_collection_name => ''UPD_INVOICE_A'');'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>69225794977213995
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(69226185580213995)
,p_process_sequence=>40
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UPDATE_INVOICE_B'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(',
'        p_collection_name => ''UPD_INVOICE_B'');'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>69226185580213995
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(69226542301213996)
,p_process_sequence=>50
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UPDATE_INVOICE_C'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(',
'        p_collection_name => ''UPD_INVOICE_C'');'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>69226542301213996
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(69226928616213996)
,p_process_sequence=>60
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UPDATE_INVOICE_D'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(',
'        p_collection_name => ''UPD_INVOICE_D'');'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>69226928616213996
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(69530941792822607)
,p_process_sequence=>70
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Invoice Update Instructions'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(',
'        p_collection_name => ''INVOICE_UPD_INSTRUCTIONS'');'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>69530941792822607
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(69531070541822608)
,p_process_sequence=>80
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Invoice Update Additional Discount'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(',
'        p_collection_name => ''INVOICE_UPD_ADDITIONAL'');'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>69531070541822608
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(69227325130213996)
,p_process_sequence=>90
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update Initial Values'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(',
'        p_collection_name => ''INVOICE_UPD_INITIAL'');'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>69227325130213996
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(69228560298213998)
,p_process_sequence=>100
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update Final Values'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(',
'        p_collection_name => ''INVOICE_UPD_FINAL'');'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>69228560298213998
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(69228130725213998)
,p_process_sequence=>110
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Invoice Update Discounts'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(',
'        p_collection_name => ''INVOICE_UPD_DISCOUNTS'');'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>69228130725213998
);
wwv_flow_imp.component_end;
end;
/
