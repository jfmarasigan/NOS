prompt --application/pages/page_00016
begin
--   Manifest
--     PAGE: 00016
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
 p_id=>16
,p_name=>'Shipment History'
,p_alias=>'SHIPMENT-HISTORY'
,p_page_mode=>'MODAL'
,p_step_title=>'Shipment History'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function mapP16Keys(){',
'    $(document).on(''keydown.p16keyevents'', (ev) => {',
'',
'        const excludedKeys = [',
'            "PageUp", ',
'            "PageDown",  ',
'            "ArrowUp", ',
'            "ArrowDown"',
'        ];',
'        if (!excludedKeys.includes(ev.key)) {',
'            apex.navigation.dialog.close(true);',
'            $(document).off(''keydown.p16keyevents'');',
'        }',
'',
'    });',
'}',
''))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP16Keys();',
'apex.region("table1").focus();'))
,p_css_file_urls=>'#APP_FILES#css/ibi-css#MIN#.css'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-GV-table tr.is-selected .a-GV-cell {',
'     background-color: #F5DC1C;',
'}',
'',
'.a-GV-table .a-GV-cell.is-focused {',
'     box-shadow: 0 0 0 1px black inset !important;',
'}',
'',
'.t-Dialog-body {',
'    background-color: #056AC8;',
'    padding: 1rem .75rem .25rem .75rem !important;',
'}',
'',
'.t-Region-body {',
'    padding: .75rem .25rem 0 .25rem;',
'}',
'',
'#table1 .a-GV-table colgroup col:nth-child(1) {',
'    width: 10rem;',
'}',
'',
'#table1 .a-GV-table colgroup col:nth-child(3) {',
'    width: 6rem;',
'}',
'',
'#table1 .a-GV-table colgroup col:nth-child(2) {',
'    width: 8rem;',
'}',
'',
'#table1 .a-GV-table colgroup col:nth-child(4) {',
'    width: 9rem;',
'}',
'',
'#table1 .a-GV-table colgroup col:nth-child(5) {',
'    width: 9rem;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'750'
,p_dialog_attributes=>'close: function() { customEvent(''customDialogClose'', {modalPageId: ''MODAL_CLOSE_FIXED''});} '
,p_dialog_css_classes=>'ship-his'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7254257953235050)
,p_plug_name=>'Table Wrapper'
,p_region_name=>'table-wrapper'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--hiddenOverflow:margin-bottom-sm'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>60
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7988795438075410)
,p_plug_name=>'Shipment History'
,p_region_name=>'table1'
,p_parent_plug_id=>wwv_flow_imp.id(7254257953235050)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    nit016.shipment_id AS "SHIPMENT_ID",',
'    TO_CHAR(nit016.ata, ''MM/DD/YYYY'') AS "ATA_DATE",',
'    TO_CHAR((nit013.qty * nit002.quantity) / (SELECT MAX(nit2.quantity) FROM NIT002 nit2 WHERE nit2.item_id = :P16_ITEM_ID), ''99.99'') || '' '' || nim026.uom_code AS "QTY_UOM",',
'    NULL AS "UNIT_COST_UOM",',
'    TO_CHAR(nit013.internal_price, ''9999999.99'') AS "INTERNAL_PRICE",',
'    nim026.uom_code AS "INT_UOM_CODE",',
'    CASE nit012.added_cost_operator',
'        WHEN ''+'' THEN TO_CHAR(nit013.vendor_price + nit012.added_cost_amount, ''9999999.99'')',
'        WHEN ''x'' THEN TO_CHAR(nit013.vendor_price * nit012.added_cost_amount, ''9999999.99'')',
'    END AS "LANDED_COST"',
'FROM ',
'    NIT016 nit016',
'JOIN',
'    NIT015 nit015 ON nit016.shipment_id = nit015.shipment_id',
'JOIN',
'    NIT012 nit012 ON nit015.po_id = nit012.po_id',
'JOIN',
'    NIT013 nit013 ON nit012.po_id = nit013.po_id',
'JOIN',
'    NIM026 nim026 ON nit013.internal_uom_id = nim026.uom_id',
'JOIN',
'    NIT002 nit002 ON nit013.item_id = nit002.item_id',
'    AND ',
'    nit013.external_uom_id = nit002.uom_id',
'JOIN',
'    NIM026 nim026 ON nit013.internal_uom_id = nim026.uom_id',
'WHERE',
'    nit013.item_id = :P16_ITEM_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_prn_page_header=>'Shipment History'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(29985430162862706)
,p_name=>'SHIPMENT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SHIPMENT_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Shipment Number'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
,p_value_alignment=>'LEFT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
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
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(29985515577862707)
,p_name=>'ATA_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ATA_DATE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'ATA'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
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
 p_id=>wwv_flow_imp.id(29985692235862708)
