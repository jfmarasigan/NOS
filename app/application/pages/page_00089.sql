prompt --application/pages/page_00089
begin
--   Manifest
--     PAGE: 00089
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
 p_id=>89
,p_name=>'Charge COD Quotation - Create Quote'
,p_alias=>'CHARGE-COD-QUOTATION-CREATE-QUOTE'
,p_step_title=>'Charge COD Quotation - Create Quote'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APP_FILES#onscan.min.js',
'#APP_FILES#onscan#MIN#.js',
'#APP_FILES#js/cmn#MIN#.js'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p89KeyMap = {',
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
'        $("#f7").trigger("click");',
'    },',
'    f8: (v) => {',
'        $("#f8").trigger("click");',
'    }',
'',
'',
'}',
'',
'function mapP89Keys() {',
'    $(document).off(''keydown.p89keyevents'');',
'    $(document).on(''keydown.p89keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p89KeyMap[key]) {',
'            ev.preventDefault();',
'            p89KeyMap[key]();',
'        }',
'    });',
'}',
'',
'function customEvent(event, data){',
'    mapP89Keys();',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP89Keys();',
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
'    apex.item("P89_BARCODE").setValue(JSON.parse(sScancode));',
'    console.log(JSON.parse(sScancode))',
'}});',
'',
'setTitle("Charge/COD Quotation Creation")'))
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
'    font-family: Arial;',
'    color: white;',
'}',
'',
'.t-Form-labelContainer{',
'    text-align: start;',
'}',
'',
'#P89_CUSTOMER_CODE {',
'    padding-left: 2rem;',
'}',
'',
'#P89_DBA {',
'    padding-left: 2rem;',
'}',
'',
'#P89_BILLING_ADDRESS {',
'    padding-left: 1rem;',
'}',
'',
'#P89_PAYMENT_TERMS{',
'    padding-left: 1.2rem;',
'}',
'',
'#P89_INVOICE_DATE{',
'    padding-left: 1.2rem;',
'}'))
,p_step_template=>wwv_flow_imp.id(5671392681337017)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(129125965739725484)
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
 p_id=>wwv_flow_imp.id(168024325030421468)
,p_plug_name=>'Header'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody:t-Form--noPadding:margin-top-none'
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
 p_id=>wwv_flow_imp.id(168027819423421503)
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
 p_id=>wwv_flow_imp.id(178631074877282172)
,p_plug_name=>'Quotation'
,p_region_name=>'wholesale'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>40
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH COLLECTION_SUMS AS (',
'    SELECT ''QUOTATION_A'' AS collection_name, SUM(n005 - (NVL(n004, 0) * n001)) AS TOTAL_EXTENDED_PRICE',
'    FROM apex_collections',
'    WHERE collection_name = ''QUOTATION_A''',
' ',
'    UNION ALL',
' ',
'    SELECT ''QUOTATION_B'' AS collection_name, SUM(n005 - (NVL(n004, 0) * n001)) AS TOTAL_EXTENDED_PRICE',
'    FROM apex_collections',
'    WHERE collection_name = ''QUOTATION_B''',
' ',
'    UNION ALL',
' ',
'    SELECT ''QUOTATION_C'' AS collection_name, SUM(n005 - (NVL(n004, 0) * n001)) AS TOTAL_EXTENDED_PRICE',
'    FROM apex_collections',
'    WHERE collection_name = ''QUOTATION_C''',
' ',
'    UNION ALL',
' ',
'    SELECT ''QUOTATION_D'' AS collection_name, SUM(n005 - (NVL(n004, 0) * n001)) AS TOTAL_EXTENDED_PRICE',
'    FROM apex_collections',
'    WHERE collection_name = ''QUOTATION_D''',
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(178631248932282174)
,p_name=>'ITEM_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEM_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_AUTO_COMPLETE'
,p_heading=>'Item No'
,p_heading_alignment=>'LEFT'
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
 p_id=>wwv_flow_imp.id(178631330937282175)
,p_name=>'CO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Co'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
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
 p_id=>wwv_flow_imp.id(178631420332282176)
,p_name=>'ITEM_DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEM_DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Item Description'
,p_heading_alignment=>'LEFT'
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
 p_id=>wwv_flow_imp.id(178631562561282177)
,p_name=>'QTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QTY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Qty'
,p_heading_alignment=>'RIGHT'
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
 p_id=>wwv_flow_imp.id(178631691407282178)
,p_name=>'REG_PRICE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REG_PRICE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Reg Price'
,p_heading_alignment=>'RIGHT'
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
 p_id=>wwv_flow_imp.id(178631739440282179)
,p_name=>'UOM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UOM'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Uom'
,p_heading_alignment=>'LEFT'
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
 p_id=>wwv_flow_imp.id(178631839835282180)
,p_name=>'DISC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Disc'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>90
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(178631903191282181)
,p_name=>'DT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'DT'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
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
 p_id=>wwv_flow_imp.id(178632055533282182)
,p_name=>'NET_PRICE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NET_PRICE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Net Price'
,p_heading_alignment=>'RIGHT'
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
 p_id=>wwv_flow_imp.id(178632179679282183)
,p_name=>'EXTENDED_PRICE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXTENDED_PRICE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Extended Price'
,p_heading_alignment=>'RIGHT'
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
 p_id=>wwv_flow_imp.id(178632261425282184)
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
 p_id=>wwv_flow_imp.id(183020105541043695)
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
 p_id=>wwv_flow_imp.id(188274043258387199)
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
 p_id=>wwv_flow_imp.id(178631174573282173)
,p_internal_uid=>178631174573282173
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
 p_id=>wwv_flow_imp.id(178654763164316354)
,p_interactive_grid_id=>wwv_flow_imp.id(178631174573282173)
,p_static_id=>'493436'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(178654931122316354)
,p_report_id=>wwv_flow_imp.id(178654763164316354)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(178655441066316359)
,p_view_id=>wwv_flow_imp.id(178654931122316354)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(178631248932282174)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(178656392179316365)
,p_view_id=>wwv_flow_imp.id(178654931122316354)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(178631330937282175)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(178657225924316373)
,p_view_id=>wwv_flow_imp.id(178654931122316354)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(178631420332282176)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(178658009022316381)
,p_view_id=>wwv_flow_imp.id(178654931122316354)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(178631562561282177)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(178658909104316390)
,p_view_id=>wwv_flow_imp.id(178654931122316354)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(178631691407282178)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(178659815462316398)
,p_view_id=>wwv_flow_imp.id(178654931122316354)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(178631739440282179)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(178660779985316407)
,p_view_id=>wwv_flow_imp.id(178654931122316354)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(178631839835282180)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(178661676543316415)
,p_view_id=>wwv_flow_imp.id(178654931122316354)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(178631903191282181)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(178662573807316423)
,p_view_id=>wwv_flow_imp.id(178654931122316354)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(178632055533282182)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(178663433893316429)
,p_view_id=>wwv_flow_imp.id(178654931122316354)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(178632179679282183)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(178664312844316438)
,p_view_id=>wwv_flow_imp.id(178654931122316354)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(178632261425282184)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(185407614466516870)
,p_view_id=>wwv_flow_imp.id(178654931122316354)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(183020105541043695)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(189208926237405249)
,p_view_id=>wwv_flow_imp.id(178654931122316354)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(188274043258387199)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(65524910504127609)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(129125965739725484)
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
 p_id=>wwv_flow_imp.id(65525719369127610)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(129125965739725484)
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
 p_id=>wwv_flow_imp.id(65524571780127609)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(129125965739725484)
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
 p_id=>wwv_flow_imp.id(65525356392127610)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(129125965739725484)
,p_button_name=>'Add-Special-Inst'
,p_button_static_id=>'f6'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>F6</u> - Add Special Instructions'
,p_button_redirect_url=>'f?p=&APP_ID.:93:&SESSION.::&DEBUG.:93::'
,p_button_css_classes=>'btns'
,p_grid_new_row=>'N'
,p_grid_column_span=>1
,p_grid_column=>7
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(65523741159127607)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(129125965739725484)
,p_button_name=>'Create'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>F7</u> - Create'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns'
,p_grid_new_row=>'N'
,p_grid_column=>10
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(65524136962127609)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(129125965739725484)
,p_button_name=>'Print'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>F8</u> - Print Quotation'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns'
,p_grid_new_row=>'N'
,p_grid_column=>11
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68004097519073919)
,p_name=>'P89_ADDITIONAL_DISCOUNT'
,p_item_sequence=>260
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(129127817638725512)
,p_name=>'P89_ORDER_WRITER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(168024325030421468)
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
 p_id=>wwv_flow_imp.id(129128086759725514)
,p_name=>'P89_DBA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(168024325030421468)
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
 p_id=>wwv_flow_imp.id(129128199260725515)
,p_name=>'P89_INVOICE_DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(168024325030421468)
,p_prompt=>'Quotation Date:'
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
 p_id=>wwv_flow_imp.id(129494140184440066)
,p_name=>'P89_CUST_PO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(168024325030421468)
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
 p_id=>wwv_flow_imp.id(129494353164440068)
,p_name=>'P89_BILLING_ADDRESS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(168024325030421468)
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
 p_id=>wwv_flow_imp.id(129494499458440069)
,p_name=>'P89_PAYMENT_TERMS'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(168024325030421468)
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
 p_id=>wwv_flow_imp.id(129494640986440071)
,p_name=>'P89_SPECIAL_INSTRUCTIONS'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(168024325030421468)
,p_prompt=>'Instructions:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:margin-top-sm:margin-left-md'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140776308553692414)
,p_name=>'P89_SUB'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(168027819423421503)
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
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140776451790692415)
,p_name=>'P89_DISCOUNT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(168027819423421503)
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
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140776489564692416)
,p_name=>'P89_TOTAL'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(168027819423421503)
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
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(146232027037664058)
,p_name=>'P89_CUSTOMER_CODE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(168024325030421468)
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
 p_id=>wwv_flow_imp.id(147598778416175652)
,p_name=>'P89_URL'
,p_item_sequence=>130
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(164862377796049747)
,p_name=>'P89_QUOTATION_NO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(168024325030421468)
,p_prompt=>'Quotation No:'
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
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(168042651997421630)
,p_name=>'P89_QOH'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(168027819423421503)
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
 p_id=>wwv_flow_imp.id(172271316907872524)
,p_name=>'P89_QTY'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(168027819423421503)
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
 p_id=>wwv_flow_imp.id(178662388220282378)
,p_name=>'P89_BARCODE'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(183049031918043876)
,p_name=>'P89_CLICKED_SEARCH_F2'
,p_item_sequence=>140
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(183049290531043879)
,p_name=>'P89_SEARCHED_UPC'
,p_item_sequence=>150
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(187222370610949571)
,p_name=>'P89_UPC_SEARCH'
,p_item_sequence=>170
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT b.upc',
'  FROM NIT001 a, NIT002 b, NIM026 c, NIM022 d',
' WHERE a.item_id = b.item_id',
'   AND b.uom_id = c.uom_id',
'   AND a.brand_id = d.brand_id',
'   AND a.item_num || '' - '' || UPPER(c.uom_code) = :P89_SEARCHED_UPC',
'',
'UNION ALL',
'',
'SELECT b.upc',
'  FROM NIT001 a, NIT002 b, NIM026 c, NIM022 d',
' WHERE a.item_id = b.item_id',
'   AND b.uom_id = c.uom_id',
'   AND a.brand_id = d.brand_id',
'   AND b.upc = :P89_SEARCHED_UPC'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(187799677842460923)
,p_name=>'P89_LOC_1'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(168027819423421503)
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
 p_id=>wwv_flow_imp.id(187799795973460924)
,p_name=>'P89_LOC_2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(168027819423421503)
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
 p_id=>wwv_flow_imp.id(187799936383460925)
,p_name=>'P89_LOC_3'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(168027819423421503)
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
 p_id=>wwv_flow_imp.id(187814364988460983)
