prompt --application/pages/page_00122
begin
--   Manifest
--     PAGE: 00122
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
 p_id=>122
,p_name=>'Credit Memo Creator'
,p_alias=>'CREDIT-MEMO-CREATOR'
,p_step_title=>'Credit Memo Creator'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#js/cmn#MIN#.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let lastSelected = null;',
'const p122KeyMap = {',
'    a : (v) => {',
'        if($("#printingOptions").is('':visible'')){',
'            $("#a2").trigger("click");',
'        } else {',
'            $("#a").trigger("click");',
'        }',
'    },',
'',
'    b : (v) => {',
'        if($("#printingOptions").is('':visible'')){',
'            $("#b").trigger("click");',
'        }',
'    },',
'',
'    r : (v) => {',
'        $("#r").trigger("click");',
'    },',
'',
'    p : (v) => {',
'        $("#p").trigger("click");',
'    },',
'',
'    home: (v) => {',
'        $("#top").trigger("click");',
'    },',
'    ',
'    end: (v) => {',
'        $("#bottom").trigger("click");',
'    },',
'',
'    escape: (v) => {',
'        if(!($("#printingOptions").is('':visible''))){',
'            $("#esc").trigger("click");',
'        }     ',
'    }',
'}',
'',
'function mapP122Keys() {',
'    $(document).off(''keydown.p122keyevents'');',
'    $(document).on(''keydown.p122keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p122KeyMap[key]) {',
'            ev.preventDefault();',
'            p122KeyMap[key]();',
'        }',
'    });',
'}',
'',
'function selectFirstRow() {',
'    let region = apex.region("creditMemo")',
'    let view = region.call("getCurrentView"),',
'    model = view.model,',
'    view$ = view.view$; // assumes current view is grid!',
'    ',
'    let rec = model.recordAt(0);',
'    if ( rec ) {',
'        // estimate scroll offset and scroll into view.',
'        let offset,',
'            pi = view$.grid("getPageInfo"),',
'            index = model.indexOf(rec);',
'',
'        offset = index * pi.rowHeight;',
'        // assumes ig scroll is the scroll parent!',
'        $(".a-GV-w-scroll").scrollTop( offset );',
'        // issue sometimes a full page isn''t rendered but',
'        // the user can just scroll a little and it will fill in',
'',
'        view$.grid("setSelectedRecords", [rec], true);',
'    }',
'}',
'',
'function selectLastRow() {',
'    let region = apex.region("creditMemo")',
'    let view = region.call("getCurrentView"),',
'    model = view.model,',
'    view$ = view.view$; // assumes current view is grid!',
'    ',
'    let totalRec = model.getTotalRecords();',
'    let rec = model.recordAt(totalRec - 1);',
'    if ( rec ) {',
'        // estimate scroll offset and scroll into view.',
'        let offset,',
'            pi = view$.grid("getPageInfo"),',
'            index = model.indexOf(rec);',
'',
'        offset = index * pi.rowHeight;',
'        // assumes ig scroll is the scroll parent!',
'        $(".a-GV-w-scroll").scrollTop( offset );',
'        // issue sometimes a full page isn''t rendered but',
'        // the user can just scroll a little and it will fill in',
'',
'        view$.grid("setSelectedRecords", [rec], true);',
'    }',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP122Keys();',
'setTitle("Credit Memo Creator");',
'$("#s").trigger("click");',
'setIGInputFilter($("#refund"), function(value) {  ',
'    var val = parseInt(value);',
'    var limit = parseInt(apex.item("P96_REFUNDABLE").getValue());',
'    var isValid = (limit >= val) || value == '''';',
'    return isValid;',
'}, "Refund Quantity must be lower or equal to refundable quantity");',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-DialogRegion-body{',
'    padding-top: 0;',
'}',
'',
'#printingOptions, #a2, #b {',
'    padding-top: 0;',
'    background-color: #056AC8;',
'    color: white;',
'}',
'',
'#a2, #b{',
'    outline: none;',
'}',
'',
'.t-Header .t-Header-branding {',
'    background-color: white !important;',
'    color: rgb(30, 58, 138) !important;',
'}',
'',
'#returnSummary{',
'    height: 550px;',
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
'body, #content, #nav{',
'    background-color: rgb(30, 58, 138);',
'}',
'',
'table, tr, td, th {',
'    font-size: 1.125rem;',
'    font-family: Arial;',
'}',
'',
'.btns {',
'    font-size: 1.125rem;',
'    font-family: Arial;',
'    background-color: rgb(30, 58, 138);',
'    color: white;',
'    margin-top: 0.5rem;',
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
'    font-size: 1.125rem;',
'    font-family: Arial;',
'    display: flex;',
'    justify-content: space-between;',
'    font-weight: 700;',
'}',
'',
'.a-GV-header a, th.a-GV-header {',
'    background-color: #056BC9;',
'    color: white;',
'}',
'',
'.ui-dialog .ui-dialog-titlebar {',
'    background-color: #056AC8;',
'    color: white;',
'    border-bottom: 0;',
'    padding-bottom: 0.2rem;',
'}',
'',
'',
'.ui-dialog.modal-dialog--pullout{',
'    left: 40% !important;',
'}',
'',
'.ui-dialog-titlebar-close{',
'    display: none;',
'}',
'',
'.ui-dialog-title{',
'    font-size: 1.5rem;',
'    padding-bottom: 0.2rem;',
'    padding-top: 0.2rem;',
'}',
'',
'.a-GV-hdr .a-GV-table {',
'    width: 100% !important;',
'} ',
'',
'.format-size{',
'    color: white;',
'    font-size: 1.125rem;',
'}',
'',
'.input-size{',
'    font-size: 1.125rem;',
'}',
'',
'.title-size{',
'    font-size: 1.5rem;',
'}',
'',
'.title-bar{',
'    text-align: center;',
'    border-bottom: 0;',
'}',
'',
'#esc{',
'    display: none;',
'}'))
,p_step_template=>wwv_flow_imp.id(5671392681337017)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(90030674966048483)
,p_plug_name=>'CM Creator'
,p_region_name=>'creditMemo'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>80
,p_plug_grid_column_span=>8
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    npt2.ITEM_DESC,',
'    npt2.BRAND_CODE,',
'    npt2.DISCOUNTED_PRICE,',
'    npt2.QUANTITY,',
'    npt37.RETURNABLE_QUANTITY,',
'    npt37.RETURN_QUANTITY,',
'    npt37.ITEM_INVOICE_ID,',
'    0 AS "Cumulative Qty"',
'FROM',
'    NPT002 npt2,',
'    NPT033 npt33,',
'    NPT037 npt37',
'WHERE',
'    npt2.ITEM_INVOICE_ID = npt37.ITEM_INVOICE_ID AND',
'    npt2.CASH_INVOICE_ID = npt33.CASH_INVOICE_ID AND',
'    npt33.CASH_INVOICE_ID = :P122_INVOICE_NUMBER AND',
'    (',
'    (:P122_PAGE_MODE = ''inquire'' AND npt37.RETURN_ID = :P122_RETURN_NUMBER) OR ',
'    (:P122_PAGE_MODE = ''add'' AND npt37.RETURN_ID IS NULL)',
'    )'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P122_INVOICE_NUMBER,P122_PAGE_MODE'
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
 p_id=>wwv_flow_imp.id(45601813180188044)
,p_name=>'Cumulative Qty'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'Cumulative Qty'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>140
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(46318728045497912)
,p_name=>'RETURNABLE_QUANTITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RETURNABLE_QUANTITY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Returnable Quantity'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true,',
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
 p_id=>wwv_flow_imp.id(46318857088497913)
,p_name=>'RETURN_QUANTITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RETURN_QUANTITY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Return Quantity'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>130
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
'        noHeaderActivate: true,',
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
 p_id=>wwv_flow_imp.id(90030891875048485)
,p_name=>'ITEM_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEM_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Item Desc'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true,',
'    };',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(90030955873048486)
,p_name=>'BRAND_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BRAND_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Brand Code'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'RIGHT'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true,',
'    };',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(90031087258048487)
,p_name=>'DISCOUNTED_PRICE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISCOUNTED_PRICE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Discounted Price'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'RIGHT'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true,',
'    };',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(90032380385048500)
,p_name=>'ITEM_INVOICE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEM_INVOICE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>150
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true,',
'    };',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(90033581842048512)
,p_name=>'QUANTITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QUANTITY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Quantity'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'CENTER'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true,',
'    };',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(90030737155048484)
,p_internal_uid=>90030737155048484
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
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
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>550
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
'        resizeColumns: true,',
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
 p_id=>wwv_flow_imp.id(90091040583426937)
,p_interactive_grid_id=>wwv_flow_imp.id(90030737155048484)
,p_static_id=>'438192'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(90091258122426937)
,p_report_id=>wwv_flow_imp.id(90091040583426937)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(46298610498188914)
,p_view_id=>wwv_flow_imp.id(90091258122426937)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(45601813180188044)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(46376628619559701)
,p_view_id=>wwv_flow_imp.id(90091258122426937)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(46318728045497912)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(46377591720559718)
,p_view_id=>wwv_flow_imp.id(90091258122426937)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(46318857088497913)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(90091608476426960)
,p_view_id=>wwv_flow_imp.id(90091258122426937)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(90030891875048485)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>184.312
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(90092535909426970)
,p_view_id=>wwv_flow_imp.id(90091258122426937)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(90030955873048486)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>136.425
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(90093458107426979)
,p_view_id=>wwv_flow_imp.id(90091258122426937)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(90031087258048487)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>168.438
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(90107785239514477)
,p_view_id=>wwv_flow_imp.id(90091258122426937)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(90032380385048500)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(90179634925736868)
,p_view_id=>wwv_flow_imp.id(90091258122426937)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(90033581842048512)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>110.43799999999999
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(90031428528048491)
,p_plug_name=>'<span class="title-size">Return Summary</span>'
,p_region_name=>'returnSummary'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>90
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'title-bar'
,p_plug_display_column=>10
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(90194069617785991)
,p_plug_name=>'Printing Options'
,p_region_name=>'printingOptions'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size480x320'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_04'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(46276931896182832)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(90194069617785991)
,p_button_name=>'Dotmatrix'
,p_button_static_id=>'a2'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>A</u> - Dotmatrix'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(46277344090182832)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(90194069617785991)
,p_button_name=>'Graphic'
,p_button_static_id=>'b'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>B</u> - Graphic'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(46272276046182803)
,p_button_sequence=>100
,p_button_name=>'RefundAll'
,p_button_static_id=>'a'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>A</u> - Refund All'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns'
,p_grid_new_row=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(46272659912182804)
,p_button_sequence=>110
,p_button_name=>'RefundReason'
,p_button_static_id=>'r'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>R</u> - Refund Reason'
,p_button_redirect_url=>'f?p=&APP_ID.:97:&SESSION.::&DEBUG.:::'
,p_button_condition=>'P122_PAGE_MODE'
,p_button_condition2=>'add'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_button_css_classes=>'btns'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(46273050755182806)
,p_button_sequence=>120
,p_button_name=>'PrintSummary'
,p_button_static_id=>'p'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>P</u> - Print Refund Summary'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P122_PAGE_MODE'
,p_button_condition2=>'add'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_button_css_classes=>'btns'
,p_grid_new_row=>'N'
,p_grid_column_span=>2
,p_grid_column=>10
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(46273412799182806)
,p_button_sequence=>130
,p_button_name=>'Back'
,p_button_static_id=>'esc'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'esc'
,p_button_redirect_url=>'f?p=&APP_ID.:124:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(90033798154048539)
,p_name=>'P122_RETURN_NUMBER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(90031428528048491)
,p_item_default=>'-'
,p_prompt=>'<span class="input-size">Return Number:</span>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'input-size'
,p_grid_label_column_span=>6
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--normalDisplay'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(90033886023048540)
,p_name=>'P122_DATE_OF_RETURN'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(90031428528048491)
,p_item_default=>'SYSDATE()'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'<span class="input-size">Date:</span>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'input-size'
,p_grid_label_column_span=>6
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--normalDisplay'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(90033996473048541)
,p_name=>'P122_RETURN_QUANTITY'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(90031428528048491)
,p_prompt=>'<span class="input-size">Quantity:</span>'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_qty NUMBER := 0;',
'BEGIN',
'    IF :P122_PAGE_MODE = ''inquire'' THEN',
'        SELECT',
'            SUM(RETURN_QUANTITY)',
'        INTO',
'            l_qty',
'        FROM',
'            NPT037',
'        WHERE',
'            RETURN_ID = :P122_RETURN_NUMBER;',
'    END IF;',
'    ',
'    RETURN l_qty;',
'END;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'input-size'
,p_grid_label_column_span=>6
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--normalDisplay'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(90034051774048542)
,p_name=>'P122_RETURN_AMOUNT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(90031428528048491)
,p_prompt=>'<span class="input-size">Amount:</span>'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_amt NUMBER := 0;',
'BEGIN',
'    IF :P122_PAGE_MODE = ''inquire'' THEN',
'        SELECT',
'            SUM(npt37.RETURN_QUANTITY * npt2.DISCOUNTED_PRICE)',
'        INTO',
'            l_amt',
'        FROM',
'            NPT002 npt2,',
'            NPT037 npt37',
'        WHERE',
'            npt37.RETURN_ID = :P122_RETURN_NUMBER AND',
'            npt37.ITEM_INVOICE_ID = npt2.ITEM_INVOICE_ID;',
'    END IF;',
'    ',
'    RETURN ''$'' || l_amt;',
'END;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'input-size'
,p_grid_label_column_span=>6
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--normalDisplay'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(90034196866048543)
,p_name=>'P122_REASON'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(90031428528048491)
,p_prompt=>'<span class="input-size">Reason:</span>'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_reason VARCHAR2(100) := ''-'';',
'BEGIN',
'    IF :P122_PAGE_MODE = ''inquire'' THEN',
'        SELECT',
'            REASON',
'        INTO',
'            l_reason',
'        FROM',
'            NPT016',
'        WHERE',
'            REFUND_ID = :P122_REFUND_NUMBER;',
'    END IF;',
'    ',
'    RETURN l_reason;',
'END;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'input-size'
,p_grid_label_column_span=>6
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--normalDisplay'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(90040638175048574)
,p_name=>'P122_INVOICE_NUMBER'
,p_item_sequence=>50
,p_prompt=>'Invoice Number'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'format-size'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4381902469084273)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--normalDisplay'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(90040781992048575)
,p_name=>'P122_INVOICE_DATE'
,p_item_sequence=>70
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECt',
'    DATE_CREATED',
'FROM',
'    NPT033',
'WHERE',
'    :P122_INVOICE_NUMBER = CASH_INVOICE_ID'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Invoice Date'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'format-size'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4381902469084273)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--normalDisplay'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(90041597801048583)
,p_name=>'P122_PAGE_MODE'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(90043344288048601)
,p_name=>'P122_INVOICE_NUMBER_LABEL'
,p_item_sequence=>40
,p_prompt=>'<span class="format-size">Invoice Number</span>'
,p_source=>'<span class="format-size">Invoice Number:</span>'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'format-size'
,p_colspan=>2
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4381902469084273)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--normalDisplay'
,p_attribute_01=>'Y'
,p_attribute_04=>'N'
,p_attribute_05=>'HTML'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(90043522727048602)
,p_name=>'P122_INVOICE_DATE_LABEL'
,p_item_sequence=>60
,p_prompt=>'Invoice Date'
,p_source=>'<span class="format-size">Invoice Date:</span>'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'format-size'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4381902469084273)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--normalDisplay'
,p_attribute_01=>'Y'
,p_attribute_04=>'N'
,p_attribute_05=>'HTML'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(90195739017786033)
,p_name=>'P122_RETURN_QUANTITY_CUMULATIVE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(90031428528048491)
,p_item_default=>'0'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(90195867858786034)
,p_name=>'P122_RETURN_AMOUNT_CUMULATIVE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(90031428528048491)
,p_item_default=>'0'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(90198013241786055)
,p_name=>'P122_RETURN_AMOUNT_RETURN'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(90031428528048491)
,p_item_default=>'0'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(90202661562786068)
,p_name=>'P122_RETURNABLE'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(46289023827182879)
,p_name=>'When load'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46289547552182879)
,p_event_id=>wwv_flow_imp.id(46289023827182879)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Focus'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(() => {',
'  $( document ).ready(function() {',
'    $(".a-GV-cell").first().trigger("click");',
' });',
'',
'',
'}, "500");'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46290509391182881)
,p_event_id=>wwv_flow_imp.id(46289023827182879)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(46272276046182803)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P122_PAGE_MODE'
,p_client_condition_expression=>'inquire'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46291589368182882)
,p_event_id=>wwv_flow_imp.id(46289023827182879)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(46273050755182806)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P122_PAGE_MODE'
,p_client_condition_expression=>'inquire'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46291041829182882)
,p_event_id=>wwv_flow_imp.id(46289023827182879)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(46272659912182804)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P122_PAGE_MODE'
,p_client_condition_expression=>'inquire'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46290019764182881)
,p_event_id=>wwv_flow_imp.id(46289023827182879)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var model = apex.region("creditMemo").widget().interactiveGrid("getViews", "grid").model;',
'var qtyKey = model.getFieldKey("RETURN_QUANTITY");',
'',
'model.forEach(function(i){',
'    model.setValue(i, "RETURN_QUANTITY", '''');',
'})',
'apex.region("creditMemo").widget().interactiveGrid("getActions").invoke("save");',
''))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P122_PAGE_MODE'
,p_client_condition_expression=>'add'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(46291935443182882)
,p_name=>'Refund all'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(46272276046182803)
,p_condition_element=>'P122_PAGE_MODE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'add'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46292404369182882)
,p_event_id=>wwv_flow_imp.id(46291935443182882)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var model = apex.region("creditMemo").widget().interactiveGrid("getViews", "grid").model;',
'var qtyKey = model.getFieldKey("REFUND_QUANTITY");',
'var refundableKey = model.getFieldKey("REFUNDABLE_QUANTITY");',
'var amtKey = model.getFieldKey("DISCOUNTED_PRICE");',
'var totalQty = parseInt($v("P122_REFUND_QUANTITY_CUMULATIVE"));',
'var totalAmt = parseInt($v("P122_REFUND_AMOUNT_CUMULATIVE"));',
'',
'model.forEach(function(i){',
'    var qty = parseInt(i[qtyKey],10);',
'    var amt = parseInt(i[amtKey],10);',
'    var ref = parseInt(i[refundableKey],10);',
'',
'    if(!isNaN(qty)){',
'        totalQty += qty;',
'        totalAmt += parseFloat((qty * amt), 10.00);',
'        ',
'        model.setValue(i, "REFUNDABLE_QUANTITY", (ref - qty).toString());',
'        model.setValue(i, "REFUND_QUANTITY", '''');',
'',
'        apex.item("P122_REFUND_QUANTITY_CUMULATIVE").setValue(totalQty);',
'        apex.item("P122_REFUND_AMOUNT_CUMULATIVE").setValue(totalAmt);',
'',
'        apex.item("P122_REFUND_QUANTITY").setValue(apex.item("P122_REFUND_QUANTITY_CUMULATIVE").getValue());',
'        apex.item("P122_REFUND_AMOUNT").setValue(''$'' + parseInt(apex.item("P122_REFUND_AMOUNT_CUMULATIVE").getValue()).toFixed(2));',
'        apex.item("P122_REFUND_AMOUNT_RETURN").setValue(apex.item("P122_REFUND_AMOUNT_CUMULATIVE").getValue());',
'    }',
'})',
'',
'apex.region("creditMemo").widget().interactiveGrid("getActions").invoke("save");',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46292945560182884)
,p_event_id=>wwv_flow_imp.id(46291935443182882)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(46273050755182806)
,p_client_condition_type=>'GREATER_THAN'
,p_client_condition_element=>'P122_RETURN_QUANTITY'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(46293372046182884)
,p_name=>'Get refundable'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(90030674966048483)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46293866524182884)
,p_event_id=>wwv_flow_imp.id(46293372046182884)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var selectedRefundable',
'model=this.data.model;',
'',
'if(this.data != null){',
'    if(this.data.selectedRecords[0] != null){',
'        selectedRefundable = model.getValue(this.data.selectedRecords[0], "REFUNDABLE_QUANTITY");',
'    }',
'} ',
'apex.item("P122_REFUNDABLE").setValue(selectedRefundable);',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(46294212606182885)
,p_name=>'Change'
,p_event_sequence=>40
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(90030674966048483)
,p_triggering_element=>'RETURN_QUANTITY'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46294758481182885)
,p_event_id=>wwv_flow_imp.id(46294212606182885)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.region("creditMemo").widget().interactiveGrid("getActions").invoke("save");',
'var model = apex.region("creditMemo").widget().interactiveGrid("getViews", "grid").model;',
'var qtyKey = model.getFieldKey("REFUND_QUANTITY");',
'var amtKey = model.getFieldKey("DISCOUNTED_PRICE");',
'var totalQty = parseInt(apex.item("P122_REFUND_QUANTITY_CUMULATIVE").getValue());',
'var totalAmt = parseFloat(apex.item("P122_REFUND_AMOUNT_CUMULATIVE").getValue());',
'',
'model.forEach(function(i){',
'    var qty = parseInt(i[qtyKey],10);',
'    var amt = parseFloat(i[amtKey]);',
'',
'    if(!isNaN(qty)){',
'        totalQty += qty;',
'        totalAmt += parseFloat((qty * amt));',
'    }',
'})',
'',
'$s("P122_REFUND_QUANTITY", totalQty);',
'$s("P122_REFUND_AMOUNT", "$" + totalAmt.toFixed(2));',
'$s("P122_REFUND_AMOUNT_RETURN", totalAmt.toFixed(2));'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(46288196844182878)
,p_name=>'Close'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(46272659912182804)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46288613455182879)
,p_event_id=>wwv_flow_imp.id(46288196844182878)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P122_REASON'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P97_REFUND_REASON'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(46285769660182871)
,p_name=>'Open Region'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(46273050755182806)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'!($("#p").is(":disabled"))'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46286225232182873)
,p_event_id=>wwv_flow_imp.id(46285769660182871)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P122_REFUND_NUMBER = ''-'' THEN',
'        INSERT INTO NPT016 (TOTAL_AMOUNT, TOTAL_QUANTITY, REASON, USER_CREATED, DATE_CREATED)',
'        VALUES(:P122_REFUND_AMOUNT_RETURN, :P122_REFUND_QUANTITY, :P122_REASON, :APP_USER, SYSDATE())',
'        RETURNING REFUND_ID',
'        INTO :P122_REFUND_NUMBER;',
'',
'        UPDATE NPT035',
'        SET REFUND_ID = :P122_REFUND_NUMBER',
'        WHERE REFUND_ID IS NULL AND USER_CREATED = :APP_USER AND REFUND_QUANTITY > 0;',
'    END IF;',
'END;'))
,p_attribute_02=>'P122_RETURN_AMOUNT_CUMULATIVE,P122_RETURN_QUANTITY,P122_REASON,P122_RETURN_NUMBER'
,p_attribute_03=>'P122_RETURN_NUMBER'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46287267826182876)
,p_event_id=>wwv_flow_imp.id(46285769660182871)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(46272276046182803)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46287710349182878)
,p_event_id=>wwv_flow_imp.id(46285769660182871)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(46272659912182804)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46286707513182875)
,p_event_id=>wwv_flow_imp.id(46285769660182871)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(90194069617785991)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(46283962935182867)
,p_name=>'Print'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(46276931896182832)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46284445819182870)
,p_event_id=>wwv_flow_imp.id(46283962935182867)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var d = new Date();',
'var datestamp = d.getFullYear() + "";',
'if( (d.getMonth() + 1) >= 10){',
'    datestamp = datestamp + (d.getMonth() + 1) + "";',
'}',
'else{',
'    datestamp = datestamp + "0" + (d.getMonth() + 1);',
'}',
'if( (d.getDate() + 1) >= 10){',
'    datestamp = datestamp + d.getDate() + "";',
'}',
'else{',
'    datestamp = datestamp + "0" + d.getDate();',
'}',
'generateReport("REFUND", "pdf", { ',
'    fileName: "Refund_" + $v("P122_REFUND_NUMBER") + "_" + datestamp + ".pdf",',
'    mode : "export",',
'    parameters : {',
'        P_REFUND_ID : $v("P122_REFUND_NUMBER"),',
'        P_PRINT_TYPE: "dotmatrix",',
'        P_APP_USER: ''&APP_USER.''',
'    }',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(46284853831182870)
,p_name=>'Print_1'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(46277344090182832)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46285374927182871)
,p_event_id=>wwv_flow_imp.id(46284853831182870)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var d = new Date();',
'var datestamp = d.getFullYear() + "";',
'if( (d.getMonth() + 1) >= 10){',
'    datestamp = datestamp + (d.getMonth() + 1) + "";',
'}',
'else{',
'    datestamp = datestamp + "0" + (d.getMonth() + 1);',
'}',
'if( (d.getDate() + 1) >= 10){',
'    datestamp = datestamp + d.getDate() + "";',
'}',
'else{',
'    datestamp = datestamp + "0" + d.getDate();',
'}',
'generateReport("REFUND", "pdf", { ',
'    fileName: "Refund_" + $v("P122_REFUND_NUMBER") + "_" + datestamp + ".pdf",',
'    mode : "export",',
'    parameters : {',
'        P_REFUND_ID : $v("P122_REFUND_NUMBER"),',
'        P_PRINT_TYPE: "graphic",',
'        P_APP_USER: ''&APP_USER.''',
'    }',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(46295135653182885)
,p_name=>'Disable button'
,p_event_sequence=>90
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46295691594182887)
,p_event_id=>wwv_flow_imp.id(46295135653182885)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(46273050755182806)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(46296010994182887)
,p_name=>'Reset filter'
,p_event_sequence=>100
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(90030674966048483)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridsave'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46296515982182887)
,p_event_id=>wwv_flow_imp.id(46296010994182887)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setIGInputFilter($("#refund"), function(value) {  ',
'    var val = parseInt(value);',
'    var limit = parseInt(apex.item("P122_REFUNDABLE").getValue());',
'    var isValid = (limit >= val) || value == '''';',
'    return isValid;',
'}, "Refund Quantity must be lower or equal to refundable quantity");'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(46281747652182854)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(90030674966048483)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Refund Creator - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>46281747652182854
);
wwv_flow_imp.component_end;
end;
/
