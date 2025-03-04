prompt --application/pages/page_00056
begin
--   Manifest
--     PAGE: 00056
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
 p_id=>56
,p_name=>'Item Line'
,p_alias=>'ITEM-LINE'
,p_step_title=>'Item Line'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#js/cmn#MIN#.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let lastSelected = null;',
'const p56KeyMap = {',
'',
'    escape : (v) => {',
'        if(!( $(''#itemMasterfile'').is('':visible''))){',
'            $("#esc").trigger(''click'');',
'        }',
'        ',
'    },',
'',
'    enter : (v) => {',
'        if($(''#itemMasterfile'').is('':visible'')){',
'            setTimeout(() => {',
'                $.event.trigger("addItem");',
'            }, 350)',
'        }',
'    },',
'',
'    home : (v) => {',
'        if($(''#itemMasterfile'').is('':visible'')){',
'            selectFirstRow("itemMasterfile");',
'        } else {',
'            selectFirstRow("lineItem");',
'        }',
'        ',
'    },',
'',
'    end : (v) => {',
'        if($(''#itemMasterfile'').is('':visible'')){',
'            selectLastRow("itemMasterfile");',
'        } else {',
'            selectLastRow("lineItem");',
'        }',
'    }',
'}',
'',
'function mapP56Keys() {',
'    $(document).off(''keydown.p56keyevents'');',
'    $(document).on(''keydown.p56keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p56KeyMap[key]) {',
'            ev.preventDefault();',
'            p56KeyMap[key]();',
'        }',
'    });',
'}',
'',
'function selectFirstRow(gridName) {',
'    let region = apex.region(gridName)',
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
'function selectLastRow(gridName) {',
'    let region = apex.region(gridName)',
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
'mapP56Keys();',
'setTitle("Item Line");',
'setIGInputFilter($("#QTY"), function(value) {  ',
'    return /^\d*$/.test(value);',
'}, "Input digits only!");'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Header .t-Header-branding {',
'    background-color: white !important;',
'    color: rgb(30, 58, 138) !important;',
'}',
'',
'#esc, #enter{',
'    display: none;',
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
'}',
'',
'.ui-dialog-popuplov{',
'    left: 90% !important;',
'}',
'',
'.ui-dialog-titlebar{',
'    display: none;',
'}',
'',
'table, tr, td, th {',
'    font-size: 1.125rem;',
'    font-family: Arial;',
'}',
'',
'.title-header {',
'    display: flex;',
'    justify-content: center;',
'    margin-top: 1.5rem;',
'    /* color: #056BC9; */',
'    color: white;',
'    font-size: 2rem;',
'    font-weight: 700;',
'    line-height: normal;',
'}',
'',
'body, #lineItems{',
'    background-color: rgb(30, 58, 138);',
'}',
'',
'#itemMasterfile {',
'    background-color: #056AC8;',
'}',
'',
'',
'.ui-dialog{',
'    left: 50%!important;',
'}',
'',
'.a-GV-header a, th.a-GV-header {',
'    background-color: #056BC9;',
'    color: white;',
'}',
'',
'.ui-dialog.a-GV-header a, .ui-dialog th.a-GV-header {',
'    background-color: #056AC8;',
'    color: white;',
'}',
'',
'',
'#exit{',
'    color: black;',
'    font-size: 1.125rem;',
'    font-family: Arial;',
'}',
'',
'.format-size{',
'    font-size: 1.125rem;',
'    font-family: Arial;',
'    color: white;',
'}',
'',
'.ui-dialog.inv-qby-w {',
'   left: 50% !important; ',
'}',
'',
'.ui-dialog.modal-dialog--pullout{',
'    left: 50% !important;',
'}',
'',
'.ui-dialog-titlebar-close{',
'    display: none;',
'}',
'',
'.a-GV-hdr .a-GV-table {',
'    width: 100% !important;',
'}'))
,p_step_template=>wwv_flow_imp.id(5671392681337017)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20614487229146664)
,p_plug_name=>'Title'
,p_region_name=>'lineItems'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--textContent:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>10
,p_plug_display_column=>2
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20629835810030312)
,p_plug_name=>'Item Masterfile'
,p_title=>'Help on Item Masterfile'
,p_region_name=>'itemMasterfile'
,p_region_template_options=>'#DEFAULT#:js-dialog-size720x480'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_04'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    row_number() OVER (ORDER BY nit1.item_num, nit2.upc),',
'    nit1.item_num,',
'    nit2.upc,',
'    nit1.item_desc,',
'    nit2.uom_id,',
'    nit1.item_id,',
'    nim26.uom_code',
'FROM',
'    NIT001 nit1,',
'    NIT002 nit2,',
'    NIM026 nim26',
'WHERE',
'    nit1.item_id = nit2.item_id AND',
'    nit2.uom_id = nim26.uom_id AND',
'    nit2.uom_id = (SELECT MAX(uom_id) FROM NIT002 WHERE item_id = nit2.item_id) AND',
'    (',
'        (:P56_UPC IS NOT NULL AND :P56_NUM IS NULL AND :P56_DESC IS NULL AND LOWER(nit2.upc) LIKE LOWER(:P56_UPC) || ''%'') OR',
'        (:P56_UPC IS NULL AND :P56_NUM IS NOT NULL AND :P56_DESC IS NULL AND LOWER(nit1.item_num) LIKE LOWER(:P56_NUM) || ''%'') OR',
'        (:P56_UPC IS NULL AND :P56_NUM IS NULL AND :P56_DESC IS NOT NULL AND LOWER(nit1.item_desc) LIKE ''%'' || LOWER(:P56_DESC) || ''%'') OR',
'        (:P56_UPC IS NULL AND :P56_NUM IS NULL AND :P56_DESC IS NULL)',
'    )'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P56_NUM,P56_UPC,P56_DESC,P56_TRANSFER_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Help on Item Masterfile'
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
,p_plug_header=>'<p class="format-size">Help on Item Masterfile</p>'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(20630095355030314)
,p_name=>'ROW_NUMBER()OVER(ORDERBYNIT1.ITEM_NUM,NIT2.UPC)'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROW_NUMBER()OVER(ORDERBYNIT1.ITEM_NUM,NIT2.UPC)'
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
 p_id=>wwv_flow_imp.id(20630107213030315)
