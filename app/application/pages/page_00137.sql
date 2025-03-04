prompt --application/pages/page_00137
begin
--   Manifest
--     PAGE: 00137
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
 p_id=>137
,p_name=>'Charge COD Invoicing - Inquire'
,p_alias=>'CHARGE-COD-INVOICING-INQUIRE'
,p_step_title=>'Charge COD Invoicing Inquiry'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APP_FILES#onscan.min.js',
'#APP_FILES#onscan#MIN#.js',
'#APP_FILES#js/cmn#MIN#.js'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p87KeyMap = {',
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
'    },',
'',
'    escape: (v) => {',
'        $("#esc").trigger("click");',
'    }',
'',
'',
'}',
'',
'function mapP87Keys() {',
'    $(document).off(''keydown.p87keyevents'');',
'    $(document).on(''keydown.p87keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p87KeyMap[key]) {',
'            ev.preventDefault();',
'            p87KeyMap[key]();',
'        }',
'    });',
'}',
'',
'function customEvent(event, data){',
'    mapP81Keys();',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP87Keys();',
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
'    apex.item("P87_BARCODE").setValue(JSON.parse(sScancode));',
'    console.log(JSON.parse(sScancode))',
'}});',
'',
'setTitle("Charge/COD Invoicing Inquiry")'))
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
'#P87_CUSTOMER_CODE {',
'    padding-left: 2rem;',
'}',
'',
'#P87_DBA {',
'    padding-left: 2rem;',
'}',
'',
'#P87_BILLING_ADDRESS {',
'    padding-left: 1rem;',
'}',
'',
'#P87_PAYMENT_TERMS{',
'    padding-left: 1.2rem;',
'}',
'',
'.col-2:has(#P87_LOC_1_LABEL),',
'.col-2:has(#P87_LOC_2_LABEL),',
'.col-2:has(#P87_LOC_3_LABEL) {',
'    max-width: 5.5rem;',
'}',
'',
'.t-Form-inputContainer:has(#P87_LOC_1),',
'.t-Form-inputContainer:has(#P87_LOC_2),',
'.t-Form-inputContainer:has(#P87_LOC_3) {',
'    text-align: center;',
'    margin: 0 auto;',
'}',
'',
'.t-Form-labelContainer:has(#P87_QOH_LABEL),',
'.t-Form-labelContainer:has(#P87_LOC_1_LABEL),',
'.t-Form-labelContainer:has(#P87_LOC_2_LABEL),',
'.t-Form-labelContainer:has(#P87_LOC_3_LABEL),',
'.t-Form-labelContainer:has(#P87_SUB_LABEL),',
'.t-Form-labelContainer:has(#P87_DISCOUNT_LABEL),',
'.t-Form-labelContainer:has(#P87_TOTAL_LABEL) {',
'    text-align: left;',
'    padding-left: 1rem;',
'}'))
,p_step_template=>wwv_flow_imp.id(5671392681337017)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(176558143832005775)
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
 p_id=>wwv_flow_imp.id(176561638225005810)
