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
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#js/cmn#MIN#.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let lastSelected = null;',
'const p56KeyMap = {',
'',
'    escape : (v) => {',
'        if(!($(''#itemMasterfile'').is('':visible''))){',
'            $.event.trigger("exit");',
'        }',
'        ',
'    },',
'',
'    enter : (v) => {',
'        if($(''#itemMasterfile'').is('':visible'')){',
'            $.event.trigger("addItem");',
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
'setTitle("Item Line");'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Header .t-Header-branding {',
'    background-color: white !important;',
'    color: rgb(30, 58, 138) !important;',
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
 p_id=>wwv_flow_imp.id(14514614085354942)
,p_plug_name=>'Line Items'
,p_region_name=>'lineItem'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>40
,p_plug_grid_column_span=>10
,p_plug_display_column=>2
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    seq_id,',
'    c001,',
'    c004,',
'    c002,',
'    n002,',
'    c003,',
'    n003,',
'    n004',
'FROM',
'    APEX_COLLECTIONS',
'WHERE',
'    COLLECTION_NAME = ''ITEM LINE'';'))
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
 p_id=>wwv_flow_imp.id(14514851836354944)
,p_name=>'SEQ_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SEQ_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14514936538354945)
,p_name=>'C001'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'C001'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Item Number'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_imp.id(14515166688354947)
,p_name=>'C002'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'C002'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Item Description'
,p_heading_alignment=>'CENTER'
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
 p_id=>wwv_flow_imp.id(14515264480354948)
,p_name=>'N002'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'N002'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Qty'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
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
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14515317963354949)
,p_name=>'C003'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'C003'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'UOM'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET_FILTER'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    UOM_CODE as d,',
'    UOM_CODE AS r',
'FROM',
'    NIM026',
'WHERE',
'    UOM_ID IN (SELECT UOM_ID FROM NIT002 WHERE ITEM_ID = :P56_ITEM_ID)',
'    '))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_lov_cascade_parent_items=>'N003'
,p_ajax_items_to_submit=>'P56_ITEM_ID'
,p_ajax_optimize_refresh=>true
,p_filter_is_required=>false
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
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14515434231354950)
,p_name=>'N003'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'N003'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>70
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(15246459314369601)
,p_name=>'N004'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'N004'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>80
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(22248066518888825)
,p_name=>'C004'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'C004'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'UPC'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(14514770340354943)
,p_internal_uid=>14514770340354943
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_update_authorization_scheme=>'MUST_NOT_BE_PUBLIC_USER'
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
 p_id=>wwv_flow_imp.id(15252099844371198)
,p_interactive_grid_id=>wwv_flow_imp.id(14514770340354943)
,p_static_id=>'152521'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(15252297906371198)
,p_report_id=>wwv_flow_imp.id(15252099844371198)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15252785618371204)
,p_view_id=>wwv_flow_imp.id(15252297906371198)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(14514851836354944)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15253630496371210)
,p_view_id=>wwv_flow_imp.id(15252297906371198)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(14514936538354945)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15255483053371225)
,p_view_id=>wwv_flow_imp.id(15252297906371198)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(14515166688354947)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15256319848371231)
,p_view_id=>wwv_flow_imp.id(15252297906371198)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(14515264480354948)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15257251643371239)
,p_view_id=>wwv_flow_imp.id(15252297906371198)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(14515317963354949)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15258023160371246)
,p_view_id=>wwv_flow_imp.id(15252297906371198)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(14515434231354950)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15258925124371254)
,p_view_id=>wwv_flow_imp.id(15252297906371198)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(15246459314369601)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(23664428714548165)
,p_view_id=>wwv_flow_imp.id(15252297906371198)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(22248066518888825)
,p_is_visible=>true
,p_is_frozen=>false
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
,p_name=>'UOM_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UOM_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(20630571368030319)
,p_name=>'ITEM_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEM_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
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
,p_use_as_row_header=>false
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13412835074070304)
,p_name=>'P56_TRANSFER_ID'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(20614487229146664)
,p_use_cache_before_default=>'NO'
,p_pre_element_text=>'<p class="format-size">Transfer ID:</p>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'format-size'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--preTextBlock:t-Form-fieldContainer--normalDisplay'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13414286825070318)
,p_name=>'P56_FROMWAREHOUSE'
,p_item_sequence=>100
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
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(20614487229146664)
,p_pre_element_text=>'<p class="format-size">Transfer Destination Location:</p>'
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
 p_id=>wwv_flow_imp.id(13414476068070320)