,p_name=>'ITEM_NUM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEM_NUM'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Item Number'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>40
,p_enable_filter=>false
,p_filter_is_required=>false
,p_static_id=>'new_num'
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
 p_id=>wwv_flow_imp.id(20630246649030316)
,p_name=>'UPC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'UPC'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>56
,p_enable_filter=>false
,p_filter_is_required=>false
,p_static_id=>'new_upc'
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
 p_id=>wwv_flow_imp.id(20630341434030317)
,p_name=>'ITEM_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEM_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Item Description'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>120
,p_enable_filter=>false
,p_filter_is_required=>false
,p_static_id=>'new_desc'
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
 p_id=>wwv_flow_imp.id(20630418278030318)
,p_name=>'NEW_UOM_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UOM_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_static_id=>'new_uom'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(20630571368030319)
,p_name=>'NEW_ITEM_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEM_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_static_id=>'new_id'
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
 p_id=>wwv_flow_imp.id(22246713877888812)
,p_name=>'UOM_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UOM_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>70
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_static_id=>'new_code'
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
 p_id=>wwv_flow_imp.id(20629950311030313)
,p_internal_uid=>20629950311030313
,p_is_editable=>false
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
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>400
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
 p_id=>wwv_flow_imp.id(20883881456531712)
,p_interactive_grid_id=>wwv_flow_imp.id(20629950311030313)
,p_static_id=>'208839'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(20884014315531714)
,p_report_id=>wwv_flow_imp.id(20883881456531712)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(20884563059531723)
,p_view_id=>wwv_flow_imp.id(20884014315531714)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(20630095355030314)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(20885401527531729)
,p_view_id=>wwv_flow_imp.id(20884014315531714)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(20630107213030315)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(20886358062531737)
,p_view_id=>wwv_flow_imp.id(20884014315531714)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(20630246649030316)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(20887234702531743)
,p_view_id=>wwv_flow_imp.id(20884014315531714)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(20630341434030317)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(20888154565531750)
,p_view_id=>wwv_flow_imp.id(20884014315531714)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(20630418278030318)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(20889077700531756)
,p_view_id=>wwv_flow_imp.id(20884014315531714)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(20630571368030319)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22447761637719103)
,p_view_id=>wwv_flow_imp.id(20884014315531714)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(22246713877888812)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(62601618132572627)
,p_plug_name=>'Line Items'
,p_region_name=>'itemLine'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>50
,p_plug_grid_column_span=>10
,p_plug_display_column=>2
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    seq_id,',
'    c001 AS "ITEM_NUM",',
'    c002 AS "UPC",',
'    c003 AS "ITEM_DESCRIPTION",',
'    n001 AS "QTY",',
'    c004 AS "UOM",',
'    n002 AS "ITEM_ID",',
'    n003 AS "UOM_ID",',
'    n004,',
'    n005',
'FROM',
'    APEX_COLLECTIONS',
'WHERE',
'    COLLECTION_NAME = ''ITEM_LINE'''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P56_TRANSFER_ID'
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
 p_id=>wwv_flow_imp.id(62602742133572638)
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
,p_is_required=>true
,p_enable_filter=>false
,p_filter_is_required=>false
,p_static_id=>'QTY'
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
,p_default_type=>'STATIC'
,p_default_expression=>'1'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(63408950838132216)
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
,p_is_required=>false
,p_max_length=>56
,p_enable_filter=>false
,p_filter_is_required=>false
,p_static_id=>'UPC'
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
 p_id=>wwv_flow_imp.id(63410737134132234)
,p_name=>'ITEM_NUM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEM_NUM'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Item Number'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>false
,p_filter_is_required=>false
,p_static_id=>'NUM'
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
 p_id=>wwv_flow_imp.id(63410899393132235)
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
,p_static_id=>'DESC'
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
 p_id=>wwv_flow_imp.id(63410936553132236)