,p_name=>'P89_WH_1'
,p_item_sequence=>180
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(187814474264460984)
,p_name=>'P89_WH_2'
,p_item_sequence=>190
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(187814616882460985)
,p_name=>'P89_WH_3'
,p_item_sequence=>200
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(188300281974387354)
,p_name=>'P89_SELECTED_ITEM_NO'
,p_item_sequence=>210
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189282897648581964)
,p_name=>'P89_SELECTED_UOM'
,p_item_sequence=>230
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189283009394581965)
,p_name=>'P89_SELECTED_QTY'
,p_item_sequence=>240
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189283217544581967)
,p_name=>'P89_SELECTED_PRICE'
,p_item_sequence=>250
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189285960457581995)
,p_name=>'P89_SELECTED_ITEM_ID'
,p_item_sequence=>220
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189986120689137695)
,p_name=>'P89_SELECTED_INDEX'
,p_item_sequence=>160
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(65530699768127621)
,p_computation_sequence=>10
,p_computation_item=>'P89_CLICKED_SEARCH_F2'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(65531083095127623)
,p_computation_sequence=>20
,p_computation_item=>'P89_BILLING_ADDRESS'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT REPLACE(BILLING_ADDRESS, ''%'', '', '')',
'FROM NPT009 ',
'WHERE DBA = :P89_DBA'))
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(65531415761127623)
,p_computation_sequence=>30
,p_computation_item=>'P89_CUSTOMER_CODE'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT CUSTOMER_CODE',
'FROM NPT009 ',
'WHERE DBA = :P89_DBA'))
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(65531826254127625)
,p_computation_sequence=>40
,p_computation_item=>'P89_ORDER_WRITER'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>'SELECT :APP_USER FROM DUAL'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(65532271468127625)
,p_computation_sequence=>50
,p_computation_item=>'P89_INVOICE_DATE'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TO_CHAR(SYSDATE, ''MM/DD/YYYY'') AS formatted_date FROM DUAL;',
''))
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(65532672952127625)
,p_computation_sequence=>60
,p_computation_item=>'P89_PAYMENT_TERMS'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT npm006.payment_terms_name',
'  FROM NPT009 npt009, NPM006 npm006',
' WHERE npt009.payment_terms_id = npm006.payment_terms_id',
'   AND npt009.dba = :P89_DBA'))
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(65533015369127626)
,p_computation_sequence=>70
,p_computation_item=>'P89_QUOTATION_NO'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT QUOTATION_ID',
'  FROM NPT006',
' WHERE QUOTATION_ID = (SELECT MAX(QUOTATION_ID)',
'                       FROM NPT006',
'                      WHERE TOTAL_AMOUNT IS NULL)',
'   AND USER_CREATED = v(''APP_USER'')',
'',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(65548754462127654)
,p_name=>'Scan Item'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P89_BARCODE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65553223415127664)
,p_event_id=>wwv_flow_imp.id(65548754462127654)
,p_event_result=>'TRUE'
,p_action_sequence=>20
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
'    v_collections SYS.ODCIVARCHAR2LIST := SYS.ODCIVARCHAR2LIST(''QUOTATION_A'', ''QUOTATION_B'', ''QUOTATION_C'', ''QUOTATION_D'');',
'    v_collection_name VARCHAR2(15);',
'BEGIN',
'    BEGIN',
'    SELECT a.item_num, a.item_id, a.item_desc, b.price, b.price total, UPPER(c.uom_code), d.brand_code ',
'      INTO v_item_num, v_item_id, v_product_name, v_price, v_total, v_uom, v_brand',
'      FROM NIT001 a, NIT002 b, NIM026 c, NIM022 d',
'     WHERE a.item_id = b.item_id',
'       AND b.uom_id = c.uom_id',
'       AND a.brand_id = d.brand_id',
'       AND b.upc = :P89_BARCODE;',
'       EXCEPTION WHEN NO_DATA_FOUND THEN',
'        v_item_id := NULL;',
'    END;',
'',
'    -- Loop through each collection',
'    FOR i IN 1 .. v_collections.COUNT LOOP',
'        v_collection_name := v_collections(i);',
'',
'        -- Check if the item already exists in the current collection',
'        BEGIN',
'            SELECT seq_id, n001',
'              INTO v_seq_id, v_qty',
'              FROM apex_collections',
'             WHERE collection_name = v_collection_name',
'               AND c006 = :P89_BARCODE;',
'        EXCEPTION',
'            WHEN NO_DATA_FOUND THEN ',
'                v_seq_id := 0; ',
'        END;',
'',
'        -- Update or insert into the collection',
'        IF v_seq_id != 0 THEN',
'            -- Update existing record',
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
'                p_c006 => :P89_BARCODE,',
'                p_c007 => v_item_id',
'            );',
'        END IF;',
'    END LOOP;',
'END;',
''))
,p_attribute_02=>'P89_BARCODE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65551221223127660)
,p_event_id=>wwv_flow_imp.id(65548754462127654)
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
'      AND d.dba = :P89_DBA',
'      AND b.date_to >= SYSDATE',
'      AND b.date_from <= SYSDATE',
'      AND f.upc = :P89_BARCODE',
'UNION ALL',
'  SELECT a.discount_id, a.discount_value',
'    FROM NPT029 A, NPT008 B, NPT032 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE a.discount_id = b.discount_id',
'      AND a.discount_id = c.discount_id',
'      AND d.customer_id = c.customer_id',
'      AND a.dept_id = e.dept_id',
'      AND e.item_id = f.item_id',
'      AND d.dba = :P89_DBA',
'      AND b.date_to >= SYSDATE',
'      AND b.date_from <= SYSDATE',
'      AND f.upc = :P89_BARCODE',
'UNION ALL',
'    SELECT a.discount_id, a.discount_value',
'    FROM NPT030 A, NPT008 B, NPT032 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE a.discount_id = b.discount_id',
'      AND a.discount_id = c.discount_id',
'      AND d.customer_id = c.customer_id',
'      AND a.class_id = e.class_id',
'      AND e.item_id = f.item_id',
'      AND d.dba = :P89_DBA',
'      AND b.date_to >= SYSDATE',
'      AND b.date_from <= SYSDATE',
'      AND f.upc = :P89_BARCODE',
'UNION ALL',
'    SELECT DISTINCT 0, np09.standard_discount_value',
'     FROM NPT009 np09, NIT001 nt01, NPT032 np032, NIT002 nt02',
'     WHERE np09.class_id = nt01.class_id',
'      AND np09.customer_id = np032.customer_id ',
'      AND np09.dba = :P89_DBA',
'      AND nt01.item_id = nt02.item_id',
'      AND nt02.upc = :P89_BARCODE',
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
'     WHERE collection_name = ''QUOTATION_DISCOUNTS''',
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
'    WHERE collection_name = ''QUOTATION_A''',
'      AND c006 = :P89_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq_id := 0;',
'END;',
'',
'BEGIN',
'    SELECT a.item_num INTO v_bc',
'    FROM NIT001 a, NIT002 b',
'    WHERE a.item_id = b.item_id',
'      AND b.upc = :P89_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_bc := NULL;',
'        END;',
'        ',
'     IF v_seq BETWEEN 1 AND 4 AND v_bc IS NOT NULL AND v_seq_id != 0 THEN',
'        apex_collection.update_member_attribute(',
'            p_collection_name => CASE v_seq ',
'                                  WHEN 1 THEN ''QUOTATION_A'' ',
'                                  WHEN 2 THEN ''QUOTATION_B'' ',
'                                  WHEN 3 THEN ''QUOTATION_C'' ',
'                                  WHEN 4 THEN ''QUOTATION_D'' ',
'                                 END,',
'            p_seq => v_seq_id,',
'            p_attr_number => 3,',
'            p_number_value => v_disc',
'        );',
'    END IF;',
'',
'END;',
''))
,p_attribute_02=>'P89_BARCODE,P89_DBA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65551718808127660)
,p_event_id=>wwv_flow_imp.id(65548754462127654)
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
'      AND d.dba = :P89_DBA',
'      AND b.date_to >= SYSDATE',
'      AND b.date_from <= SYSDATE',
'      AND f.upc = :P89_BARCODE',
'UNION ALL',
'  SELECT a.discount_id, a.discount_value',
'    FROM NPT029 A, NPT008 B, NPT032 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE a.discount_id = b.discount_id',
'      AND a.discount_id = c.discount_id',
'      AND d.customer_id = c.customer_id',
'      AND a.dept_id = e.dept_id',
'      AND e.item_id = f.item_id',
'      AND d.dba = :P89_DBA',
'      AND b.date_to >= SYSDATE',
'      AND b.date_from <= SYSDATE',
'      AND f.upc = :P89_BARCODE',
'UNION ALL',
'    SELECT a.discount_id, a.discount_value',
'    FROM NPT030 A, NPT008 B, NPT032 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE a.discount_id = b.discount_id',
'      AND a.discount_id = c.discount_id',
'      AND d.customer_id = c.customer_id',
'      AND a.class_id = e.class_id',
'      AND e.item_id = f.item_id',
'      AND d.dba = :P89_DBA',
'      AND b.date_to >= SYSDATE',
'      AND b.date_from <= SYSDATE',
'      AND f.upc = :P89_BARCODE',
'UNION ALL',
'    SELECT DISTINCT 0, np09.standard_discount_value',
'     FROM NPT009 np09, NIT001 nt01, NPT032 np032, NIT002 nt02',
'     WHERE np09.class_id = nt01.class_id',
'      AND np09.customer_id = np032.customer_id ',
'      AND np09.dba = :P89_DBA',
'      AND nt01.item_id = nt02.item_id',
'      AND nt02.upc = :P89_BARCODE',
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
'     WHERE collection_name = ''QUOTATION_DISCOUNTS''',
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
'    WHERE collection_name = ''QUOTATION_B''',
'      AND c006 = :P89_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq_id := 0;',
'END;',
'',
'BEGIN',
'    SELECT a.item_num INTO v_bc',
'    FROM NIT001 a, NIT002 b',
'    WHERE a.item_id = b.item_id',
'      AND b.upc = :P89_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_bc := NULL;',
'        END;',
'        ',
'     IF v_seq BETWEEN 1 AND 4 AND v_bc IS NOT NULL AND v_seq_id != 0 THEN',
'        apex_collection.update_member_attribute(',
'            p_collection_name => CASE v_seq ',
'                                  WHEN 1 THEN ''QUOTATION_A'' ',
'                                  WHEN 2 THEN ''QUOTATION_B'' ',
'                                  WHEN 3 THEN ''QUOTATION_C'' ',
'                                  WHEN 4 THEN ''QUOTATION_D'' ',
'                                 END,',
'            p_seq => v_seq_id,',
'            p_attr_number => 3,',
'            p_number_value => v_disc',
'        );',
'    END IF;',
'',
'END;',
''))
,p_attribute_02=>'P89_BARCODE,P89_DBA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65552267031127662)
,p_event_id=>wwv_flow_imp.id(65548754462127654)
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
'      AND d.dba = :P89_DBA',
'      AND b.date_to >= SYSDATE',
'      AND b.date_from <= SYSDATE',
'      AND f.upc = :P89_BARCODE',
'UNION ALL',
'  SELECT a.discount_id, a.discount_value',
'    FROM NPT029 A, NPT008 B, NPT032 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE a.discount_id = b.discount_id',
'      AND a.discount_id = c.discount_id',
'      AND d.customer_id = c.customer_id',
'      AND a.dept_id = e.dept_id',
'      AND e.item_id = f.item_id',
'      AND d.dba = :P89_DBA',
'      AND b.date_to >= SYSDATE',
'      AND b.date_from <= SYSDATE',
'      AND f.upc = :P89_BARCODE',
'UNION ALL',
'    SELECT a.discount_id, a.discount_value',
'    FROM NPT030 A, NPT008 B, NPT032 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE a.discount_id = b.discount_id',
'      AND a.discount_id = c.discount_id',
'      AND d.customer_id = c.customer_id',
'      AND a.class_id = e.class_id',
'      AND e.item_id = f.item_id',
'      AND d.dba = :P89_DBA',
'      AND b.date_to >= SYSDATE',
'      AND b.date_from <= SYSDATE',
'      AND f.upc = :P89_BARCODE',
'UNION ALL',
'    SELECT DISTINCT 0, np09.standard_discount_value',
'     FROM NPT009 np09, NIT001 nt01, NPT032 np032, NIT002 nt02',
'     WHERE np09.class_id = nt01.class_id',
'      AND np09.customer_id = np032.customer_id ',
'      AND np09.dba = :P89_DBA',
'      AND nt01.item_id = nt02.item_id',
'      AND nt02.upc = :P89_BARCODE',
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
'     WHERE collection_name = ''QUOTATION_DISCOUNTS''',
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
'    WHERE collection_name = ''QUOTATION_C''',
'      AND c006 = :P89_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq_id := 0;',
'END;',
'',
'BEGIN',
'    SELECT a.item_num INTO v_bc',
'    FROM NIT001 a, NIT002 b',
'    WHERE a.item_id = b.item_id',
'      AND b.upc = :P89_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_bc := NULL;',
'        END;',
'        ',
'     IF v_seq BETWEEN 1 AND 4 AND v_bc IS NOT NULL AND v_seq_id != 0 THEN',
'        apex_collection.update_member_attribute(',
'            p_collection_name => CASE v_seq ',
'                                  WHEN 1 THEN ''QUOTATION_A'' ',
'                                  WHEN 2 THEN ''QUOTATION_B'' ',
'                                  WHEN 3 THEN ''QUOTATION_C'' ',
'                                  WHEN 4 THEN ''QUOTATION_D'' ',
'                                 END,',
'            p_seq => v_seq_id,',
'            p_attr_number => 3,',
'            p_number_value => v_disc',
'        );',
'    END IF;',
'',
'END;',
''))
,p_attribute_02=>'P89_BARCODE,P89_DBA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65552727728127664)
,p_event_id=>wwv_flow_imp.id(65548754462127654)
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
'      AND d.dba = :P89_DBA',
'      AND b.date_to >= SYSDATE',
'      AND b.date_from <= SYSDATE',
'      AND f.upc = :P89_BARCODE',
'UNION ALL',
'  SELECT a.discount_id, a.discount_value',
'    FROM NPT029 A, NPT008 B, NPT032 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE a.discount_id = b.discount_id',
'      AND a.discount_id = c.discount_id',
'      AND d.customer_id = c.customer_id',
'      AND a.dept_id = e.dept_id',
'      AND e.item_id = f.item_id',
'      AND d.dba = :P89_DBA',
'      AND b.date_to >= SYSDATE',
'      AND b.date_from <= SYSDATE',
'      AND f.upc = :P89_BARCODE',
'UNION ALL',
'    SELECT a.discount_id, a.discount_value',
'    FROM NPT030 A, NPT008 B, NPT032 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE a.discount_id = b.discount_id',
'      AND a.discount_id = c.discount_id',
'      AND d.customer_id = c.customer_id',
'      AND a.class_id = e.class_id',
'      AND e.item_id = f.item_id',
'      AND d.dba = :P89_DBA',
'      AND b.date_to >= SYSDATE',
'      AND b.date_from <= SYSDATE',
'      AND f.upc = :P89_BARCODE',
'UNION ALL',
'    SELECT DISTINCT 0, np09.standard_discount_value',
'     FROM NPT009 np09, NIT001 nt01, NPT032 np032, NIT002 nt02',
'     WHERE np09.class_id = nt01.class_id',
'      AND np09.customer_id = np032.customer_id ',
'      AND np09.dba = :P89_DBA',
'      AND nt01.item_id = nt02.item_id',
'      AND nt02.upc = :P89_BARCODE',
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
'     WHERE collection_name = ''QUOTATION_DISCOUNTS''',
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
'    WHERE collection_name = ''QUOTATION_D''',
'      AND c006 = :P89_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq_id := 0;',
'END;',
'',
'BEGIN',
'    SELECT a.item_num INTO v_bc',
'    FROM NIT001 a, NIT002 b',
'    WHERE a.item_id = b.item_id',
'      AND b.upc = :P89_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_bc := NULL;',
'        END;',
'        ',
'     IF v_seq BETWEEN 1 AND 4 AND v_bc IS NOT NULL AND v_seq_id != 0 THEN',
'        apex_collection.update_member_attribute(',
'            p_collection_name => CASE v_seq ',
'                                  WHEN 1 THEN ''QUOTATION_A'' ',
'                                  WHEN 2 THEN ''QUOTATION_B'' ',
'                                  WHEN 3 THEN ''QUOTATION_C'' ',
'                                  WHEN 4 THEN ''QUOTATION_D'' ',
'                                 END,',
'            p_seq => v_seq_id,',
'            p_attr_number => 3,',
'            p_number_value => v_disc',
'        );',
'    END IF;',
'',
'END;',
''))
,p_attribute_02=>'P89_BARCODE,P89_DBA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65550718941127659)
,p_event_id=>wwv_flow_imp.id(65548754462127654)
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
'    WHERE d.dba = :P89_DBA',
'      AND c.discount_id = a.discount_id',
'      AND a.discount_id = b.discount_id',
'      AND d.customer_id = b.customer_id',
'      AND a.sic_id = e.sic_id',
'      AND e.item_id = f.item_id',
'      AND c.date_to >= SYSDATE',
'      AND c.date_from <= SYSDATE',
'      AND f.upc = :P89_BARCODE',
'UNION ALL',
'    SELECT a.discount_id AS discount_id, NVL(CASE WHEN c.type = ''Percent'' THEN f.price * (a.discount_value/100) WHEN c.type = ''Fixed'' THEN a.discount_value ELSE f.price END, 0) AS discounted_price',
'     FROM NPT029 A, NPT032 B, NPT008 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE d.dba = :P89_DBA',
'      AND c.discount_id = a.discount_id',
'      AND a.discount_id = b.discount_id',
'      AND d.customer_id = b.customer_id',
'      AND a.dept_id = e.dept_id',
'      AND e.item_id = f.item_id',
'      AND c.date_to >= SYSDATE',
'      AND c.date_from <= SYSDATE',
'      AND f.upc = :P89_BARCODE',
'UNION ALL',
'    SELECT a.discount_id AS discount_id, NVL(CASE WHEN c.type = ''Percent'' THEN f.price * (a.discount_value/100) WHEN c.type = ''Fixed'' THEN a.discount_value ELSE f.price END, 0) AS discounted_price',
'     FROM NPT030 A, NPT032 B, NPT008 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE d.dba = :P89_DBA',
'      AND c.discount_id = a.discount_id',
'      AND a.discount_id = b.discount_id',
'      AND d.customer_id = b.customer_id',
'      AND a.class_id = e.class_id',
'      AND e.item_id = f.item_id',
'      AND c.date_to >= SYSDATE',
'      AND c.date_from <= SYSDATE',
'      AND f.upc = :P89_BARCODE',
'UNION ALL',
'     SELECT DISTINCT 0 AS discount_id, NVL(d.price * (a.standard_discount_value / 100), 0) AS discounted_price',
'      FROM NPT009 A, NPT032 B, NIT001 C, NIT002 D',
'     WHERE a.dba = :P89_DBA',
'       AND d.upc = :P89_BARCODE',
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
'     WHERE collection_name = ''QUOTATION_DISCOUNTS''',
'       AND n001 = NVL(v_id, 0)',
'       AND c001 IN (''A'', ''B'', ''C'', ''D'');',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq := 0; ',
'END;',
'',
'BEGIN',
'    SELECT seq_id INTO v_sid',
'    FROM apex_collections',
'    WHERE collection_name = ''QUOTATION_A''',
'      AND c006 = :P89_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_sid := 0;',
'END;',
'',
'BEGIN',
'    SELECT a.item_num INTO v_bc',
'    FROM NIT001 a, NIT002 b',
'    WHERE a.item_id = b.item_id',
'      AND b.upc = :P89_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_bc := NULL;',
'        END;',
'        ',
'     IF v_seq BETWEEN 1 AND 4 AND v_bc IS NOT NULL AND v_sid != 0 THEN',
'        apex_collection.update_member_attribute(',
'            p_collection_name => CASE v_seq ',
'                                  WHEN 1 THEN ''QUOTATION_A'' ',
'                                  WHEN 2 THEN ''QUOTATION_B'' ',
'                                  WHEN 3 THEN ''QUOTATION_C'' ',
'                                  WHEN 4 THEN ''QUOTATION_D'' ',
'                                 END,',
'            p_seq => v_sid,',
'            p_attr_number => 4,',
'            p_number_value => v_dc',
'        );',
'    END IF;',
'',
'END;'))
,p_attribute_02=>'P89_BARCODE,P89_DBA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65549293901127656)
,p_event_id=>wwv_flow_imp.id(65548754462127654)
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
'    WHERE d.dba = :P89_DBA',
'      AND c.discount_id = a.discount_id',
'      AND a.discount_id = b.discount_id',
'      AND d.customer_id = b.customer_id',
'      AND a.sic_id = e.sic_id',
'      AND e.item_id = f.item_id',
'      AND c.date_to >= SYSDATE',
'      AND c.date_from <= SYSDATE',
'      AND f.upc = :P89_BARCODE',
'UNION ALL',
'    SELECT a.discount_id AS discount_id, NVL(CASE WHEN c.type = ''Percent'' THEN f.price * (a.discount_value/100) WHEN c.type = ''Fixed'' THEN a.discount_value ELSE f.price END, 0) AS discounted_price',
'     FROM NPT029 A, NPT032 B, NPT008 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE d.dba = :P89_DBA',
'      AND c.discount_id = a.discount_id',
'      AND a.discount_id = b.discount_id',
'      AND d.customer_id = b.customer_id',
'      AND a.dept_id = e.dept_id',
'      AND e.item_id = f.item_id',
'      AND c.date_to >= SYSDATE',
'      AND c.date_from <= SYSDATE',
'      AND f.upc = :P89_BARCODE',
'UNION ALL',
'    SELECT a.discount_id AS discount_id, NVL(CASE WHEN c.type = ''Percent'' THEN f.price * (a.discount_value/100) WHEN c.type = ''Fixed'' THEN a.discount_value ELSE f.price END, 0) AS discounted_price',
'     FROM NPT030 A, NPT032 B, NPT008 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE d.dba = :P89_DBA',
'      AND c.discount_id = a.discount_id',
'      AND a.discount_id = b.discount_id',
'      AND d.customer_id = b.customer_id',
'      AND a.class_id = e.class_id',
'      AND e.item_id = f.item_id',
'      AND c.date_to >= SYSDATE',
'      AND c.date_from <= SYSDATE',
'      AND f.upc = :P89_BARCODE',
'UNION ALL',
'     SELECT DISTINCT 0 AS discount_id, NVL(d.price * (a.standard_discount_value / 100), 0) AS discounted_price',
'      FROM NPT009 A, NPT032 B, NIT001 C, NIT002 D',
'     WHERE a.dba = :P89_DBA',
'       AND d.upc = :P89_BARCODE',
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
'     WHERE collection_name = ''QUOTATION_DISCOUNTS''',
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
'    WHERE collection_name = ''QUOTATION_B''',
'      AND c006 = :P89_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_sid := 0;',
'END;',
'',
'BEGIN',
'    SELECT a.item_num INTO v_bc',
'    FROM NIT001 a, NIT002 b',
'    WHERE a.item_id = b.item_id',
'      AND b.upc = :P89_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_bc := NULL;',
'        END;',
'        ',
'     IF v_seq BETWEEN 1 AND 4 AND v_bc IS NOT NULL AND v_sid != 0 THEN',
'        apex_collection.update_member_attribute(',
'            p_collection_name => CASE v_seq ',
'                                  WHEN 1 THEN ''QUOTATION_A'' ',
'                                  WHEN 2 THEN ''QUOTATION_B'' ',
'                                  WHEN 3 THEN ''QUOTATION_C'' ',
'                                  WHEN 4 THEN ''QUOTATION_D'' ',
'                                 END,',
'            p_seq => v_sid,',
'            p_attr_number => 4,',
'            p_number_value => v_dc',
'        );',
'    END IF;',
'',
'END;'))
,p_attribute_02=>'P89_BARCODE,P89_DBA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65549718418127656)
,p_event_id=>wwv_flow_imp.id(65548754462127654)
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
'    WHERE d.dba = :P89_DBA',
'      AND c.discount_id = a.discount_id',
'      AND a.discount_id = b.discount_id',
'      AND d.customer_id = b.customer_id',
'      AND a.sic_id = e.sic_id',
'      AND e.item_id = f.item_id',
'      AND c.date_to >= SYSDATE',
'      AND c.date_from <= SYSDATE',
'      AND f.upc = :P89_BARCODE',
'UNION ALL',
'    SELECT a.discount_id AS discount_id, NVL(CASE WHEN c.type = ''Percent'' THEN f.price * (a.discount_value/100) WHEN c.type = ''Fixed'' THEN a.discount_value ELSE f.price END, 0) AS discounted_price',
'     FROM NPT029 A, NPT032 B, NPT008 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE d.dba = :P89_DBA',
'      AND c.discount_id = a.discount_id',
'      AND a.discount_id = b.discount_id',
'      AND d.customer_id = b.customer_id',
'      AND a.dept_id = e.dept_id',
'      AND e.item_id = f.item_id',
'      AND c.date_to >= SYSDATE',
'      AND c.date_from <= SYSDATE',
'      AND f.upc = :P89_BARCODE',
'UNION ALL',
'    SELECT a.discount_id AS discount_id, NVL(CASE WHEN c.type = ''Percent'' THEN f.price * (a.discount_value/100) WHEN c.type = ''Fixed'' THEN a.discount_value ELSE f.price END, 0) AS discounted_price',
'     FROM NPT030 A, NPT032 B, NPT008 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE d.dba = :P89_DBA',
'      AND c.discount_id = a.discount_id',
'      AND a.discount_id = b.discount_id',
'      AND d.customer_id = b.customer_id',
'      AND a.class_id = e.class_id',
'      AND e.item_id = f.item_id',
'      AND c.date_to >= SYSDATE',
'      AND c.date_from <= SYSDATE',
'      AND f.upc = :P89_BARCODE',
'UNION ALL',
'     SELECT DISTINCT 0 AS discount_id, NVL(d.price * (a.standard_discount_value / 100), 0) AS discounted_price',
'      FROM NPT009 A, NPT032 B, NIT001 C, NIT002 D',
'     WHERE a.dba = :P89_DBA',
'       AND d.upc = :P89_BARCODE',
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
'     WHERE collection_name = ''QUOTATION_DISCOUNTS''',
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
'    WHERE collection_name = ''QUOTATION_C''',
'      AND c006 = :P89_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_sid := 0;',
'END;',
'',
'BEGIN',
'    SELECT a.item_num INTO v_bc',
'    FROM NIT001 a, NIT002 b',
'    WHERE a.item_id = b.item_id',
'      AND b.upc = :P89_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_bc := NULL;',
'        END;',
'        ',
'     IF v_seq BETWEEN 1 AND 4 AND v_bc IS NOT NULL AND v_sid != 0 THEN',
'        apex_collection.update_member_attribute(',
'            p_collection_name => CASE v_seq ',
'                                  WHEN 1 THEN ''QUOTATION_A'' ',
'                                  WHEN 2 THEN ''QUOTATION_B'' ',
'                                  WHEN 3 THEN ''QUOTATION_C'' ',
'                                  WHEN 4 THEN ''QUOTATION_D'' ',
'                                 END,',
'            p_seq => v_sid,',
'            p_attr_number => 4,',
'            p_number_value => v_dc',
'        );',
'    END IF;',
'',
'END;'))
,p_attribute_02=>'P89_BARCODE,P89_DBA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65550293246127657)
,p_event_id=>wwv_flow_imp.id(65548754462127654)
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
'    WHERE d.dba = :P89_DBA',
'      AND c.discount_id = a.discount_id',
'      AND a.discount_id = b.discount_id',
'      AND d.customer_id = b.customer_id',
'      AND a.sic_id = e.sic_id',
'      AND e.item_id = f.item_id',
'      AND c.date_to >= SYSDATE',
'      AND c.date_from <= SYSDATE',
'      AND f.upc = :P89_BARCODE',
'UNION ALL',
'    SELECT a.discount_id AS discount_id, NVL(CASE WHEN c.type = ''Percent'' THEN f.price * (a.discount_value/100) WHEN c.type = ''Fixed'' THEN a.discount_value ELSE f.price END, 0) AS discounted_price',
'     FROM NPT029 A, NPT032 B, NPT008 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE d.dba = :P89_DBA',
'      AND c.discount_id = a.discount_id',
'      AND a.discount_id = b.discount_id',
'      AND d.customer_id = b.customer_id',
'      AND a.dept_id = e.dept_id',
'      AND e.item_id = f.item_id',
'      AND c.date_to >= SYSDATE',
'      AND c.date_from <= SYSDATE',
'      AND f.upc = :P89_BARCODE',
'UNION ALL',
'    SELECT a.discount_id AS discount_id, NVL(CASE WHEN c.type = ''Percent'' THEN f.price * (a.discount_value/100) WHEN c.type = ''Fixed'' THEN a.discount_value ELSE f.price END, 0) AS discounted_price',
'     FROM NPT030 A, NPT032 B, NPT008 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE d.dba = :P89_DBA',
'      AND c.discount_id = a.discount_id',
'      AND a.discount_id = b.discount_id',
'      AND d.customer_id = b.customer_id',
'      AND a.class_id = e.class_id',
'      AND e.item_id = f.item_id',
'      AND c.date_to >= SYSDATE',
'      AND c.date_from <= SYSDATE',
'      AND f.upc = :P89_BARCODE',
'UNION ALL',
'     SELECT DISTINCT 0 AS discount_id, NVL(d.price * (a.standard_discount_value / 100), 0) AS discounted_price',
'      FROM NPT009 A, NPT032 B, NIT001 C, NIT002 D',
'     WHERE a.dba = :P89_DBA',
'       AND d.upc = :P89_BARCODE',
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
'     WHERE collection_name = ''QUOTATION_DISCOUNTS''',
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
'    WHERE collection_name = ''QUOTATION_D''',
'      AND c006 = :P89_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_sid := 0;',
'END;',
'',
'BEGIN',
'    SELECT a.item_num INTO v_bc',
'    FROM NIT001 a, NIT002 b',
'    WHERE a.item_id = b.item_id',
'      AND b.upc = :P89_BARCODE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_bc := NULL;',
'        END;',
'        ',
'     IF v_seq BETWEEN 1 AND 4 AND v_bc IS NOT NULL AND v_sid != 0 THEN',
'        apex_collection.update_member_attribute(',
'            p_collection_name => CASE v_seq ',
'                                  WHEN 1 THEN ''QUOTATION_A'' ',
'                                  WHEN 2 THEN ''QUOTATION_B'' ',
'                                  WHEN 3 THEN ''QUOTATION_C'' ',
'                                  WHEN 4 THEN ''QUOTATION_D'' ',
'                                 END,',
'            p_seq => v_sid,',
'            p_attr_number => 4,',
'            p_number_value => v_dc',
'        );',
'    END IF;',
'',
'END;'))
,p_attribute_02=>'P89_BARCODE,P89_DBA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65554254975127665)
,p_event_id=>wwv_flow_imp.id(65548754462127654)
,p_event_result=>'TRUE'
,p_action_sequence=>190
,p_execute_on_page_init=>'Y'
,p_name=>'Sub-Total'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P89_SUB'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH COLLECTION_SUMS AS (',
'    SELECT ''QUOTATION_A'' AS collection_name, SUM(n002 * n001) AS SUB_TOTAL',
'    FROM apex_collections',
'    WHERE collection_name = ''QUOTATION_A''',
' ',
'    UNION ALL',
' ',
'    SELECT ''QUOTATION_B'' AS collection_name, SUM(n002 * n001) AS SUB_TOTAL',
'    FROM apex_collections',
'    WHERE collection_name = ''QUOTATION_B''',
' ',
'    UNION ALL',
' ',
'    SELECT ''QUOTATION_C'' AS collection_name, SUM(n002 * n001) AS SUB_TOTAL',
'    FROM apex_collections',
'    WHERE collection_name = ''QUOTATION_C''',
' ',
'    UNION ALL',
' ',
'    SELECT ''QUOTATION_D'' AS collection_name, SUM(n002 * n001) AS SUB_TOTAL',
'    FROM apex_collections',
'    WHERE collection_name = ''QUOTATION_D''',
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
 p_id=>wwv_flow_imp.id(65554729920127667)
