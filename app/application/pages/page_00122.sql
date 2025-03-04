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
'var editedRecord;',
'const p122KeyMap = {',
'    a : (v) => {',
'        $("#a").trigger("click");',
'    },',
'',
'    b : (v) => {',
'        $("#b").trigger("click");',
'    },',
'',
'    c : (v) => {',
'        $("#c").trigger("click");',
'    },',
'',
'    u : (v) => {',
'        $("#u").trigger("click");',
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
'        $("#esc").trigger("click");',
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
'    view$ = view.view$;',
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
'    let region = apex.region("creditMemo")',
'    let view = region.call("getCurrentView"),',
'    model = view.model,',
'    view$ = view.view$;',
'',
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
'mapP122Keys();',
'if($v("P122_PAGE_MODE") == ''add''){',
'    setTitle("Credit Memo Creator");',
'} else if ($v("P122_PAGE_MODE") == ''update''){',
'    setTitle("Credit Memo Return Update");',
'} else if ($v("P122_PAGE_MODE") == ''inquire''){',
'    setTitle("Credit Memo Return Inquiry");',
'}',
'$("#s").trigger("click");',
'setIGInputFilter($("#returnQuantity"), function(value) {  ',
'    var val = parseInt(value);',
'    var limit = parseInt(apex.item("P122_RETURNABLE").getValue());',
'    var isValid = ((limit >= val) || value == '''') &&  /^\d*$/.test(value);',
'    return isValid;',
'}, "Return Quantity must be lower or equal to refundable quantity");',
'',
'window.addEventListener(''beforeunload'', function (event) {',
'  event.stopImmediatePropagation();',
'});'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#returnSummary .apex-item-wrapper--display-only .t-Form-inputContainer {',
'    justify-content: end;',
'}',
'',
'#returnSummary #reason .apex-item-wrapper--display-only .t-Form-inputContainer {',
'    justify-content: start;',
'    margin-top: 1rem;',
'    margin-left: 2rem;',
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
'.format-size{',
'    color: white;',
'    font-size: 1.125rem;',
'}',
'',
'body, #button-region {',
'    background-color: rgb(30, 58, 138);',
'}',
'',
'.t-Header .t-Header-branding {',
'    background-color: white !important;',
'    color: rgb(30, 58, 138) !important;',
'}',
'',
'#creditMemo table, #creditMemo tr, #creditMemo td, #creditMemo th {',
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
'/* set modal header to a different background and font color */',
'.ui-dialog .ui-dialog-titlebar {',
'    background-color: #056AC8;',
'    color: white;',
'    border: none;',
'}',
'',
'.ui-dialog-title{',
'    font-size: 1.5rem;',
'    padding-bottom: 0.2rem;',
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
'    bottom: 2rem;',
'}',
'',
'#creditMemo .a-IG, #returnSummary{',
'    height: calc(75vh + 2px) !important;',
'} ',
'',
'#creditMemo .a-IG-contentContainer, #returnSummary{',
'    height: 75vh !important;',
'}',
'',
'#creditMemo .a-IG-gridView.a-GV, #returnSummary{',
'    height: 75vh !important;',
'}',
'',
'#creditMemo .a-GV-bdy, #returnSummary{',
'    height: calc(75vh - 2.5625rem) !important;',
'}',
'',
'#creditMemo .a-IG, #returnSummary{',
'    height: calc(75vh + 2px) !important;',
'} ',
'',
'#returnSummary{',
'    height: 75vh !important;',
'}'))
,p_step_template=>wwv_flow_imp.id(5671392681337017)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(51981123519682902)
,p_plug_name=>'actions'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>130
,p_plug_grid_row_css_classes=>'buttons-row'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(90030674966048483)
,p_plug_name=>'CM Creator'
,p_region_name=>'creditMemo'
,p_region_template_options=>'#DEFAULT#:margin-right-md'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>110
,p_plug_grid_column_span=>9
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    npt2.ITEM_DESC,',
'    npt2.ITEM_NUM,',
'    TO_CHAR(COALESCE(npt2.DISCOUNTED_PRICE, npt2.ITEM_PRICE), ''999990.00'') AS DISCOUNTED_PRICE,',
'    npt2.QUANTITY,',
'    npt37.RETURNABLE_QUANTITY,',
'    npt37.RETURNABLE_QUANTITY + COALESCE(npt37.RETURN_QUANTITY, 0) AS "BASE",',
'    npt37.RETURN_QUANTITY,',
'    npt37.ITEM_INVOICE_ID,',
'    npt37.RETURN_ID,',
'    nim26.UOM_CODE',
'FROM',
'    NPT002 npt2,',
'    NPT001 npt1,',
'    NPT037 npt37,',
'    NIM026 nim26',
'WHERE',
'    npt2.UOM_ID = nim26.UOM_ID AND',
'    npt2.ITEM_INVOICE_ID = npt37.ITEM_INVOICE_ID AND',
'    npt2.INVOICE_ID = npt1.INVOICE_ID AND',
'    npt1.INVOICE_ID = :P122_INVOICE_NUMBER AND',
'    (',
'    ((:P122_PAGE_MODE = ''inquire'' OR :P122_PAGE_MODE = ''update'') AND npt37.RETURN_ID = :P122_RETURN_NUMBER) OR ',
'    (:P122_PAGE_MODE = ''add'' AND npt37.RETURN_ID IS NULL AND npt37.USER_CREATED = :APP_USER)',
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
 p_id=>wwv_flow_imp.id(46318728045497912)
,p_name=>'RETURNABLE_QUANTITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RETURNABLE_QUANTITY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Returnable QTY'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
,p_value_css_classes=>'is-readonly'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_enable_filter=>false
,p_filter_is_required=>false
,p_static_id=>'returnableQuantity'
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
,p_heading=>'Return QTY'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>false
,p_enable_filter=>false
,p_filter_is_required=>false
,p_static_id=>'returnQuantity'
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
 p_id=>wwv_flow_imp.id(46663267364115413)
,p_name=>'BASE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BASE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(51982742369682918)
,p_name=>'RETURN_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RETURN_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(60619303213627528)
,p_name=>'UOM_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UOM_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'UOM'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'CENTER'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
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
,p_display_sequence=>20
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
,p_name=>'ITEM_NUM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEM_NUM'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Item Code'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
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
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Price'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'RIGHT'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
,p_format_mask=>'999G999G999G999G990D00'
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
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
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
,p_duplicate_value=>true
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
,p_heading=>'QTY'
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
,p_edit_operations=>'u:d'
,p_lost_update_check_type=>'VALUES'
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
,p_fixed_header_max_height=>600
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
 p_id=>wwv_flow_imp.id(46376628619559701)
,p_view_id=>wwv_flow_imp.id(90091258122426937)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(46318728045497912)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>189
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(46377591720559718)
,p_view_id=>wwv_flow_imp.id(90091258122426937)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(46318857088497913)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>140
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(47447935504503382)
,p_view_id=>wwv_flow_imp.id(90091258122426937)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(46663267364115413)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(53259839185306285)
,p_view_id=>wwv_flow_imp.id(90091258122426937)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(51982742369682918)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(61241339777385507)
,p_view_id=>wwv_flow_imp.id(90091258122426937)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(60619303213627528)
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
,p_width=>246
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(90092535909426970)
,p_view_id=>wwv_flow_imp.id(90091258122426937)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(90030955873048486)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>136
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(90093458107426979)
,p_view_id=>wwv_flow_imp.id(90091258122426937)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(90031087258048487)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>116
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(90107785239514477)
,p_view_id=>wwv_flow_imp.id(90091258122426937)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(90032380385048500)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(90179634925736868)
,p_view_id=>wwv_flow_imp.id(90091258122426937)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(90033581842048512)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>110
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(90031428528048491)
,p_plug_name=>'<span class="title-size">Return Summary</span>'
,p_region_name=>'returnSummary'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--leftLabels'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>120
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
 p_id=>wwv_flow_imp.id(51981058621682901)
,p_plug_name=>'reason'
,p_region_name=>'reason'
,p_parent_plug_id=>wwv_flow_imp.id(90031428528048491)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>70
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(46272276046182803)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(51981123519682902)
,p_button_name=>'RefundAll'
,p_button_static_id=>'a'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>A</u> - Return All'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>':P122_PAGE_MODE = ''add'' OR :P122_PAGE_MODE = ''update'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'btns'
,p_grid_new_row=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(46272659912182804)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(51981123519682902)
,p_button_name=>'RefundReason'
,p_button_static_id=>'r'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>R</u> - Return Reason'
,p_button_redirect_url=>'f?p=&APP_ID.:97:&SESSION.::&DEBUG.::P97_PARENT:122'
,p_button_condition=>':P122_PAGE_MODE = ''add'' OR :P122_PAGE_MODE = ''update'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'btns'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(58660145671535247)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(51981123519682902)
,p_button_name=>'Create'
,p_button_static_id=>'c'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>C</u> - Create Credit Memo'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>':P122_PAGE_MODE = ''add'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'btns'
,p_grid_new_row=>'N'
,p_grid_column_span=>2
,p_grid_column=>10
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(58660220860535248)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(51981123519682902)
,p_button_name=>'Update'
,p_button_static_id=>'u'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>U</u> - Update Credit Memo'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>':P122_PAGE_MODE = ''update'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'btns'
,p_grid_new_row=>'N'
,p_grid_column_span=>2
,p_grid_column=>10
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(46273412799182806)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(51981123519682902)
,p_button_name=>'Back'
,p_button_static_id=>'esc'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'esc'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'hiddenbtn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47892141363514514)
,p_name=>'P122_RETURN_AMOUNT_NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(90031428528048491)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_amt NUMBER := 0;',
'BEGIN',
'    IF :P122_PAGE_MODE = ''inquire'' OR :P122_PAGE_MODE = ''update'' THEN',
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
'    RETURN l_amt;',
'END;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47894089367514533)
,p_name=>'P122_CREDIT_MEMO_ID'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(90031428528048491)
,p_item_default=>'-'
,p_prompt=>'<span class="input-size">Cr Memo ID:</span>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'input-size'
,p_grid_label_column_span=>6
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:margin-top-lg:t-Form-fieldContainer--normalDisplay'
,p_warn_on_unsaved_changes=>'I'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47894123228514534)
,p_name=>'P122_CREDIT_MEMO_AMT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(90031428528048491)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<span class="input-size">Cr Memo Amt:</span>'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_amt NUMBER;',
'BEGIN',
'    IF :P122_PAGE_MODE = ''inquire'' OR :P122_PAGE_MODE = ''update'' THEN',
'        SELECT',
'            TOTAL_AMOUNT',
'        INTO',
'            l_amt',
'        FROM',
'            NPT015',
'        WHERE',
'            CREDIT_MEMO_ID = :P122_CREDIT_MEMO_ID;',
'',
'        RETURN TO_CHAR(l_amt, ''999,999.00'');',
'    ELSE',
'        RETURN ''-'';',
'    END IF;    ',
'END;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'input-size'
,p_grid_label_column_span=>6
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--normalDisplay'
,p_warn_on_unsaved_changes=>'I'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48748108040721114)
,p_name=>'P122_PREPARED_URL'
,p_item_sequence=>50
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48748369566721116)
,p_name=>'P122_CUSTOMER_ID'
,p_item_sequence=>80
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    CUSTOMER_ID',
'FROM',
'    NPT001',
'WHERE',
'    INVOICE_ID = :P122_INVOICE_NUMBER'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60620933406627544)
,p_name=>'P122_HAS_CHANGES'
,p_item_sequence=>30
,p_item_default=>'0'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(90033798154048539)
,p_name=>'P122_RETURN_NUMBER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(90031428528048491)
,p_item_default=>'-'
,p_prompt=>'<span class="input-size">Return Number:</span>'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_return_id NUMBER;',
'BEGIN',
'    IF :P122_PAGE_MODE = ''inquire'' OR :P122_PAGE_MODE = ''update'' THEN',
'        SELECT',
'            RETURN_ID',
'        INTO ',
'            l_return_id',
'        FROM',
'            NPT015',
'        WHERE',
'            CREDIT_MEMO_ID = :P122_CREDIT_MEMO_ID;',
'',
'        RETURN l_return_id;',
'    ELSE',
'        RETURN ''-'';',
'    END IF;',
'END;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'input-size'
,p_grid_label_column_span=>6
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--normalDisplay'
,p_warn_on_unsaved_changes=>'I'
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
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_date DATE;',
'BEGIN',
'    IF :P122_PAGE_MODE = ''update'' OR :P122_PAGE_MODE = ''inquire'' THEN',
'        SELECT ',
'            DATE_CREATED ',
'        INTO ',
'            l_date ',
'        FROM ',
'            NPT015 ',
'        WHERE ',
'            CREDIT_MEMO_ID = :P122_CREDIT_MEMO_ID;',
'        RETURN l_date;',
'    END IF;',
'END;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'input-size'
,p_grid_label_column_span=>6
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--normalDisplay'
,p_warn_on_unsaved_changes=>'I'
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
'    IF :P122_PAGE_MODE = ''inquire'' OR :P122_PAGE_MODE = ''update'' THEN',
'        SELECT',
'            SUM(RETURN_QUANTITY)',
'        INTO',
'            l_qty',
'        FROM',
'            NPT037',
'        WHERE',
'            RETURN_ID = :P122_RETURN_NUMBER;',
'    END IF;',
'',
'    IF l_qty IS NULL THEN',
'        l_qty := 0;',
'    END IF;',
'    ',
'    RETURN l_qty;',
'END;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'input-size'
,p_tag_attributes=>'readonly'
,p_grid_label_column_span=>6
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--normalDisplay'
,p_warn_on_unsaved_changes=>'I'
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
'    IF :P122_PAGE_MODE = ''inquire'' OR :P122_PAGE_MODE = ''update'' THEN',
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
'',
'    IF l_amt IS NULL THEN',
'        l_amt := 0;',
'    END IF;',
'    ',
'    RETURN TO_CHAR(l_amt, ''999,990.00'');',
'END;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'input-size'
,p_grid_label_column_span=>6
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--normalDisplay'
,p_warn_on_unsaved_changes=>'I'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(90034196866048543)
,p_name=>'P122_REASON'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(51981058621682901)
,p_prompt=>'<span class="input-size">Reason:</span>'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_reason VARCHAR2(100);',
'BEGIN',
'    IF :P122_PAGE_MODE = ''inquire'' OR :P122_PAGE_MODE = ''update'' THEN',
'        SELECT',
'            REASON',
'        INTO',
'            l_reason',
'        FROM',
'            NPT015',
'        WHERE',
'            RETURN_ID = :P122_RETURN_NUMBER;',
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
,p_item_template_options=>'#DEFAULT#:margin-bottom-lg:t-Form-fieldContainer--normalDisplay'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(90040638175048574)
,p_name=>'P122_INVOICE_NUMBER'
,p_item_sequence=>70
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
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(90040781992048575)
,p_name=>'P122_INVOICE_DATE'
,p_item_sequence=>100
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    DATE_CREATED',
'FROM',
'    NPT001',
'WHERE',
'    INVOICE_ID = :P122_INVOICE_NUMBER'))
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
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(90041597801048583)
,p_name=>'P122_PAGE_MODE'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(90043344288048601)
,p_name=>'P122_INVOICE_NUMBER_LABEL'
,p_item_sequence=>60
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
,p_attribute_05=>'HTML'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(90043522727048602)
,p_name=>'P122_INVOICE_DATE_LABEL'
,p_item_sequence=>90
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
,p_attribute_05=>'HTML'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(90202661562786068)
,p_name=>'P122_RETURNABLE'
,p_item_sequence=>40
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
,p_attribute_01=>'selectFirstRow();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46290509391182881)
,p_event_id=>wwv_flow_imp.id(46289023827182879)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(46272276046182803)
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
'console.log($v("P122_PAGE_MODE"))'))
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
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$v("P122_PAGE_MODE") == ''add'' || $v("P122_PAGE_MODE") == ''update'''
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46292404369182882)
,p_event_id=>wwv_flow_imp.id(46291935443182882)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var model = apex.region("creditMemo").widget().interactiveGrid("getViews", "grid").model;',
'',
'var qtyKey = model.getFieldKey("RETURN_QUANTITY");',
'var returnableKey = model.getFieldKey("RETURNABLE_QUANTITY");',
'var amtKey = model.getFieldKey("DISCOUNTED_PRICE");',
'',
'var totalQty = 0;',
'var totalAmt = 0;',
'',
'model.forEach(function(i){',
'    var amt = parseFloat(i[amtKey]);',
'    var ret = parseInt(i[returnableKey]);',
'    var qty = parseInt(i[qtyKey]);',
'',
'    if(ret > 0){',
'        if(isNaN(qty)){',
'            model.setValue(i, "RETURN_QUANTITY", ret.toString());  ',
'            model.setValue(i, "RETURNABLE_QUANTITY", ''0''.toString());  ',
'            totalQty += ret;',
'            totalAmt += parseFloat(ret * amt);  ',
'        } else{',
'            model.setValue(i, "RETURN_QUANTITY", (ret + qty).toString()); ',
'            model.setValue(i, "RETURNABLE_QUANTITY", ''0''.toString());    ',
'            totalQty += ret + qty;',
'            totalAmt += parseFloat((ret + qty) * amt);',
'        }',
'',
'        apex.item("P122_RETURN_QUANTITY").setValue(totalQty);',
'        apex.item("P122_RETURN_AMOUNT").setValue(parseFloat(totalAmt).toFixed(2));',
'        apex.item("P122_RETURN_AMOUNT_NUMBER").setValue(parseFloat(totalAmt).toFixed(2));',
'    }',
'    ',
'    model.setValue(i, "RETURNABLE_QUANTITY", 0);',
'    ',
'})',
'',
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
'var model = apex.region("creditMemo").widget().interactiveGrid("getViews", "grid").model;',
'',
'var qtyKey = model.getFieldKey("RETURN_QUANTITY");',
'var returnableKey = model.getFieldKey("RETURNABLE_QUANTITY");',
'var amtKey = model.getFieldKey("DISCOUNTED_PRICE");',
'var idKey = model.getFieldKey("ITEM_INVOICE_ID");',
'',
'var editedAmt = parseFloat(editedRecord[amtKey]);',
'var editedRecordQty = parseInt(editedRecord[qtyKey]);',
'var editedRecordRet = parseInt(editedRecord[returnableKey]);',
'',
'var newQty = parseInt(this.triggeringElement.value);',
'if(isNaN(newQty)){',
'    newQty = 0;',
'}',
'',
'var totalQty = parseInt($v("P122_RETURN_QUANTITY"));',
'var totalAmt = parseFloat($v("P122_RETURN_AMOUNT"));',
'',
'if(isNaN(editedRecordQty)){',
'    model.setValue(editedRecord, "RETURNABLE_QUANTITY",  (editedRecordRet - newQty).toString());',
'    model.setValue(editedRecord, "RETURN_QUANTITY", newQty.toString());',
'    totalQty += parseInt(newQty);',
'    totalAmt += parseFloat(newQty * editedAmt);',
'    editedRecordQty = parseInt(newQty);',
'} else {',
'    model.setValue(editedRecord, "RETURNABLE_QUANTITY",  (editedRecordRet + editedRecordQty - newQty).toString());',
'    model.setValue(editedRecord, "RETURN_QUANTITY", newQty.toString());',
'    totalQty -= parseInt(editedRecordQty);',
'    totalAmt -= parseFloat(editedRecordQty * editedAmt);',
'',
'    totalQty += parseInt(newQty);',
'    totalAmt += parseFloat(newQty * editedAmt);',
'}',
'',
'apex.item("P122_RETURN_QUANTITY").setValue(totalQty);',
'apex.item("P122_RETURN_AMOUNT").setValue(parseFloat(totalAmt).toFixed(2));',
'apex.item("P122_RETURN_AMOUNT_NUMBER").setValue(parseFloat(totalAmt).toFixed(2));',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60617535190627510)
,p_event_id=>wwv_flow_imp.id(46294212606182885)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(58660145671535247)
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'$v("P122_REASON") != '''''
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60617889246627513)
,p_event_id=>wwv_flow_imp.id(46294212606182885)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(58660220860535248)
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'$v("P122_REASON") != '''''
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
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60617648502627511)
,p_event_id=>wwv_flow_imp.id(46288196844182878)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(58660145671535247)
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'$v("P122_RETURN_QUANTITY") > 0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60617971159627514)
,p_event_id=>wwv_flow_imp.id(46288196844182878)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(58660220860535248)
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'$v("P122_RETURN_QUANTITY") > 0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(46295135653182885)
,p_name=>'Disable button'
,p_event_sequence=>90
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60617373913627508)
,p_event_id=>wwv_flow_imp.id(46295135653182885)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(58660145671535247)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60617419610627509)
,p_event_id=>wwv_flow_imp.id(46295135653182885)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(58660220860535248)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(46293372046182884)
,p_name=>'Get refundable'
,p_event_sequence=>100
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
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if(this.data != null){',
'    var selectedReturnable;',
'    model = this.data.model;',
'    if(this.data.selectedRecords[0] != null){    ',
'        editedRecord = model.getSelectedRecords()[0];',
'        selectedReturnable = model.getValue(this.data.selectedRecords[0], "BASE");',
'',
'        var grid$ = apex.region("creditMemo").widget().interactiveGrid("getViews").grid.view$;',
'        var activeRecordId = model.getRecordId(this.data.selectedRecords[0]);',
'        grid$.grid("gotoCell", activeRecordId, "RETURN_QUANTITY").trigger("dblclick");',
'    }',
'} ',
'apex.item("P122_RETURNABLE").setValue(selectedReturnable);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(46296010994182887)
,p_name=>'Save'
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
'setIGInputFilter($("#returnQuantity"), function(value) {  ',
'    var val = parseInt(value);',
'    var limit = parseInt(apex.item("P122_RETURNABLE").getValue());',
'    var isValid = ((limit >= val) || value == '''') &&  /^\d*$/.test(value);',
'    return isValid;',
'}, "Return Quantity must be lower or equal to returnable quantity");'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60616989345627504)
,p_event_id=>wwv_flow_imp.id(46296010994182887)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_return_id NUMBER;',
'    l_credit_id NUMBER;',
'BEGIN',
'    SELECT',
'        MAX(RETURN_ID) + 1',
'    INTO',
'        l_return_id',
'    FROM',
'        NPT015;',
'',
'    INSERT INTO NPT015(TOTAL_AMOUNT,',
'                       CURRENT_BALANCE,',
'                       USER_CREATED,',
'                       DATE_CREATED,',
'                       CUSTOMER_ID,',
'                       REASON,',
'                       CM_STATUS_ID,',
'                       RETURN_ID,',
'                       TYPE)',
'    VALUES            (:P122_RETURN_AMOUNT_NUMBER,',
'                       :P122_RETURN_AMOUNT_NUMBER,',
'                       :APP_USER,',
'                       SYSDATE(),',
'                       :P122_CUSTOMER_ID,',
'                       :P122_REASON,',
'                       1,',
'                       l_return_id,',
'                       ''RETURN'')',
'    RETURNING CREDIT_MEMO_ID',
'    INTO l_credit_id;',
'',
'    :P122_RETURN_NUMBER := l_return_id;',
'    :P122_CREDIT_MEMO_ID := l_credit_id;',
'    :P122_CREDIT_MEMO_AMT := :P122_RETURN_AMOUNT_NUMBER;',
'     ',
'    UPDATE NPT037',
'    SET RETURN_ID = l_return_id',
'    WHERE RETURN_ID IS NULL AND',
'          USER_CREATED = :APP_USER;',
'END;'))
,p_attribute_02=>'P122_PAGE_MODE,P122_RETURN_AMOUNT_NUMBER,P122_CUSTOMER_ID,P122_REASON,P122_CREDIT_MEMO_ID'
,p_attribute_03=>'P122_PREPARED_URL,P122_PAGE_MODE,P122_RETURN_NUMBER,P122_CREDIT_MEMO_ID,P122_CREDIT_MEMO_AMT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P122_PAGE_MODE'
,p_client_condition_expression=>'add'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60617765221627512)
,p_event_id=>wwv_flow_imp.id(46296010994182887)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(() => {',
'    $( document ).ready(function() {',
'        $(''#esc'').trigger(''click'');',
'    });',
'}, "500")'))
,p_client_condition_type=>'EQUALS'
,p_client_condition_elem_type=>'ITEM'
,p_client_condition_element=>'P122_PAGE_MODE'
,p_client_condition_expression=>'add'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(48747850075721111)
,p_name=>'Exit'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(46273412799182806)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(55720245186275604)
,p_event_id=>wwv_flow_imp.id(48747850075721111)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    DELETE FROM NPT037 WHERE RETURN_ID IS NULL AND USER_CREATED = :APP_USER;',
'    IF :P122_HAS_CHANGES = 0 THEN',
'        :P122_PAGE_MODE := ''none'';',
'    END IF;',
'',
'    IF :P122_CREDIT_MEMO_ID = ''-'' THEN',
'        :P122_CREDIT_MEMO_ID := NULL;',
'    END IF;',
'    :P122_PREPARED_URL := apex_page.get_url(',
'       p_page   => 124,',
'       p_items  => ''P124_LAST_ACTION,P124_PREVIOUS,P124_SELECTED_ID'',',
'       p_values => :P122_PAGE_MODE || '',122,'' || :P122_CREDIT_MEMO_ID',
'    );',
'END;'))
,p_attribute_02=>'P122_PAGE_MODE,P122_CREDIT_MEMO_ID,P122_HAS_CHANGES'
,p_attribute_03=>'P122_PREPARED_URL,P122_PAGE_MODE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(55720394381275605)
,p_event_id=>wwv_flow_imp.id(48747850075721111)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P122_PREPARED_URL");',
'apex.navigation.redirect(url);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(58660350443535249)
,p_name=>'Create'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(58660145671535247)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49391201266289437)
,p_event_id=>wwv_flow_imp.id(58660350443535249)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s("P122_HAS_CHANGES", 1);',
'apex.region("creditMemo").widget().interactiveGrid("getActions").invoke("save");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(60616622938627501)
,p_name=>'Update'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(58660220860535248)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60616855526627503)
,p_event_id=>wwv_flow_imp.id(60616622938627501)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s("P122_HAS_CHANGES", 1);',
'apex.region("creditMemo").widget().interactiveGrid("getActions").invoke("save");'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60617024028627505)
,p_event_id=>wwv_flow_imp.id(60616622938627501)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_return_id NUMBER;',
'BEGIN',
'    UPDATE NPT015',
'    SET TOTAL_AMOUNT = :P122_RETURN_AMOUNT_NUMBER,',
'        CURRENT_BALANCE = :P122_RETURN_AMOUNT_NUMBER,',
'        USER_UPDATE = :APP_USER,',
'        DATE_UPDATED = SYSDATE(),',
'        REASON = :P122_REASON',
'    WHERE',
'        CREDIT_MEMO_ID = :P122_CREDIT_MEMO_ID;   ',
'END;'))
,p_attribute_02=>'P122_PAGE_MODE,P122_RETURN_AMOUNT_NUMBER,P122_CUSTOMER_ID,P122_REASON,P122_CREDIT_MEMO_ID'
,p_attribute_03=>'P122_PREPARED_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60620433831627539)
,p_event_id=>wwv_flow_imp.id(60616622938627501)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(() => {',
'    $( document ).ready(function() {',
'        $(''#esc'').trigger(''click'');',
'    });',
'}, "500")'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(65584268867220520)
,p_name=>'onTab'
,p_event_sequence=>140
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(90030674966048483)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'this.browserEvent.key?.toLowerCase() === "tab" && ',
'!this.browserEvent.shiftKey'))
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65584399732220521)
,p_event_id=>wwv_flow_imp.id(65584268867220520)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'this.browserEvent.preventDefault();'
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'!apex.region("creditMemo").widget().interactiveGrid("getActions").get("edit")'
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
