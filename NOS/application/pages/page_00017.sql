prompt --application/pages/page_00017
begin
--   Manifest
--     PAGE: 00017
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
 p_id=>17
,p_name=>'Incoming Shipment'
,p_alias=>'INCOMING-SHIPMENT'
,p_page_mode=>'MODAL'
,p_step_title=>'Incoming Shipment'
,p_autocomplete_on_off=>'OFF'
,p_css_file_urls=>'#APP_FILES#css/ibi-css#MIN#.css'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
'    width: 11rem;',
'}',
'',
'#table1 .a-GV-table colgroup col:nth-child(2) {',
'    width: 6rem;',
'}',
'',
'#table1 .a-GV-table colgroup col:nth-child(3) {',
'    width: 8rem;',
'}',
'',
'#table1 .a-GV-table colgroup col:nth-child(4) {',
'    width: 6rem;',
'}',
'',
'#table1 .a-GV-table colgroup col:nth-child(5) {',
'    width: 9rem;',
'}',
'',
'#table1 .a-GV-table colgroup col:nth-child(6) {',
'    width: 9rem;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'820'
,p_dialog_attributes=>'close: function() { customEvent(''customDialogClose'', {modalPageId: ''MODAL_CLOSE_FIXED''});} '
,p_dialog_css_classes=>'inc-ship'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8916677911019026)
,p_plug_name=>'Table Wrapper'
,p_region_name=>'table-wrapper'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--hiddenOverflow:margin-bottom-sm'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>50
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8915841682019018)
,p_plug_name=>'Incoming Shipment'
,p_region_name=>'table1'
,p_parent_plug_id=>wwv_flow_imp.id(8916677911019026)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    nit024.po_id AS "PO_NUMBER",',
'    nit006.vendor_code AS "SUPPLIER",',
'    nit012.eta_date AS "ETA_DATE",',
'    TO_CHAR((nit013.qty * nit002.quantity) / (SELECT MAX(nit2.quantity) FROM NIT002 nit2 WHERE nit2.item_id = :P17_ITEM_ID), ''9999999.99'') || '' '' || nim026.uom_code AS "QTY_UOM",',
'    NULL AS "UNIT_COST_UOM",',
'    TO_CHAR(nit013.internal_price, ''9999999.99'') AS "INTERNAL_PRICE",',
'    nim026.uom_code AS "INT_UOM_CODE",',
'    CASE nit012.added_cost_operator',
'        WHEN ''+'' THEN TO_CHAR(nit013.vendor_price + nit012.added_cost_amount, ''9999999.99'')',
'        WHEN ''x'' THEN TO_CHAR(nit013.vendor_price * nit012.added_cost_amount, ''9999999.99'')',
'    END AS "LANDED_COST"',
'FROM',
'    NIT024 nit024',
'JOIN',
'    NIT012 nit012 ON nit024.po_id = nit012.po_id',
'JOIN',
'    NIT006 nit006 ON nit012.vendor_id = nit006.vendor_id',
'JOIN',
'    NIT013 nit013 ON nit024.po_id = nit013.po_id',
'JOIN',
'    NIM026 nim026 ON nit013.internal_uom_id = nim026.uom_id',
'JOIN',
'    NIT002 nit002 ON nit013.item_id = nit002.item_id',
'    AND',
'    nit013.external_uom_id = nit002.uom_id',
'WHERE',
'    nit013.item_id = :P17_ITEM_ID'))
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
 p_id=>wwv_flow_imp.id(26626669106248023)
,p_name=>'PO_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PO_NUMBER'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'PO Number'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>60
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
 p_id=>wwv_flow_imp.id(26626740256248024)
,p_name=>'SUPPLIER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUPPLIER'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Supplier'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>12
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
 p_id=>wwv_flow_imp.id(26626853877248025)
,p_name=>'ETA_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ETA_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'ETA'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
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
 p_id=>wwv_flow_imp.id(26626981171248026)