,p_name=>'QTY_UOM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QTY_UOM'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Qty UOM'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'RIGHT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>23
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
 p_id=>wwv_flow_imp.id(29985700360862709)
,p_name=>'UNIT_COST_UOM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UNIT_COST_UOM'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading=>'Unit Cost/UOM'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'RIGHT'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="display: flex; justify-content: space-between;">',
'    <span></span>',
'    <span>&INTERNAL_PRICE./&INT_UOM_CODE.</span>',
'</div>'))
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
,p_display_condition_type=>'EXPRESSION'
,p_display_condition=>'has_access(:APP_USER, 5, 28) = ''Y'''
,p_display_condition2=>'PLSQL'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(29985892061862710)
,p_name=>'INTERNAL_PRICE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INTERNAL_PRICE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attribute_01=>'Y'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(29985987648862711)
,p_name=>'INT_UOM_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INT_UOM_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attribute_01=>'Y'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(29986031194862712)
,p_name=>'LANDED_COST'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LANDED_COST'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading=>'Landed Cost'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'RIGHT'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="display: flex; justify-content: space-between;">',
'    <span></span>',
'    <span>&LANDED_COST.</span>',
'</div>'))
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
,p_display_condition_type=>'EXPRESSION'
,p_display_condition=>'has_access(:APP_USER, 5, 28) = ''Y'''
,p_display_condition2=>'PLSQL'
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(7989101868075414)
,p_internal_uid=>7989101868075414
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
 p_id=>wwv_flow_imp.id(7989519979075415)
,p_interactive_grid_id=>wwv_flow_imp.id(7989101868075414)
,p_static_id=>'79896'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(7989704343075417)
,p_report_id=>wwv_flow_imp.id(7989519979075415)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(30025289400250246)
,p_view_id=>wwv_flow_imp.id(7989704343075417)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(29985430162862706)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(30026106731250259)
,p_view_id=>wwv_flow_imp.id(7989704343075417)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(29985515577862707)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(30027094877250267)
,p_view_id=>wwv_flow_imp.id(7989704343075417)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(29985692235862708)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(30027948221250275)
,p_view_id=>wwv_flow_imp.id(7989704343075417)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(29985700360862709)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(30028807284250282)
,p_view_id=>wwv_flow_imp.id(7989704343075417)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(29985892061862710)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(30029790283250290)
,p_view_id=>wwv_flow_imp.id(7989704343075417)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(29985987648862711)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(30030615589250296)
,p_view_id=>wwv_flow_imp.id(7989704343075417)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(29986031194862712)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8021305076106902)
,p_plug_name=>'Item Number and Desc'
,p_parent_plug_id=>wwv_flow_imp.id(7254257953235050)
,p_plug_display_sequence=>10
,p_plug_grid_column_css_classes=>'fw-600 p-2 fs-1'
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Item Number : &P16_ITEM_NUM.<br>',
'Item Description : &P16_ITEM_DESC.'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8021561540106904)
,p_plug_name=>'Header'
,p_plug_display_sequence=>10
,p_plug_grid_column_css_classes=>'header color-w fw-600 p-2'
,p_location=>null
,p_plug_source=>'Shipment History'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8021634952106905)
,p_plug_name=>'Footer'
,p_plug_display_sequence=>70
,p_plug_grid_column_css_classes=>'center-align color-w'
,p_location=>null
,p_plug_source=>'<span style="font-size: 1.2rem;">Press any key to exit</span>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8022182460106910)
,p_name=>'P16_ITEM_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7988795438075410)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8024568029106934)
,p_name=>'P16_ITEM_NUM'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8024703365106936)
,p_name=>'P16_ITEM_DESC'
,p_item_sequence=>50
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10465821387962405)
,p_name=>'P16_USER_ROLE'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8024404521106933)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Item Number and Description'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT nit001.item_num, nit001.item_desc',
'    INTO :P16_ITEM_NUM, :P16_ITEM_DESC',
'    FROM NIT001 nit001',
'    WHERE nit001.item_id = :P16_ITEM_ID;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>8024404521106933
);
wwv_flow_imp.component_end;
end;
/