,p_name=>'ITEM_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEM_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>80
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'ITEM_ID'
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    };',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(63411057982132237)
,p_name=>'UOM_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UOM_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>90
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'UOM_ID'
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    };',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(63411539520132242)
,p_name=>'SEQ_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SEQ_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    };',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(64323673258101501)
,p_name=>'UOM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UOM'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'UOM'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET_FILTER'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_is_required=>false
,p_max_length=>4000
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    UOM_CODE as d,',
'    UOM_CODE as r',
'FROM',
'    NIM026',
'WHERE',
'    UOM_ID IN (SELECT UOM_ID FROM NIT002 WHERE ITEM_ID = :P56_ITEM_ID)'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_lov_cascade_parent_items=>'ITEM_ID'
,p_ajax_items_to_submit=>'P56_ITEM_ID'
,p_ajax_optimize_refresh=>true
,p_filter_is_required=>false
,p_static_id=>'UOM'
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    };',
'    return options;',
'}'))
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(64325247692101517)
,p_name=>'N004'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'N004'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'N004'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>100
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    };',
'    return options;',
'}'))
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(64325369598101518)
,p_name=>'N005'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'N005'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'N005'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>110
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    };',
'    return options;',
'}'))
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(62601741991572628)
,p_internal_uid=>62601741991572628
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
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
,p_fixed_header_max_height=>460
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
 p_id=>wwv_flow_imp.id(63260144617941706)
