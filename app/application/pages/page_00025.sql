prompt --application/pages/page_00025
begin
--   Manifest
--     PAGE: 00025
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
 p_id=>25
,p_name=>'Update Inventory Balance'
,p_alias=>'UPDATE-INVENTORY-BALANCE'
,p_step_title=>'Update Inventory Balance'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#js/cmn#MIN#.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let lastSelected = null;',
'const p25KeyMap = {',
'    u : (v) => {',
'        $("#u").trigger("click");',
'    },',
'    d : (v) => {',
'        $("#d").trigger("click");',
'    },',
'',
'    s : (v) => {',
'        $("#s").trigger("click");',
'    },',
'',
'    escape : (v) => {',
'        $.event.trigger("exit");',
'    },',
'    home: (v) => {',
'        $("#to-top").trigger("click");',
'    },',
'    end: (v) => {',
'        $("#to-bottom").trigger("click");',
'    }',
'}',
'',
'function mapP25Keys() {',
'    $(document).off(''keydown.p25keyevents'');',
'    $(document).on(''keydown.p25keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p25KeyMap[key]) {',
'            ev.preventDefault();',
'            p25KeyMap[key]();',
'        }',
'    });',
'}',
'',
'function selectFirstRow() {',
'    let region = apex.region("updateInventory")',
'    let view = region.call("getCurrentView"),',
'    model = view.model,',
'    view$ = view.view$; ',
'    ',
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
'    let region = apex.region("updateInventory")',
'    let view = region.call("getCurrentView"),',
'    model = view.model,',
'    view$ = view.view$; ',
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
'mapP25Keys();',
'setTitle("Update Inventory Balance");'))
,p_css_file_urls=>'#APP_FILES#css/p25_css.css'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#updateInventory .a-IG-contentContainer {',
'    height: 75vh !important;',
'}',
'',
'#updateInventory .a-IG-gridView.a-GV {',
'    height: 75vh !important;',
'}',
'',
'#updateInventory .a-GV-bdy {',
'    height: calc(75vh - 2.5625rem) !important;',
'}',
'',
'.a-GV-table tr.is-selected .a-GV-cell{',
'    background-color: #F5DC1C;',
'}',
'',
'.a-GV-table .a-GV-cell.is-focused{',
'    border-color: black;',
'    box-shadow: 0 0 0 1px black inset;',
'}',
'',
'.a-GV-header, .a-GV-headerGroup, .a-GV-cell {',
'    border-color: rgba(0,0,0,1) !important;',
'}'))
,p_step_template=>wwv_flow_imp.id(5671392681337017)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7172322635817535)
,p_plug_name=>'Update Inventory Balance'
,p_region_name=>'updateInventory'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>10
,p_plug_display_column=>2
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH update_balance AS (',
'    SELECT DISTINCT',
'        nit4.item_id,',
'        nit1.item_num AS "Item Number",',
'        nit2.upc AS UPC,',
'        nim22.brand_name AS "Brand Name",',
'        nit1.item_desc AS "Item Description",   ',
'        TO_CHAR(',
'            ROUND((SELECT SUM(nit02.quantity * nit04.qty) FROM NIT002 nit02, NIT004 nit04 WHERE nit02.item_id = nit04.item_id AND nit02.uom_id = nit04.uom_id AND nit04.item_id = nit1.item_id) / (SELECT MAX(quantity) FROM NIT002 WHERE item_id = nit1.i'
||'tem_id), 2),',
'             ''99990.99'') AS "Total # of CS",',
'        0 + (SELECT SUM(nit02.quantity * nit04.qty) FROM NIT002 nit02, NIT004 nit04 WHERE nit02.item_id = nit04.item_id AND nit02.uom_id = nit04.uom_id AND nit04.item_id = nit1.item_id) AS "Total # of Units"',
'    FROM',
'        NIT001 nit1,',
'        NIT002 nit2,',
'        NIT004 nit4,',
'        NIM022 nim22',
'    WHERE',
'        nit4.uom_id = (SELECT MAX(uom_id) FROM NIT004 WHERE item_id = nit4.item_id) AND',
'        nit4.item_id = nit2.item_id AND ',
'        nit4.uom_id = nit2.uom_id AND',
'        nit4.item_id = nit1.item_id AND   ',
'        nit1.brand_id = nim22.brand_id AND',
'        (',
'           (:P25_ITEM_NUM_QUERY IS NOT NULL AND lower(nit1.item_num) LIKE ''%'' || lower(:P25_ITEM_NUM_QUERY) || ''%'' )',
'',
'        OR (:P25_ITEM_NUM_QUERY IS NULL AND :P25_UPC_QUERY IS NOT NULL AND nit2.upc LIKE ''%'' || :P25_UPC_QUERY || ''%'' )',
'',
'        OR (:P25_ITEM_NUM_QUERY IS NULL AND :P25_UPC_QUERY IS NULL AND :P25_ITEM_DESC_QUERY IS NOT NULL AND lower(nit1.item_desc) LIKE ''%'' || lower(:P25_ITEM_DESC_QUERY) || ''%'')',
'',
'        )',
'    ORDER BY',
'        CASE WHEN :P25_ITEM_NUM_QUERY IS NOT NULL AND lower(nit1.item_num) LIKE lower(:P25_ITEM_NUM_QUERY) || ''%'' THEN 0 ELSE 1 END,',
'        CASE WHEN :P25_ITEM_DESC_QUERY IS NOT NULL AND lower(nit1.item_desc) LIKE lower(:P25_ITEM_DESC_QUERY) || ''%'' THEN 0 ELSE 1 END,',
'        CASE WHEN :P25_ITEM_NUM_QUERY IS NOT NULL THEN nit1.item_num',
'             WHEN :P25_ITEM_DESC_QUERY IS NOT NULL THEN nit1.item_desc END ASC',
')',
'',
'SELECT',
'    item_id,',
'    "Item Number",',
'    UPC,',
'    "Brand Name",',
'    "Item Description",   ',
'    "Total # of CS",',
'    "Total # of Units"',
'FROM',
'    update_balance'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P25_ITEM_NUM_QUERY,P25_UPC_QUERY,P25_ITEM_DESC_QUERY'
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
 p_id=>wwv_flow_imp.id(7187521067892210)
,p_name=>'Item Number'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'Item Number'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Item Number'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>10
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>true
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
 p_id=>wwv_flow_imp.id(7187649347892211)
,p_name=>'UPC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPC'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'UPC'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>14
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7187777963892212)
,p_name=>'Brand Name'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'Brand Name'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Brand Name'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>50
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7187827211892213)
,p_name=>'Item Description'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'Item Description'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Item Description'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>30
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14512412295354920)
,p_name=>'Total # of CS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'Total # of CS'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Total # Of CS'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'RIGHT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>10
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
 p_id=>wwv_flow_imp.id(14512516773354921)