,p_name=>'QTY_UOM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QTY_UOM'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Qty UOM'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
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
 p_id=>wwv_flow_imp.id(26627066038248027)
,p_name=>'UNIT_COST_UOM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UNIT_COST_UOM'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading=>'Unit Cost/UOM'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="display: flex; justify-content: space-between;">',
'    <span><b>$</b></span>',
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
,p_display_condition=>'has_access(:APP_USER, 5, 29) = ''Y'''
,p_display_condition2=>'PLSQL'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(26627100478248028)
,p_name=>'INTERNAL_PRICE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INTERNAL_PRICE'
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
 p_id=>wwv_flow_imp.id(26627276315248029)
,p_name=>'INT_UOM_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INT_UOM_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>70
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(26627320957248030)
,p_name=>'LANDED_COST'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LANDED_COST'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading=>'Landed Cost'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="display: flex; justify-content: space-between;">',
'    <span><b>$</b></span>',
'    <span>&LANDED_COST.</span>',
'</div>'))
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
,p_display_condition_type=>'EXPRESSION'
,p_display_condition=>'has_access(:APP_USER, 5, 29) = ''Y'''
,p_display_condition2=>'PLSQL'
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(8915943376019019)
,p_internal_uid=>8915943376019019
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
 p_id=>wwv_flow_imp.id(9017476890880293)
,p_interactive_grid_id=>wwv_flow_imp.id(8915943376019019)
,p_static_id=>'90175'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(9017615914880293)
,p_report_id=>wwv_flow_imp.id(9017476890880293)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(28047156310399892)
,p_view_id=>wwv_flow_imp.id(9017615914880293)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(26626669106248023)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(28048059949399900)
,p_view_id=>wwv_flow_imp.id(9017615914880293)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(26626740256248024)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(28048973600399906)
,p_view_id=>wwv_flow_imp.id(9017615914880293)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(26626853877248025)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(28049834080399915)
,p_view_id=>wwv_flow_imp.id(9017615914880293)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(26626981171248026)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(28050748028399925)
,p_view_id=>wwv_flow_imp.id(9017615914880293)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(26627066038248027)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(28051601311399932)
,p_view_id=>wwv_flow_imp.id(9017615914880293)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(26627100478248028)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(28052545614399940)
,p_view_id=>wwv_flow_imp.id(9017615914880293)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(26627276315248029)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(28053414735399948)
,p_view_id=>wwv_flow_imp.id(9017615914880293)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(26627320957248030)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8916909700019029)
,p_plug_name=>'Item Number and Desc'
,p_parent_plug_id=>wwv_flow_imp.id(8916677911019026)
,p_plug_display_sequence=>10
,p_plug_grid_column_css_classes=>'fw-600 p-2 fs-1'
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Item Number : &P17_ITEM_NUM.<br>',
'Item Description : &P17_ITEM_DESC.'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8916735463019027)
,p_plug_name=>'Footer'
,p_plug_display_sequence=>60
,p_plug_grid_column_css_classes=>'center-align color-w'
,p_location=>null
,p_plug_source=>'<span style="font-size: 1.2rem;">Press any key to exit</span>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8916831719019028)
,p_plug_name=>'Header'
,p_plug_display_sequence=>10
,p_plug_grid_column_css_classes=>'header color-w fw-600 p-2'
,p_location=>null
,p_plug_source=>'Incoming Shipments'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8918050445019040)
,p_name=>'P17_ITEM_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8915841682019018)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8918186976019041)
,p_name=>'P17_ITEM_NUM'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8918265297019042)
,p_name=>'P17_ITEM_DESC'
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10467069295962417)
,p_name=>'P17_USER_ROLE'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8918365178019043)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Item Number and Description'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT nit001.item_num, nit001.item_desc',
'    INTO :P17_ITEM_NUM, :P17_ITEM_DESC',
'    FROM NIT001 nit001',
'    WHERE nit001.item_id = :P17_ITEM_ID;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>8918365178019043
);
wwv_flow_imp.component_end;
end;
/