,p_name=>'P56_DELIVERYMAN'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(20614487229146664)
,p_pre_element_text=>'<p class="format-size">Delivery Man:</p>'
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
 p_id=>wwv_flow_imp.id(13414544836070321)
,p_name=>'P56_DATE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(20614487229146664)
,p_pre_element_text=>'<p class="format-size">Date:</p>'
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
 p_id=>wwv_flow_imp.id(13414668158070322)
,p_name=>'P56_RECEIVER'
,p_item_sequence=>140
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
 p_id=>wwv_flow_imp.id(13778569069768143)
,p_name=>'P56_NUM'
,p_item_sequence=>70
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
,p_item_sequence=>30
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
,p_item_sequence=>60
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
,p_item_sequence=>50
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
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14055359725524217)
,p_name=>'Onload'
,p_event_sequence=>180
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14055473321524218)
,p_event_id=>wwv_flow_imp.id(14055359725524217)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_name=>'CREATE COLLECTION'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(p_collection_name => ''ITEM LINE'');                    ',
'    FOR i IN (SELECT',
'                    nit1.ITEM_NUM,',
'                    nit2.UPC,',
'                    nit1.ITEM_DESC,',
'                    nit11.QTY,',
'                    nim26.UOM_CODE,',
'                    nit11.ITEM_ID,',
'                    nit11.UOM_ID',
'                FROM',
'                    NIT001 nit1,',
'                    NIT002 nit2,',
'                    NIT011 nit11,',
'                    NIM026 nim26',
'                WHERE',
'                    nit11.transfer_id = :P56_TRANSFER_ID AND',
'                    (nit11.item_id = nit2.item_id AND nit2.uom_id = (SELECT MAX(uom_id) FROM NIT002 WHERE item_id = nit11.item_id)) AND',
'                    nit11.item_id = nit1.item_id AND',
'                    nit11.uom_id = nim26.uom_id',
'                ORDER BY',
'                    nit11.CREATE_DATE',
'                )',
'    LOOP',
'        APEX_COLLECTION.ADD_MEMBER(',
'            p_collection_name => ''ITEM LINE'',',
'            p_c001 => i.ITEM_NUM,',
'            p_c004 => i.UPC,',
'            p_c002 => i.ITEM_DESC,',
'            p_n002 => i.QTY,',
'            p_c003 => i.UOM_CODE,',
'            p_n003 => i.ITEM_ID,',
'            p_n004 => i.UOM_ID',
'        );',
'    END LOOP;',
'',
'    APEX_COLLECTION.ADD_MEMBER(',
'        p_collection_name => ''ITEM LINE'',',
'        p_c001 => NULL,',
'        p_c004 => NULL,',
'        p_c002 => NULL,',
'        p_n002 => NULL,',
'        p_c003 => NULL,',
'        p_n003 => NULL,',
'        p_n004 => NULL',
'    );',
'END;'))
,p_attribute_02=>'P56_TRANSFER_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15250391676369640)
,p_event_id=>wwv_flow_imp.id(14055359725524217)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(function () {',
'    var ig = apex.region("lineItem");',
'    var view = ig.widget().interactiveGrid("getViews","grid");',
'    view.model.clearChanges();',
'    ig.refresh();',
'}, 100);'))
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
'  $( document ).ready(function() {',
'    $(".a-GV-cell").first().trigger("dblclick");',
' });',
'}, "300");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(15246561277369602)
,p_name=>'Change UPC'
,p_event_sequence=>220
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(14514614085354942)
,p_triggering_element=>'C004'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'!$(''#itemMasterfile'').is('':visible'')'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22246367601888808)
,p_event_id=>wwv_flow_imp.id(15246561277369602)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var ig$ = apex.region("lineItem").widget().interactiveGrid("getViews").grid.view$;',
'var activeRecordId = ig$.grid("getActiveRecordId");',
'ig$.grid("gotoCell", activeRecordId, "C004");'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20989829741487401)
,p_event_id=>wwv_flow_imp.id(15246561277369602)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P56_UPC'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':C004'
,p_attribute_07=>'C004'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20989986954487402)
,p_event_id=>wwv_flow_imp.id(15246561277369602)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(20629835810030312)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20990044321487403)
,p_event_id=>wwv_flow_imp.id(15246561277369602)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(20629835810030312)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20990184963487404)
,p_event_id=>wwv_flow_imp.id(15246561277369602)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if(this.data != null){',
'    if(this.data.selectedRecords[0] != null){',
'        refocusOnIG("itemMasterfile", "ITEM_NUM", this.data.selectedRecords[0]);',
'    }',
'}',
'',
'setTimeout(() => {',
'    $( document ).ready(function() {',
'        $("#itemMasterfile .a-GV-cell").first().trigger("click");',
'    });',
'}, "500");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(15246804581369605)
,p_name=>'Change Qty'
,p_event_sequence=>230
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(14514614085354942)
,p_triggering_element=>'N002'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20990345577487406)
,p_event_id=>wwv_flow_imp.id(15246804581369605)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P56_QTY'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':N002'
,p_attribute_07=>'N002'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15246934631369606)
,p_event_id=>wwv_flow_imp.id(15246804581369605)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P56_QTY = 0 THEN',
'        DELETE FROM NIT011',
'        WHERE ',
'            transfer_id = :P56_TRANSFER_ID AND ',
'            item_id = :P56_ITEM_ID AND',
'            uom_id = :P56_UOM_ID;',
'    ELSE',
'        UPDATE NIT011',
'        SET QTY = :P56_QTY',
'        WHERE ',
'            transfer_id = :P56_TRANSFER_ID AND ',
'            item_id = :P56_ITEM_ID AND',
'            uom_id = :P56_UOM_ID;',
'    END IF;',
'END;'))
,p_attribute_02=>'P56_TRANSFER_ID,P56_ITEM_ID,P56_UOM_ID,P56_QTY'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20990543396487408)
,p_event_id=>wwv_flow_imp.id(15246804581369605)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'this.triggeringElement.blur();',
'',
'setTimeout(function () {',
'    var ig = apex.region("lineItem");',
'    var view = ig.widget().interactiveGrid("getViews","grid");',
'    view.model.clearChanges();',
'}, 300);'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21416564450662239)
,p_event_id=>wwv_flow_imp.id(15246804581369605)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'N002'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(15248006225369617)
,p_name=>'Change Item Num'
,p_event_sequence=>240
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(14514614085354942)
,p_triggering_element=>'C001'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'!$(''#itemMasterfile'').is('':visible'')'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21417497329662248)
,p_event_id=>wwv_flow_imp.id(15248006225369617)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Stay on Row'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var ig$ = apex.region("lineItem").widget().interactiveGrid("getViews").grid.view$;',
'var activeRecordId = ig$.grid("getActiveRecordId");',
'ig$.grid("gotoCell", activeRecordId, "C001");',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20630781974030321)
,p_event_id=>wwv_flow_imp.id(15248006225369617)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P56_NUM'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':C001'
,p_attribute_07=>'C001'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20630688123030320)
,p_event_id=>wwv_flow_imp.id(15248006225369617)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(20629835810030312)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20630911619030323)
,p_event_id=>wwv_flow_imp.id(15248006225369617)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(20629835810030312)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20631722368030331)
,p_event_id=>wwv_flow_imp.id(15248006225369617)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_name=>'Focus on Masterfile'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if(this.data != null){',
'    if(this.data.selectedRecords[0] != null){',
'        refocusOnIG("itemMasterfile", "ITEM_NUM", this.data.selectedRecords[0]);',
'    }',
'}',
'',
'setTimeout(() => {',
'    $( document ).ready(function() {',
'        $("#itemMasterfile .a-GV-cell").first().trigger("click");',
'    });',
'}, "500");',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(15248538096369622)
,p_name=>'Change Desc'
,p_event_sequence=>250
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(14514614085354942)
,p_triggering_element=>'C002'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'!$(''#itemMasterfile'').is('':visible'')'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22246434778888809)
,p_event_id=>wwv_flow_imp.id(15248538096369622)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var ig$ = apex.region("lineItem").widget().interactiveGrid("getViews").grid.view$;',
'var activeRecordId = ig$.grid("getActiveRecordId");',
'ig$.grid("gotoCell", activeRecordId, "C002");'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20632901404030343)
,p_event_id=>wwv_flow_imp.id(15248538096369622)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P56_UPC'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':C002'
,p_attribute_07=>'C002'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20633079629030344)
,p_event_id=>wwv_flow_imp.id(15248538096369622)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(20629835810030312)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20633113453030345)
,p_event_id=>wwv_flow_imp.id(15248538096369622)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(20629835810030312)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20633249199030346)
,p_event_id=>wwv_flow_imp.id(15248538096369622)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if(this.data != null){',
'    if(this.data.selectedRecords[0] != null){',
'        refocusOnIG("itemMasterfile", "ITEM_NUM", this.data.selectedRecords[0]);',
'    }',
'}',
'',
'setTimeout(() => {',
'    $( document ).ready(function() {',
'        $("#itemMasterfile .a-GV-cell").first().trigger("click");',
'    });',
'}, "500");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(15248927719369626)
,p_name=>'Select Item Num'
,p_event_sequence=>260
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(14514614085354942)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15249084728369627)
,p_event_id=>wwv_flow_imp.id(15248927719369626)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var selectedItem;',
'var selectedUom;',
'model=this.data.model;',
'',
'if(this.data != null){',
'    if(this.data.selectedRecords[0] != null){',
'        // refocusOnIG("lineItem", "C001", this.data.selectedRecords[0]);',
'        selectedItem = model.getValue(this.data.selectedRecords[0], "N003");',
'        selectedUom = model.getValue(this.data.selectedRecords[0], "N004");',
'    }',
'} ',
'apex.item("P56_ITEM_ID").setValue(selectedItem);',
'apex.item("P56_UOM_ID").setValue(selectedUom);',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(15250568555369642)
,p_name=>'Change UOM'
,p_event_sequence=>270
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(14514614085354942)
,p_triggering_element=>'C003'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15250660626369643)
,p_event_id=>wwv_flow_imp.id(15250568555369642)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    UPDATE NIT011',
'    SET UOM_ID = (SELECT UOM_ID FROM NIM026 WHERE LOWER(UOM_CODE) = LOWER(:C003))',
'    WHERE ',
'        transfer_id = :P56_TRANSFER_ID AND ',
'        item_id = :P56_ITEM_ID AND',
'        uom_id = :P56_UOM_ID;',
'END;'))
,p_attribute_02=>'P56_TRANSFER_ID,P56_ITEM_ID,P56_UOM_ID,C003'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15250740008369644)
,p_event_id=>wwv_flow_imp.id(15250568555369642)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// this.triggeringElement.blur();',
'',
'// setTimeout(function () {',
'//     var ig = apex.region("lineItem");',
'//     var view = ig.widget().interactiveGrid("getViews","grid");',
'//     view.model.clearChanges();',
'// }, 100);',
'',
'setTimeout(() => {',
'  $( document ).ready(function() {',
'    $(".a-GV-cell").first().trigger("dblclick");',
' });',
'}, 300);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16030106164346130)
,p_name=>'Exit'
,p_event_sequence=>280
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'exit'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16030274118346131)
,p_event_id=>wwv_flow_imp.id(16030106164346130)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P56_PREPARED_URL := apex_page.get_url(',
'       p_page   => 50,',
'       p_items  => ''P50_PREVIOUS'',',
'       p_values => 56',
'    );',
'END;'))
,p_attribute_03=>'P56_PREPARED_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16030399225346132)
,p_event_id=>wwv_flow_imp.id(16030106164346130)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P56_PREPARED_URL");',
'apex.navigation.redirect(url);'))
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
'        selectedItem = model.getValue(this.data.selectedRecords[0], "ITEM_ID");',
'        selectedUom = model.getValue(this.data.selectedRecords[0], "UOM_ID");',
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
 p_id=>wwv_flow_imp.id(20632310359030337)