,p_event_id=>wwv_flow_imp.id(65548754462127654)
,p_event_result=>'TRUE'
,p_action_sequence=>210
,p_execute_on_page_init=>'Y'
,p_name=>'Discount'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P89_DISCOUNT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH COLLECTION_SUMS AS (',
'    SELECT ''QUOTATION_A'' AS collection_name, SUM(n004 * n001) AS TOTAL_DISCOUNT',
'    FROM apex_collections',
'    WHERE collection_name = ''QUOTATION_A''',
' ',
'    UNION ALL',
' ',
'    SELECT ''QUOTATION_B'' AS collection_name, SUM(n004 * n001) AS TOTAL_DISCOUNT',
'    FROM apex_collections',
'    WHERE collection_name = ''QUOTATION_B''',
' ',
'    UNION ALL',
' ',
'    SELECT ''QUOTATION_C'' AS collection_name, SUM(n004 * n001) AS TOTAL_DISCOUNT',
'    FROM apex_collections',
'    WHERE collection_name = ''QUOTATION_C''',
' ',
'    UNION ALL',
' ',
'    SELECT ''QUOTATION_D'' AS collection_name, SUM(n004 * n001) AS TOTAL_DISCOUNT',
'    FROM apex_collections',
'    WHERE collection_name = ''QUOTATION_D''',
'),',
'LOWEST_SUM AS (',
'    SELECT collection_name',
'    FROM COLLECTION_SUMS',
'    WHERE TOTAL_DISCOUNT = (SELECT MAX(TOTAL_DISCOUNT) FROM COLLECTION_SUMS)',
'    FETCH FIRST 1 ROW ONLY',
')',
'SELECT TO_CHAR(NVL(SUM(n004 * n001), 0) + NVL(:P89_ADDITIONAL_DISCOUNT, 0), ''FM999G999G999G990D00'' ) ',
'FROM apex_collections',
'WHERE collection_name IN (SELECT collection_name FROM LOWEST_SUM);'))
,p_attribute_07=>'P89_ADDITIONAL_DISCOUNT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65555278810127667)
,p_event_id=>wwv_flow_imp.id(65548754462127654)
,p_event_result=>'TRUE'
,p_action_sequence=>230
,p_execute_on_page_init=>'Y'
,p_name=>'Total'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P89_TOTAL'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'TO_CHAR(',
'    NVL(',
'        TO_NUMBER(REPLACE(REPLACE(NVL(:P89_SUB, ''0''), ''$'', ''''), '','', '''')) ',
'        - TO_NUMBER(REPLACE(REPLACE(NVL(:P89_DISCOUNT, ''0''), ''$'', ''''), '','', '''')),',
'        0',
'    ),',
'    ''FM999G999G999G990D00''',
')',
'',
''))
,p_attribute_07=>'P89_SUB,P89_DISCOUNT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65555729380127668)
,p_event_id=>wwv_flow_imp.id(65548754462127654)
,p_event_result=>'TRUE'
,p_action_sequence=>250
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P89_SUB,P89_DISCOUNT,P89_TOTAL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65553725597127665)
,p_event_id=>wwv_flow_imp.id(65548754462127654)
,p_event_result=>'TRUE'
,p_action_sequence=>270
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(178631074877282172)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(65536687514127631)
,p_name=>'Click last row'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P89_BARCODE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65537158098127631)
,p_event_id=>wwv_flow_imp.id(65536687514127631)
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
 p_id=>wwv_flow_imp.id(65557048892127670)
