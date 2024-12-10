prompt --application/pages/page_00014
begin
--   Manifest
--     PAGE: 00014
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
 p_id=>14
,p_name=>'Inventory Balance by Warehouse'
,p_alias=>'INVENTORY-BALANCE-BY-WAREHOUSE'
,p_page_mode=>'MODAL'
,p_step_title=>'Inventory Balance by Warehouse'
,p_autocomplete_on_off=>'OFF'
,p_css_file_urls=>'#APP_FILES#css/ibi-css#MIN#.css'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Dialog-body {',
'    background-color: #056AC8;',
'    padding: 0 .75rem .25rem .75rem !important;',
'}',
'',
'.t-Region-body {',
'    padding: .75rem .25rem 0 .25rem;',
'}',
'',
'#table1 .a-GV-table colgroup col:nth-child(1) {',
'    width: 8rem;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'285'
,p_dialog_attributes=>'close: function() { customEvent(''customDialogClose'', {modalPageId: ''MODAL_CLOSE_FIXED''});} '
,p_dialog_css_classes=>'inv-bby-w'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7252856367235036)
,p_plug_name=>'Header'
,p_plug_display_sequence=>10
,p_plug_grid_column_css_classes=>'header color-w fw-600'
,p_location=>null
,p_plug_source=>'Inventory by Whs'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7252950833235037)
,p_plug_name=>'Footer'
,p_plug_display_sequence=>50
,p_plug_grid_column_css_classes=>'center-align color-w'
,p_location=>null
,p_plug_source=>'<span style="font-size: 1.2rem;">Press any key to exit</span>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7253080870235038)
,p_plug_name=>'Table Wrapper'
,p_region_name=>'table-wrapper'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--hiddenOverflow:margin-bottom-sm'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>40
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7253106070235039)
,p_plug_name=>'Item Number and Desc'
,p_parent_plug_id=>wwv_flow_imp.id(7253080870235038)
,p_plug_display_sequence=>10
,p_plug_grid_column_css_classes=>'fw-600 p-2 fs-1'
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Item Number : &P14_ITEM_NUM. <br>',
'Item Description : &P14_ITEM_DESC.'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7751105289457439)
,p_plug_name=>'Inventory Balance by Warehouse'
,p_region_name=>'table1'
,p_parent_plug_id=>wwv_flow_imp.id(7253080870235038)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    nit004.warehouse_id AS "WHS_ID",',
'    TO_CHAR((nit002.quantity * nit004.qty) / (SELECT MAX(nit2.quantity) FROM NIT002 nit2 WHERE nit2.item_id = :P14_ITEM_ID), ''99.99'') AS "QTY_CS"',
'FROM',
'    NIT004 nit004',
'JOIN',
'    NIT002 nit002 ON nit004.item_id = nit002.item_id',
'    AND nit004.uom_id = nit002.uom_id',
'WHERE',
'    nit004.item_id = :P14_ITEM_ID;'))
,p_plug_source_type=>'NATIVE_IG'
,p_prn_page_header=>'Inventory Balance by Warehouse'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7753921650457456)
,p_name=>'WHS_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WHS_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Whs Location'
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
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7754980979457457)
,p_name=>'QTY_CS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QTY_CS'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Qty (in cs)'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'RIGHT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>5
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(7751615923457442)
,p_internal_uid=>7751615923457442
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>false
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>false
,p_show_toolbar=>false
,p_toolbar_buttons=>null
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>false
,p_define_chart_view=>false
,p_enable_download=>false
,p_download_formats=>null
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>350
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
 p_id=>wwv_flow_imp.id(7752037561457443)
,p_interactive_grid_id=>wwv_flow_imp.id(7751615923457442)
,p_static_id=>'77521'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(7752298320457443)
,p_report_id=>wwv_flow_imp.id(7752037561457443)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7754338024457456)
,p_view_id=>wwv_flow_imp.id(7752298320457443)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(7753921650457456)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7755324873457457)
,p_view_id=>wwv_flow_imp.id(7752298320457443)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(7754980979457457)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7253368827235041)
,p_name=>'P14_ITEM_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7751105289457439)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7253877490235046)
,p_name=>'P14_ITEM_NUM'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7253979886235047)
,p_name=>'P14_ITEM_DESC'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7253746435235045)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Item Number and Description'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT nit001.item_num, nit001.item_desc',
'    INTO :P14_ITEM_NUM, :P14_ITEM_DESC',
'    FROM NIT001 nit001',
'    WHERE nit001.item_id = :P14_ITEM_ID;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>7253746435235045
);
wwv_flow_imp.component_end;
end;
/
