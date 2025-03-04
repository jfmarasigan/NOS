prompt --application/pages/page_00095
begin
--   Manifest
--     PAGE: 00095
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
 p_id=>95
,p_name=>'Refund List'
,p_alias=>'REFUND-LIST'
,p_step_title=>'Refund List'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#js/cmn#MIN#.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const ICON_OK_LARGE = "fa fa-lg fa-check-circle";',
'const ICON_FAIL_LARGE = "fa fa-lg fa-times-circle msg-icon-yellow";',
'let lastSelected = null;',
'const p95KeyMap = {',
'    i : (v) => {',
'        setTimeout(() => {',
'            $("#i").trigger("click");',
'        }, 350)',
'    },',
'',
'    a : (v) => {',
'        if(($(''#printingOptions'').is('':visible''))){',
'            $("#dotmatrix").trigger("click");',
'        } else {',
'            $("#a").trigger("click");',
'        }',
'    },',
'',
'    b : (v) => {',
'        if(($(''#printingOptions'').is('':visible''))){',
'            $("#graphic").trigger("click");',
'        }',
'    },',
'',
'    s : (v) => {',
'        $("#s").trigger("click");',
'    },',
'',
'    d : (v) => {',
'        $("#d").trigger("click");',
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
'function mapP95Keys() {',
'    $(document).off(''keydown.p95keyevents'');',
'    $(document).on(''keydown.p95keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p95KeyMap[key]) {',
'            ev.preventDefault();',
'            p95KeyMap[key]();',
'        }',
'    });',
'}',
'',
'function selectFirstRow() {',
'    let region = apex.region("refundList")',
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
'    let region = apex.region("refundList")',
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
'setTitle("Refund List");',
'mapP95Keys();'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'body, #button-region {',
'    background-color: rgb(30, 58, 138);',
'}',
'',
'#dotmatrix, #graphic{',
'    border: 0;',
'    outline: none;',
'}',
'',
'#printingOptions, #dotmatrix, #graphic {',
'    padding-top: 0;',
'    background-color: #056AC8;',
'    color: white;',
'}',
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
'.t-Header .t-Header-branding {',
'    background-color: white !important;',
'    color: rgb(30, 58, 138) !important;',
'}',
'',
'#refundList table, #refundList tr, #refundList td, #refundList th {',
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
'    bottom: 3.5rem;',
'}',
'',
'#refundList .a-IG {',
'    height: calc(75vh + 2px) !important;',
'} ',
'',
'#refundList .a-IG-contentContainer {',
'    height: 75vh !important;',
'}',
'',
'#refundList .a-IG-gridView.a-GV {',
'    height: 75vh !important;',
'}',
'',
'#refundList .a-GV-bdy {',
'    height: calc(75vh - 2.5625rem) !important;',
'}',
'',
'#P95_DATE_QUERY{',
'    font-size: 1.125rem;',
'}'))
,p_step_template=>wwv_flow_imp.id(5671392681337017)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16031779766346145)
,p_plug_name=>'Refund List'
,p_region_name=>'refundList'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>40
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT',
'    npt16.DATE_CREATED AS "Refund Date",',
'    npt16.REFUND_ID AS "Refund Number",',
'    npt33.CASH_INVOICE_ID AS "Invoice Number",',
'    npt9.DBA AS "DBA",',
'    npt16.TOTAL_AMOUNT AS "Refund Amount"',
'FROM',
'    NPT002 npt2,',
'    NPT009 npt9,',
'    NPT016 npt16,',
'    NPT033 npt33,',
'    NPT035 npt35',
'WHERE',
'    npt33.CASH_INVOICE_ID = npt2.CASH_INVOICE_ID AND',
'    npt35.REFUND_ID = npt16.REFUND_ID AND',
'    npt35.ITEM_INVOICE_ID = npt2.ITEM_INVOICE_ID AND ',
'    npt33.CUSTOMER_ID = npt9.CUSTOMER_ID AND',
'    ((npt33.CASH_INVOICE_ID LIKE :P95_INVOICE_NUMBER_QUERY || ''%'' AND',
'    :P95_INVOICE_NUMBER_QUERY IS NOT NULL) OR',
'    :P95_INVOICE_NUMBER_QUERY = ''all'')'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P95_INVOICE_NUMBER_QUERY'
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
 p_id=>wwv_flow_imp.id(16032186269346148)