,p_name=>'Get typed value'
,p_event_sequence=>110
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(178631074877282172)
,p_triggering_element=>'ITEM_NO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65557514745127670)
,p_event_id=>wwv_flow_imp.id(65557048892127670)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'QTY'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let upcSearch = this.triggeringElement.value;',
'apex.item("P89_SEARCHED_UPC").setValue(upcSearch);',
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
 p_id=>wwv_flow_imp.id(65558566674127671)
,p_event_id=>wwv_flow_imp.id(65557048892127670)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>'Set UPC Value'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P89_UPC_SEARCH'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT b.upc',
'  FROM NIT001 a, NIT002 b, NIM026 c, NIM022 d',
' WHERE a.item_id = b.item_id',
'   AND b.uom_id = c.uom_id',
'   AND a.brand_id = d.brand_id',
'   AND a.item_num || '' - '' || UPPER(c.uom_code) = :P89_SEARCHED_UPC',
'',
'UNION ALL',
'',
'SELECT b.upc',
'  FROM NIT001 a, NIT002 b, NIM026 c, NIM022 d',
' WHERE a.item_id = b.item_id',
'   AND b.uom_id = c.uom_id',
'   AND a.brand_id = d.brand_id',
'   AND b.upc = :P89_SEARCHED_UPC'))
,p_attribute_07=>'P89_SEARCHED_UPC'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65558082057127671)
,p_event_id=>wwv_flow_imp.id(65557048892127670)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P89_UPC_SEARCH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(65546465218127651)
,p_name=>'Set QOH'
,p_event_sequence=>140
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(178631074877282172)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65547417383127653)
,p_event_id=>wwv_flow_imp.id(65546465218127651)
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
'    apex.item("P89_SELECTED_ITEM_NO").setValue(itemNoSelected);',
'    apex.item("P89_SELECTED_ITEM_ID").setValue(itemIdSelected);',
'    apex.item("P89_SELECTED_PRICE").setValue(priceSelected.replace(/[,]/g, ""));',
'    apex.item("P89_SELECTED_UOM").setValue(uomSelected);',
'    apex.item("P89_SELECTED_INDEX").setValue(index);',
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
'    apex.item("P89_SELECTED_ITEM_NO").setValue(itemNoSelected);',
'    apex.item("P89_SELECTED_ITEM_ID").setValue(itemIdSelected);',
'    apex.item("P89_SELECTED_PRICE").setValue(priceSelected.replace(/[,]/g, ""));',
'    apex.item("P89_SELECTED_UOM").setValue(uomSelected);',
'    apex.item("P89_SELECTED_INDEX").setValue(index);',
'',
'}',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65546942146127651)
,p_event_id=>wwv_flow_imp.id(65546465218127651)
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
 p_id=>wwv_flow_imp.id(65547861948127653)