,p_interactive_grid_id=>wwv_flow_imp.id(62601741991572628)
,p_static_id=>'632602'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(63260323792941706)
,p_report_id=>wwv_flow_imp.id(63260144617941706)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(63261749329941725)
,p_view_id=>wwv_flow_imp.id(63260323792941706)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(62602742133572638)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>102
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(63496749781838589)
,p_view_id=>wwv_flow_imp.id(63260323792941706)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(63408950838132216)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>149
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(64276324682635554)
,p_view_id=>wwv_flow_imp.id(63260323792941706)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(63410737134132234)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>177
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(64277313172635565)
,p_view_id=>wwv_flow_imp.id(63260323792941706)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(63410899393132235)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>610
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(64278326533635573)
,p_view_id=>wwv_flow_imp.id(63260323792941706)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(63410936553132236)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(64279381369635581)
,p_view_id=>wwv_flow_imp.id(63260323792941706)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(63411057982132237)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(64298714562796300)
,p_view_id=>wwv_flow_imp.id(63260323792941706)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(63411539520132242)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(64329748542102404)
,p_view_id=>wwv_flow_imp.id(63260323792941706)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(64323673258101501)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>107
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(64494612618918846)
,p_view_id=>wwv_flow_imp.id(63260323792941706)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(64325247692101517)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>49
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(64495618858918854)
,p_view_id=>wwv_flow_imp.id(63260323792941706)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(64325369598101518)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>74
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64326130866101526)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(62601618132572627)
,p_button_name=>'Esc'
,p_button_static_id=>'esc'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Esc'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64327641074101541)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(62601618132572627)
,p_button_name=>'Enter'
,p_button_static_id=>'enter'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'enter'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13412835074070304)
,p_name=>'P56_TRANSFER_ID'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(20614487229146664)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13414286825070318)
,p_name=>'P56_FROMWAREHOUSE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(20614487229146664)
,p_pre_element_text=>'<p class="format-size">Transfer From Location:</p>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'format-size'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--preTextBlock:t-Form-fieldContainer--normalDisplay'
,p_warn_on_unsaved_changes=>'I'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13414301641070319)
,p_name=>'P56_TOWAREHOUSE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(20614487229146664)
,p_pre_element_text=>'<p class="format-size">Transfer Destination Location:</p>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'format-size'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--preTextBlock:t-Form-fieldContainer--normalDisplay'
,p_warn_on_unsaved_changes=>'I'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13414476068070320)
,p_name=>'P56_DELIVERYMAN'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(20614487229146664)
,p_pre_element_text=>'<p class="format-size">Delivery Man:</p>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'format-size'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_column=>7
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--preTextBlock:t-Form-fieldContainer--normalDisplay'
,p_warn_on_unsaved_changes=>'I'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13414544836070321)
,p_name=>'P56_DATE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(20614487229146664)
,p_pre_element_text=>'<p class="format-size">Date:</p>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'format-size'
,p_colspan=>3
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--preTextBlock:t-Form-fieldContainer--normalDisplay'
,p_warn_on_unsaved_changes=>'I'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13414668158070322)
,p_name=>'P56_RECEIVER'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(20614487229146664)
,p_pre_element_text=>'<p class="format-size">Receiver:</p>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'format-size'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--preTextBlock:t-Form-fieldContainer--normalDisplay'
,p_warn_on_unsaved_changes=>'I'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13778463373768142)
,p_name=>'P56_DESC'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(20614487229146664)
,p_use_cache_before_default=>'NO'
,p_item_default=>'NULL'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13778569069768143)
,p_name=>'P56_NUM'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(20614487229146664)
,p_use_cache_before_default=>'NO'
,p_item_default=>'NULL'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20613322067146684)
,p_name=>'P56_UPC'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(20614487229146664)
,p_use_cache_before_default=>'NO'
,p_item_default=>'NULL'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20631852022030332)
,p_name=>'P56_NEW_ITEM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(20629835810030312)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20631937773030333)
,p_name=>'P56_NEW_UOM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(20629835810030312)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20632585489030339)
,p_name=>'P56_ITEM_ID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(20614487229146664)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20632612150030340)
,p_name=>'P56_UOM_ID'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(20614487229146664)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20990209158487405)
,p_name=>'P56_QTY'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(20614487229146664)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20990430884487407)
,p_name=>'P56_PREPARED_URL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(20614487229146664)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22246644511888811)
,p_name=>'P56_NEW_UOM_CODE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(20629835810030312)
,p_source=>'SELECT UOM_CODE FROM NIM026 WHERE UOM_ID = :P56_NEW_UOM'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51303269658993346)
,p_name=>'P56_ACTION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(20614487229146664)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58656915252535215)
,p_name=>'P56_ORDERWRITER'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(20614487229146664)
,p_prompt=>'Orderwriter'
,p_pre_element_text=>'<p class="format-size">Order Writer:</p>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'format-size'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--preTextBlock:t-Form-fieldContainer--normalDisplay'
,p_warn_on_unsaved_changes=>'I'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60621557192627550)
,p_name=>'P56_DISPLAY_ID'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(20614487229146664)
,p_use_cache_before_default=>'NO'
,p_item_default=>'SELECT ''TR-'' || TO_CHAR(TRANSFER_DATE, ''yyyy'') || ''-'' || TO_CHAR(TRANSFER_NUMBER, ''fm00000'') FROM NIT010 WHERE TRANSFER_ID = :P56_TRANSFER_ID'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Display Id'
,p_pre_element_text=>'<p class="format-size">Transfer ID:</p>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'format-size'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--preTextBlock:t-Form-fieldContainer--normalDisplay'
,p_warn_on_unsaved_changes=>'I'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63411645603132243)
,p_name=>'P56_SEQ_ID'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(20614487229146664)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14055359725524217)
,p_name=>'Onload'
,p_event_sequence=>180
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63409852405132225)
,p_event_id=>wwv_flow_imp.id(14055359725524217)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'CREATE COLLECTIONS'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF APEX_COLLECTION.COLLECTION_EXISTS(p_collection_name => ''ITEM_LINE'') THEN',
'        APEX_COLLECTION.DELETE_COLLECTION(p_collection_name => ''ITEM_LINE'');',
'    END IF;',
'    ',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(p_collection_name => ''ITEM_LINE'');',
'    FOR i IN (',
'        SELECT',
'            nit11.*,',
'            nit1.ITEM_NUM,',
'            nit1.ITEM_DESC,',
'            nim26.UOM_CODE,',
'            nit2.UPC',
'        FROM',
'            NIT011 nit11',
'        LEFT JOIN',
'            NIT001 nit1',
'        ON',
'            nit11.ITEM_ID = nit1.ITEM_ID',
'        LEFT JOIN',
'            NIM026 nim26',
'        ON',
'            nit11.UOM_ID = nim26.UOM_ID',
'        LEFT JOIN',
'            NIT002 nit2',
'        ON',
'            nit11.ITEM_ID = nit2.ITEM_ID',
'        WHERE',
'            nit11.TRANSFER_ID = :P56_TRANSFER_ID AND',
'            nit2.UOM_ID = (SELECT MAX(UOM_ID) FROM NIT002 WHERE ITEM_ID = nit11.ITEM_ID)',
'        ORDER BY',
'            nit11.CREATE_DATE,',
'            nit11.UPDATE_DATE',
'    ) LOOP',
'        APEX_COLLECTION.ADD_MEMBER(',
'            p_collection_name => ''ITEM_LINE'',',
'            p_c001            => i.ITEM_NUM,',
'            p_c002            => i.UPC,',
'            p_c003            => i.ITEM_DESC,',
'            p_c004            => i.UOM_CODE,',
'            p_n001            => i.QTY,',
'            p_n002            => i.ITEM_ID,',
'            p_n003            => i.UOM_ID,',
'            p_n004            => i.ITEM_ID,',
'            p_n005            => i.UOM_ID);',
'    END LOOP;',
'END;'))
,p_attribute_02=>'P56_TRANSFER_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18922292807729240)
,p_event_id=>wwv_flow_imp.id(14055359725524217)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(() => {',
'    apex.region("itemLine").refresh();',
'    selectFirstRow("itemLine");',
'    setTimeout(() => {',
'        $(".a-GV-cell").first().trigger("dblclick");',
'    }, "500");',
'}, "200");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20632027030030334)
,p_name=>'Change Selection'
,p_event_sequence=>290
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(20629835810030312)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20632140453030335)
,p_event_id=>wwv_flow_imp.id(20632027030030334)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var selectedItem;',
'var selectedUom;',
'var selectedNum;',
'var selectedUpc;',
'var selectedDesc;',
'var selectedCode;',
'model=this.data.model;',
'',
'if(this.data != null){',
'    if(this.data.selectedRecords[0] != null){',
'        selectedItem = model.getValue(this.data.selectedRecords[0], "NEW_ITEM_ID");',
'        selectedUom = model.getValue(this.data.selectedRecords[0], "NEW_UOM_ID");',
'        selectedNum = model.getValue(this.data.selectedRecords[0], "ITEM_NUM");',
'        selectedUpc = model.getValue(this.data.selectedRecords[0], "UPC");',
'        selectedDesc = model.getValue(this.data.selectedRecords[0], "ITEM_DESC");',
'        selectedCode = model.getValue(this.data.selectedRecords[0], "UOM_CODE");',
'    }',
'}',
'apex.item("P56_NEW_ITEM").setValue(selectedItem);',
'apex.item("P56_NEW_UOM").setValue(selectedUom);',
'apex.item("P56_NUM").setValue(selectedNum);',
'apex.item("P56_UPC").setValue(selectedUpc);',
'apex.item("P56_DESC").setValue(selectedDesc);',
'apex.item("P56_NEW_UOM_CODE").setValue(selectedCode);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20632222941030336)
,p_name=>'Field Changed'
,p_event_sequence=>300
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'addItem'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64541714878430036)
,p_event_id=>wwv_flow_imp.id(20632222941030336)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'ADD TO COLLECTION'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P56_SEQ_ID := APEX_COLLECTION.ADD_MEMBER (',
'        p_collection_name => ''ITEM_LINE'',',
'        p_c001 => :P56_NUM,',
'        p_c002 => :P56_UPC,',
'        p_c003 => :P56_DESC,',
'        p_n001 => 1,',
'        p_c004 => :P56_NEW_UOM_CODE,',
'        p_n002 => :P56_NEW_ITEM,',
'        p_n003 => :P56_NEW_UOM',
'    );',
'END;'))
,p_attribute_02=>'P56_NUM,P56_UPC,P56_DESC,P56_QTY,P56_NEW_UOM_CODE,P56_NEW_ITEM,P56_NEW_UOM,P56_ITEM_ID,P56_UOM_ID'
,p_attribute_03=>'P56_SEQ_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P56_ITEM_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64324033697101505)
,p_event_id=>wwv_flow_imp.id(20632222941030336)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'UPDATE COLLECTION'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    APEX_COLLECTION.UPDATE_MEMBER (',
'        p_collection_name => ''ITEM_LINE'',',
'        p_seq => :P56_SEQ_ID,',
'        p_c001 => :P56_NUM,',
'        p_c002 => :P56_UPC,',
'        p_c003 => :P56_DESC,',
'        p_n001 => 1,',
'        p_c004 => :P56_NEW_UOM_CODE,',
'        p_n002 => :P56_NEW_ITEM,',
'        p_n003 => :P56_NEW_UOM,',
'        p_n004 => :P56_ITEM_ID,',
'        p_n005 => :P56_UOM_ID',
'    );',
'END;'))
,p_attribute_02=>'P56_SEQ_ID,P56_NUM,P56_UPC,P56_DESC,P56_QTY,P56_NEW_UOM_CODE,P56_NEW_ITEM,P56_NEW_UOM,P56_ITEM_ID,P56_UOM_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P56_ITEM_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22245897033888803)
,p_event_id=>wwv_flow_imp.id(20632222941030336)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>'Change col vals'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var grid = apex.region(''itemLine'').widget().interactiveGrid(''getViews'',''grid'');',
'var model = grid.model;',
'var record = grid.getSelectedRecords();',
'',
'record.forEach(function(object, index){',
'    rec = record[index];',
'    model.setValue(rec,''ITEM_NUM'',$v("P56_NUM"));',
'    model.setValue(rec,''UPC'',$v("P56_UPC"));',
'    model.setValue(rec,''ITEM_DESCRIPTION'',$v("P56_DESC"));',
'    model.setValue(rec,''QTY'',''1'');',
'    model.setValue(rec,''UOM'',$v("P56_NEW_UOM_CODE"));',
'    model.setValue(rec,''ITEM_ID'',$v("P56_NEW_ITEM"));',
'    model.setValue(rec,''UOM_ID'',$v("P56_NEW_UOM"));',
'})',
'',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21417087637662244)
,p_event_id=>wwv_flow_imp.id(20632222941030336)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(20629835810030312)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21417573612662249)
,p_event_id=>wwv_flow_imp.id(20632222941030336)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_name=>'GoTo QTY'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var ig$ = apex.region("itemLine").widget().interactiveGrid("getViews").grid.view$;',
'var activeRecordId = ig$.grid("getActiveRecordId");',
'',
'',
'apex.item("P56_NUM").setValue(null);',
'apex.item("P56_UPC").setValue(null);',
'apex.item("P56_DESC").setValue(null);',
'apex.item("P56_ITEM_ID").setValue($v("P56_NEW_ITEM"));',
'apex.item("P56_UOM_ID").setValue($v("P56_NEW_UOM"));',
'',
'setTimeout(function () {',
'    ig$.grid("gotoCell", activeRecordId, "UOM").trigger("dblclick");',
'}, 500);',
'',
'setTimeout(function () {',
'    ig$.grid("gotoCell", activeRecordId, "QTY").trigger("dblclick");',
'}, 1000);',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(62603636064572647)
,p_name=>'on Change NUM'
,p_event_sequence=>350
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(62601618132572627)
,p_triggering_element=>'ITEM_NUM'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63407692291132203)
,p_event_id=>wwv_flow_imp.id(62603636064572647)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P56_NUM'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':ITEM_NUM'
,p_attribute_07=>'ITEM_NUM'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63409264249132219)
,p_event_id=>wwv_flow_imp.id(62603636064572647)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var ig$ = apex.region("itemLine").widget().interactiveGrid("getViews").grid.view$;',
'var activeRecordId = ig$.grid("getActiveRecordId");',
'',
'setTimeout(function () {',
'    ig$.grid("gotoCell", activeRecordId, "QTY").trigger("dblclick");',
'}, 200);'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(62603738989572648)
,p_event_id=>wwv_flow_imp.id(62603636064572647)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(20629835810030312)
,p_client_condition_type=>'NULL'
,p_client_condition_elem_type=>'ITEM'
,p_client_condition_element=>'P56_NEW_ITEM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63407580171132202)
,p_event_id=>wwv_flow_imp.id(62603636064572647)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(20629835810030312)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(62603804297572649)
,p_event_id=>wwv_flow_imp.id(62603636064572647)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(function () {',
'    selectFirstRow("itemMasterfile")',
'}, 500);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(64539178243430010)
,p_name=>'on Change UPC'
,p_event_sequence=>360
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(62601618132572627)
,p_triggering_element=>'UPC'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64539239309430011)
,p_event_id=>wwv_flow_imp.id(64539178243430010)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P56_NUM'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':UPC'
,p_attribute_07=>'UPC'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64539316916430012)
,p_event_id=>wwv_flow_imp.id(64539178243430010)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var ig$ = apex.region("itemLine").widget().interactiveGrid("getViews").grid.view$;',
'var activeRecordId = ig$.grid("getActiveRecordId");',
'',
'setTimeout(function () {',
'    ig$.grid("gotoCell", activeRecordId, "QTY").trigger("dblclick");',
'}, 200);'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64539498861430013)
,p_event_id=>wwv_flow_imp.id(64539178243430010)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(20629835810030312)
,p_client_condition_type=>'NULL'
,p_client_condition_elem_type=>'ITEM'
,p_client_condition_element=>'P56_NEW_ITEM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64539554292430014)
,p_event_id=>wwv_flow_imp.id(64539178243430010)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(20629835810030312)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64539628519430015)
,p_event_id=>wwv_flow_imp.id(64539178243430010)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(function () {',
'    selectFirstRow("itemMasterfile")',
'}, 500);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(64539797176430016)
,p_name=>'on Change DESC'
,p_event_sequence=>370
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(62601618132572627)
,p_triggering_element=>'ITEM_DESCRIPTION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64539805546430017)
,p_event_id=>wwv_flow_imp.id(64539797176430016)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P56_NUM'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':ITEM_DESCRIPTION'
,p_attribute_07=>'ITEM_DESCRIPTION'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64539918082430018)
,p_event_id=>wwv_flow_imp.id(64539797176430016)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var ig$ = apex.region("itemLine").widget().interactiveGrid("getViews").grid.view$;',
'var activeRecordId = ig$.grid("getActiveRecordId");',
'',
'setTimeout(function () {',
'    ig$.grid("gotoCell", activeRecordId, "QTY").trigger("dblclick");',
'}, 200);'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64540050472430019)
,p_event_id=>wwv_flow_imp.id(64539797176430016)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(20629835810030312)
,p_client_condition_type=>'NULL'
,p_client_condition_elem_type=>'ITEM'
,p_client_condition_element=>'P56_NEW_ITEM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64540120371430020)
,p_event_id=>wwv_flow_imp.id(64539797176430016)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(20629835810030312)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64540278911430021)
,p_event_id=>wwv_flow_imp.id(64539797176430016)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(function () {',
'    selectFirstRow("itemMasterfile")',
'}, 500);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(62603925542572650)
,p_name=>'onChange Selection'
,p_event_sequence=>380
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(62601618132572627)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63407496922132201)
,p_event_id=>wwv_flow_imp.id(62603925542572650)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var selectedItem;',
'var selectedUom;',
'var selectedSeq;',
'model=this.data.model;',
'',
'if(this.data != null){',
'    if(this.data.selectedRecords[0] != null){',
'        selectedItem = model.getValue(this.data.selectedRecords[0], "ITEM_ID");',
'        selectedUom = model.getValue(this.data.selectedRecords[0], "UOM_ID");',
'        selectedSeq = model.getValue(this.data.selectedRecords[0], "SEQ_ID");',
'    }',
'} ',
'apex.item("P56_ITEM_ID").setValue(selectedItem);',
'apex.item("P56_UOM_ID").setValue(selectedUom);',
'apex.item("P56_SEQ_ID").setValue(selectedSeq);',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(64326273525101527)
,p_name=>'return'
,p_event_sequence=>390
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(64326130866101526)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64326487270101529)
,p_event_id=>wwv_flow_imp.id(64326273525101527)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P56_PREPARED_URL := apex_page.get_url(',
'       p_page   => 50,',
'       p_items  => ''P50_PREVIOUS,P50_LAST_ACTION,P50_SELECTED_ID_STORE,P50_SELECTED_ID'',',
'       p_values => 56 || '','' || :P56_ACTION || '','' || :P56_TRANSFER_ID || '','' || :P56_TRANSFER_ID',
'    );',
'',
'    APEX_COLLECTION.DELETE_COLLECTION(p_collection_name => ''ITEM_LINE'');',
'END;'))
,p_attribute_02=>'P56_ACTION,P56_TRANSFER_ID'
,p_attribute_03=>'P56_PREPARED_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64326558966101530)
,p_event_id=>wwv_flow_imp.id(64326273525101527)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P56_PREPARED_URL");',
'apex.navigation.redirect(url);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(64327790102101542)
,p_name=>'When Enter'
,p_event_sequence=>400
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(64327641074101541)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64328089753101545)
,p_event_id=>wwv_flow_imp.id(64327790102101542)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    FOR i IN (SELECT',
'                n001,',
'                n002,',
'                n003,',
'                n004,',
'                n005',
'              FROM',
'                APEX_COLLECTIONS',
'              WHERE',
'                COLLECTION_NAME = ''ITEM_LINE''            ',
'            )',
'    ',
'    LOOP',
'        BEGIN',
'            IF i.n004 IS NULL AND i.n005 IS NULL THEN',
'                INSERT INTO NIT011 (TRANSFER_ID, ITEM_ID, QTY, CREATE_USER, CREATE_DATE, UOM_ID)',
'                VALUES (:P56_TRANSFER_ID, i.n002, i.n001, :APP_USER, SYSDATE, i.n003);                                ',
'            ELSIF i.n001 = 0 THEN',
'                DELETE FROM NIT011',
'                WHERE ITEM_ID = i.n004 AND UOM_ID = i.n005;',
'            ELSE',
'                UPDATE NIT011',
'                SET ITEM_ID = i.n002,',
'                    QTY = i.n001,',
'                    UPDATE_USER = :APP_USER,',
'                    UPDATE_DATE = SYSDATE,',
'                    UOM_ID = i.n003',
'                WHERE',
'                    TRANSFER_ID = :P56_TRANSFER_ID AND',
'                    ITEM_ID = i.n004 AND',
'                    UOM_ID = i.n005;',
'            END IF;',
'        EXCEPTION',
'            WHEN DUP_VAL_ON_INDEX THEN',
'                UPDATE NIT011',
'                SET ITEM_ID = i.n002,',
'                    QTY = i.n001,',
'                    UPDATE_USER = :APP_USER,',
'                    UPDATE_DATE = SYSDATE,',
'                    UOM_ID = i.n003',
'                WHERE',
'                    TRANSFER_ID = :P56_TRANSFER_ID AND',
'                    ITEM_ID = i.n004 AND',
'                    UOM_ID = i.n005;',
'        END;          ',
'    END LOOP;',
'END;'))
,p_attribute_02=>'P56_TRANSFER_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'apex.region("itemLine").widget().interactiveGrid("getActions").get("edit")'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64328156379101546)
,p_event_id=>wwv_flow_imp.id(64327790102101542)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(() => {',
'    $("#esc").trigger(''click'');',
'}, "600");'))
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'apex.region("itemLine").widget().interactiveGrid("getActions").get("edit")'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(64328240334101547)
,p_name=>'on Enter NUM'
,p_event_sequence=>410
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(62601618132572627)
,p_triggering_element=>'ITEM_NUM'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'this.browserEvent.key?.toLowerCase() === "enter" && ',
'!this.browserEvent.shiftKey'))
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64539086673430009)
,p_event_id=>wwv_flow_imp.id(64328240334101547)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'this.browserEvent.stopPropagation();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65583646831220514)
,p_event_id=>wwv_flow_imp.id(64328240334101547)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P56_NEW_ITEM,P56_NEW_UOM'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'NULL'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64328372450101548)
,p_event_id=>wwv_flow_imp.id(64328240334101547)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("#enter").trigger(''click'')'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(64538229855430001)
,p_name=>'on Enter UPC'
,p_event_sequence=>420
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(62601618132572627)
,p_triggering_element=>'UPC'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'this.browserEvent.key?.toLowerCase() === "enter" && ',
'!this.browserEvent.shiftKey'))
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64538996982430008)
,p_event_id=>wwv_flow_imp.id(64538229855430001)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'this.browserEvent.stopPropagation();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65583791056220515)
,p_event_id=>wwv_flow_imp.id(64538229855430001)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P56_NEW_ITEM,P56_NEW_UOM'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'NULL'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64538322381430002)
,p_event_id=>wwv_flow_imp.id(64538229855430001)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("#enter").trigger(''click'')'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(64538431899430003)
,p_name=>'on Enter DESC'
,p_event_sequence=>430
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(62601618132572627)
,p_triggering_element=>'ITEM_DESCRIPTION'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'this.browserEvent.key?.toLowerCase() === "enter" && ',
'!this.browserEvent.shiftKey'))
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64538855648430007)
,p_event_id=>wwv_flow_imp.id(64538431899430003)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'this.browserEvent.stopPropagation();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65583919090220517)
,p_event_id=>wwv_flow_imp.id(64538431899430003)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P56_NEW_ITEM,P56_NEW_UOM'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'NULL'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64538568720430004)
,p_event_id=>wwv_flow_imp.id(64538431899430003)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("#enter").trigger(''click'')'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(64538666787430005)
,p_name=>'on Enter QTY'
,p_event_sequence=>440
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(62601618132572627)
,p_triggering_element=>'QTY'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'this.browserEvent.key?.toLowerCase() === "enter" && ',
'!this.browserEvent.shiftKey'))
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64327990902101544)
,p_event_id=>wwv_flow_imp.id(64538666787430005)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'this.browserEvent.stopPropagation();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64671208455531927)
,p_event_id=>wwv_flow_imp.id(64538666787430005)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P56_QTY'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.triggeringElement.value'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64671108701531926)
,p_event_id=>wwv_flow_imp.id(64538666787430005)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'        p_collection_name => ''ITEM_LINE'',',
'        p_seq => TO_NUMBER(:P56_SEQ_ID),',
'        p_attr_number => 1,',
'        p_number_value => TO_NUMBER(:P56_QTY));',
'END;'))
,p_attribute_02=>'P56_SEQ_ID,P56_QTY'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64538798858430006)
,p_event_id=>wwv_flow_imp.id(64538666787430005)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("#enter").trigger(''click'')'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(64668917764531904)
,p_name=>'on Enter UOM'
,p_event_sequence=>450
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(62601618132572627)
,p_triggering_element=>'UOM'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'this.browserEvent.key?.toLowerCase() === "enter" && ',
'!this.browserEvent.shiftKey'))
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64669098028531905)
,p_event_id=>wwv_flow_imp.id(64668917764531904)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'this.browserEvent.stopPropagation();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64669631317531911)
,p_event_id=>wwv_flow_imp.id(64668917764531904)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("#enter").trigger(''click'')'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(64542838117430047)
,p_name=>'onChange'
,p_event_sequence=>460
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(62601618132572627)
,p_triggering_element=>'UOM'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64670583248531920)
,p_event_id=>wwv_flow_imp.id(64542838117430047)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P56_UOM_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    UOM_ID',
'FROM',
'    NIM026',
'WHERE',
'    UPPER(UOM_CODE) = UPPER(:UOM)'))
,p_attribute_07=>'UOM'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64543134705430050)
,p_event_id=>wwv_flow_imp.id(64542838117430047)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_uom_code VARCHAR(5);',
'BEGIN',
'    SELECT',
'        UOM_CODE',
'    INTO',
'        l_uom_code',
'    FROM',
'        NIM026',
'    WHERE',
'        UOM_ID = :P56_UOM_ID;',
'',
'    APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'        p_collection_name => ''ITEM_LINE'',',
'        p_seq => TO_NUMBER(:P56_SEQ_ID),',
'        p_attr_number => 4,',
'        p_attr_value => l_uom_code);',
'    ',
'    APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'        p_collection_name => ''ITEM_LINE'',',
'        p_seq => TO_NUMBER(:P56_SEQ_ID),',
'        p_attr_number => 3,',
'        p_number_value => TO_NUMBER(:P56_UOM_ID));',
'END;'))
,p_attribute_02=>'P56_SEQ_ID,P56_UOM_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(64670718818531922)
,p_name=>'onChange QTY'
,p_event_sequence=>470
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(62601618132572627)
,p_triggering_element=>'QTY'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64670821880531923)
,p_event_id=>wwv_flow_imp.id(64670718818531922)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P56_QTY'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.triggeringElement.value'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64670920938531924)
,p_event_id=>wwv_flow_imp.id(64670718818531922)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'        p_collection_name => ''ITEM_LINE'',',
'        p_seq => TO_NUMBER(:P56_SEQ_ID),',
'        p_attr_number => 1,',
'        p_number_value => TO_NUMBER(:P56_QTY));',
'END;'))
,p_attribute_02=>'P56_SEQ_ID,P56_QTY'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(63409634988132223)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(62601618132572627)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Line Items - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>63409634988132223
);
wwv_flow_imp.component_end;
end;
/