,p_plug_name=>'Header 2'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--hiddenOverflow:t-Form--stretchInputs:t-Form--leftLabels'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>50
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(187164893678866479)
,p_plug_name=>'Invoice'
,p_region_name=>'wholesale'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>40
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH COLLECTION_SUMS AS (',
'    SELECT ''INQUIRE_A'' AS collection_name, SUM(n005 - (NVL(n004, 0) * n001)) AS TOTAL_EXTENDED_PRICE',
'    FROM apex_collections',
'    WHERE collection_name = ''INQUIRE_A''',
' ',
'    UNION ALL',
' ',
'    SELECT ''INQUIRE_B'' AS collection_name, SUM(n005 - (NVL(n004, 0) * n001)) AS TOTAL_EXTENDED_PRICE',
'    FROM apex_collections',
'    WHERE collection_name = ''INQUIRE_B''',
' ',
'    UNION ALL',
' ',
'    SELECT ''INQUIRE_C'' AS collection_name, SUM(n005 - (NVL(n004, 0) * n001)) AS TOTAL_EXTENDED_PRICE',
'    FROM apex_collections',
'    WHERE collection_name = ''INQUIRE_C''',
' ',
'    UNION ALL',
' ',
'    SELECT ''INQUIRE_D'' AS collection_name, SUM(n005 - (NVL(n004, 0) * n001)) AS TOTAL_EXTENDED_PRICE',
'    FROM apex_collections',
'    WHERE collection_name = ''INQUIRE_D''',
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
 p_id=>wwv_flow_imp.id(187165067733866481)
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
 p_id=>wwv_flow_imp.id(187165149738866482)
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
 p_id=>wwv_flow_imp.id(187165239133866483)
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
 p_id=>wwv_flow_imp.id(187165381362866484)
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
 p_id=>wwv_flow_imp.id(187165510208866485)
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
 p_id=>wwv_flow_imp.id(187165558241866486)
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
 p_id=>wwv_flow_imp.id(187165658636866487)
,p_name=>'DISC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISC'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Disc'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'RIGHT'
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
 p_id=>wwv_flow_imp.id(187165721992866488)
,p_name=>'DT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'DT'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
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
 p_id=>wwv_flow_imp.id(187165874334866489)
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
 p_id=>wwv_flow_imp.id(187165998480866490)
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
 p_id=>wwv_flow_imp.id(187166080226866491)
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
 p_id=>wwv_flow_imp.id(191553924342628002)
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
 p_id=>wwv_flow_imp.id(196807862059971506)
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
 p_id=>wwv_flow_imp.id(187164993374866480)
,p_internal_uid=>187164993374866480
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
 p_id=>wwv_flow_imp.id(187188581965900661)
,p_interactive_grid_id=>wwv_flow_imp.id(187164993374866480)
,p_static_id=>'493436'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(187188749923900661)
,p_report_id=>wwv_flow_imp.id(187188581965900661)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(187189259867900666)
,p_view_id=>wwv_flow_imp.id(187188749923900661)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(187165067733866481)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(187190210980900672)
,p_view_id=>wwv_flow_imp.id(187188749923900661)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(187165149738866482)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(187191044725900680)
,p_view_id=>wwv_flow_imp.id(187188749923900661)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(187165239133866483)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(187191827823900688)
,p_view_id=>wwv_flow_imp.id(187188749923900661)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(187165381362866484)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(187192727905900697)
,p_view_id=>wwv_flow_imp.id(187188749923900661)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(187165510208866485)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(187193634263900705)
,p_view_id=>wwv_flow_imp.id(187188749923900661)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(187165558241866486)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(187194598786900714)
,p_view_id=>wwv_flow_imp.id(187188749923900661)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(187165658636866487)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(187195495344900722)
,p_view_id=>wwv_flow_imp.id(187188749923900661)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(187165721992866488)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(187196392608900730)
,p_view_id=>wwv_flow_imp.id(187188749923900661)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(187165874334866489)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(187197252694900736)
,p_view_id=>wwv_flow_imp.id(187188749923900661)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(187165998480866490)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(187198131645900745)
,p_view_id=>wwv_flow_imp.id(187188749923900661)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(187166080226866491)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(193941433268101177)
,p_view_id=>wwv_flow_imp.id(187188749923900661)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(191553924342628002)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(197742745038989556)
,p_view_id=>wwv_flow_imp.id(187188749923900661)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(196807862059971506)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(72264286740359923)
,p_button_sequence=>60
,p_button_name=>'Redirect'
,p_button_static_id=>'esc'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Redirect'
,p_button_redirect_url=>'f?p=&APP_ID.:55:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'hiddenbtn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(137661628870309878)
,p_name=>'P137_ORDER_WRITER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(176558143832005775)
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
 p_id=>wwv_flow_imp.id(137661897991309880)
,p_name=>'P137_DBA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(176558143832005775)
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
 p_id=>wwv_flow_imp.id(137662010492309881)
,p_name=>'P137_INVOICE_DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(176558143832005775)
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(138027951416024432)
,p_name=>'P137_CUST_PO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(176558143832005775)
,p_prompt=>'Cust PO#:'
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
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(138028164396024434)
,p_name=>'P137_BILLING_ADDRESS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(176558143832005775)
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
 p_id=>wwv_flow_imp.id(138028310690024435)
,p_name=>'P137_PAYMENT_TERMS'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(176558143832005775)
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
 p_id=>wwv_flow_imp.id(138028364419024436)
,p_name=>'P137_QUOTATION_NO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(176558143832005775)
,p_prompt=>'Quotation #:'
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
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(138028452218024437)
,p_name=>'P137_SPECIAL_INSTRUCTIONS'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(176558143832005775)
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
 p_id=>wwv_flow_imp.id(139641258436980679)
,p_name=>'P137_CUSTOMER_ID'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(176558143832005775)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(139654700178980760)
,p_name=>'P137_ADDITIONAL_DISCOUNT'
,p_item_sequence=>220
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(142050929314785860)
,p_name=>'P137_TOTAL'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(176561638225005810)
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
 p_id=>wwv_flow_imp.id(146324147124071953)
,p_name=>'P137_SELECTED_UPC'
,p_item_sequence=>210
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(149310405729276796)
,p_name=>'P137_SUB'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(176561638225005810)
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
 p_id=>wwv_flow_imp.id(149310548966276797)
,p_name=>'P137_DISCOUNT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(176561638225005810)
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
 p_id=>wwv_flow_imp.id(154765838269248424)
,p_name=>'P137_CUSTOMER_CODE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(176558143832005775)
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
 p_id=>wwv_flow_imp.id(156132814194760074)
,p_name=>'P137_URL'
,p_item_sequence=>70
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(173396189027634113)
,p_name=>'P137_INVOICE_NO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(176558143832005775)
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
 p_id=>wwv_flow_imp.id(176576749173006012)
,p_name=>'P137_QOH'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(176561638225005810)
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(180805414083456906)
,p_name=>'P137_QTY'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(176561638225005810)
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
 p_id=>wwv_flow_imp.id(187196423998866800)
,p_name=>'P137_BARCODE'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(191583067696628298)
,p_name=>'P137_CLICKED_SEARCH_F2'
,p_item_sequence=>80
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(191583326309628301)
,p_name=>'P137_SEARCHED_UPC'
,p_item_sequence=>90
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195756406389533993)
,p_name=>'P137_UPC_SEARCH'
,p_item_sequence=>110
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT b.upc',
'  FROM NIT001 a, NIT002 b, NIM026 c, NIM022 d',
' WHERE a.item_id = b.item_id',
'   AND b.uom_id = c.uom_id',
'   AND a.brand_id = d.brand_id',
'   AND a.item_num || '' - '' || UPPER(c.uom_code) = :P137_SEARCHED_UPC',
'',
'UNION ALL',
'',
'SELECT b.upc',
'  FROM NIT001 a, NIT002 b, NIM026 c, NIM022 d',
' WHERE a.item_id = b.item_id',
'   AND b.uom_id = c.uom_id',
'   AND a.brand_id = d.brand_id',
'   AND b.upc = :P137_SEARCHED_UPC'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(196333775018045305)
,p_name=>'P137_LOC_1'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(176561638225005810)
,p_prompt=>'<span class="btns">LOC #&P137_WH_1.</span>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(4382138690084278)
,p_item_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(196333893149045306)
,p_name=>'P137_LOC_2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(176561638225005810)
,p_prompt=>'<span class="btns">LOC #2</span>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(4382138690084278)
,p_item_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(196334033559045307)
,p_name=>'P137_LOC_3'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(176561638225005810)
,p_prompt=>'<span class="btns">LOC #3</span>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(4382138690084278)
,p_item_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(196348400767045405)
,p_name=>'P137_WH_1'
,p_item_sequence=>130
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(196348510043045406)
,p_name=>'P137_WH_2'
,p_item_sequence=>140
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(196348652661045407)
,p_name=>'P137_WH_3'
,p_item_sequence=>150
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(196834317752971776)
,p_name=>'P137_SELECTED_ITEM_NO'
,p_item_sequence=>160
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(197816933427166386)
,p_name=>'P137_SELECTED_UOM'
,p_item_sequence=>180
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(197817045173166387)
,p_name=>'P137_SELECTED_QTY'
,p_item_sequence=>190
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(197817253323166389)
,p_name=>'P137_SELECTED_PRICE'
,p_item_sequence=>200
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(197819996236166417)
,p_name=>'P137_SELECTED_ITEM_ID'
,p_item_sequence=>170
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(198520156467722117)
,p_name=>'P137_SELECTED_INDEX'
,p_item_sequence=>100
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(72264438732359925)
,p_computation_sequence=>10
,p_computation_item=>'P137_ORDER_WRITER'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>'SELECT v(''APP_USER'') from DUAL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(74077772534712070)
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
 p_id=>wwv_flow_imp.id(74078708123712071)