,p_name=>'Focus Quantity'
,p_event_sequence=>160
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(65525719369127610)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65548355686127654)
,p_event_id=>wwv_flow_imp.id(65547861948127653)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var ig = apex.region("wholesale").widget().interactiveGrid("getViews","grid");',
'ig.view$.grid("gotoCell", $("#P89_SELECTED_INDEX").val(), "QTY");',
'ig.view$.find(".a-GV-cell.is-focused").trigger("dblclick");'))
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'$("#P89_SELECTED_INDEX").val() > 0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(65556181013127668)
,p_name=>'Pass Total'
,p_event_sequence=>190
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(65524571780127609)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68004692771073925)
,p_event_id=>wwv_flow_imp.id(65556181013127668)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Redirect'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P89_URL := apex_page.get_url(',
'       p_page   => 129,',
'       p_items  => ''P129_TOTAL'',',
'       p_values => TO_CHAR(TO_NUMBER(REPLACE(:P89_TOTAL, '','', '''')), ''FM999G999G999G990D00'') ',
'     );',
'END;'))
,p_attribute_02=>'P89_TOTAL'
,p_attribute_03=>'P89_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68004730386073926)
,p_event_id=>wwv_flow_imp.id(65556181013127668)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'JS'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P89_URL");',
'apex.navigation.redirect(url);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(65537500110127631)
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
 p_id=>wwv_flow_imp.id(65538098232127632)
,p_event_id=>wwv_flow_imp.id(65537500110127631)
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
'    v_collections SYS.ODCIVARCHAR2LIST := SYS.ODCIVARCHAR2LIST(''QUOTATION_A'', ''QUOTATION_B'', ''QUOTATION_C'', ''QUOTATION_D'');',
'    v_collection_name VARCHAR2(15);',
'BEGIN',
'    BEGIN',
'    SELECT a.item_num, b.upc, a.item_id, a.item_desc, b.price, b.price total, UPPER(c.uom_code), d.brand_code INTO v_item_num, v_upc, v_item_id, v_product_name, v_price, v_total, v_uom, v_brand',
'          FROM NIT001 a, NIT002 b, NIM026 c, NIM022 d',
'         WHERE a.item_id = b.item_id',
'           AND b.uom_id = c.uom_id',
'           AND a.brand_id = d.brand_id',
'           AND b.upc = :P89_SEARCHED_UPC; ',
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
'               AND c006 = :P89_SEARCHED_UPC;',
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
'                p_c006 => :P89_SEARCHED_UPC,',
'                p_c007 => v_item_id',
'            );',
'        END IF;',
'    END LOOP;',
'END;',
''))
,p_attribute_02=>'P89_SEARCHED_UPC'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65538580444127634)
,p_event_id=>wwv_flow_imp.id(65537500110127631)
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
'    v_collections SYS.ODCIVARCHAR2LIST := SYS.ODCIVARCHAR2LIST(''QUOTATION_A'', ''QUOTATION_B'', ''QUOTATION_C'', ''QUOTATION_D'');',
'    v_collection_name VARCHAR2(15);',
'BEGIN',
'    v_item_num_search := SUBSTR (:P89_SEARCHED_UPC, 1, (INSTR(:P89_SEARCHED_UPC, '' - '') - 1));',
'    v_uom_search := SUBSTR (:P89_SEARCHED_UPC, (INSTR(:P89_SEARCHED_UPC, '' - '') + 3));',
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
,p_attribute_02=>'P89_SEARCHED_UPC'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65545055007127648)
,p_event_id=>wwv_flow_imp.id(65537500110127631)
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
'      AND d.dba = :P89_DBA',
'      AND b.date_to >= SYSDATE',
'      AND b.date_from <= SYSDATE',
'      AND f.upc = :P89_UPC_SEARCH',
'UNION ALL',
'  SELECT a.discount_id, a.discount_value',
'    FROM NPT029 A, NPT008 B, NPT032 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE a.discount_id = b.discount_id',
'      AND a.discount_id = c.discount_id',
'      AND d.customer_id = c.customer_id',
'      AND a.dept_id = e.dept_id',
'      AND e.item_id = f.item_id',
'      AND d.dba = :P89_DBA',
'      AND b.date_to >= SYSDATE',
'      AND b.date_from <= SYSDATE',
'      AND f.upc = :P89_UPC_SEARCH',
'UNION ALL',
'    SELECT a.discount_id, a.discount_value',
'    FROM NPT030 A, NPT008 B, NPT032 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE a.discount_id = b.discount_id',
'      AND a.discount_id = c.discount_id',
'      AND d.customer_id = c.customer_id',
'      AND a.class_id = e.class_id',
'      AND e.item_id = f.item_id',
'      AND d.dba = :P89_DBA',
'      AND b.date_to >= SYSDATE',
'      AND b.date_from <= SYSDATE',
'      AND f.upc = :P89_UPC_SEARCH',
'UNION ALL',
'    SELECT DISTINCT 0, np09.standard_discount_value',
'     FROM NPT009 np09, NIT001 nt01, NPT032 np032, NIT002 nt02',
'     WHERE np09.class_id = nt01.class_id',
'      AND np09.customer_id = np032.customer_id ',
'      AND np09.dba = :P89_DBA',
'      AND nt01.item_id = nt02.item_id',
'      AND nt02.upc = :P89_UPC_SEARCH',
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
'     WHERE collection_name = ''QUOTATION_DISCOUNTS''',
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
'    WHERE collection_name = ''QUOTATION_A''',
'      AND c006 = :P89_UPC_SEARCH;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq_id := 0;',
'END;',
'',
'BEGIN',
'    SELECT a.item_num INTO v_bc',
'    FROM NIT001 a, NIT002 b',
'    WHERE a.item_id = b.item_id',
'      AND b.upc = :P89_UPC_SEARCH;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_bc := NULL;',
'        END;',
'        ',
'     IF v_seq BETWEEN 1 AND 4 AND v_bc IS NOT NULL AND v_seq_id != 0 THEN',
'        apex_collection.update_member_attribute(',
'            p_collection_name => CASE v_seq ',
'                                  WHEN 1 THEN ''QUOTATION_A'' ',
'                                  WHEN 2 THEN ''QUOTATION_B'' ',
'                                  WHEN 3 THEN ''QUOTATION_C'' ',
'                                  WHEN 4 THEN ''QUOTATION_D'' ',
'                                 END,',
'            p_seq => v_seq_id,',
'            p_attr_number => 3,',
'            p_number_value => v_disc',
'        );',
'    END IF;',
'',
'END;',
''))
,p_attribute_02=>'P89_UPC_SEARCH,P89_DBA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65545564666127650)
,p_event_id=>wwv_flow_imp.id(65537500110127631)
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
'      AND d.dba = :P89_DBA',
'      AND b.date_to >= SYSDATE',
'      AND b.date_from <= SYSDATE',
'      AND f.upc = :P89_UPC_SEARCH',
'UNION ALL',
'  SELECT a.discount_id, a.discount_value',
'    FROM NPT029 A, NPT008 B, NPT032 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE a.discount_id = b.discount_id',
'      AND a.discount_id = c.discount_id',
'      AND d.customer_id = c.customer_id',
'      AND a.dept_id = e.dept_id',
'      AND e.item_id = f.item_id',
'      AND d.dba = :P89_DBA',
'      AND b.date_to >= SYSDATE',
'      AND b.date_from <= SYSDATE',
'      AND f.upc = :P89_UPC_SEARCH',
'UNION ALL',
'    SELECT a.discount_id, a.discount_value',
'    FROM NPT030 A, NPT008 B, NPT032 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE a.discount_id = b.discount_id',
'      AND a.discount_id = c.discount_id',
'      AND d.customer_id = c.customer_id',
'      AND a.class_id = e.class_id',
'      AND e.item_id = f.item_id',
'      AND d.dba = :P89_DBA',
'      AND b.date_to >= SYSDATE',
'      AND b.date_from <= SYSDATE',
'      AND f.upc = :P89_UPC_SEARCH',
'UNION ALL',
'    SELECT DISTINCT 0, np09.standard_discount_value',
'     FROM NPT009 np09, NIT001 nt01, NPT032 np032, NIT002 nt02',
'     WHERE np09.class_id = nt01.class_id',
'      AND np09.customer_id = np032.customer_id ',
'      AND np09.dba = :P89_DBA',
'      AND nt01.item_id = nt02.item_id',
'      AND nt02.upc = :P89_UPC_SEARCH',
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
'     WHERE collection_name = ''QUOTATION_DISCOUNTS''',
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
'    WHERE collection_name = ''QUOTATION_B''',
'      AND c006 = :P89_UPC_SEARCH;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq_id := 0;',
'END;',
'',
'BEGIN',
'    SELECT a.item_num INTO v_bc',
'    FROM NIT001 a, NIT002 b',
'    WHERE a.item_id = b.item_id',
'      AND b.upc = :P89_UPC_SEARCH;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_bc := NULL;',
'        END;',
'        ',
'     IF v_seq BETWEEN 1 AND 4 AND v_bc IS NOT NULL AND v_seq_id != 0 THEN',
'        apex_collection.update_member_attribute(',
'            p_collection_name => CASE v_seq ',
'                                  WHEN 1 THEN ''QUOTATION_A'' ',
'                                  WHEN 2 THEN ''QUOTATION_B'' ',
'                                  WHEN 3 THEN ''QUOTATION_C'' ',
'                                  WHEN 4 THEN ''QUOTATION_D'' ',
'                                 END,',
'            p_seq => v_seq_id,',
'            p_attr_number => 3,',
'            p_number_value => v_disc',
'        );',
'    END IF;',
'',
'END;',
''))
,p_attribute_02=>'P89_UPC_SEARCH,P89_DBA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65546083938127650)
,p_event_id=>wwv_flow_imp.id(65537500110127631)
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
'      AND d.dba = :P89_DBA',
'      AND b.date_to >= SYSDATE',
'      AND b.date_from <= SYSDATE',
'      AND f.upc = :P89_UPC_SEARCH',
'UNION ALL',
'  SELECT a.discount_id, a.discount_value',
'    FROM NPT029 A, NPT008 B, NPT032 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE a.discount_id = b.discount_id',
'      AND a.discount_id = c.discount_id',
'      AND d.customer_id = c.customer_id',
'      AND a.dept_id = e.dept_id',
'      AND e.item_id = f.item_id',
'      AND d.dba = :P89_DBA',
'      AND b.date_to >= SYSDATE',
'      AND b.date_from <= SYSDATE',
'      AND f.upc = :P89_UPC_SEARCH',
'UNION ALL',
'    SELECT a.discount_id, a.discount_value',
'    FROM NPT030 A, NPT008 B, NPT032 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE a.discount_id = b.discount_id',
'      AND a.discount_id = c.discount_id',
'      AND d.customer_id = c.customer_id',
'      AND a.class_id = e.class_id',
'      AND e.item_id = f.item_id',
'      AND d.dba = :P89_DBA',
'      AND b.date_to >= SYSDATE',
'      AND b.date_from <= SYSDATE',
'      AND f.upc = :P89_UPC_SEARCH',
'UNION ALL',
'    SELECT DISTINCT 0, np09.standard_discount_value',
'     FROM NPT009 np09, NIT001 nt01, NPT032 np032, NIT002 nt02',
'     WHERE np09.class_id = nt01.class_id',
'      AND np09.customer_id = np032.customer_id ',
'      AND np09.dba = :P89_DBA',
'      AND nt01.item_id = nt02.item_id',
'      AND nt02.upc = :P89_UPC_SEARCH',
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
'     WHERE collection_name = ''QUOTATION_DISCOUNTS''',
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
'    WHERE collection_name = ''QUOTATION_C''',
'      AND c006 = :P89_UPC_SEARCH;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq_id := 0;',
'END;',
'',
'BEGIN',
'    SELECT a.item_num INTO v_bc',
'    FROM NIT001 a, NIT002 b',
'    WHERE a.item_id = b.item_id',
'      AND b.upc = :P89_UPC_SEARCH;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_bc := NULL;',
'        END;',
'        ',
'     IF v_seq BETWEEN 1 AND 4 AND v_bc IS NOT NULL AND v_seq_id != 0 THEN',
'        apex_collection.update_member_attribute(',
'            p_collection_name => CASE v_seq ',
'                                  WHEN 1 THEN ''QUOTATION_A'' ',
'                                  WHEN 2 THEN ''QUOTATION_B'' ',
'                                  WHEN 3 THEN ''QUOTATION_C'' ',
'                                  WHEN 4 THEN ''QUOTATION_D'' ',
'                                 END,',
'            p_seq => v_seq_id,',
'            p_attr_number => 3,',
'            p_number_value => v_disc',
'        );',
'    END IF;',
'',
'END;',
''))
,p_attribute_02=>'P89_UPC_SEARCH,P89_DBA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65544556679127646)
,p_event_id=>wwv_flow_imp.id(65537500110127631)
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
'      AND d.dba = :P89_DBA',
'      AND b.date_to >= SYSDATE',
'      AND b.date_from <= SYSDATE',
'      AND f.upc = :P89_UPC_SEARCH',
'UNION ALL',
'  SELECT a.discount_id, a.discount_value',
'    FROM NPT029 A, NPT008 B, NPT032 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE a.discount_id = b.discount_id',
'      AND a.discount_id = c.discount_id',
'      AND d.customer_id = c.customer_id',
'      AND a.dept_id = e.dept_id',
'      AND e.item_id = f.item_id',
'      AND d.dba = :P89_DBA',
'      AND b.date_to >= SYSDATE',
'      AND b.date_from <= SYSDATE',
'      AND f.upc = :P89_UPC_SEARCH',
'UNION ALL',
'    SELECT a.discount_id, a.discount_value',
'    FROM NPT030 A, NPT008 B, NPT032 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE a.discount_id = b.discount_id',
'      AND a.discount_id = c.discount_id',
'      AND d.customer_id = c.customer_id',
'      AND a.class_id = e.class_id',
'      AND e.item_id = f.item_id',
'      AND d.dba = :P89_DBA',
'      AND b.date_to >= SYSDATE',
'      AND b.date_from <= SYSDATE',
'      AND f.upc = :P89_UPC_SEARCH',
'UNION ALL',
'    SELECT DISTINCT 0, np09.standard_discount_value',
'     FROM NPT009 np09, NIT001 nt01, NPT032 np032, NIT002 nt02',
'     WHERE np09.class_id = nt01.class_id',
'      AND np09.customer_id = np032.customer_id ',
'      AND np09.dba = :P89_DBA',
'      AND nt01.item_id = nt02.item_id',
'      AND nt02.upc = :P89_UPC_SEARCH',
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
'     WHERE collection_name = ''QUOTATION_DISCOUNTS''',
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
'    WHERE collection_name = ''QUOTATION_D''',
'      AND c006 = :P89_UPC_SEARCH;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq_id := 0;',
'END;',
'',
'BEGIN',
'    SELECT a.item_num INTO v_bc',
'    FROM NIT001 a, NIT002 b',
'    WHERE a.item_id = b.item_id',
'      AND b.upc = :P89_UPC_SEARCH;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_bc := NULL;',
'        END;',
'        ',
'     IF v_seq BETWEEN 1 AND 4 AND v_bc IS NOT NULL AND v_seq_id != 0 THEN',
'        apex_collection.update_member_attribute(',
'            p_collection_name => CASE v_seq ',
'                                  WHEN 1 THEN ''QUOTATION_A'' ',
'                                  WHEN 2 THEN ''QUOTATION_B'' ',
'                                  WHEN 3 THEN ''QUOTATION_C'' ',
'                                  WHEN 4 THEN ''QUOTATION_D'' ',
'                                 END,',
'            p_seq => v_seq_id,',
'            p_attr_number => 3,',
'            p_number_value => v_disc',
'        );',
'    END IF;',
'',
'END;',
''))
,p_attribute_02=>'P89_UPC_SEARCH,P89_DBA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65543012948127643)
,p_event_id=>wwv_flow_imp.id(65537500110127631)
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
'    WHERE d.dba = :P89_DBA',
'      AND c.discount_id = a.discount_id',
'      AND a.discount_id = b.discount_id',
'      AND d.customer_id = b.customer_id',
'      AND a.sic_id = e.sic_id',
'      AND e.item_id = f.item_id',
'      AND c.date_to >= SYSDATE',
'      AND c.date_from <= SYSDATE',
'      AND f.upc = :P89_UPC_SEARCH',
'UNION ALL',
'    SELECT a.discount_id AS discount_id, NVL(CASE WHEN c.type = ''Percent'' THEN f.price * (a.discount_value/100) WHEN c.type = ''Fixed'' THEN a.discount_value ELSE f.price END, 0) AS discounted_price',
'     FROM NPT029 A, NPT032 B, NPT008 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE d.dba = :P89_DBA',
'      AND c.discount_id = a.discount_id',
'      AND a.discount_id = b.discount_id',
'      AND d.customer_id = b.customer_id',
'      AND a.dept_id = e.dept_id',
'      AND e.item_id = f.item_id',
'      AND c.date_to >= SYSDATE',
'      AND c.date_from <= SYSDATE',
'      AND f.upc = :P89_UPC_SEARCH',
'UNION ALL',
'    SELECT a.discount_id AS discount_id, NVL(CASE WHEN c.type = ''Percent'' THEN f.price * (a.discount_value/100) WHEN c.type = ''Fixed'' THEN a.discount_value ELSE f.price END, 0) AS discounted_price',
'     FROM NPT030 A, NPT032 B, NPT008 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE d.dba = :P89_DBA',
'      AND c.discount_id = a.discount_id',
'      AND a.discount_id = b.discount_id',
'      AND d.customer_id = b.customer_id',
'      AND a.class_id = e.class_id',
'      AND e.item_id = f.item_id',
'      AND c.date_to >= SYSDATE',
'      AND c.date_from <= SYSDATE',
'      AND f.upc = :P89_UPC_SEARCH',
'UNION ALL',
'     SELECT DISTINCT 0 AS discount_id, NVL(d.price * (a.standard_discount_value / 100), 0) AS discounted_price',
'      FROM NPT009 A, NPT032 B, NIT001 C, NIT002 D',
'     WHERE a.dba = :P89_DBA',
'       AND d.upc = :P89_UPC_SEARCH',
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
'     WHERE collection_name = ''QUOTATION_DISCOUNTS''',
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
'    WHERE collection_name = ''QUOTATION_A''',
'      AND c006 = :P89_UPC_SEARCH;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_sid := 0;',
'END;',
'',
'BEGIN',
'    SELECT a.item_num INTO v_bc',
'    FROM NIT001 a, NIT002 b',
'    WHERE a.item_id = b.item_id',
'      AND b.upc = :P89_UPC_SEARCH;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_bc := NULL;',
'        END;',
'        ',
'     IF v_seq BETWEEN 1 AND 4 AND v_bc IS NOT NULL AND v_sid != 0 THEN',
'        apex_collection.update_member_attribute(',
'            p_collection_name => CASE v_seq ',
'                                  WHEN 1 THEN ''QUOTATION_A'' ',
'                                  WHEN 2 THEN ''QUOTATION_B'' ',
'                                  WHEN 3 THEN ''QUOTATION_C'' ',
'                                  WHEN 4 THEN ''QUOTATION_D'' ',
'                                 END,',
'            p_seq => v_sid,',
'            p_attr_number => 4,',
'            p_number_value => v_dc',
'        );',
'    END IF;',
'',
'END;'))
,p_attribute_02=>'P89_UPC_SEARCH,P89_DBA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65543528088127645)
,p_event_id=>wwv_flow_imp.id(65537500110127631)
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
'    WHERE d.dba = :P89_DBA',
'      AND c.discount_id = a.discount_id',
'      AND a.discount_id = b.discount_id',
'      AND d.customer_id = b.customer_id',
'      AND a.sic_id = e.sic_id',
'      AND e.item_id = f.item_id',
'      AND c.date_to >= SYSDATE',
'      AND c.date_from <= SYSDATE',
'      AND f.upc = :P89_UPC_SEARCH',
'UNION ALL',
'    SELECT a.discount_id AS discount_id, NVL(CASE WHEN c.type = ''Percent'' THEN f.price * (a.discount_value/100) WHEN c.type = ''Fixed'' THEN a.discount_value ELSE f.price END, 0) AS discounted_price',
'     FROM NPT029 A, NPT032 B, NPT008 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE d.dba = :P89_DBA',
'      AND c.discount_id = a.discount_id',
'      AND a.discount_id = b.discount_id',
'      AND d.customer_id = b.customer_id',
'      AND a.dept_id = e.dept_id',
'      AND e.item_id = f.item_id',
'      AND c.date_to >= SYSDATE',
'      AND c.date_from <= SYSDATE',
'      AND f.upc = :P89_UPC_SEARCH',
'UNION ALL',
'    SELECT a.discount_id AS discount_id, NVL(CASE WHEN c.type = ''Percent'' THEN f.price * (a.discount_value/100) WHEN c.type = ''Fixed'' THEN a.discount_value ELSE f.price END, 0) AS discounted_price',
'     FROM NPT030 A, NPT032 B, NPT008 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE d.dba = :P89_DBA',
'      AND c.discount_id = a.discount_id',
'      AND a.discount_id = b.discount_id',
'      AND d.customer_id = b.customer_id',
'      AND a.class_id = e.class_id',
'      AND e.item_id = f.item_id',
'      AND c.date_to >= SYSDATE',
'      AND c.date_from <= SYSDATE',
'      AND f.upc = :P89_UPC_SEARCH',
'UNION ALL',
'     SELECT DISTINCT 0 AS discount_id, NVL(d.price * (a.standard_discount_value / 100), 0) AS discounted_price',
'      FROM NPT009 A, NPT032 B, NIT001 C, NIT002 D',
'     WHERE a.dba = :P89_DBA',
'       AND d.upc = :P89_UPC_SEARCH',
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
'     WHERE collection_name = ''QUOTATION_DISCOUNTS''',
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
'    WHERE collection_name = ''QUOTATION_B''',
'      AND c006 = :P89_UPC_SEARCH;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_sid := 0;',
'END;',
'',
'BEGIN',
'    SELECT a.item_num INTO v_bc',
'    FROM NIT001 a, NIT002 b',
'    WHERE a.item_id = b.item_id',
'      AND b.upc = :P89_UPC_SEARCH;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_bc := NULL;',
'        END;',
'        ',
'     IF v_seq BETWEEN 1 AND 4 AND v_bc IS NOT NULL AND v_sid != 0 THEN',
'        apex_collection.update_member_attribute(',
'            p_collection_name => CASE v_seq ',
'                                  WHEN 1 THEN ''QUOTATION_A'' ',
'                                  WHEN 2 THEN ''QUOTATION_B'' ',
'                                  WHEN 3 THEN ''QUOTATION_C'' ',
'                                  WHEN 4 THEN ''QUOTATION_D'' ',
'                                 END,',
'            p_seq => v_sid,',
'            p_attr_number => 4,',
'            p_number_value => v_dc',
'        );',
'    END IF;',
'',
'END;'))
,p_attribute_02=>'P89_UPC_SEARCH,P89_DBA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65544046683127646)
,p_event_id=>wwv_flow_imp.id(65537500110127631)
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
'    WHERE d.dba = :P89_DBA',
'      AND c.discount_id = a.discount_id',
'      AND a.discount_id = b.discount_id',
'      AND d.customer_id = b.customer_id',
'      AND a.sic_id = e.sic_id',
'      AND e.item_id = f.item_id',
'      AND c.date_to >= SYSDATE',
'      AND c.date_from <= SYSDATE',
'      AND f.upc = :P89_UPC_SEARCH',
'UNION ALL',
'    SELECT a.discount_id AS discount_id, NVL(CASE WHEN c.type = ''Percent'' THEN f.price * (a.discount_value/100) WHEN c.type = ''Fixed'' THEN a.discount_value ELSE f.price END, 0) AS discounted_price',
'     FROM NPT029 A, NPT032 B, NPT008 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE d.dba = :P89_DBA',
'      AND c.discount_id = a.discount_id',
'      AND a.discount_id = b.discount_id',
'      AND d.customer_id = b.customer_id',
'      AND a.dept_id = e.dept_id',
'      AND e.item_id = f.item_id',
'      AND c.date_to >= SYSDATE',
'      AND c.date_from <= SYSDATE',
'      AND f.upc = :P89_UPC_SEARCH',
'UNION ALL',
'    SELECT a.discount_id AS discount_id, NVL(CASE WHEN c.type = ''Percent'' THEN f.price * (a.discount_value/100) WHEN c.type = ''Fixed'' THEN a.discount_value ELSE f.price END, 0) AS discounted_price',
'     FROM NPT030 A, NPT032 B, NPT008 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE d.dba = :P89_DBA',
'      AND c.discount_id = a.discount_id',
'      AND a.discount_id = b.discount_id',
'      AND d.customer_id = b.customer_id',
'      AND a.class_id = e.class_id',
'      AND e.item_id = f.item_id',
'      AND c.date_to >= SYSDATE',
'      AND c.date_from <= SYSDATE',
'      AND f.upc = :P89_UPC_SEARCH',
'UNION ALL',
'     SELECT DISTINCT 0 AS discount_id, NVL(d.price * (a.standard_discount_value / 100), 0) AS discounted_price',
'      FROM NPT009 A, NPT032 B, NIT001 C, NIT002 D',
'     WHERE a.dba = :P89_DBA',
'       AND d.upc = :P89_UPC_SEARCH',
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
'     WHERE collection_name = ''QUOTATION_DISCOUNTS''',
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
'    WHERE collection_name = ''QUOTATION_C''',
'      AND c006 = :P89_UPC_SEARCH;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_sid := 0;',
'END;',
'',
'BEGIN',
'    SELECT a.item_num INTO v_bc',
'    FROM NIT001 a, NIT002 b',
'    WHERE a.item_id = b.item_id',
'      AND b.upc = :P89_UPC_SEARCH;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_bc := NULL;',
'        END;',
'        ',
'     IF v_seq BETWEEN 1 AND 4 AND v_bc IS NOT NULL AND v_sid != 0 THEN',
'        apex_collection.update_member_attribute(',
'            p_collection_name => CASE v_seq ',
'                                  WHEN 1 THEN ''QUOTATION_A'' ',
'                                  WHEN 2 THEN ''QUOTATION_B'' ',
'                                  WHEN 3 THEN ''QUOTATION_C'' ',
'                                  WHEN 4 THEN ''QUOTATION_D'' ',
'                                 END,',
'            p_seq => v_sid,',
'            p_attr_number => 4,',
'            p_number_value => v_dc',
'        );',
'    END IF;',
'',
'END;'))
,p_attribute_02=>'P89_UPC_SEARCH,P89_DBA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65542547287127642)
,p_event_id=>wwv_flow_imp.id(65537500110127631)
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
'    WHERE d.dba = :P89_DBA',
'      AND c.discount_id = a.discount_id',
'      AND a.discount_id = b.discount_id',
'      AND d.customer_id = b.customer_id',
'      AND a.sic_id = e.sic_id',
'      AND e.item_id = f.item_id',
'      AND c.date_to >= SYSDATE',
'      AND c.date_from <= SYSDATE',
'      AND f.upc = :P89_UPC_SEARCH',
'UNION ALL',
'    SELECT a.discount_id AS discount_id, NVL(CASE WHEN c.type = ''Percent'' THEN f.price * (a.discount_value/100) WHEN c.type = ''Fixed'' THEN a.discount_value ELSE f.price END, 0) AS discounted_price',
'     FROM NPT029 A, NPT032 B, NPT008 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE d.dba = :P89_DBA',
'      AND c.discount_id = a.discount_id',
'      AND a.discount_id = b.discount_id',
'      AND d.customer_id = b.customer_id',
'      AND a.dept_id = e.dept_id',
'      AND e.item_id = f.item_id',
'      AND c.date_to >= SYSDATE',
'      AND c.date_from <= SYSDATE',
'      AND f.upc = :P89_UPC_SEARCH',
'UNION ALL',
'    SELECT a.discount_id AS discount_id, NVL(CASE WHEN c.type = ''Percent'' THEN f.price * (a.discount_value/100) WHEN c.type = ''Fixed'' THEN a.discount_value ELSE f.price END, 0) AS discounted_price',
'     FROM NPT030 A, NPT032 B, NPT008 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE d.dba = :P89_DBA',
'      AND c.discount_id = a.discount_id',
'      AND a.discount_id = b.discount_id',
'      AND d.customer_id = b.customer_id',
'      AND a.class_id = e.class_id',
'      AND e.item_id = f.item_id',
'      AND c.date_to >= SYSDATE',
'      AND c.date_from <= SYSDATE',
'      AND f.upc = :P89_UPC_SEARCH',
'UNION ALL',
'     SELECT DISTINCT 0 AS discount_id, NVL(d.price * (a.standard_discount_value / 100), 0) AS discounted_price',
'      FROM NPT009 A, NPT032 B, NIT001 C, NIT002 D',
'     WHERE a.dba = :P89_DBA',
'       AND d.upc = :P89_UPC_SEARCH',
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
'     WHERE collection_name = ''QUOTATION_DISCOUNTS''',
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
'    WHERE collection_name = ''QUOTATION_D''',
'      AND c006 = :P89_UPC_SEARCH;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_sid := 0;',
'END;',
'',
'BEGIN',
'    SELECT a.item_num INTO v_bc',
'    FROM NIT001 a, NIT002 b',
'    WHERE a.item_id = b.item_id',
'      AND b.upc = :P89_UPC_SEARCH;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_bc := NULL;',
'        END;',
'        ',
'     IF v_seq BETWEEN 1 AND 4 AND v_bc IS NOT NULL AND v_sid != 0 THEN',
'        apex_collection.update_member_attribute(',
'            p_collection_name => CASE v_seq ',
'                                  WHEN 1 THEN ''QUOTATION_A'' ',
'                                  WHEN 2 THEN ''QUOTATION_B'' ',
'                                  WHEN 3 THEN ''QUOTATION_C'' ',
'                                  WHEN 4 THEN ''QUOTATION_D'' ',
'                                 END,',
'            p_seq => v_sid,',
'            p_attr_number => 4,',
'            p_number_value => v_dc',
'        );',
'    END IF;',
'',
'END;'))
,p_attribute_02=>'P89_UPC_SEARCH,P89_DBA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64936811635728645)
,p_event_id=>wwv_flow_imp.id(65537500110127631)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'Y'
,p_name=>'Sub-Total'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P89_SUB'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH COLLECTION_SUMS AS (',
'    SELECT ''QUOTATION_A'' AS collection_name, SUM(n002 * n001) AS SUB_TOTAL',
'    FROM apex_collections',
'    WHERE collection_name = ''QUOTATION_A''',
' ',
'    UNION ALL',
' ',
'    SELECT ''QUOTATION_B'' AS collection_name, SUM(n002 * n001) AS SUB_TOTAL',
'    FROM apex_collections',
'    WHERE collection_name = ''QUOTATION_B''',
' ',
'    UNION ALL',
' ',
'    SELECT ''QUOTATION_C'' AS collection_name, SUM(n002 * n001) AS SUB_TOTAL',
'    FROM apex_collections',
'    WHERE collection_name = ''QUOTATION_C''',
' ',
'    UNION ALL',
' ',
'    SELECT ''QUOTATION_D'' AS collection_name, SUM(n002 * n001) AS SUB_TOTAL',
'    FROM apex_collections',
'    WHERE collection_name = ''QUOTATION_D''',
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
 p_id=>wwv_flow_imp.id(64936942428728646)