,p_event_id=>wwv_flow_imp.id(20632222941030336)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'Update Table'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN    ',
'    UPDATE NIT011',
'    SET ITEM_ID = :P56_NEW_ITEM, UOM_ID = :P56_NEW_UOM, UPDATE_USER = :APP_USER, UPDATE_DATE = SYSDATE()',
'    WHERE TRANSFER_ID = :P56_TRANSFER_ID AND',
'          ITEM_ID = :P56_ITEM_ID AND',
'          UOM_ID = :P56_UOM_ID;',
'END;'))
,p_attribute_02=>'P56_ITEM_ID,P56_UOM_ID,P56_TRANSFER_ID,P56_NEW_ITEM,P56_NEW_UOM'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P56_ITEM_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21416781390662241)
,p_event_id=>wwv_flow_imp.id(20632222941030336)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_name=>'Add Item'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'INSERT INTO NIT011 VALUES (:P56_TRANSFER_ID, :P56_NEW_ITEM, 1, :APP_USER, SYSDATE(), '''', '''', :P56_NEW_UOM);'
,p_attribute_02=>'P56_TRANSFER_ID,P56_NEW_ITEM,P56_NEW_UOM'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P56_ITEM_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22246567496888810)
,p_event_id=>wwv_flow_imp.id(20632222941030336)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.region("lineItem").widget().interactiveGrid("getActions").invoke("selection-add-row");',
'',
''))
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P56_ITEM_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22245897033888803)
,p_event_id=>wwv_flow_imp.id(20632222941030336)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_name=>'Change col vals'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var grid = apex.region(''lineItem'').widget().interactiveGrid(''getViews'',''grid'');',
'var model = grid.model;',
'var record = grid.getSelectedRecords();',
'',
'record.forEach(function(object, index){',
'    rec = record[index];',
'    model.setValue(rec,''C001'',apex.item( "P56_NUM" ).getValue());',
'    model.setValue(rec,''C004'',apex.item( "P56_UPC" ).getValue());',
'    model.setValue(rec,''C002'',apex.item( "P56_DESC" ).getValue());',
'    model.setValue(rec,''N002'',1);',
'    model.setValue(rec,''C003'',apex.item( "P56_NEW_UOM_CODE" ).getValue());',
'    model.setValue(rec,''N003'',apex.item( "P56_NEW_ITEM" ).getValue());',
'    model.setValue(rec,''N004'',apex.item( "P56_NEW_UOM" ).getValue());',
'})',
'',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23972094766210943)
,p_event_id=>wwv_flow_imp.id(20632222941030336)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'Y'
,p_name=>'CREATE COLLECTION'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(p_collection_name => ''ITEM LINE'');                    ',
'    FOR i IN (SELECT',
'                    nit1.ITEM_NUM,',
'                    nit2.UPC,',
'                    nit1.ITEM_DESC,',
'                    nit11.QTY,',
'                    nim26.UOM_CODE,',
'                    nit11.ITEM_ID,',
'                    nit11.UOM_ID',
'                FROM',
'                    NIT001 nit1,',
'                    NIT002 nit2,',
'                    NIT011 nit11,',
'                    NIM026 nim26',
'                WHERE',
'                    nit11.transfer_id = :P56_TRANSFER_ID AND',
'                    (nit11.item_id = nit2.item_id AND nit2.uom_id = (SELECT MAX(uom_id) FROM NIT002 WHERE item_id = nit11.item_id)) AND',
'                    nit11.item_id = nit1.item_id AND',
'                    nit11.uom_id = nim26.uom_id',
'                ORDER BY',
'                    nit11.CREATE_DATE',
'                )',
'    LOOP',
'        APEX_COLLECTION.ADD_MEMBER(',
'            p_collection_name => ''ITEM LINE'',',
'            p_c001 => i.ITEM_NUM,',
'            p_c004 => i.UPC,',
'            p_c002 => i.ITEM_DESC,',
'            p_n002 => i.QTY,',
'            p_c003 => i.UOM_CODE,',
'            p_n003 => i.ITEM_ID,',
'            p_n004 => i.UOM_ID',
'        );',
'    END LOOP;',
'',
'    APEX_COLLECTION.ADD_MEMBER(',
'        p_collection_name => ''ITEM LINE'',',
'        p_c001 => NULL,',
'        p_c004 => NULL,',
'        p_c002 => NULL,',
'        p_n002 => NULL,',
'        p_c003 => NULL,',
'        p_n003 => NULL,',
'        p_n004 => NULL',
'    );',
'END;'))
,p_attribute_02=>'P56_TRANSFER_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21417087637662244)
,p_event_id=>wwv_flow_imp.id(20632222941030336)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(20629835810030312)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21417573612662249)
,p_event_id=>wwv_flow_imp.id(20632222941030336)
,p_event_result=>'TRUE'
,p_action_sequence=>140
,p_execute_on_page_init=>'N'
,p_name=>'GoTo QTY'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var ig$ = apex.region("lineItem").widget().interactiveGrid("getViews").grid.view$;',
'var activeRecordId = ig$.grid("getActiveRecordId");',
'',
'',
'apex.item("P56_NUM").setValue(null);',
'apex.item("P56_UPC").setValue(null);',
'apex.item("P56_DESC").setValue(null);',
'apex.item("P56_ITEM_ID").setValue(apex.item( "P56_NEW_ITEM" ).getValue());',
'apex.item("P56_UOM_ID").setValue(apex.item( "P56_NEW_UOM" ).getValue());',
'',
'setTimeout(function () {',
'    ig$.grid("gotoCell", activeRecordId, "C003").trigger("dblclick");',
'}, 200);',
'',
'setTimeout(function () {',
'    ig$.grid("gotoCell", activeRecordId, "N002").trigger("dblclick");',
'}, 300);',
'',
''))
);
wwv_flow_imp.component_end;
end;
/