,p_event_id=>wwv_flow_imp.id(74077772534712070)
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
'    v_collections SYS.ODCIVARCHAR2LIST := SYS.ODCIVARCHAR2LIST(''INVOICE_A'', ''INVOICE_B'', ''INVOICE_C'', ''INVOICE_D'');',
'    v_collection_name VARCHAR2(15);',
'BEGIN',
'    BEGIN',
'    SELECT a.item_num, b.upc, a.item_id, a.item_desc, b.price, b.price total, UPPER(c.uom_code), d.brand_code INTO v_item_num, v_upc, v_item_id, v_product_name, v_price, v_total, v_uom, v_brand',
'          FROM NIT001 a, NIT002 b, NIM026 c, NIM022 d',
'         WHERE a.item_id = b.item_id',
'           AND b.uom_id = c.uom_id',
'           AND a.brand_id = d.brand_id',
'           AND b.upc = :P137_SEARCHED_UPC; ',
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
'               AND c006 = :P137_SEARCHED_UPC;',
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
'                p_c006 => :P137_SEARCHED_UPC,',
'                p_c007 => v_item_id',
'            );',
'        END IF;',
'    END LOOP;',
'END;',
''))
,p_attribute_02=>'P137_SEARCHED_UPC'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74079284886712073)
,p_event_id=>wwv_flow_imp.id(74077772534712070)
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
'    v_collections SYS.ODCIVARCHAR2LIST := SYS.ODCIVARCHAR2LIST(''INVOICE_A'', ''INVOICE_B'', ''INVOICE_C'', ''INVOICE_D'');',
'    v_collection_name VARCHAR2(15);',
'BEGIN',
'    v_item_num_search := SUBSTR (:P137_SEARCHED_UPC, 1, (INSTR(:P137_SEARCHED_UPC, '' - '') - 1));',
'    v_uom_search := SUBSTR (:P137_SEARCHED_UPC, (INSTR(:P137_SEARCHED_UPC, '' - '') + 3));',
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
,p_attribute_02=>'P137_SEARCHED_UPC'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74084703014712087)
,p_event_id=>wwv_flow_imp.id(74077772534712070)
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
'      AND d.dba = :P137_DBA',
'      AND b.date_to >= SYSDATE',
'      AND b.date_from <= SYSDATE',
'      AND f.upc = :P137_UPC_SEARCH',
'UNION ALL',
'  SELECT a.discount_id, a.discount_value',
'    FROM NPT029 A, NPT008 B, NPT032 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE a.discount_id = b.discount_id',
'      AND a.discount_id = c.discount_id',
'      AND d.customer_id = c.customer_id',
'      AND a.dept_id = e.dept_id',
'      AND e.item_id = f.item_id',
'      AND d.dba = :P137_DBA',
'      AND b.date_to >= SYSDATE',
'      AND b.date_from <= SYSDATE',
'      AND f.upc = :P137_UPC_SEARCH',
'UNION ALL',
'    SELECT a.discount_id, a.discount_value',
'    FROM NPT030 A, NPT008 B, NPT032 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE a.discount_id = b.discount_id',
'      AND a.discount_id = c.discount_id',
'      AND d.customer_id = c.customer_id',
'      AND a.class_id = e.class_id',
'      AND e.item_id = f.item_id',
'      AND d.dba = :P137_DBA',
'      AND b.date_to >= SYSDATE',
'      AND b.date_from <= SYSDATE',
'      AND f.upc = :P137_UPC_SEARCH',
'UNION ALL',
'    SELECT DISTINCT 0, np09.standard_discount_value',
'     FROM NPT009 np09, NIT001 nt01, NPT032 np032, NIT002 nt02',
'     WHERE np09.class_id = nt01.class_id',
'      AND np09.customer_id = np032.customer_id ',
'      AND np09.dba = :P137_DBA',
'      AND nt01.item_id = nt02.item_id',
'      AND nt02.upc = :P137_UPC_SEARCH',
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
'     WHERE collection_name = ''INVOICE_DISCOUNTS''',
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
'    WHERE collection_name = ''INVOICE_A''',
'      AND c006 = :P137_UPC_SEARCH;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq_id := 0;',
'END;',
'',
'BEGIN',
'    SELECT a.item_num INTO v_bc',
'    FROM NIT001 a, NIT002 b',
'    WHERE a.item_id = b.item_id',
'      AND b.upc = :P137_UPC_SEARCH;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_bc := NULL;',
'        END;',
'        ',
'     IF v_seq BETWEEN 1 AND 4 AND v_bc IS NOT NULL AND v_seq_id != 0 THEN',
'        apex_collection.update_member_attribute(',
'            p_collection_name => CASE v_seq ',
'                                  WHEN 1 THEN ''INVOICE_A'' ',
'                                  WHEN 2 THEN ''INVOICE_B'' ',
'                                  WHEN 3 THEN ''INVOICE_C'' ',
'                                  WHEN 4 THEN ''INVOICE_D'' ',
'                                 END,',
'            p_seq => v_seq_id,',
'            p_attr_number => 3,',
'            p_number_value => v_disc',
'        );',
'    END IF;',
'',
'END;',
''))
,p_attribute_02=>'P137_UPC_SEARCH,P137_DBA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74085206831712089)
,p_event_id=>wwv_flow_imp.id(74077772534712070)
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
'      AND d.dba = :P137_DBA',
'      AND b.date_to >= SYSDATE',
'      AND b.date_from <= SYSDATE',
'      AND f.upc = :P137_UPC_SEARCH',
'UNION ALL',
'  SELECT a.discount_id, a.discount_value',
'    FROM NPT029 A, NPT008 B, NPT032 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE a.discount_id = b.discount_id',
'      AND a.discount_id = c.discount_id',
'      AND d.customer_id = c.customer_id',
'      AND a.dept_id = e.dept_id',
'      AND e.item_id = f.item_id',
'      AND d.dba = :P137_DBA',
'      AND b.date_to >= SYSDATE',
'      AND b.date_from <= SYSDATE',
'      AND f.upc = :P137_UPC_SEARCH',
'UNION ALL',
'    SELECT a.discount_id, a.discount_value',
'    FROM NPT030 A, NPT008 B, NPT032 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE a.discount_id = b.discount_id',
'      AND a.discount_id = c.discount_id',
'      AND d.customer_id = c.customer_id',
'      AND a.class_id = e.class_id',
'      AND e.item_id = f.item_id',
'      AND d.dba = :P137_DBA',
'      AND b.date_to >= SYSDATE',
'      AND b.date_from <= SYSDATE',
'      AND f.upc = :P137_UPC_SEARCH',
'UNION ALL',
'    SELECT DISTINCT 0, np09.standard_discount_value',
'     FROM NPT009 np09, NIT001 nt01, NPT032 np032, NIT002 nt02',
'     WHERE np09.class_id = nt01.class_id',
'      AND np09.customer_id = np032.customer_id ',
'      AND np09.dba = :P137_DBA',
'      AND nt01.item_id = nt02.item_id',
'      AND nt02.upc = :P137_UPC_SEARCH',
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
'     WHERE collection_name = ''INVOICE_DISCOUNTS''',
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
'    WHERE collection_name = ''INVOICE_B''',
'      AND c006 = :P137_UPC_SEARCH;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq_id := 0;',
'END;',
'',
'BEGIN',
'    SELECT a.item_num INTO v_bc',
'    FROM NIT001 a, NIT002 b',
'    WHERE a.item_id = b.item_id',
'      AND b.upc = :P137_UPC_SEARCH;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_bc := NULL;',
'        END;',
'        ',
'     IF v_seq BETWEEN 1 AND 4 AND v_bc IS NOT NULL AND v_seq_id != 0 THEN',
'        apex_collection.update_member_attribute(',
'            p_collection_name => CASE v_seq ',
'                                  WHEN 1 THEN ''INVOICE_A'' ',
'                                  WHEN 2 THEN ''INVOICE_B'' ',
'                                  WHEN 3 THEN ''INVOICE_C'' ',
'                                  WHEN 4 THEN ''INVOICE_D'' ',
'                                 END,',
'            p_seq => v_seq_id,',
'            p_attr_number => 3,',
'            p_number_value => v_disc',
'        );',
'    END IF;',
'',
'END;',
''))
,p_attribute_02=>'P137_UPC_SEARCH,P137_DBA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74085726934712089)
,p_event_id=>wwv_flow_imp.id(74077772534712070)
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
'      AND d.dba = :P137_DBA',
'      AND b.date_to >= SYSDATE',
'      AND b.date_from <= SYSDATE',
'      AND f.upc = :P137_UPC_SEARCH',
'UNION ALL',
'  SELECT a.discount_id, a.discount_value',
'    FROM NPT029 A, NPT008 B, NPT032 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE a.discount_id = b.discount_id',
'      AND a.discount_id = c.discount_id',
'      AND d.customer_id = c.customer_id',
'      AND a.dept_id = e.dept_id',
'      AND e.item_id = f.item_id',
'      AND d.dba = :P137_DBA',
'      AND b.date_to >= SYSDATE',
'      AND b.date_from <= SYSDATE',
'      AND f.upc = :P137_UPC_SEARCH',
'UNION ALL',
'    SELECT a.discount_id, a.discount_value',
'    FROM NPT030 A, NPT008 B, NPT032 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE a.discount_id = b.discount_id',
'      AND a.discount_id = c.discount_id',
'      AND d.customer_id = c.customer_id',
'      AND a.class_id = e.class_id',
'      AND e.item_id = f.item_id',
'      AND d.dba = :P137_DBA',
'      AND b.date_to >= SYSDATE',
'      AND b.date_from <= SYSDATE',
'      AND f.upc = :P137_UPC_SEARCH',
'UNION ALL',
'    SELECT DISTINCT 0, np09.standard_discount_value',
'     FROM NPT009 np09, NIT001 nt01, NPT032 np032, NIT002 nt02',
'     WHERE np09.class_id = nt01.class_id',
'      AND np09.customer_id = np032.customer_id ',
'      AND np09.dba = :P137_DBA',
'      AND nt01.item_id = nt02.item_id',
'      AND nt02.upc = :P137_UPC_SEARCH',
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
'     WHERE collection_name = ''INVOICE_DISCOUNTS''',
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
'    WHERE collection_name = ''INVOICE_C''',
'      AND c006 = :P137_UPC_SEARCH;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq_id := 0;',
'END;',
'',
'BEGIN',
'    SELECT a.item_num INTO v_bc',
'    FROM NIT001 a, NIT002 b',
'    WHERE a.item_id = b.item_id',
'      AND b.upc = :P137_UPC_SEARCH;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_bc := NULL;',
'        END;',
'        ',
'     IF v_seq BETWEEN 1 AND 4 AND v_bc IS NOT NULL AND v_seq_id != 0 THEN',
'        apex_collection.update_member_attribute(',
'            p_collection_name => CASE v_seq ',
'                                  WHEN 1 THEN ''INVOICE_A'' ',
'                                  WHEN 2 THEN ''INVOICE_B'' ',
'                                  WHEN 3 THEN ''INVOICE_C'' ',
'                                  WHEN 4 THEN ''INVOICE_D'' ',
'                                 END,',
'            p_seq => v_seq_id,',
'            p_attr_number => 3,',
'            p_number_value => v_disc',
'        );',
'    END IF;',
'',
'END;',
''))
,p_attribute_02=>'P137_UPC_SEARCH,P137_DBA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74084257733712087)
,p_event_id=>wwv_flow_imp.id(74077772534712070)
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
'      AND d.dba = :P137_DBA',
'      AND b.date_to >= SYSDATE',
'      AND b.date_from <= SYSDATE',
'      AND f.upc = :P137_UPC_SEARCH',
'UNION ALL',
'  SELECT a.discount_id, a.discount_value',
'    FROM NPT029 A, NPT008 B, NPT032 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE a.discount_id = b.discount_id',
'      AND a.discount_id = c.discount_id',
'      AND d.customer_id = c.customer_id',
'      AND a.dept_id = e.dept_id',
'      AND e.item_id = f.item_id',
'      AND d.dba = :P137_DBA',
'      AND b.date_to >= SYSDATE',
'      AND b.date_from <= SYSDATE',
'      AND f.upc = :P137_UPC_SEARCH',
'UNION ALL',
'    SELECT a.discount_id, a.discount_value',
'    FROM NPT030 A, NPT008 B, NPT032 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE a.discount_id = b.discount_id',
'      AND a.discount_id = c.discount_id',
'      AND d.customer_id = c.customer_id',
'      AND a.class_id = e.class_id',
'      AND e.item_id = f.item_id',
'      AND d.dba = :P137_DBA',
'      AND b.date_to >= SYSDATE',
'      AND b.date_from <= SYSDATE',
'      AND f.upc = :P137_UPC_SEARCH',
'UNION ALL',
'    SELECT DISTINCT 0, np09.standard_discount_value',
'     FROM NPT009 np09, NIT001 nt01, NPT032 np032, NIT002 nt02',
'     WHERE np09.class_id = nt01.class_id',
'      AND np09.customer_id = np032.customer_id ',
'      AND np09.dba = :P137_DBA',
'      AND nt01.item_id = nt02.item_id',
'      AND nt02.upc = :P137_UPC_SEARCH',
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
'     WHERE collection_name = ''INVOICE_DISCOUNTS''',
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
'    WHERE collection_name = ''INVOICE_D''',
'      AND c006 = :P137_UPC_SEARCH;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_seq_id := 0;',
'END;',
'',
'BEGIN',
'    SELECT a.item_num INTO v_bc',
'    FROM NIT001 a, NIT002 b',
'    WHERE a.item_id = b.item_id',
'      AND b.upc = :P137_UPC_SEARCH;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_bc := NULL;',
'        END;',
'        ',
'     IF v_seq BETWEEN 1 AND 4 AND v_bc IS NOT NULL AND v_seq_id != 0 THEN',
'        apex_collection.update_member_attribute(',
'            p_collection_name => CASE v_seq ',
'                                  WHEN 1 THEN ''INVOICE_A'' ',
'                                  WHEN 2 THEN ''INVOICE_B'' ',
'                                  WHEN 3 THEN ''INVOICE_C'' ',
'                                  WHEN 4 THEN ''INVOICE_D'' ',
'                                 END,',
'            p_seq => v_seq_id,',
'            p_attr_number => 3,',
'            p_number_value => v_disc',
'        );',
'    END IF;',
'',
'END;',
''))
,p_attribute_02=>'P137_UPC_SEARCH,P137_DBA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74082794705712084)
,p_event_id=>wwv_flow_imp.id(74077772534712070)
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
'    WHERE d.dba = :P137_DBA',
'      AND c.discount_id = a.discount_id',
'      AND a.discount_id = b.discount_id',
'      AND d.customer_id = b.customer_id',
'      AND a.sic_id = e.sic_id',
'      AND e.item_id = f.item_id',
'      AND c.date_to >= SYSDATE',
'      AND c.date_from <= SYSDATE',
'      AND f.upc = :P137_UPC_SEARCH',
'UNION ALL',
'    SELECT a.discount_id AS discount_id, NVL(CASE WHEN c.type = ''Percent'' THEN f.price * (a.discount_value/100) WHEN c.type = ''Fixed'' THEN a.discount_value ELSE f.price END, 0) AS discounted_price',
'     FROM NPT029 A, NPT032 B, NPT008 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE d.dba = :P137_DBA',
'      AND c.discount_id = a.discount_id',
'      AND a.discount_id = b.discount_id',
'      AND d.customer_id = b.customer_id',
'      AND a.dept_id = e.dept_id',
'      AND e.item_id = f.item_id',
'      AND c.date_to >= SYSDATE',
'      AND c.date_from <= SYSDATE',
'      AND f.upc = :P137_UPC_SEARCH',
'UNION ALL',
'    SELECT a.discount_id AS discount_id, NVL(CASE WHEN c.type = ''Percent'' THEN f.price * (a.discount_value/100) WHEN c.type = ''Fixed'' THEN a.discount_value ELSE f.price END, 0) AS discounted_price',
'     FROM NPT030 A, NPT032 B, NPT008 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE d.dba = :P137_DBA',
'      AND c.discount_id = a.discount_id',
'      AND a.discount_id = b.discount_id',
'      AND d.customer_id = b.customer_id',
'      AND a.class_id = e.class_id',
'      AND e.item_id = f.item_id',
'      AND c.date_to >= SYSDATE',
'      AND c.date_from <= SYSDATE',
'      AND f.upc = :P137_UPC_SEARCH',
'UNION ALL',
'     SELECT DISTINCT 0 AS discount_id, NVL(d.price * (a.standard_discount_value / 100), 0) AS discounted_price',
'      FROM NPT009 A, NPT032 B, NIT001 C, NIT002 D',
'     WHERE a.dba = :P137_DBA',
'       AND d.upc = :P137_UPC_SEARCH',
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
'     WHERE collection_name = ''INVOICE_DISCOUNTS''',
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
'    WHERE collection_name = ''INVOICE_A''',
'      AND c006 = :P137_UPC_SEARCH;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_sid := 0;',
'END;',
'',
'BEGIN',
'    SELECT a.item_num INTO v_bc',
'    FROM NIT001 a, NIT002 b',
'    WHERE a.item_id = b.item_id',
'      AND b.upc = :P137_UPC_SEARCH;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_bc := NULL;',
'        END;',
'        ',
'     IF v_seq BETWEEN 1 AND 4 AND v_bc IS NOT NULL AND v_sid != 0 THEN',
'        apex_collection.update_member_attribute(',
'            p_collection_name => CASE v_seq ',
'                                  WHEN 1 THEN ''INVOICE_A'' ',
'                                  WHEN 2 THEN ''INVOICE_B'' ',
'                                  WHEN 3 THEN ''INVOICE_C'' ',
'                                  WHEN 4 THEN ''INVOICE_D'' ',
'                                 END,',
'            p_seq => v_sid,',
'            p_attr_number => 4,',
'            p_number_value => v_dc',
'        );',
'    END IF;',
'',
'END;'))
,p_attribute_02=>'P137_UPC_SEARCH,P137_DBA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74083238528712084)
,p_event_id=>wwv_flow_imp.id(74077772534712070)
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
'    WHERE d.dba = :P137_DBA',
'      AND c.discount_id = a.discount_id',
'      AND a.discount_id = b.discount_id',
'      AND d.customer_id = b.customer_id',
'      AND a.sic_id = e.sic_id',
'      AND e.item_id = f.item_id',
'      AND c.date_to >= SYSDATE',
'      AND c.date_from <= SYSDATE',
'      AND f.upc = :P137_UPC_SEARCH',
'UNION ALL',
'    SELECT a.discount_id AS discount_id, NVL(CASE WHEN c.type = ''Percent'' THEN f.price * (a.discount_value/100) WHEN c.type = ''Fixed'' THEN a.discount_value ELSE f.price END, 0) AS discounted_price',
'     FROM NPT029 A, NPT032 B, NPT008 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE d.dba = :P137_DBA',
'      AND c.discount_id = a.discount_id',
'      AND a.discount_id = b.discount_id',
'      AND d.customer_id = b.customer_id',
'      AND a.dept_id = e.dept_id',
'      AND e.item_id = f.item_id',
'      AND c.date_to >= SYSDATE',
'      AND c.date_from <= SYSDATE',
'      AND f.upc = :P137_UPC_SEARCH',
'UNION ALL',
'    SELECT a.discount_id AS discount_id, NVL(CASE WHEN c.type = ''Percent'' THEN f.price * (a.discount_value/100) WHEN c.type = ''Fixed'' THEN a.discount_value ELSE f.price END, 0) AS discounted_price',
'     FROM NPT030 A, NPT032 B, NPT008 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE d.dba = :P137_DBA',
'      AND c.discount_id = a.discount_id',
'      AND a.discount_id = b.discount_id',
'      AND d.customer_id = b.customer_id',
'      AND a.class_id = e.class_id',
'      AND e.item_id = f.item_id',
'      AND c.date_to >= SYSDATE',
'      AND c.date_from <= SYSDATE',
'      AND f.upc = :P137_UPC_SEARCH',
'UNION ALL',
'     SELECT DISTINCT 0 AS discount_id, NVL(d.price * (a.standard_discount_value / 100), 0) AS discounted_price',
'      FROM NPT009 A, NPT032 B, NIT001 C, NIT002 D',
'     WHERE a.dba = :P137_DBA',
'       AND d.upc = :P137_UPC_SEARCH',
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
'     WHERE collection_name = ''INVOICE_DISCOUNTS''',
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
'    WHERE collection_name = ''INVOICE_B''',
'      AND c006 = :P137_UPC_SEARCH;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_sid := 0;',
'END;',
'',
'BEGIN',
'    SELECT a.item_num INTO v_bc',
'    FROM NIT001 a, NIT002 b',
'    WHERE a.item_id = b.item_id',
'      AND b.upc = :P137_UPC_SEARCH;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_bc := NULL;',
'        END;',
'        ',
'     IF v_seq BETWEEN 1 AND 4 AND v_bc IS NOT NULL AND v_sid != 0 THEN',
'        apex_collection.update_member_attribute(',
'            p_collection_name => CASE v_seq ',
'                                  WHEN 1 THEN ''INVOICE_A'' ',
'                                  WHEN 2 THEN ''INVOICE_B'' ',
'                                  WHEN 3 THEN ''INVOICE_C'' ',
'                                  WHEN 4 THEN ''INVOICE_D'' ',
'                                 END,',
'            p_seq => v_sid,',
'            p_attr_number => 4,',
'            p_number_value => v_dc',
'        );',
'    END IF;',
'',
'END;'))
,p_attribute_02=>'P137_UPC_SEARCH,P137_DBA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74083751727712085)
,p_event_id=>wwv_flow_imp.id(74077772534712070)
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
'    WHERE d.dba = :P137_DBA',
'      AND c.discount_id = a.discount_id',
'      AND a.discount_id = b.discount_id',
'      AND d.customer_id = b.customer_id',
'      AND a.sic_id = e.sic_id',
'      AND e.item_id = f.item_id',
'      AND c.date_to >= SYSDATE',
'      AND c.date_from <= SYSDATE',
'      AND f.upc = :P137_UPC_SEARCH',
'UNION ALL',
'    SELECT a.discount_id AS discount_id, NVL(CASE WHEN c.type = ''Percent'' THEN f.price * (a.discount_value/100) WHEN c.type = ''Fixed'' THEN a.discount_value ELSE f.price END, 0) AS discounted_price',
'     FROM NPT029 A, NPT032 B, NPT008 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE d.dba = :P137_DBA',
'      AND c.discount_id = a.discount_id',
'      AND a.discount_id = b.discount_id',
'      AND d.customer_id = b.customer_id',
'      AND a.dept_id = e.dept_id',
'      AND e.item_id = f.item_id',
'      AND c.date_to >= SYSDATE',
'      AND c.date_from <= SYSDATE',
'      AND f.upc = :P137_UPC_SEARCH',
'UNION ALL',
'    SELECT a.discount_id AS discount_id, NVL(CASE WHEN c.type = ''Percent'' THEN f.price * (a.discount_value/100) WHEN c.type = ''Fixed'' THEN a.discount_value ELSE f.price END, 0) AS discounted_price',
'     FROM NPT030 A, NPT032 B, NPT008 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE d.dba = :P137_DBA',
'      AND c.discount_id = a.discount_id',
'      AND a.discount_id = b.discount_id',
'      AND d.customer_id = b.customer_id',
'      AND a.class_id = e.class_id',
'      AND e.item_id = f.item_id',
'      AND c.date_to >= SYSDATE',
'      AND c.date_from <= SYSDATE',
'      AND f.upc = :P137_UPC_SEARCH',
'UNION ALL',
'     SELECT DISTINCT 0 AS discount_id, NVL(d.price * (a.standard_discount_value / 100), 0) AS discounted_price',
'      FROM NPT009 A, NPT032 B, NIT001 C, NIT002 D',
'     WHERE a.dba = :P137_DBA',
'       AND d.upc = :P137_UPC_SEARCH',
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
'     WHERE collection_name = ''INVOICE_DISCOUNTS''',
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
'    WHERE collection_name = ''INVOICE_C''',
'      AND c006 = :P137_UPC_SEARCH;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_sid := 0;',
'END;',
'',
'BEGIN',
'    SELECT a.item_num INTO v_bc',
'    FROM NIT001 a, NIT002 b',
'    WHERE a.item_id = b.item_id',
'      AND b.upc = :P137_UPC_SEARCH;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_bc := NULL;',
'        END;',
'        ',
'     IF v_seq BETWEEN 1 AND 4 AND v_bc IS NOT NULL AND v_sid != 0 THEN',
'        apex_collection.update_member_attribute(',
'            p_collection_name => CASE v_seq ',
'                                  WHEN 1 THEN ''INVOICE_A'' ',
'                                  WHEN 2 THEN ''INVOICE_B'' ',
'                                  WHEN 3 THEN ''INVOICE_C'' ',
'                                  WHEN 4 THEN ''INVOICE_D'' ',
'                                 END,',
'            p_seq => v_sid,',
'            p_attr_number => 4,',
'            p_number_value => v_dc',
'        );',
'    END IF;',
'',
'END;'))
,p_attribute_02=>'P137_UPC_SEARCH,P137_DBA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74082219864712081)
,p_event_id=>wwv_flow_imp.id(74077772534712070)
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
'    WHERE d.dba = :P137_DBA',
'      AND c.discount_id = a.discount_id',
'      AND a.discount_id = b.discount_id',
'      AND d.customer_id = b.customer_id',
'      AND a.sic_id = e.sic_id',
'      AND e.item_id = f.item_id',
'      AND c.date_to >= SYSDATE',
'      AND c.date_from <= SYSDATE',
'      AND f.upc = :P137_UPC_SEARCH',
'UNION ALL',
'    SELECT a.discount_id AS discount_id, NVL(CASE WHEN c.type = ''Percent'' THEN f.price * (a.discount_value/100) WHEN c.type = ''Fixed'' THEN a.discount_value ELSE f.price END, 0) AS discounted_price',
'     FROM NPT029 A, NPT032 B, NPT008 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE d.dba = :P137_DBA',
'      AND c.discount_id = a.discount_id',
'      AND a.discount_id = b.discount_id',
'      AND d.customer_id = b.customer_id',
'      AND a.dept_id = e.dept_id',
'      AND e.item_id = f.item_id',
'      AND c.date_to >= SYSDATE',
'      AND c.date_from <= SYSDATE',
'      AND f.upc = :P137_UPC_SEARCH',
'UNION ALL',
'    SELECT a.discount_id AS discount_id, NVL(CASE WHEN c.type = ''Percent'' THEN f.price * (a.discount_value/100) WHEN c.type = ''Fixed'' THEN a.discount_value ELSE f.price END, 0) AS discounted_price',
'     FROM NPT030 A, NPT032 B, NPT008 C, NPT009 D, NIT001 E, NIT002 F',
'    WHERE d.dba = :P137_DBA',
'      AND c.discount_id = a.discount_id',
'      AND a.discount_id = b.discount_id',
'      AND d.customer_id = b.customer_id',
'      AND a.class_id = e.class_id',
'      AND e.item_id = f.item_id',
'      AND c.date_to >= SYSDATE',
'      AND c.date_from <= SYSDATE',
'      AND f.upc = :P137_UPC_SEARCH',
'UNION ALL',
'     SELECT DISTINCT 0 AS discount_id, NVL(d.price * (a.standard_discount_value / 100), 0) AS discounted_price',
'      FROM NPT009 A, NPT032 B, NIT001 C, NIT002 D',
'     WHERE a.dba = :P137_DBA',
'       AND d.upc = :P137_UPC_SEARCH',
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
'     WHERE collection_name = ''INVOICE_DISCOUNTS''',
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
'    WHERE collection_name = ''INVOICE_D''',
'      AND c006 = :P137_UPC_SEARCH;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_sid := 0;',
'END;',
'',
'BEGIN',
'    SELECT a.item_num INTO v_bc',
'    FROM NIT001 a, NIT002 b',
'    WHERE a.item_id = b.item_id',
'      AND b.upc = :P137_UPC_SEARCH;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        v_bc := NULL;',
'        END;',
'        ',
'     IF v_seq BETWEEN 1 AND 4 AND v_bc IS NOT NULL AND v_sid != 0 THEN',
'        apex_collection.update_member_attribute(',
'            p_collection_name => CASE v_seq ',
'                                  WHEN 1 THEN ''INVOICE_A'' ',
'                                  WHEN 2 THEN ''INVOICE_B'' ',
'                                  WHEN 3 THEN ''INVOICE_C'' ',
'                                  WHEN 4 THEN ''INVOICE_D'' ',
'                                 END,',
'            p_seq => v_sid,',
'            p_attr_number => 4,',
'            p_number_value => v_dc',
'        );',
'    END IF;',
'',
'END;'))
,p_attribute_02=>'P137_UPC_SEARCH,P137_DBA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74079794266712073)
,p_event_id=>wwv_flow_imp.id(74077772534712070)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'Y'
,p_name=>'Sub-Total'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P137_SUB'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH COLLECTION_SUMS AS (',
'    SELECT ''INVOICE_A'' AS collection_name, SUM(n002 * n001) AS SUB_TOTAL',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_A''',
' ',
'    UNION ALL',
' ',
'    SELECT ''INVOICE_B'' AS collection_name, SUM(n002 * n001) AS SUB_TOTAL',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_B''',
' ',
'    UNION ALL',
' ',
'    SELECT ''INVOICE_C'' AS collection_name, SUM(n002 * n001) AS SUB_TOTAL',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_C''',
' ',
'    UNION ALL',
' ',
'    SELECT ''INVOICE_D'' AS collection_name, SUM(n002 * n001) AS SUB_TOTAL',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_D''',
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
 p_id=>wwv_flow_imp.id(74080284882712075)