,p_event_id=>wwv_flow_imp.id(65537500110127631)
,p_event_result=>'TRUE'
,p_action_sequence=>150
,p_execute_on_page_init=>'Y'
,p_name=>'Discount'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P89_DISCOUNT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH COLLECTION_SUMS AS (',
'    SELECT ''QUOTATION_A'' AS collection_name, SUM(n004 * n001) AS TOTAL_DISCOUNT',
'    FROM apex_collections',
'    WHERE collection_name = ''QUOTATION_A''',
' ',
'    UNION ALL',
' ',
'    SELECT ''QUOTATION_B'' AS collection_name, SUM(n004 * n001) AS TOTAL_DISCOUNT',
'    FROM apex_collections',
'    WHERE collection_name = ''QUOTATION_B''',
' ',
'    UNION ALL',
' ',
'    SELECT ''QUOTATION_C'' AS collection_name, SUM(n004 * n001) AS TOTAL_DISCOUNT',
'    FROM apex_collections',
'    WHERE collection_name = ''QUOTATION_C''',
' ',
'    UNION ALL',
' ',
'    SELECT ''QUOTATION_D'' AS collection_name, SUM(n004 * n001) AS TOTAL_DISCOUNT',
'    FROM apex_collections',
'    WHERE collection_name = ''QUOTATION_D''',
'),',
'LOWEST_SUM AS (',
'    SELECT collection_name',
'    FROM COLLECTION_SUMS',
'    WHERE TOTAL_DISCOUNT = (SELECT MAX(TOTAL_DISCOUNT) FROM COLLECTION_SUMS)',
'    FETCH FIRST 1 ROW ONLY',
')',
'SELECT TO_CHAR(NVL(SUM(n004 * n001), 0) + NVL(:P89_ADDITIONAL_DISCOUNT, 0), ''FM999G999G999G990D00'' ) ',
'FROM apex_collections',
'WHERE collection_name IN (SELECT collection_name FROM LOWEST_SUM);'))
,p_attribute_07=>'P89_ADDITIONAL_DISCOUNT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64937085960728647)
,p_event_id=>wwv_flow_imp.id(65537500110127631)
,p_event_result=>'TRUE'
,p_action_sequence=>170
,p_execute_on_page_init=>'Y'
,p_name=>'Total'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P89_TOTAL'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'TO_CHAR(',
'    NVL(',
'        TO_NUMBER(REPLACE(REPLACE(NVL(:P89_SUB, ''0''), ''$'', ''''), '','', '''')) ',
'        - TO_NUMBER(REPLACE(REPLACE(NVL(:P89_DISCOUNT, ''0''), ''$'', ''''), '','', '''')),',
'        0',
'    ),',
'    ''FM999G999G999G990D00''',
')',
'',
''))
,p_attribute_07=>'P89_SUB,P89_DISCOUNT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64937162941728648)
,p_event_id=>wwv_flow_imp.id(65537500110127631)
,p_event_result=>'TRUE'
,p_action_sequence=>190
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P89_SUB,P89_DISCOUNT,P89_TOTAL,P89_ADDITIONAL_DISCOUNT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64937286860728649)
,p_event_id=>wwv_flow_imp.id(65537500110127631)
,p_event_result=>'TRUE'
,p_action_sequence=>210
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(178631074877282172)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65542026656127640)
,p_event_id=>wwv_flow_imp.id(65537500110127631)
,p_event_result=>'TRUE'
,p_action_sequence=>230
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let disableUPCSearch = ''no'';',
'apex.item("P89_CLICKED_SEARCH_F2").setValue(disableUPCSearch);',
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
 p_id=>wwv_flow_imp.id(65562807340127678)
,p_name=>'Update Quantity'
,p_event_sequence=>250
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(178631074877282172)
,p_triggering_element=>'QTY'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65563825879127679)
,p_event_id=>wwv_flow_imp.id(65562807340127678)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'QTY'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let selectedQty = this.triggeringElement.value;',
'apex.item("P89_SELECTED_QTY").setValue(selectedQty);',
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
 p_id=>wwv_flow_imp.id(65563356734127679)
,p_event_id=>wwv_flow_imp.id(65562807340127678)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P89_SELECTED_QTY'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(65564288737127681)
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
 p_id=>wwv_flow_imp.id(65566704054127684)