,p_name=>'Refund Number'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'Refund Number'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Refund Number'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true,',
'    };',
'    return options;',
'}'))
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(16032215801346149)
,p_name=>'Invoice Number'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'Invoice Number'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Invoice Number'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'CENTER'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true,',
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
 p_id=>wwv_flow_imp.id(17843118952792501)
,p_name=>'DBA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DBA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'DBA'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true,',
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
 p_id=>wwv_flow_imp.id(17843315002792503)
,p_name=>'Refund Date'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'Refund Date'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Refund Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
,p_value_alignment=>'CENTER'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true,',
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
 p_id=>wwv_flow_imp.id(39233347020531950)
,p_name=>'Refund Amount'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'Refund Amount'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Refund Amount'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_format_mask=>'999G999G999G999G990D00'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(16031957419346146)
,p_internal_uid=>16031957419346146
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
 p_id=>wwv_flow_imp.id(17840972818782642)
,p_interactive_grid_id=>wwv_flow_imp.id(16031957419346146)
,p_static_id=>'178410'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(17841192213782643)
,p_report_id=>wwv_flow_imp.id(17840972818782642)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(17849175366793706)
,p_view_id=>wwv_flow_imp.id(17841192213782643)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(16032186269346148)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(17850075892793712)
,p_view_id=>wwv_flow_imp.id(17841192213782643)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(16032215801346149)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(17851706700793726)
,p_view_id=>wwv_flow_imp.id(17841192213782643)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(17843118952792501)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(17853534949793740)
,p_view_id=>wwv_flow_imp.id(17841192213782643)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(17843315002792503)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(39526923204429765)
,p_view_id=>wwv_flow_imp.id(17841192213782643)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(39233347020531950)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17843658867792506)
,p_plug_name=>'Navigation'
,p_region_name=>'nav'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody:margin-bottom-none:margin-left-md:margin-right-md'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>50
,p_plug_grid_row_css_classes=>'buttons-row'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(120980914359903821)
,p_plug_name=>'Printing Options'
,p_region_name=>'printingOptions'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size480x320'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>50
,p_plug_display_point=>'REGION_POSITION_04'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(17844477271792514)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(17843658867792506)
,p_button_name=>'Search'
,p_button_static_id=>'s'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>S</u> - Search'
,p_button_redirect_url=>'f?p=&APP_ID.:98:&SESSION.::&DEBUG.::P98_SEARCH_QUERY:'
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(72231946938182714)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(120980914359903821)
,p_button_name=>'Dotmatrix'
,p_button_static_id=>'dotmatrix'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>A</u> - Dot matrix'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(72232306988182715)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(120980914359903821)
,p_button_name=>'Graphic'
,p_button_static_id=>'graphic'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>B</u> - Graphic'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(17843864504792508)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(17843658867792506)
,p_button_name=>'Add'
,p_button_static_id=>'a'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>A</u> - Add'
,p_button_redirect_url=>'f?p=&APP_ID.:99:&SESSION.::&DEBUG.:::'
,p_button_condition=>'has_access(:APP_USER, 25, 53) = ''Y'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(17843993043792509)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(17843658867792506)
,p_button_name=>'Inquire'
,p_button_static_id=>'i'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>I</u> - Inquire'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'has_access(:APP_USER, 25, 54) = ''Y'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(71163194114396708)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(17843658867792506)
,p_button_name=>'Daily_Report'
,p_button_static_id=>'d'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>D</u> - Daily Report'
,p_button_redirect_url=>'f?p=&APP_ID.:255:&SESSION.::&DEBUG.:::'
,p_button_condition=>'has_access(:APP_USER, 25, 71) = ''Y'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(41685535568832149)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(17843658867792506)
,p_button_name=>'Back'
,p_button_static_id=>'esc'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Back'
,p_button_redirect_url=>'f?p=&APP_ID.:305:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'hiddenbtn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39832107642742312)
,p_name=>'P95_INVOICE_NUMBER'
,p_item_sequence=>60
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39833044971742321)
,p_name=>'P95_INVOICE_NUMBER_QUERY'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39835238066742343)
,p_name=>'P95_PREPARED_URL'
,p_item_sequence=>100
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39835449135742345)
,p_name=>'P95_REFUND_DATE'
,p_item_sequence=>80
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39835576996742346)
,p_name=>'P95_REFUND_NUMBER'
,p_item_sequence=>70
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51482583924608107)
,p_name=>'P95_PREVIOUS'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51482856874608110)
,p_name=>'P95_LAST_ACTION'
,p_item_sequence=>90
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71164439240396721)
,p_name=>'P95_DAILY_DATE'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26843668987736910)
,p_name=>'Lock Keys'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(17844477271792514)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26843774244736911)
,p_event_id=>wwv_flow_imp.id(26843668987736910)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(document).off(''keydown.p95keyevents'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26843873431736912)
,p_name=>'Lock Keys_1'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(17843864504792508)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26843963130736913)
,p_event_id=>wwv_flow_imp.id(26843873431736912)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(document).off(''keydown.p95keyevents'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39833425999742325)
,p_name=>'Return Query'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(17844477271792514)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39833697229742327)
,p_event_id=>wwv_flow_imp.id(39833425999742325)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P95_INVOICE_NUMBER_QUERY'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P98_SEARCH_QUERY'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39833563600742326)
,p_event_id=>wwv_flow_imp.id(39833425999742325)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(16031779766346145)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39833781442742328)
,p_event_id=>wwv_flow_imp.id(39833425999742325)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25371249512301936)
,p_name=>'Close Search'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(17844477271792514)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25371372633301937)
,p_event_id=>wwv_flow_imp.id(25371249512301936)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mapP95Keys();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25372085520301944)
,p_name=>'Close Add'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(17843864504792508)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25372170064301945)
,p_event_id=>wwv_flow_imp.id(25372085520301944)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mapP95Keys();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39832263665742313)
,p_name=>'Change Select'
,p_event_sequence=>60
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(16031779766346145)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39832300866742314)
,p_event_id=>wwv_flow_imp.id(39832263665742313)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var selectedInvoiceNumber;',
'var selectedDate;',
'var selectedRefundNumber;',
'',
'model=this.data.model;',
'',
'if(this.data != null){',
'    if(this.data.selectedRecords[0] != null){',
'        selectedInvoiceNumber = model.getValue(this.data.selectedRecords[0], "Invoice Number");',
'        selectedRefundNumber = model.getValue(this.data.selectedRecords[0], "Refund Number");',
'        selectedDate = model.getValue(this.data.selectedRecords[0], "Refund Date");',
'    }',
'}',
'apex.item("P95_INVOICE_NUMBER").setValue(selectedInvoiceNumber);',
'apex.item("P95_REFUND_NUMBER").setValue(selectedRefundNumber);',
'apex.item("P95_REFUND_DATE").setValue(selectedDate);',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39835011436742341)
,p_name=>'Inquire'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(17843993043792509)
,p_condition_element=>'P95_REFUND_NUMBER'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39835106733742342)
,p_event_id=>wwv_flow_imp.id(39835011436742341)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_invoice NUMBER;',
'BEGIN',
'    SELECT',
'        :P95_INVOICE_NUMBER',
'    INTO',
'        l_invoice',
'    FROM',
'        DUAL;',
'',
'    :P95_PREPARED_URL := apex_page.get_url(',
'       p_page   => 96,',
'       p_items  => ''P96_INVOICE_NUMBER,P96_DATE_OF_REFUND,P96_REFUND_NUMBER,P96_PAGE_MODE'',',
'       p_values => TO_CHAR(l_invoice, ''000000'') || '','' || :P95_REFUND_DATE || '','' || :P95_REFUND_NUMBER || '',inquire''',
'    );',
'END;'))
,p_attribute_02=>'P95_INVOICE_NUMBER,P95_REFUND_DATE,P95_REFUND_NUMBER'
,p_attribute_03=>'P95_PREPARED_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39835372558742344)
,p_event_id=>wwv_flow_imp.id(39835011436742341)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P95_PREPARED_URL");',
'apex.navigation.redirect(url);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(49388092137289405)
,p_name=>'New'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(17843864504792508)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48751312839721146)
,p_event_id=>wwv_flow_imp.id(49388092137289405)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'showGPopup({',
'    message: `Invoice not found!`,',
'    icon: ICON_FAIL_LARGE,',
'    width: 230,',
'    timeout: 1500,',
'    timeoutActive: true',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(51482615810608108)
,p_name=>'Load'
,p_event_sequence=>90
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51482776507608109)
,p_event_id=>wwv_flow_imp.id(51482615810608108)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("#s").trigger("click");'
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P95_PREVIOUS'
,p_client_condition_expression=>'96'
,p_server_condition_type=>'EXISTS'
,p_server_condition_expr1=>'SELECT * FROM NPT016'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51483419600608116)
,p_event_id=>wwv_flow_imp.id(51482615810608108)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'showGPopup({',
'    message: `Refund successful!`,',
'    icon: ICON_OK_LARGE,',
'    top: "80%",',
'    width: 230',
'});'))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P95_LAST_ACTION'
,p_client_condition_expression=>'add'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51483556198608117)
,p_event_id=>wwv_flow_imp.id(51482615810608108)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P95_PREVIOUS'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'95'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71163638530396713)
,p_name=>'onEnter'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P95_DATE_QUERY'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'this.browserEvent.key?.toLowerCase() === "enter" && ',
'!this.browserEvent.shiftKey'))
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71163708829396714)
,p_event_id=>wwv_flow_imp.id(71163638530396713)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'console.log("OPEN OPTIONS")'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71164050558396717)
,p_name=>'onClose'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(71163194114396708)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71164783985396724)
,p_event_id=>wwv_flow_imp.id(71164050558396717)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P95_DAILY_DATE'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P255_SEARCH_QUERY'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71164154826396718)
,p_event_id=>wwv_flow_imp.id(71164050558396717)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(120980914359903821)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71164278397396719)
,p_name=>'printDotMatrix'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(72231946938182714)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71164301889396720)
,p_event_id=>wwv_flow_imp.id(71164278397396719)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var d = new Date($v("P95_DAILY_DATE"));',
'var datestamp = d.getFullYear() + "";',
'',
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
'',
'console.log(datestamp)',
'generateReport("REFUND_DAILY_REPORT", "pdf", { ',
'    fileName: "daily_refund_" + datestamp + ".pdf",',
'    mode : "print",',
'    parameters : {',
'        P_PRINT_TYPE: "dotmatrix",',
'        P_APP_USER: ''&APP_USER.'',',
'        P_DATE : $v("P95_DAILY_DATE")',
'    }',
'})'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71165625996396733)
,p_event_id=>wwv_flow_imp.id(71164278397396719)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(".ui-dialog-titlebar-close").trigger("click");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71164807792396725)
,p_name=>'printGraphic'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(72232306988182715)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71165021263396727)
,p_event_id=>wwv_flow_imp.id(71164807792396725)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var d = new Date($v("P95_DAILY_DATE"));',
'var datestamp = d.getFullYear() + "";',
'',
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
'',
'console.log(datestamp)',
'generateReport("REFUND_DAILY_REPORT", "pdf", { ',
'    fileName: "daily_refund_" + datestamp + ".pdf",',
'    mode : "print",',
'    parameters : {',
'        P_PRINT_TYPE: "graphic",',
'        P_APP_USER: ''&APP_USER.'',',
'        P_DATE : $v("P95_DAILY_DATE")',
'    }',
'})'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71165794217396734)
,p_event_id=>wwv_flow_imp.id(71164807792396725)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(".ui-dialog-titlebar-close").trigger("click");'
);
wwv_flow_imp.component_end;
end;
/
