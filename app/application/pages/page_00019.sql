prompt --application/pages/page_00019
begin
--   Manifest
--     PAGE: 00019
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
 p_id=>19
,p_name=>'Reservations'
,p_alias=>'RESERVATIONS'
,p_page_mode=>'MODAL'
,p_step_title=>'Reservations'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function mapP19Keys(){',
'    $(document).on(''keydown.p19keyevents'', (ev) => {',
'',
'        const excludedKeys = [',
'            "PageUp", ',
'            "PageDown",  ',
'            "ArrowUp", ',
'            "ArrowDown"',
'        ];',
'        if (!excludedKeys.includes(ev.key)) {',
'            apex.navigation.dialog.close(true);',
'            $(document).off(''keydown.p19keyevents'');',
'        }',
'',
'    });',
'}',
''))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP19Keys();',
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
'    width: 8.5rem;',
'}',
'',
'#table1 .a-GV-table colgroup col:nth-child(2) {',
'    width: 7.75rem;',
'}',
'',
'#table1 .a-GV-table colgroup col:nth-child(6) {',
'    width: 8.75rem;',
'}',
'',
'#table1 .a-GV-table colgroup col:nth-child(3) {',
'    width: 6.75rem;',
'}',
'',
'#table1 .a-GV-table colgroup col:nth-child(7) {',
'    width: 6.5rem;',
'}',
'',
'#table1 .a-GV-table colgroup col:nth-child(4),',
'#table1 .a-GV-table colgroup col:nth-child(5) {',
'    width: 10rem;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'1100'
,p_dialog_attributes=>'close: function() { customEvent(''customDialogClose'', {modalPageId: ''MODAL_CLOSE_FIXED''});} '
,p_dialog_css_classes=>'res'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8918436849019044)
,p_plug_name=>'Header'
,p_plug_display_sequence=>10
,p_plug_grid_column_css_classes=>'header color-w fw-600 p-2'
,p_location=>null
,p_plug_source=>'Reservations'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8918500214019045)
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
 p_id=>wwv_flow_imp.id(8918608529019046)
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
 p_id=>wwv_flow_imp.id(8918736501019047)
,p_plug_name=>'Item Number and Desc'
,p_parent_plug_id=>wwv_flow_imp.id(8918608529019046)
,p_plug_display_sequence=>10
,p_plug_grid_column_css_classes=>'fw-600 p-2 fs-1'
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Item Number : &P19_ITEM_NUM.<br>',
'Item Description : &P19_ITEM_DESC.'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9446536208720160)
,p_plug_name=>'Reservations'
,p_region_name=>'table1'
,p_parent_plug_id=>wwv_flow_imp.id(8918608529019046)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    npt018.reserve_id AS "RESERVE_ID",',
'    TO_CHAR(npt018.date_created, ''MM/DD/YYYY'') AS "DATE_RESERVED",',
'    TO_CHAR(npt018.expiry_date, ''MM/DD/YYYY'') AS "EXPIRY_DATE",',
'    npt009."DBA" AS "CUSTOMER_NAME",',
'    npt018.point_person AS "CONTACT_PERSON",',
'    npt018.tel_number AS "CONTACT_NO",',
'    nim027.warehouse_location AS "WHS_LOCATION"',
'FROM',
'    NPT018 npt018',
'JOIN',
'    NPT019 npt019 ON npt018.reserve_id = npt019.reserve_id',
'JOIN',
'    NIT001 nit001 ON npt019.item_id = nit001.item_id',
'JOIN',
'    NPT009 npt009 ON npt018.customer_id = npt009.customer_id',
'LEFT JOIN',
'    NIM027 nim027 ON npt018.warehouse_id = nim027.warehouse_id',
'WHERE',
'    nit001.item_id = :P19_ITEM_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_prn_page_header=>'Reservations'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(47419435971411424)
,p_name=>'RESERVE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RESERVE_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Reservation No'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
,p_value_alignment=>'LEFT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>true
,p_enable_filter=>false
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
 p_id=>wwv_flow_imp.id(47419579758411425)
,p_name=>'DATE_RESERVED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DATE_RESERVED'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Date Reserved'
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
 p_id=>wwv_flow_imp.id(47419656272411426)
,p_name=>'EXPIRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXPIRY_DATE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Exp Date'
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
 p_id=>wwv_flow_imp.id(47419791042411427)
,p_name=>'CUSTOMER_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CUSTOMER_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Customer DBA'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>true
,p_max_length=>400
,p_enable_filter=>false
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
 p_id=>wwv_flow_imp.id(47419809719411428)
,p_name=>'CONTACT_PERSON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CONTACT_PERSON'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Contact Person'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>160
,p_enable_filter=>false
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
 p_id=>wwv_flow_imp.id(47419930419411429)
,p_name=>'CONTACT_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CONTACT_NO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Contact Number'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'RIGHT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>48
,p_enable_filter=>false
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
 p_id=>wwv_flow_imp.id(47420036733411430)
,p_name=>'WHS_LOCATION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WHS_LOCATION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Whs Location'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'RIGHT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>1
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(9447007534720162)
,p_internal_uid=>9447007534720162
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
 p_id=>wwv_flow_imp.id(9447497795720164)
,p_interactive_grid_id=>wwv_flow_imp.id(9447007534720162)
,p_static_id=>'94475'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(9447655976720164)
,p_report_id=>wwv_flow_imp.id(9447497795720164)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(48165772718341489)
,p_view_id=>wwv_flow_imp.id(9447655976720164)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(47419435971411424)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(48166513220341495)
,p_view_id=>wwv_flow_imp.id(9447655976720164)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(47419579758411425)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(48167499237341501)
,p_view_id=>wwv_flow_imp.id(9447655976720164)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(47419656272411426)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(48168308565341507)
,p_view_id=>wwv_flow_imp.id(9447655976720164)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(47419791042411427)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(48169206107341514)
,p_view_id=>wwv_flow_imp.id(9447655976720164)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(47419809719411428)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(48170100091341521)
,p_view_id=>wwv_flow_imp.id(9447655976720164)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(47419930419411429)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(48171002689341528)
,p_view_id=>wwv_flow_imp.id(9447655976720164)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(47420036733411430)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9471320301968204)
,p_name=>'P19_ITEM_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9446536208720160)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9471424126968205)
,p_name=>'P19_ITEM_NUM'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9471547436968206)
,p_name=>'P19_ITEM_DESC'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9471697179968207)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Item Number and Description'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT nit001.item_num, nit001.item_desc',
'    INTO :P19_ITEM_NUM, :P19_ITEM_DESC',
'    FROM NIT001 nit001',
'    WHERE nit001.item_id = :P19_ITEM_ID;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>9471697179968207
);
wwv_flow_imp.component_end;
end;
/