,p_event_id=>wwv_flow_imp.id(65564288737127681)
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
'        v_collection_name := ''QUOTATION_'' || CHR(64 + i);',
'',
'        begin',
'            select seq_id, n001',
'              into v_seq_id, v_qty',
'              from apex_collections ',
'             where collection_name = v_collection_name',
'               and c001 = :P89_SELECTED_ITEM_NO;',
'               ',
'            APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'                p_collection_name => v_collection_name,',
'                p_seq => v_seq_id,',
'                p_attr_number => 1,',
'                p_number_value => :P89_SELECTED_QTY);',
'',
'            APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'                p_collection_name => v_collection_name,',
'                p_seq => v_seq_id,',
'                p_attr_number => 5,',
'                p_number_value => :P89_SELECTED_QTY * :P89_SELECTED_PRICE);',
'',
'            IF v_qty = 0 THEN',
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
,p_attribute_02=>'P89_SELECTED_ITEM_NO,P89_SELECTED_QTY,P89_SELECTED_PRICE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64937329973728650)
,p_event_id=>wwv_flow_imp.id(65564288737127681)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_name=>'Sub-Total'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P89_SUB'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH COLLECTION_SUMS AS (',
'    SELECT ''QUOTATION_A'' AS collection_name, SUM(n002 * n001) AS SUB_TOTAL',
'    FROM apex_collections',
'    WHERE collection_name = ''QUOTATION_A''',
' ',
'    UNION ALL',
' ',
'    SELECT ''QUOTATION_B'' AS collection_name, SUM(n002 * n001) AS SUB_TOTAL',
'    FROM apex_collections',
'    WHERE collection_name = ''QUOTATION_B''',
' ',
'    UNION ALL',
' ',
'    SELECT ''QUOTATION_C'' AS collection_name, SUM(n002 * n001) AS SUB_TOTAL',
'    FROM apex_collections',
'    WHERE collection_name = ''QUOTATION_C''',
' ',
'    UNION ALL',
' ',
'    SELECT ''QUOTATION_D'' AS collection_name, SUM(n002 * n001) AS SUB_TOTAL',
'    FROM apex_collections',
'    WHERE collection_name = ''QUOTATION_D''',
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
 p_id=>wwv_flow_imp.id(65591894467268701)
,p_event_id=>wwv_flow_imp.id(65564288737127681)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_name=>'Discount'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P89_DISCOUNT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH COLLECTION_SUMS AS (',
'    SELECT ''QUOTATION_A'' AS collection_name, SUM(n004 * n001) AS TOTAL_DISCOUNT',
'    FROM apex_collections',
'    WHERE collection_name = ''QUOTATION_A''',
' ',
'    UNION ALL',
' ',
'    SELECT ''QUOTATION_B'' AS collection_name, SUM(n004 * n001) AS TOTAL_DISCOUNT',
'    FROM apex_collections',
'    WHERE collection_name = ''QUOTATION_B''',
' ',
'    UNION ALL',
' ',
'    SELECT ''QUOTATION_C'' AS collection_name, SUM(n004 * n001) AS TOTAL_DISCOUNT',
'    FROM apex_collections',
'    WHERE collection_name = ''QUOTATION_C''',
' ',
'    UNION ALL',
' ',
'    SELECT ''QUOTATION_D'' AS collection_name, SUM(n004 * n001) AS TOTAL_DISCOUNT',
'    FROM apex_collections',
'    WHERE collection_name = ''QUOTATION_D''',
'),',
'LOWEST_SUM AS (',
'    SELECT collection_name',
'    FROM COLLECTION_SUMS',
'    WHERE TOTAL_DISCOUNT = (SELECT MAX(TOTAL_DISCOUNT) FROM COLLECTION_SUMS)',
'    FETCH FIRST 1 ROW ONLY',
')',
'SELECT TO_CHAR(NVL(SUM(n004 * n001), 0) + NVL(:P89_ADDITIONAL_DISCOUNT, 0), ''FM999G999G999G990D00'' ) ',
'FROM apex_collections',
'WHERE collection_name IN (SELECT collection_name FROM LOWEST_SUM);'))
,p_attribute_07=>'P89_ADDITIONAL_DISCOUNT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65591933150268702)
,p_event_id=>wwv_flow_imp.id(65564288737127681)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_name=>'Total'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P89_TOTAL'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'TO_CHAR(',
'    NVL(',
'        TO_NUMBER(REPLACE(REPLACE(NVL(:P89_SUB, ''0''), ''$'', ''''), '','', '''')) ',
'        - TO_NUMBER(REPLACE(REPLACE(NVL(:P89_DISCOUNT, ''0''), ''$'', ''''), '','', '''')),',
'        0',
'    ),',
'    ''FM999G999G999G990D00''',
')',
'',
''))
,p_attribute_07=>'P89_SUB,P89_DISCOUNT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65592071973268703)
,p_event_id=>wwv_flow_imp.id(65564288737127681)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P89_SUB,P89_DISCOUNT,P89_TOTAL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65592142412268704)
,p_event_id=>wwv_flow_imp.id(65564288737127681)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(178631074877282172)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(65558901571127671)
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
 p_id=>wwv_flow_imp.id(65559496186127673)