,p_event_id=>wwv_flow_imp.id(74077772534712070)
,p_event_result=>'TRUE'
,p_action_sequence=>140
,p_execute_on_page_init=>'Y'
,p_name=>'Discount'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P137_DISCOUNT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH COLLECTION_SUMS AS (',
'    SELECT ''INVOICE_A'' AS collection_name, SUM(n004 * n001) AS TOTAL_DISCOUNT',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_A''',
' ',
'    UNION ALL',
' ',
'    SELECT ''INVOICE_B'' AS collection_name, SUM(n004 * n001) AS TOTAL_DISCOUNT',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_B''',
' ',
'    UNION ALL',
' ',
'    SELECT ''INVOICE_C'' AS collection_name, SUM(n004 * n001) AS TOTAL_DISCOUNT',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_C''',
' ',
'    UNION ALL',
' ',
'    SELECT ''INVOICE_D'' AS collection_name, SUM(n004 * n001) AS TOTAL_DISCOUNT',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_D''',
'',
'),',
'LOWEST_SUM AS (',
'    SELECT collection_name',
'    FROM COLLECTION_SUMS',
'    WHERE TOTAL_DISCOUNT = (SELECT MAX(TOTAL_DISCOUNT) FROM COLLECTION_SUMS)',
'    FETCH FIRST 1 ROW ONLY',
')',
'SELECT TO_CHAR(NVL(SUM(n004 * n001), 0) + NVL(:P137_ADDITIONAL_DISCOUNT, 0), ''FM999G999G999G990D00'' ) ',
'FROM apex_collections',
'WHERE collection_name IN (SELECT collection_name FROM LOWEST_SUM);'))
,p_attribute_07=>'P137_ADDITIONAL_DISCOUNT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74078204356712071)
,p_event_id=>wwv_flow_imp.id(74077772534712070)
,p_event_result=>'TRUE'
,p_action_sequence=>150
,p_execute_on_page_init=>'Y'
,p_name=>'Total'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P137_TOTAL'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'TO_CHAR(NVL(TO_NUMBER(REPLACE(REPLACE(NVL(:P137_SUB, 0), ''$'', ''''), '','', '''')) - TO_NUMBER(REPLACE(REPLACE(NVL(:P137_DISCOUNT, 0), ''$'', ''''), '','', '''')), 0), ''FM999G999G999G990D00'' ) '
,p_attribute_07=>'P137_SUB,P137_DISCOUNT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74080703138712075)
,p_event_id=>wwv_flow_imp.id(74077772534712070)
,p_event_result=>'TRUE'
,p_action_sequence=>170
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P137_SUB,P137_DISCOUNT,P137_ADDITIONAL_DISCOUNT,P137_TOTAL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74081207462712078)
,p_event_id=>wwv_flow_imp.id(74077772534712070)
,p_event_result=>'TRUE'
,p_action_sequence=>180
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(187164893678866479)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74081752864712079)
,p_event_id=>wwv_flow_imp.id(74077772534712070)
,p_event_result=>'TRUE'
,p_action_sequence=>190
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let disableUPCSearch = ''no'';',
'apex.item("P137_CLICKED_SEARCH_F2").setValue(disableUPCSearch);',
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
 p_id=>wwv_flow_imp.id(74105851580712126)
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
 p_id=>wwv_flow_imp.id(74107807598712129)
,p_event_id=>wwv_flow_imp.id(74105851580712126)
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
'               and c001 = :P137_SELECTED_ITEM_NO;',
'               ',
'            APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'                p_collection_name => v_collection_name,',
'                p_seq => v_seq_id,',
'                p_attr_number => 1,',
'                p_number_value => :P137_SELECTED_QTY);',
'',
'            APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'                p_collection_name => v_collection_name,',
'                p_seq => v_seq_id,',
'                p_attr_number => 5,',
'                p_number_value => :P137_SELECTED_QTY * :P137_SELECTED_PRICE);',
'',
'            IF :P137_SELECTED_QTY = 0 THEN',
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
,p_attribute_02=>'P137_SELECTED_ITEM_NO,P137_SELECTED_QTY,P137_SELECTED_PRICE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74106886110712128)
,p_event_id=>wwv_flow_imp.id(74105851580712126)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_name=>'Sub-Total'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P137_SUB'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH COLLECTION_SUMS AS (',
'    SELECT ''INVOICE_A'' AS collection_name, SUM(n002 * n001) AS SUB_TOTAL',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_A''',
' ',
'    UNION ALL',
' ',
'    SELECT ''INVOICE_B'' AS collection_name, SUM(n002 * n001) AS SUB_TOTAL',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_B''',
' ',
'    UNION ALL',
' ',
'    SELECT ''INVOICE_C'' AS collection_name, SUM(n002 * n001) AS SUB_TOTAL',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_C''',
' ',
'    UNION ALL',
' ',
'    SELECT ''INVOICE_D'' AS collection_name, SUM(n002 * n001) AS SUB_TOTAL',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_D''',
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
 p_id=>wwv_flow_imp.id(74106391548712126)
,p_event_id=>wwv_flow_imp.id(74105851580712126)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_name=>'Discount'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P137_DISCOUNT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH COLLECTION_SUMS AS (',
'    SELECT ''INVOICE_A'' AS collection_name, SUM(n004 * n001) AS TOTAL_DISCOUNT',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_A''',
' ',
'    UNION ALL',
' ',
'    SELECT ''INVOICE_B'' AS collection_name, SUM(n004 * n001) AS TOTAL_DISCOUNT',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_B''',
' ',
'    UNION ALL',
' ',
'    SELECT ''INVOICE_C'' AS collection_name, SUM(n004 * n001) AS TOTAL_DISCOUNT',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_C''',
' ',
'    UNION ALL',
' ',
'    SELECT ''INVOICE_D'' AS collection_name, SUM(n004 * n001) AS TOTAL_DISCOUNT',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_D''',
'',
'),',
'LOWEST_SUM AS (',
'    SELECT collection_name',
'    FROM COLLECTION_SUMS',
'    WHERE TOTAL_DISCOUNT = (SELECT MAX(TOTAL_DISCOUNT) FROM COLLECTION_SUMS)',
'    FETCH FIRST 1 ROW ONLY',
')',
'SELECT TO_CHAR(NVL(SUM(n004 * n001), 0) + NVL(:P137_ADDITIONAL_DISCOUNT, 0), ''FM999G999G999G990D00'' ) ',
'FROM apex_collections',
'WHERE collection_name IN (SELECT collection_name FROM LOWEST_SUM);'))
,p_attribute_07=>'P137_ADDITIONAL_DISCOUNT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74108801760712129)
,p_event_id=>wwv_flow_imp.id(74105851580712126)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_name=>'Total'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P137_TOTAL'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'TO_CHAR(NVL(TO_NUMBER(REPLACE(REPLACE(NVL(:P137_SUB, 0), ''$'', ''''), '','', '''')) - TO_NUMBER(REPLACE(REPLACE(NVL(:P137_DISCOUNT, 0), ''$'', ''''), '','', '''')), 0), ''FM999G999G999G990D00'' ) '
,p_attribute_07=>'P137_SUB,P137_DISCOUNT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74107379841712128)
,p_event_id=>wwv_flow_imp.id(74105851580712126)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P137_SUB,P137_DISCOUNT,P137_ADDITIONAL_DISCOUNT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74108399471712129)
,p_event_id=>wwv_flow_imp.id(74105851580712126)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(187164893678866479)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(74100526604712114)
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
 p_id=>wwv_flow_imp.id(74101024478712115)
,p_event_id=>wwv_flow_imp.id(74100526604712114)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_name=>'Set LOC 1 - WH 1'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P137_WH_1'
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
'                                                      WHERE nit002.UPC = :P137_SELECTED_UPC))',
'        ORDER BY nit004.QTY DESC',
'        OFFSET 0 ROWS',
'        FETCH NEXT 1 ROWS ONLY;',
'',
'        IF wh_1 != 0 THEN',
'            :P137_WH_1 := wh_1;',
'        END IF;',
' ',
'        EXCEPTION ',
'            WHEN no_data_found THEN',
'                :P137_WH_1 := '''';',
'            WHEN OTHERS THEN',
'                :P137_WH_1 := wh_1;',
'    END;',
'',
'    RETURN :P137_WH_1;',
'END;'))
,p_attribute_07=>'P137_SELECTED_UPC'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'ITEM_NO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74103040721712120)
,p_event_id=>wwv_flow_imp.id(74100526604712114)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_name=>'Set LOC 2 - WH 2'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P137_WH_2'
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
'                                                      WHERE nit002.UPC = :P137_SELECTED_UPC))',
'        ORDER BY nit004.QTY DESC',
'        OFFSET 1 ROWS',
'        FETCH NEXT 1 ROWS ONLY;',
'',
'        IF wh_2 != 0 THEN',
'            :P137_WH_2 := wh_2;',
'        END IF;',
' ',
'        EXCEPTION ',
'            WHEN no_data_found THEN',
'                :P137_WH_2 := '''';',
'            WHEN OTHERS THEN',
'                :P137_WH_2 := wh_2;',
'    END;',
'',
'    RETURN :P137_WH_2;',
'END;'))
,p_attribute_07=>'P137_SELECTED_UPC'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'ITEM_NO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74103583576712121)
,p_event_id=>wwv_flow_imp.id(74100526604712114)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_name=>'Set LOC 3 - WH 3'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P137_WH_3'
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
'                                                      WHERE nit002.UPC = :P137_SELECTED_UPC))',
'        ORDER BY nit004.QTY DESC',
'        OFFSET 2 ROWS',
'        FETCH NEXT 1 ROWS ONLY;',
'',
'        IF wh_3 != 0 THEN',
'            :P137_WH_3 := wh_3;',
'        END IF;',
' ',
'        EXCEPTION ',
'            WHEN no_data_found THEN',
'                :P137_WH_3 := '''';',
'            WHEN OTHERS THEN',
'                :P137_WH_3 := wh_3;',
'    END;',
'',
'    RETURN :P137_WH_3;',
'END;'))
,p_attribute_07=>'P137_SELECTED_UPC'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'ITEM_NO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74104077250712121)
,p_event_id=>wwv_flow_imp.id(74100526604712114)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_name=>'Set LOC 1 - QTY 1'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P137_LOC_1'
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
'                                                      WHERE nit002.UPC = :P137_SELECTED_UPC))',
'        ORDER BY nit004.QTY DESC',
'        OFFSET 0 ROWS',
'        FETCH NEXT 1 ROWS ONLY;',
'',
'        IF qty != 0 THEN',
'            :P137_LOC_1 := NULLIF(qty, 0);',
'        END IF;',
' ',
'        EXCEPTION ',
'            WHEN no_data_found THEN',
'                :P137_LOC_1 := '''';',
'            WHEN OTHERS THEN',
'                :P137_LOC_1 := NULLIF(qty, 0);',
'    END;',
'',
'    RETURN :P137_LOC_1;',
'END;'))
,p_attribute_07=>'P137_SELECTED_UPC'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'ITEM_NO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74102078587712117)
,p_event_id=>wwv_flow_imp.id(74100526604712114)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_name=>'Set LOC 2 - QTY 2'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P137_LOC_2'
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
'                                                      WHERE nit002.UPC = :P137_SELECTED_UPC))',
'        ORDER BY nit004.QTY DESC',
'        OFFSET 1 ROWS',
'        FETCH NEXT 1 ROWS ONLY;',
'',
'        IF qty != 0 THEN',
'            :P137_LOC_2 := NULLIF(qty, 0);',
'        END IF;',
' ',
'        EXCEPTION ',
'            WHEN no_data_found THEN',
'                :P137_LOC_2 := '''';',
'            WHEN OTHERS THEN',
'                :P137_LOC_2 := NULLIF(qty, 0);',
'    END;',
'',
'    RETURN :P137_LOC_2;',
'END;'))
,p_attribute_07=>'P137_SELECTED_UPC'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'ITEM_NO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74102568015712118)
,p_event_id=>wwv_flow_imp.id(74100526604712114)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_name=>'Set LOC 3 - QTY 3'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P137_LOC_3'
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
'                                                      WHERE nit002.UPC = :P137_SELECTED_UPC))',
'        ORDER BY nit004.QTY DESC',
'        OFFSET 2 ROWS',
'        FETCH NEXT 1 ROWS ONLY;',
'',
'        IF qty != 0 THEN',
'            :P137_LOC_3 := NULLIF(qty, 0);',
'        END IF;',
' ',
'        EXCEPTION ',
'            WHEN no_data_found THEN',
'                :P137_LOC_3 := '''';',
'            WHEN OTHERS THEN',
'                :P137_LOC_3 := NULLIF(qty, 0);',
'    END;',
'',
'    RETURN :P137_LOC_3;',
'END;'))
,p_attribute_07=>'P137_SELECTED_UPC'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'ITEM_NO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74101594429712117)
,p_event_id=>wwv_flow_imp.id(74100526604712114)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($(''#P137_LOC_1'').val() > 0) {',
'    document.getElementById("P137_LOC_1_LABEL").innerHTML = "LOC #" + $(''#P137_WH_1'').val();',
'} else {',
'    document.getElementById("P137_LOC_1_LABEL").innerHTML = "";',
'}',
'',
'if ($(''#P137_LOC_2'').val() > 0) {',
'    document.getElementById("P137_LOC_2_LABEL").innerHTML = "LOC #" + $(''#P137_WH_2'').val();',
'} else {',
'    document.getElementById("P137_LOC_2_LABEL").innerHTML = "";',
'}',
'',
'if ($(''#P137_LOC_3'').val() > 0) {',
'    document.getElementById("P137_LOC_3_LABEL").innerHTML = "LOC #" + $(''#P137_WH_3'').val();',
'} else {',
'    document.getElementById("P137_LOC_3_LABEL").innerHTML = "";',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(74071248774712056)
,p_name=>'Set Special Instructions'
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
 p_id=>wwv_flow_imp.id(74072208214712060)
,p_event_id=>wwv_flow_imp.id(74071248774712056)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_name=>'Special Instructions'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P137_SPECIAL_INSTRUCTIONS'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT c001',
'  FROM apex_collections',
' WHERE collection_name = ''INVOICE_INSTRUCTIONS''',
'   AND seq_id = (SELECT MAX(seq_id)',
'                   FROM apex_collections',
'                  WHERE collection_name = ''INVOICE_INSTRUCTIONS'')'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74072733884712062)
,p_event_id=>wwv_flow_imp.id(74071248774712056)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_name=>'Additional Discount'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P137_ADDITIONAL_DISCOUNT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  NVL(n001, 0) ',
'FROM apex_collections',
'WHERE collection_name = ''INVOICE_ADDITIONAL''',
'AND seq_id = (SELECT MAX(seq_id)',
'                FROM apex_collections',
'               WHERE collection_name = ''INVOICE_ADDITIONAL'')'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74071799541712059)
,p_event_id=>wwv_flow_imp.id(74071248774712056)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_name=>'Discount'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P137_DISCOUNT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH COLLECTION_SUMS AS (',
'    SELECT ''INVOICE_A'' AS collection_name, SUM(n004 * n001) AS TOTAL_DISCOUNT',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_A''',
' ',
'    UNION ALL',
' ',
'    SELECT ''INVOICE_B'' AS collection_name, SUM(n004 * n001) AS TOTAL_DISCOUNT',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_B''',
' ',
'    UNION ALL',
' ',
'    SELECT ''INVOICE_C'' AS collection_name, SUM(n004 * n001) AS TOTAL_DISCOUNT',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_C''',
' ',
'    UNION ALL',
' ',
'    SELECT ''INVOICE_D'' AS collection_name, SUM(n004 * n001) AS TOTAL_DISCOUNT',
'    FROM apex_collections',
'    WHERE collection_name = ''INVOICE_D''',
'',
'),',
'LOWEST_SUM AS (',
'    SELECT collection_name',
'    FROM COLLECTION_SUMS',
'    WHERE TOTAL_DISCOUNT = (SELECT MAX(TOTAL_DISCOUNT) FROM COLLECTION_SUMS)',
'    FETCH FIRST 1 ROW ONLY',
')',
'SELECT TO_CHAR(NVL(SUM(n004 * n001), 0) + NVL(:P137_ADDITIONAL_DISCOUNT, 0), ''FM999G999G999G990D00'' ) ',
'FROM apex_collections',
'WHERE collection_name IN (SELECT collection_name FROM LOWEST_SUM);'))
,p_attribute_07=>'P137_ADDITIONAL_DISCOUNT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74073715679712064)
,p_event_id=>wwv_flow_imp.id(74071248774712056)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_name=>'Total'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P137_TOTAL'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'TO_CHAR(',
'    NVL(',
'        TO_NUMBER(REPLACE(REPLACE(NVL(:P137_SUB, ''0''), ''$'', ''''), '','', '''')) ',
'        - TO_NUMBER(REPLACE(REPLACE(NVL(:P137_DISCOUNT, ''0''), ''$'', ''''), '','', '''')),',
'        0',
'    ),',
'    ''FM999G999G999G990D00''',
')',
'',
''))
,p_attribute_07=>'P137_SUB,P137_DISCOUNT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74073296824712062)
,p_event_id=>wwv_flow_imp.id(74071248774712056)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P137_DISCOUNT,P137_TOTAL,P137_ADDITIONAL_DISCOUNT'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(74057126860711998)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(187164893678866479)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Invoice - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>74057126860711998
);
wwv_flow_imp.component_end;
end;
/