,p_name=>'Total # of Units'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'Total # of Units'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Total # Of Units'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
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
 p_id=>wwv_flow_imp.id(28548928757120009)
,p_name=>'ITEM_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEM_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(7187492103892209)
,p_internal_uid=>7187492103892209
,p_is_editable=>false
,p_lazy_loading=>true
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
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>510
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
'        // stickyFooter: true',
'        footer: false',
'    };',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(7207913193968275)
,p_interactive_grid_id=>wwv_flow_imp.id(7187492103892209)
,p_static_id=>'72080'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(7208112006968276)
,p_report_id=>wwv_flow_imp.id(7207913193968275)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7208691112968282)
,p_view_id=>wwv_flow_imp.id(7208112006968276)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(7187521067892210)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7209596812968289)
,p_view_id=>wwv_flow_imp.id(7208112006968276)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(7187649347892211)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7210430023968293)
,p_view_id=>wwv_flow_imp.id(7208112006968276)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(7187777963892212)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7211346204968300)
,p_view_id=>wwv_flow_imp.id(7208112006968276)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(7187827211892213)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14686103219246679)
,p_view_id=>wwv_flow_imp.id(7208112006968276)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(14512412295354920)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14687009559246693)
,p_view_id=>wwv_flow_imp.id(7208112006968276)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(14512516773354921)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(28576095655250370)
,p_view_id=>wwv_flow_imp.id(7208112006968276)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(28548928757120009)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7189210312892227)
,p_plug_name=>'Navigation'
,p_region_name=>'nav'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>50
,p_plug_grid_column_span=>10
,p_plug_display_column=>2
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7191151348892246)
,p_plug_name=>'Title'
,p_region_name=>'content'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--textContent:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>10
,p_plug_display_column=>2
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7191011429892245)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(7189210312892227)
,p_button_name=>'Update'
,p_button_static_id=>'u'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>U</u> - Update'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'has_access(:APP_USER, 6, 19) = ''Y'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'btns'
,p_grid_new_row=>'Y'
,p_grid_column_span=>4
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7191372907892248)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(7189210312892227)
,p_button_name=>'Search'
,p_button_static_id=>'s'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>S</u> - Search'
,p_button_redirect_url=>'f?p=&APP_ID.:37:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'btns'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>4
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7191290952892247)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(7189210312892227)
,p_button_name=>'Update_History'
,p_button_static_id=>'d'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>D</u> - Quantity Details Update History'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'has_access(:APP_USER, 6, 50) = ''Y'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'btns'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>4
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7191521806892250)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(7189210312892227)
,p_button_name=>'Top'
,p_button_static_id=>'to-top'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>Home</u> - Top'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns'
,p_grid_new_row=>'Y'
,p_grid_column_span=>4
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7686534283126401)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(7189210312892227)
,p_button_name=>'Bottom'
,p_button_static_id=>'to-bottom'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>End</u> - Bottom'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>4
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7189337373892228)
,p_name=>'P25_SELECTED_ROW'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7191151348892246)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7687042908126406)
,p_name=>'P25_PREPARED_URL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(7191151348892246)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9519354293251345)
,p_name=>'P25_ITEM_NUM_QUERY'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(7191151348892246)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10219014827449130)
,p_name=>'P25_ITEM_DESC_QUERY'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(7191151348892246)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10219186159449131)
,p_name=>'P25_UPC_QUERY'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(7191151348892246)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10905594918353222)
,p_name=>'P25_PREVIOUS_PAGE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(7191151348892246)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28548769617120007)
,p_name=>'P25_SELECTED_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(7191151348892246)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7189416047892229)
,p_name=>'Row Selection Change'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(7172322635817535)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7189530511892230)
,p_event_id=>wwv_flow_imp.id(7189416047892229)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Get number'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var selectedNumber;',
'var selectedId;',
'model=this.data.model;',
'',
'if(this.data != null){',
'    if(this.data.selectedRecords[0] != null){',
'        selectedNumber = model.getValue(this.data.selectedRecords[0], "Item Number");',
'        selectedId = model.getValue(this.data.selectedRecords[0], "ITEM_ID");',
'    }',
'}',
'apex.item("P25_SELECTED_ROW").setValue(selectedNumber);',
'apex.item("P25_SELECTED_ID").setValue(selectedId);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7686873860126404)
,p_name=>'Pass item # to page 26'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(7191011429892245)
,p_condition_element=>'P25_SELECTED_ROW'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7686957422126405)
,p_event_id=>wwv_flow_imp.id(7686873860126404)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P25_PREPARED_URL := apex_page.get_url(',
'       p_page   => 26,',
'       p_items  => ''P26_ITEM_NUMBER,P26_ITEM_ID'',',
'       p_values => :P25_SELECTED_ROW || '','' || :P25_SELECTED_ID',
'     );',
'END;'))
,p_attribute_02=>'P25_SELECTED_ROW,P25_SELECTED_ID'
,p_attribute_03=>'P25_PREPARED_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P25_SELECTED_ROW'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7687154088126407)
,p_event_id=>wwv_flow_imp.id(7686873860126404)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P25_PREPARED_URL");',
'apex.navigation.redirect(url);'))
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P25_SELECTED_ROW'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7687351253126409)
,p_name=>'Pass item # to page 27'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(7191290952892247)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7687520515126411)
,p_event_id=>wwv_flow_imp.id(7687351253126409)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P25_PREPARED_URL := apex_page.get_url(',
'       p_page   => 27,',
'       p_items  => ''P27_ITEM_NUMBER,P27_ITEM_ID'',',
'       p_values => :P25_SELECTED_ROW || '','' || :P25_SELECTED_ID',
'     );',
'END;'))
,p_attribute_02=>'P25_SELECTED_ROW,P25_SELECTED_ID'
,p_attribute_03=>'P25_PREPARED_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P25_SELECTED_ROW'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7687631781126412)
,p_event_id=>wwv_flow_imp.id(7687351253126409)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P25_PREPARED_URL");',
'apex.navigation.redirect(url);'))
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P25_SELECTED_ROW'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8088014961356304)
,p_name=>'To Top'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(7191521806892250)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8088184917356305)
,p_event_id=>wwv_flow_imp.id(8088014961356304)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_name=>'Go to top'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(() => {',
'  $( document ).ready(function() {',
'    selectFirstRow();',
' });',
'}, "300");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8088691064356310)
,p_name=>'Bottom'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(7686534283126401)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8088785932356311)
,p_event_id=>wwv_flow_imp.id(8088691064356310)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Go to bottom'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'selectLastRow()'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9517861986251330)
,p_name=>'Refresh Table'
,p_event_sequence=>70
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9517941595251331)
,p_event_id=>wwv_flow_imp.id(9517861986251330)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(7172322635817535)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10905649758353223)
,p_name=>'Load Search'
,p_event_sequence=>80
,p_condition_element=>'P25_PREVIOUS_PAGE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'3'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10905719816353224)
,p_event_id=>wwv_flow_imp.id(10905649758353223)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("#s").trigger("click")'
,p_server_condition_type=>'EXISTS'
,p_server_condition_expr1=>'SELECT * FROM NIT004'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10905888003353225)
,p_event_id=>wwv_flow_imp.id(10905649758353223)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P25_PREVIOUS_PAGE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'0'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16030452787346133)
,p_name=>'New'
,p_event_sequence=>90
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'exit'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16030590763346134)
,p_event_id=>wwv_flow_imp.id(16030452787346133)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P25_PREPARED_URL := apex_page.get_url(',
'       p_page   => 3',
'    );',
'END;'))
,p_attribute_03=>'P25_PREPARED_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16030686996346135)
,p_event_id=>wwv_flow_imp.id(16030452787346133)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P25_PREPARED_URL");',
'apex.navigation.redirect(url);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(51981841735682909)
,p_name=>'New_1'
,p_event_sequence=>100
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51981920907682910)
,p_event_id=>wwv_flow_imp.id(51981841735682909)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(7172322635817535)
);
wwv_flow_imp.component_end;
end;
/