,p_event_id=>wwv_flow_imp.id(65558901571127671)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_name=>'Set LOC 1 - WH 1'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P89_WH_1'
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
'                                                      WHERE nit002.UPC = :P89_SELECTED_ITEM_NO))',
'        ORDER BY nit004.QTY DESC',
'        OFFSET 0 ROWS',
'        FETCH NEXT 1 ROWS ONLY;',
'',
'        -- For some reason, it only works when this code is added',
'        raise_application_error(-20001, wh_1);',
' ',
'        EXCEPTION ',
'            WHEN no_data_found THEN',
'                :P89_WH_1 := '''';',
'            WHEN OTHERS THEN',
'                :P89_WH_1 := wh_1;',
'    END;',
'',
'    RETURN :P89_WH_1;',
'END;'))
,p_attribute_07=>'P89_SELECTED_ITEM_NO'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_elem_type=>'COLUMN'
,p_client_condition_element=>'ITEM_NO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65561417478127676)
,p_event_id=>wwv_flow_imp.id(65558901571127671)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_name=>'Set LOC 2 - WH 2'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P89_WH_2'
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
'                                                      WHERE nit002.UPC = :P89_SELECTED_ITEM_NO))',
'        ORDER BY nit004.QTY DESC',
'        OFFSET 1 ROWS',
'        FETCH NEXT 1 ROWS ONLY;',
'',
'        -- For some reason, it only works when this code is added',
'        raise_application_error(-20001, wh_2);',
' ',
'        EXCEPTION ',
'            WHEN no_data_found THEN',
'                :P89_WH_2 := '''';',
'            WHEN OTHERS THEN',
'                :P89_WH_2 := wh_2;',
'    END;',
'',
'    RETURN :P89_WH_2;',
'END;'))
,p_attribute_07=>'P89_SELECTED_ITEM_NO'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_elem_type=>'COLUMN'
,p_client_condition_element=>'ITEM_NO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65561939769127678)
,p_event_id=>wwv_flow_imp.id(65558901571127671)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_name=>'Set LOC 3 - WH 3'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P89_WH_3'
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
'                                                      WHERE nit002.UPC = :P89_SELECTED_ITEM_NO))',
'        ORDER BY nit004.QTY DESC',
'        OFFSET 2 ROWS',
'        FETCH NEXT 1 ROWS ONLY;',
'',
'        -- For some reason, it only works when this code is added',
'        raise_application_error(-20001, wh_3);',
' ',
'        EXCEPTION ',
'            WHEN no_data_found THEN',
'                :P89_WH_3 := '''';',
'            WHEN OTHERS THEN',
'                :P89_WH_3 := wh_3;',
'    END;',
'',
'    RETURN :P89_WH_3;',
'END;'))
,p_attribute_07=>'P89_SELECTED_ITEM_NO'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_elem_type=>'COLUMN'
,p_client_condition_element=>'ITEM_NO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65562442359127678)
,p_event_id=>wwv_flow_imp.id(65558901571127671)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_name=>'Set LOC 1 - QTY 1'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P89_LOC_1'
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
'                                                      WHERE nit002.UPC = :P89_SELECTED_ITEM_NO))',
'        ORDER BY nit004.QTY DESC',
'        OFFSET 0 ROWS',
'        FETCH NEXT 1 ROWS ONLY;',
'',
'        -- For some reason, it only works when this code is added',
'        raise_application_error(-20001, qty);',
' ',
'        EXCEPTION ',
'            WHEN no_data_found THEN',
'                :P89_LOC_1 := '''';',
'            WHEN OTHERS THEN',
'                :P89_LOC_1 := NULLIF(qty, 0);',
'    END;',
'',
'    RETURN :P89_LOC_1;',
'END;'))
,p_attribute_07=>'P89_SELECTED_ITEM_NO'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_elem_type=>'COLUMN'
,p_client_condition_element=>'ITEM_NO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65560402405127675)
,p_event_id=>wwv_flow_imp.id(65558901571127671)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_name=>'Set LOC 2 - QTY 2'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P89_LOC_2'
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
'                                                      WHERE nit002.UPC = :P89_SELECTED_ITEM_NO))',
'        ORDER BY nit004.QTY DESC',
'        OFFSET 1 ROWS',
'        FETCH NEXT 1 ROWS ONLY;',
'',
'        raise_application_error(-20001, qty);',
' ',
'        EXCEPTION ',
'            WHEN no_data_found THEN',
'                :P89_LOC_2 := '''';',
'            WHEN OTHERS THEN',
'                :P89_LOC_2 := NULLIF(qty, 0);',
'    END;',
'',
'    RETURN :P89_LOC_2;',
'END;'))
,p_attribute_07=>'P89_SELECTED_ITEM_NO'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_elem_type=>'COLUMN'
,p_client_condition_element=>'ITEM_NO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65560993698127676)
,p_event_id=>wwv_flow_imp.id(65558901571127671)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_name=>'Set LOC 3 - QTY 3'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P89_LOC_3'
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
'                                                      WHERE nit002.UPC = :P89_SELECTED_ITEM_NO))',
'        ORDER BY nit004.QTY DESC',
'        OFFSET 2 ROWS',
'        FETCH NEXT 1 ROWS ONLY;',
'',
'        raise_application_error(-20001, qty);',
' ',
'        EXCEPTION ',
'            WHEN no_data_found THEN',
'                :P89_LOC_3 := '''';',
'            WHEN OTHERS THEN',
'                :P89_LOC_3 := NULLIF(qty, 0);',
'    END;',
'',
'    RETURN :P89_LOC_3;',
'END;'))
,p_attribute_07=>'P89_SELECTED_ITEM_NO'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_elem_type=>'COLUMN'
,p_client_condition_element=>'ITEM_NO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65559969884127675)
,p_event_id=>wwv_flow_imp.id(65558901571127671)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($(''#P89_LOC_1'').val() > 0) {',
'    document.getElementById("P89_LOC_1_LABEL").innerHTML = "LOC #" + $(''#P89_WH_1'').val();',
'} else {',
'    document.getElementById("P89_LOC_1_LABEL").innerHTML = "";',
'}',
'',
'if ($(''#P89_LOC_2'').val() > 0) {',
'    document.getElementById("P89_LOC_2_LABEL").innerHTML = "LOC #" + $(''#P89_WH_2'').val();',
'} else {',
'    document.getElementById("P89_LOC_2_LABEL").innerHTML = "";',
'}',
'',
'if ($(''#P89_LOC_3'').val() > 0) {',
'    document.getElementById("P89_LOC_3_LABEL").innerHTML = "LOC #" + $(''#P89_WH_3'').val();',
'} else {',
'    document.getElementById("P89_LOC_3_LABEL").innerHTML = "";',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(65567682755127685)
,p_name=>'Search'
,p_event_sequence=>320
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(65524910504127609)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65568144187127685)
,p_event_id=>wwv_flow_imp.id(65567682755127685)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let clickedF2 = ''yes'';',
'apex.item("P89_CLICKED_SEARCH_F2").setValue(clickedF2);'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65568697023127687)
,p_event_id=>wwv_flow_imp.id(65567682755127685)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region("wholesale").widget().interactiveGrid("getActions").invoke("selection-add-row");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(65535759875127629)
,p_name=>'QUOTATION DISCOUNTS'
,p_event_sequence=>330
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65536246050127629)
,p_event_id=>wwv_flow_imp.id(65535759875127629)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_count INTEGER := 0; -- Variable to track the number of discounts',
'    v_letter_index INTEGER := 1; -- Counter for assigning letters (A, B, C, D)',
'BEGIN',
'    -- Count the number of discounts',
'    SELECT COUNT(*)',
'    INTO v_count',
'    FROM NPT032 npt032, NPT008 npt008, NPT009 npt009',
'    WHERE npt032.customer_id = npt009.customer_id',
'      AND npt032.discount_id = npt008.discount_id',
'      AND npt009.dba = :P89_DBA;',
'',
'    -- Add discount IDs in order',
'    FOR r IN (',
'        SELECT npt032.discount_id',
'        FROM NPT032 npt032, NPT008 npt008, NPT009 npt009',
'        WHERE npt032.customer_id = npt009.customer_id',
'          AND npt032.discount_id = npt008.discount_id',
'          AND npt009.dba = :P89_DBA',
'        ORDER BY npt032.discount_id',
'    ) LOOP',
'        APEX_COLLECTION.ADD_MEMBER(',
'            p_collection_name => ''QUOTATION_DISCOUNTS'',',
'            p_n001 => r.discount_id,',
'            p_c001 => CHR(64 + v_letter_index) -- Dynamically assign ''A'', ''B'', etc.',
'        );',
'        v_letter_index := v_letter_index + 1; -- Increment letter counter',
'    END LOOP;',
'',
'    -- Fill remaining slots with zeros',
'    FOR i IN 1..(4 - v_count) LOOP',
'        APEX_COLLECTION.ADD_MEMBER(',
'            p_collection_name => ''QUOTATION_DISCOUNTS'',',
'            p_n001 => 0,',
'            p_c001 => CHR(64 + v_letter_index) -- Assign remaining letters',
'        );',
'        v_letter_index := v_letter_index + 1; -- Increment letter counter',
'    END LOOP;',
'END;',
'',
'',
''))
,p_attribute_02=>'P89_DBA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(65593296869268715)
,p_name=>'Special Instructions'
,p_event_sequence=>340
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>wwv_flow_string.join(wwv_flow_t_varchar2(
'window',
''))
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65593347619268716)
,p_event_id=>wwv_flow_imp.id(65593296869268715)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_name=>'Special Instructions'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P89_SPECIAL_INSTRUCTIONS'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT c001',
'  FROM apex_collections',
' WHERE collection_name = ''QUOTATION_INSTRUCTIONS''',
'   AND seq_id = (SELECT MAX(seq_id)',
'                   FROM apex_collections',
'                  WHERE collection_name = ''QUOTATION_INSTRUCTIONS'')'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68004139590073920)
,p_event_id=>wwv_flow_imp.id(65593296869268715)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_name=>'Additional Discount'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P89_ADDITIONAL_DISCOUNT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  NVL(n001, 0) ',
'FROM apex_collections',
'WHERE collection_name = ''QUOTATION_ADDITIONAL''',
'AND seq_id = (SELECT MAX(seq_id)',
'                FROM apex_collections',
'               WHERE collection_name = ''QUOTATION_ADDITIONAL'')'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68004286752073921)
,p_event_id=>wwv_flow_imp.id(65593296869268715)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_name=>'Discount'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P89_DISCOUNT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH COLLECTION_SUMS AS (',
'    SELECT ''QUOTATION_A'' AS collection_name, SUM(n004 * n001) AS TOTAL_DISCOUNT',
'    FROM apex_collections',
'    WHERE collection_name = ''QUOTATION_A''',
' ',
'    UNION ALL',
' ',
'    SELECT ''QUOTATION_B'' AS collection_name, SUM(n004 * n001) AS TOTAL_DISCOUNT',
'    FROM apex_collections',
'    WHERE collection_name = ''QUOTATION_B''',
' ',
'    UNION ALL',
' ',
'    SELECT ''QUOTATION_C'' AS collection_name, SUM(n004 * n001) AS TOTAL_DISCOUNT',
'    FROM apex_collections',
'    WHERE collection_name = ''QUOTATION_C''',
' ',
'    UNION ALL',
' ',
'    SELECT ''QUOTATION_D'' AS collection_name, SUM(n004 * n001) AS TOTAL_DISCOUNT',
'    FROM apex_collections',
'    WHERE collection_name = ''QUOTATION_D''',
'),',
'LOWEST_SUM AS (',
'    SELECT collection_name',
'    FROM COLLECTION_SUMS',
'    WHERE TOTAL_DISCOUNT = (SELECT MAX(TOTAL_DISCOUNT) FROM COLLECTION_SUMS)',
'    FETCH FIRST 1 ROW ONLY',
')',
'SELECT TO_CHAR(NVL(SUM(n004 * n001), 0) + NVL(:P89_ADDITIONAL_DISCOUNT, 0), ''FM999G999G999G990D00'' ) ',
'FROM apex_collections',
'WHERE collection_name IN (SELECT collection_name FROM LOWEST_SUM);'))
,p_attribute_07=>'P89_ADDITIONAL_DISCOUNT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68004313174073922)
,p_event_id=>wwv_flow_imp.id(65593296869268715)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_name=>'Total'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P89_TOTAL'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'TO_CHAR(',
'    NVL(',
'        TO_NUMBER(REPLACE(REPLACE(NVL(:P89_SUB, ''0''), ''$'', ''''), '','', '''')) ',
'        - TO_NUMBER(REPLACE(REPLACE(NVL(:P89_DISCOUNT, ''0''), ''$'', ''''), '','', '''')),',
'        0',
'    ),',
'    ''FM999G999G999G990D00''',
')',
'',
''))
,p_attribute_07=>'P89_SUB,P89_DISCOUNT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68004425898073923)
,p_event_id=>wwv_flow_imp.id(65593296869268715)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P89_DISCOUNT,P89_TOTAL,P89_ADDITIONAL_DISCOUNT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65593481323268717)
,p_event_id=>wwv_flow_imp.id(65593296869268715)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P89_SPECIAL_INSTRUCTIONS'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(68003310773073912)
,p_name=>'Create'
,p_event_sequence=>350
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(65523741159127607)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69535099611822648)
,p_event_id=>wwv_flow_imp.id(68003310773073912)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Insert Discount_ID'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_discount_seq  VARCHAR(1);',
'    v_discount_id   NUMBER;',
'BEGIN',
'    WITH price_summary AS (',
'    SELECT REPLACE(collection_name, ''QUOTATION_'', '''') AS collection_name,',
'           SUM(n005 - (NVL(n004, 0) * n001)) AS TOTAL_EXTENDED_PRICE',
'    FROM apex_collections',
'    WHERE collection_name IN (''QUOTATION_A'', ''QUOTATION_B'', ''QUOTATION_C'', ''QUOTATION_D'')',
'    GROUP BY collection_name',
')',
'SELECT collection_name',
'INTO v_discount_seq',
'FROM price_summary',
'WHERE TOTAL_EXTENDED_PRICE = (SELECT MIN(TOTAL_EXTENDED_PRICE)',
'                                FROM price_summary)',
'FETCH FIRST 1 ROW ONLY;',
'BEGIN',
'SELECT n001',
'  INTO v_discount_id',
'  FROM apex_collections',
' WHERE collection_name = ''QUOTATION_DISCOUNTS''',
'   AND c001 = v_discount_seq;',
'EXCEPTION',
'WHEN NO_DATA_FOUND THEN',
'    v_discount_id := NULL;',
'END;',
'',
'UPDATE NPT006',
'   SET DISCOUNT_ID = CASE ',
'                       WHEN V_DISCOUNT_ID = 0 THEN NULL ',
'                       ELSE V_DISCOUNT_ID ',
'                     END',
' WHERE QUOTATION_ID = :P89_QUOTATION_NO;',
'',
'END;'))
,p_attribute_02=>'P89_QUOTATION_NO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68003440299073913)
,p_event_id=>wwv_flow_imp.id(68003310773073912)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'Insert'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_QUOTATION_ID  NUMBER;',
'    V_CUSTOMER_ID   NUMBER;',
'    V_DISCOUNT_TYPE VARCHAR(10);',
'    V_DISCOUNT_AMT  NUMBER;',
'    V_REASON        VARCHAR(51);',
'    V_DISCOUNT_ID   NUMBER;',
'BEGIN',
'    SELECT CUSTOMER_ID INTO V_CUSTOMER_ID',
'      FROM NPT009 ',
'     WHERE DBA = :P89_DBA;',
'',
'    SELECT QUOTATION_ID INTO V_QUOTATION_ID',
'      FROM NPT006 ',
'     WHERE QUOTATION_ID = :P89_QUOTATION_NO;',
'     ',
'    BEGIN',
'        SELECT c001, c002, n001  ',
'        INTO V_DISCOUNT_TYPE, V_REASON, V_DISCOUNT_AMT',
'        FROM APEX_COLLECTIONS',
'        WHERE COLLECTION_NAME = ''QUOTATION_ADDITIONAL'';',
'        EXCEPTION WHEN NO_DATA_FOUND THEN',
'            V_DISCOUNT_TYPE := NULL; V_DISCOUNT_AMT := NULL; V_REASON := NULL;',
'    END;',
'',
'    UPDATE NPT006',
'    SET ',
'        TOTAL_AMOUNT = TO_NUMBER(REPLACE(:P89_TOTAL, '','', '''')),',
'        SUB_TOTAL = TO_NUMBER(REPLACE(:P89_SUB, '','', '''')),',
'        STATUS = ''CREATED'',',
'        TOTAL_DISCOUNT = TO_NUMBER(REPLACE(:P89_DISCOUNT, '','', '''')),',
'        USER_CREATED = v(''APP_USER''),',
'        DATE_CREATED = SYSDATE,',
'        CUSTOMER_ID = V_CUSTOMER_ID,',
'        ADDITIONAL_DISCOUNT_TYPE = V_DISCOUNT_TYPE,',
'        ADDITIONAL_DISCOUNT_VALUE = V_DISCOUNT_AMT,',
'        SPECIAL_INSTRUCTIONS = :P89_SPECIAL_INSTRUCTIONS,',
'        ADDITIONAL_DISCOUNT_REASON = V_REASON',
'    WHERE QUOTATION_ID = V_QUOTATION_ID;',
'   ',
'    ',
'    FOR d IN (WITH COLLECTION_SUMS AS (',
'    SELECT ''QUOTATION_A'' AS collection_name, SUM(NVL(n004, 0) * n001) AS TOTAL_EXTENDED_PRICE',
'    FROM apex_collections',
'    WHERE collection_name = ''QUOTATION_A''',
' ',
'    UNION ALL',
' ',
'    SELECT ''QUOTATION_B'' AS collection_name, SUM(NVL(n004, 0) * n001)  AS TOTAL_EXTENDED_PRICE',
'    FROM apex_collections',
'    WHERE collection_name = ''QUOTATION_B''',
' ',
'    UNION ALL',
' ',
'    SELECT ''QUOTATION_C'' AS collection_name, SUM(NVL(n004, 0) * n001)  AS TOTAL_EXTENDED_PRICE',
'    FROM apex_collections',
'    WHERE collection_name = ''QUOTATION_C''',
' ',
'    UNION ALL',
' ',
'    SELECT ''QUOTATION_D'' AS collection_name, SUM(NVL(n004, 0) * n001)  AS TOTAL_EXTENDED_PRICE',
'    FROM apex_collections',
'    WHERE collection_name = ''QUOTATION_D''',
'),',
'LOWEST_SUM AS (',
'    SELECT collection_name',
'    FROM COLLECTION_SUMS',
'    WHERE TOTAL_EXTENDED_PRICE = (SELECT MAX(TOTAL_EXTENDED_PRICE) FROM COLLECTION_SUMS)',
'    FETCH FIRST 1 ROW ONLY',
')',
'SELECT ',
'    c001 AS ITEM_NO, ',
'    c002 AS CO, ',
'    c003 AS ITEM_DESCRIPTION, ',
'    n001 AS QTY, ',
'    n002 AS REG_PRICE, ',
'    c004 AS UOM, ',
'    NVL(n004, 0) AS DISCOUNTED_PRICE,',
'    NVL(n003, 0) AS DISCOUNT_VALUE, ',
'    CASE ',
'        WHEN n003 <> 0 THEN ''S''',
'        ELSE ''N''',
'    END AS DT,',
'    CASE ',
'                    WHEN c004 = ''PCS'' THEN 1',
'                    WHEN c004 = ''PK'' THEN 2',
'                    WHEN c004 = ''BOX'' THEN 3',
'                    WHEN c004 = ''CRT'' THEN 4',
'                    WHEN c004 = ''MTR'' THEN 61',
'                    WHEN c004 = ''ROLL'' THEN 81',
'                    ELSE 0 ',
'               END AS uom_id,',
'    n002 - NVL(n004, 0) AS NET_PRICE,',
'    (n005 - NVL(n004, 0)) * n001 AS EXTENDED_PRICE,',
'    c006 AS BARCODE,',
'    c007 AS ITEM_ID',
'FROM apex_collections',
'WHERE collection_name IN (SELECT collection_name FROM LOWEST_SUM))',
'        LOOP',
'    INSERT INTO NPT007(',
'       QUOTATION_ID,',
'       ITEM_ID,',
'       UOM_ID,',
'       QTY,',
'       UOM_CODE,',
'       USER_CREATED,',
'       DATE_CREATED,',
'       USER_UPDATE,',
'       DATE_UPDATED',
'    )',
'    VALUES (',
'        V_QUOTATION_ID, ',
'        D.ITEM_ID, ',
'        D.UOM_ID, ',
'        D.QTY, ',
'        D.UOM, ',
'        v(''APP_USER''), ',
'        SYSDATE, ',
'        v(''APP_USER''), ',
'        SYSDATE',
'    );',
'   END LOOP;',
'END;'))
,p_attribute_02=>'P89_TOTAL,P89_SUB,P89_DBA,P89_DISCOUNT,P89_SPECIAL_INSTRUCTIONS'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68003968995073918)
,p_event_id=>wwv_flow_imp.id(68003310773073912)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>'Redirect'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P89_URL := apex_page.get_url(',
'       p_page   => 86',
'     );',
'END;'))
,p_attribute_03=>'P89_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68003553338073914)
,p_event_id=>wwv_flow_imp.id(68003310773073912)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P89_URL");',
'apex.navigation.redirect(url);'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(65523116620127606)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(178631074877282172)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Invoice - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>65523116620127606
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(65533335913127626)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'QUOTATION_A'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(',
'        p_collection_name => ''QUOTATION_A'');'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>65533335913127626
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(65533768949127626)
,p_process_sequence=>40
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'QUOTATION_B'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(',
'        p_collection_name => ''QUOTATION_B'');'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>65533768949127626
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(65534100057127626)
,p_process_sequence=>50
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'QUOTATION_C'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(',
'        p_collection_name => ''QUOTATION_C'');'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>65534100057127626
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(65534553589127628)
,p_process_sequence=>60
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'QUOTATION_D'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(',
'        p_collection_name => ''QUOTATION_D'');'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>65534553589127628
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(65535393372127628)
,p_process_sequence=>70
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Quotation No.'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_EXISTS NUMBER;',
'    V_CUSTOMER_ID NUMBER;',
'BEGIN',
'    SELECT CUSTOMER_ID INTO V_CUSTOMER_ID',
'     FROM NPT009',
'    WHERE DBA = :P89_DBA;',
'BEGIN',
'    SELECT 1 ',
'    INTO V_EXISTS',
'    FROM NPT006',
'    WHERE QUOTATION_ID = (SELECT MAX(QUOTATION_ID)',
'                          FROM NPT006',
'                         WHERE TOTAL_AMOUNT IS NULL',
'                           AND USER_CREATED = v(''APP_USER'')',
'                           AND CUSTOMER_ID = V_CUSTOMER_ID)',
'      AND USER_CREATED = v(''APP_USER'')',
'      AND CUSTOMER_ID = V_CUSTOMER_ID;',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'            INSERT INTO NPT006 (USER_CREATED, DATE_CREATED, CUSTOMER_ID)',
'            VALUES (v(''APP_USER''), SYSDATE, V_CUSTOMER_ID);',
'END;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>65535393372127628
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(65534940985127628)
,p_process_sequence=>80
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Quotation Discounts'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(',
'        p_collection_name => ''QUOTATION_DISCOUNTS'');'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>65534940985127628
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(68003857920073917)
,p_process_sequence=>90
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Additional Discounts'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(',
'        p_collection_name => ''QUOTATION_ADDITIONAL'');'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>68003857920073917
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(65593160944268714)
,p_process_sequence=>100
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Special Instructions'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(',
'        p_collection_name => ''QUOTATION_INSTRUCTIONS'');'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>65593160944268714
);
wwv_flow_imp.component_end;
end;
/
