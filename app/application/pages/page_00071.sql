prompt --application/pages/page_00071
begin
--   Manifest
--     PAGE: 00071
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
 p_id=>71
,p_name=>'Delivery Log Test (For Deletion)'
,p_alias=>'DELIVERY-LOG-TEST-FOR-DELETION'
,p_step_title=>'Delivery Log Test (For Deletion)'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#js/cmn#MIN#.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p28KeyMap = {',
'    f1 : (v) => {',
'        $("#f1").trigger("click");',
'    },',
'    f4 : (v) => {',
'        $("#f2").trigger("click");',
'    },',
'    f3 : (v) => {',
'        $("#f3").trigger("click");',
'    },',
'    escape : (v) => {',
'        apex.navigation.redirect($(''#P28_EXIT_URL'').val());',
'    },',
'    f8 : (v) => {',
'        $("#f8").trigger("click");',
'    }',
'}',
'',
'function mapP28Keys() {',
'    $(document).off(''keydown.p28keyevents'');',
'    $(document).on(''keydown.p28keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p28KeyMap[key]) {',
'            ev.preventDefault();',
'            p28KeyMap[key]();',
'        }',
'    });',
'}',
'',
'var emptyRecordFlag;',
'var currentDate = new Date();',
'var year = currentDate.getFullYear();',
'var month = currentDate.getMonth()+1;',
'var day = currentDate.getDate();',
'currentDate = new Date(year + ''-'' + month + ''-'' + day);',
'',
'function isDateValid(dateString) {',
'    var datePattern = /^(0[1-9]|1[0-2])\/(0[1-9]|[12][0-9]|3[01])\/\d{4}$/;',
'    if (!dateString.match(datePattern)) {',
'        return false;',
'    }',
'    var parts = dateString.split("/");',
'    var month = parseInt(parts[0], 10);',
'    var day = parseInt(parts[1], 10);',
'    var year = parseInt(parts[2], 10);',
'    var date = new Date(year, month - 1, day);',
'    return (',
'        date.getFullYear() === year &&',
'        date.getMonth() === (month - 1) &&',
'        date.getDate() === day',
'    );',
'}',
'',
'function parseMDY(value) {',
'    var date = value.split("/");',
'    var d = parseInt(date[1], 10),',
'        m = parseInt(date[0], 10),',
'        y = parseInt(date[2], 10);  ',
'    return new Date(y, m - 1, d);',
'}',
'',
'function parseDate(dateString) {',
'    var parts = dateString.split("/");',
'    return new Date(parts[2], parts[0] - 1, parts[1]);',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTitle(''Delivery Log'');',
'mapP28Keys();',
'apex.actions.shortcutSupport("off");',
'',
'const dateFields = [''P71_DATE_FROM'', ''P71_DATE_TO'', ''delivery-date''];',
'',
'//date text field',
'dateFields.forEach((fieldId) => {',
'  const dateField = document.getElementById(fieldId);',
'',
'  dateField.addEventListener(''input'', function () {',
'    let value = dateField.value.replace(/\D/g, '''');',
'',
'    if (value.length > 2) {',
'      value = value.substring(0, 2) + ''/'' + value.substring(2);',
'    }',
'    if (value.length > 5) {',
'      value = value.substring(0, 5) + ''/'' + value.substring(5, 9);',
'    }',
'',
'    if (value.length > 10) {',
'      value = value.substring(0, 10);',
'    }',
'',
'    dateField.value = value;',
'  });',
'});',
'',
'const timeFields = [''dep-time'', ''arv-time''];',
'timeFields.forEach((fieldId) => {',
'  const timeField = document.getElementById(fieldId);',
'',
'  timeField.addEventListener(''keyup'', function(e){',
'    this.value = this.value',
'    .replace(/[^\d]/g, '''')',
'    .replace(/^([\d]{4})\d+$/g, ''$1'')',
'    .replace(/\B(?=(\d{2})+(?!\d{1}))/g, ":");',
'',
'});',
'});',
'',
'//table navigation override',
'$(document).ready(function() { ',
'    var ig$ = apex.region("delivery-log").widget().interactiveGrid("getViews", "grid").view$;',
'',
'    ig$.on("keydown", ".a-GV-cell input", function(event) {',
'        var $cell = $(event.target).closest(".a-GV-cell");',
'        var cellIndex = $cell.index();',
'        var grid = apex.region("delivery-log").widget().interactiveGrid("getViews", "grid");',
'        var model = grid.model;',
'        var activeRecordId = grid.getActiveRecordId();',
'        var lastRecordId = model.getTotalRecords();',
'',
'        var currentIndex = -1;',
'        for (let index = 0; index < lastRecordId; index++) {',
'            let record = model.recordAt(index);',
'            if (model.getValue(record, "DELIVERY_ID") === activeRecordId) {',
'                currentIndex = index + 1;',
'                break;',
'            }',
'        }',
'        ',
'        if(event.which === 13){',
'            event.stopPropagation();',
'        }',
'',
'        if(cellIndex === 7 && event.keyCode === 9 && emptyRecordFlag !== ''t'') {',
'            if(!event.shiftKey && currentIndex === lastRecordId) {',
'                event.preventDefault();',
'            }',
'        }',
'    });',
'});'))
,p_css_file_urls=>'#APP_FILES#css/cmn#MIN#.css'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.buttons-row {',
'    position: absolute;',
'    width: 98vw;',
'    bottom: 1.75rem;',
'}',
'.hide{',
'    display:none;',
'}',
'#delivery-log .a-IG {',
'    height: calc(70vh + 2px) !important;',
'} ',
'',
'#delivery-log .a-IG-contentContainer {',
'    height: 70vh !important;',
'}',
'',
'#delivery-log .a-IG-gridView.a-GV {',
'    height: 70vh !important;',
'}',
'',
'#delivery-log .a-GV-bdy {',
'    height: calc(70vh - 2.5625rem) !important;',
'}',
'',
'.t-Header .t-Header-branding {',
'    background-color: white !important;',
'    color: rgb(30, 58, 138) !important;',
'}',
' ',
'.title-header {',
'    display: flex;',
'    justify-content: center;',
'    margin-top: 1.5rem;',
'    color: white;',
'    font-size: 2rem;',
'    font-weight: 700;',
'    line-height: normal;',
'}',
' ',
'body{',
'    background-color: rgb(30, 58, 138);',
'}',
'',
'#delivery-log table,',
'#delivery-log tr,',
'#delivery-log td{',
'    font-size: 1.125rem;',
'    border: 0.0625rem solid black;',
'}',
'',
'#delivery-log th{',
'        font-size: 1rem;',
'}',
'',
'.a-GV-table .a-GV-cell, th.a-GV-header{',
'    border-color: black;',
'}',
'',
'.a-GV-hdr .a-GV-table {',
'    width: 100% !important;',
'}',
'',
'.btns{',
'    font-size: 1.125rem;',
'    color: white;',
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
'    background-color: #046BC8;',
'    color: white;',
'}',
'',
'.ui-dialog.inv-qby-w {',
'   left: 50% !important; ',
'}',
'.ui-dialog-titlebar-close{',
'    display: none;',
'}',
'.ui-dialog-title{',
'    font-size : 1.25rem;',
'    padding-bottom: 0.25rem;',
'}',
'.text-white{',
'    color:white;',
'}',
'.text-black{',
'    color: black;',
'}',
'.t-Form-labelContainer.col.col-1{',
'        text-align: start;',
'}',
'.t-Form-label{',
'    font-size:1.125rem;',
'    color:white;',
'}',
'#P28_INVOICE_NUMBER_LABEL{',
'    font-size:1.125rem;',
'    color:black;',
'}',
'',
'.ui-dialog.delivery-inquire{',
'    left: 50% !important;',
'}',
'#P28_DATE_FROM_error{',
'    color: #FFD700;',
'}',
'.t-Alert{',
'    display:none;',
'}'))
,p_step_template=>wwv_flow_imp.id(5671392681337017)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(89961694759523503)
,p_plug_name=>'Delivery Log'
,p_region_name=>'delivery-log'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>100
,p_query_type=>'SQL'
,p_plug_source=>'SELECT * FROM(DELIVERY_LOG_PKG.DELIVERY_LOG_TABLE(:P71_DATE_FROM, :P71_DATE_TO));'
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P71_DATE_FROM,P71_DATE_TO'
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
 p_id=>wwv_flow_imp.id(75083749854648122)
,p_name=>'DELIVERY_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DELIVERY_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Delivery Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>10
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(75083853234648123)
,p_name=>'DELIVERY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DELIVERY_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Delivery Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(75083919413648124)
,p_name=>'BATCH'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BATCH'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Batch'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>30
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>false
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(75084058185648125)
,p_name=>'CHECKER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CHECKER'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Checker'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>20
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(75084171645648126)
,p_name=>'DELIVERY_MAN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DELIVERY_MAN'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Delivery Man'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>50
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(75084274192648127)
,p_name=>'DEP_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEP_TIME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Dep Time'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>7
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(75084367929648128)
,p_name=>'ARV_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ARV_TIME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Arv Time'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>7
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(75084452981648129)
,p_name=>'VAN_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VAN_NO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Van No'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>7
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(75084561280648130)
,p_name=>'RECEIVED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RECEIVED_BY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Received By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>30
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(89961803652523504)
,p_internal_uid=>89961803652523504
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>false
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
,p_enable_flashback=>false
,p_define_chart_view=>false
,p_enable_download=>false
,p_download_formats=>null
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
 p_id=>wwv_flow_imp.id(92853542678922444)
,p_interactive_grid_id=>wwv_flow_imp.id(89961803652523504)
,p_static_id=>'190036'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(92853800615922444)
,p_report_id=>wwv_flow_imp.id(92853542678922444)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(75171533442174453)
,p_view_id=>wwv_flow_imp.id(92853800615922444)
,p_display_seq=>102
,p_column_id=>wwv_flow_imp.id(75083749854648122)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(75172468322174462)
,p_view_id=>wwv_flow_imp.id(92853800615922444)
,p_display_seq=>103
,p_column_id=>wwv_flow_imp.id(75083853234648123)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(75173232469174468)
,p_view_id=>wwv_flow_imp.id(92853800615922444)
,p_display_seq=>104
,p_column_id=>wwv_flow_imp.id(75083919413648124)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(75174157471174475)
,p_view_id=>wwv_flow_imp.id(92853800615922444)
,p_display_seq=>105
,p_column_id=>wwv_flow_imp.id(75084058185648125)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(75175031526174482)
,p_view_id=>wwv_flow_imp.id(92853800615922444)
,p_display_seq=>106
,p_column_id=>wwv_flow_imp.id(75084171645648126)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(75175926795174490)
,p_view_id=>wwv_flow_imp.id(92853800615922444)
,p_display_seq=>107
,p_column_id=>wwv_flow_imp.id(75084274192648127)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(75176852064174496)
,p_view_id=>wwv_flow_imp.id(92853800615922444)
,p_display_seq=>108
,p_column_id=>wwv_flow_imp.id(75084367929648128)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(75177718391174504)
,p_view_id=>wwv_flow_imp.id(92853800615922444)
,p_display_seq=>109
,p_column_id=>wwv_flow_imp.id(75084452981648129)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(75178663712174512)
,p_view_id=>wwv_flow_imp.id(92853800615922444)
,p_display_seq=>110
,p_column_id=>wwv_flow_imp.id(75084561280648130)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(92848418000921665)
,p_plug_name=>'Page Controls'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>110
,p_plug_grid_row_css_classes=>'buttons-row'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(92850112459921681)
,p_plug_name=>'Search/Add Modal'
,p_region_name=>'inline-dialog'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400:t-Form--stretchInputs:t-Form--leftLabels'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_04'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(73858670291753479)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(92848418000921665)
,p_button_name=>'DATE'
,p_button_static_id=>'f1'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u> F1 </u> - Date'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(73857443868753476)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(92848418000921665)
,p_button_name=>'ADD'
,p_button_static_id=>'f2'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>F4</u> - Add'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(73857888067753478)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(92848418000921665)
,p_button_name=>'INVOICE'
,p_button_static_id=>'f3'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>F3</u> - Invoice'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(73858263566753478)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(92848418000921665)
,p_button_name=>'PRINT'
,p_button_static_id=>'f8'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>F8</u> - Print'
,p_button_redirect_url=>'f?p=&APP_ID.:107:&SESSION.::&DEBUG.:107::'
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92856643095921793)
,p_name=>'P71_INVOICE_NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(92850112459921681)
,p_prompt=>'Search By Invoice Number:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'fs-1125 text-black'
,p_grid_label_column_span=>5
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:margin-top-sm:margin-bottom-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92859065141921805)
,p_name=>'P71_EXIT_URL'
,p_item_sequence=>120
,p_source=>'apex_page.get_url(p_page => 300)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(93976481091227422)
,p_name=>'P71_SELECTED_ITEM'
,p_item_sequence=>130
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(93977668627227434)
,p_name=>'P71_PREPARED_URL'
,p_item_sequence=>140
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(95109529098676585)
,p_name=>'P71_MODAL_MODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(92850112459921681)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(122577592376295194)
,p_name=>'P71_DELIVERY_ID'
,p_item_sequence=>60
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(122578892128295207)
,p_name=>'P71_DATE_FROM'
,p_item_sequence=>40
,p_prompt=>'Date From:'
,p_placeholder=>'MM/DD/YYYY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'fs-1125'
,p_colspan=>3
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(122578981710295208)
,p_name=>'P71_DATE_TO'
,p_item_sequence=>50
,p_prompt=>'To:'
,p_placeholder=>'MM/DD/YYYY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'fs-1125'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(122579517702295214)
,p_name=>'P71_BATCH_NO'
,p_item_sequence=>80
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126573962899258397)
,p_name=>'P71_DELIVERY_DATE'
,p_item_sequence=>70
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141321680806179826)
,p_name=>'P71_PROCESS'
,p_item_sequence=>90
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(73862013062753493)
,p_computation_sequence=>10
,p_computation_item=>'P71_DELIVERY_DATE'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'NULL'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(75085306136648138)
,p_computation_sequence=>20
,p_computation_item=>'P71_DATE_FROM'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'null'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(75085402860648139)
,p_computation_sequence=>30
,p_computation_item=>'P71_DATE_TO'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'null'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(73855151220753462)
,p_tabular_form_region_id=>wwv_flow_imp.id(89961694759523503)
,p_validation_name=>'Valid Date'
,p_validation_sequence=>10
,p_validation=>'DELIVERY_DATE'
,p_validation_type=>'ITEM_IS_DATE'
,p_error_message=>'#COLUMN_HEADER# is invalid.'
,p_associated_column=>'DELIVERY_DATE'
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(73855470316753464)
,p_tabular_form_region_id=>wwv_flow_imp.id(89961694759523503)
,p_validation_name=>'Current Date'
,p_validation_sequence=>20
,p_validation=>':DELIVERY_DATE = SYSDATE'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'#COLUMN_HEADER# must be current date.'
,p_associated_column=>'DELIVERY_DATE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(73871623330753512)
,p_name=>'Search/Add Modal close event'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P71_INVOICE_NUMBER'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.key?.toLowerCase() === ''escape'';'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keyup'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73872189879753514)
,p_event_id=>wwv_flow_imp.id(73871623330753512)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(92850112459921681)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(73874894696753517)
,p_name=>'On f2 click'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(73857443868753476)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73875359022753518)
,p_event_id=>wwv_flow_imp.id(73874894696753517)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'focusOnIGLastRecordFirstCell(''delivery-log'')'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73875855324753518)
,p_event_id=>wwv_flow_imp.id(73874894696753517)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(() => {',
'    $( document ).ready(function() {',
'        apex.region("delivery-log").widget().interactiveGrid("getActions").invoke("selection-add-row");',
'    });',
'},"350");',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(73876254337753520)
,p_name=>'On f3 click'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(73857888067753478)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73876704905753520)
,p_event_id=>wwv_flow_imp.id(73876254337753520)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
':P71_PREPARED_URL := apex_page.get_url(',
'    p_clear_cache => 42,',
'    p_page => 42,',
'    p_items => ''P42_BATCH,P42_DELIVERY_ID'',',
'    p_values => :P71_BATCH_NO || '','' || :P71_DELIVERY_ID',
');',
'END;'))
,p_attribute_02=>'P71_SELECTED_ITEM,P71_BATCH_NO,P71_DELIVERY_ID'
,p_attribute_03=>'P71_PREPARED_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73877730750753525)
,p_event_id=>wwv_flow_imp.id(73876254337753520)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).off(''keydown.p71keyevents'');',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73877212339753521)
,p_event_id=>wwv_flow_imp.id(73876254337753520)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect($v(''P71_PREPARED_URL''));'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(73872521225753514)
,p_name=>'On Inquire close'
,p_event_sequence=>70
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73873062182753514)
,p_event_id=>wwv_flow_imp.id(73872521225753514)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mapP71Keys();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(73873454072753515)
,p_name=>'On f1 press'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(73858670291753479)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73873987207753515)
,p_event_id=>wwv_flow_imp.id(73873454072753515)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P71_DATE_FROM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73874454377753517)
,p_event_id=>wwv_flow_imp.id(73873454072753515)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P71_DATE_FROM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(73865142012753503)
,p_name=>'On Dialog Close'
,p_event_sequence=>110
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73865691354753503)
,p_event_id=>wwv_flow_imp.id(73865142012753503)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(89961694759523503)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(73864243742753501)
,p_name=>'On Date Confirm'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P71_DATE_TO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusout'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73864798700753503)
,p_event_id=>wwv_flow_imp.id(73864243742753501)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(89961694759523503)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(73862332664753495)
,p_name=>'On selection change'
,p_event_sequence=>140
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(89961694759523503)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73863393222753500)
,p_event_id=>wwv_flow_imp.id(73862332664753495)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'emptyRecordFlag = getSelectedIGRecord(''delivery-log'')[0][0];',
'emptyRecordFlag = emptyRecordFlag.substr(0,1);'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73862895568753498)
,p_event_id=>wwv_flow_imp.id(73862332664753495)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P71_DELIVERY_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'getSelectedIGRecord(''delivery-log'')[0][0];'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73863871429753500)
,p_event_id=>wwv_flow_imp.id(73862332664753495)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P71_BATCH_NO'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'getSelectedIGRecord(''delivery-log'')[0][2];'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(73870728392753512)
,p_name=>'Set Departure Time'
,p_event_sequence=>160
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(89961694759523503)
,p_triggering_element=>'DEP_TIME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73871288262753512)
,p_event_id=>wwv_flow_imp.id(73870728392753512)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'DEP_TIME'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var time = $(''#dep-time'').val();',
'if(time.length==5){',
'    if(time.substr(0,2)>=8&&time.substr(0,2)<=11){',
'        $(''#dep-time'').val($(''#dep-time'').val() + ''AM''); ',
'    }',
'    else{',
'        $(''#dep-time'').val($(''#dep-time'').val() + ''PM'');',
'    }',
'}',
'else if(time.length==4){',
'    if(time.substr(0,1)>=8&&time.substr(0,1)<=11){',
'        $(''#dep-time'').val($(''#dep-time'').val() + ''AM'');',
'    }',
'    else{',
'        $(''#dep-time'').val($(''#dep-time'').val() + ''PM'');',
'    }',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(73869866580753510)
,p_name=>'Set Arrival Time'
,p_event_sequence=>170
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(89961694759523503)
,p_triggering_element=>'ARV_TIME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73870331334753510)
,p_event_id=>wwv_flow_imp.id(73869866580753510)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'ARV_TIME'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var time = $(''#arv-time'').val();',
'if(time.length==5){',
'    if(time.substr(0,2)>=8&&time.substr(0,2)<=11){',
'        $(''#arv-time'').val($(''#arv-time'').val() + ''AM''); ',
'    }',
'    else{',
'        $(''#arv-time'').val($(''#arv-time'').val() + ''PM'');',
'    }',
'}',
'else if(time.length==4){',
'    if(time.substr(0,1)>=8&&time.substr(0,1)<=11){',
'        $(''#arv-time'').val($(''#arv-time'').val() + ''AM'');',
'    }',
'    else{',
'        $(''#arv-time'').val($(''#arv-time'').val() + ''PM'');',
'    }',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(73878104668753526)
,p_name=>'Set Date'
,p_event_sequence=>180
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(89961694759523503)
,p_triggering_element=>'DELIVERY_DATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusout'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73878636269753526)
,p_event_id=>wwv_flow_imp.id(73878104668753526)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P71_DELIVERY_DATE'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'getSelectedIGRecord(''delivery-log'')[0][1];'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(73879035690753526)
,p_name=>'Set Read Only fields'
,p_event_sequence=>190
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73879569590753528)
,p_event_id=>wwv_flow_imp.id(73879035690753526)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// $(''#batch'').attr({''readonly'':true});',
'apex.item(''batch'').node.readOnly = true;'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(73867903224753507)
,p_name=>'On press tab'
,p_event_sequence=>200
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(89961694759523503)
,p_triggering_element=>'RECEIVED_BY'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.key?.toLowerCase() === ''tab'';'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73868408544753509)
,p_event_id=>wwv_flow_imp.id(73867903224753507)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P71_DELIVERY_DATE'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'getSelectedIGRecord(''delivery-log'')[0][1];'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73868950858753509)
,p_event_id=>wwv_flow_imp.id(73867903224753507)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var grid = apex.region("delivery-log").widget().interactiveGrid(''getViews'').grid;',
'var model = grid.model;',
'var rowId = getSelectedIGRecord(''delivery-log'')[0][0];',
'var ig = apex.region(''delivery-log'').widget().interactiveGrid("getViews","grid");',
'var rec = ig.model.getRecord(rowId);',
'apex.message.clearErrors();',
'if(!isNaN(parseMDY($(''#P71_DELIVERY_DATE'').val()))){',
'    if(emptyRecordFlag ===''t'' && parseDate($(''#P71_DELIVERY_DATE'').val()).getTime() != currentDate.getTime()){',
'        console.log(''unmatched date'');',
'        console.log(''empty record'');',
'        this.browserEvent.preventDefault();',
'        ig.view$.grid("gotoCell", rec[0], ''DELIVERY_DATE'');',
'        // apex.message.showErrors({',
'        //     type: ''error'',',
'        //     location: ''inline'',',
'        //     pageItem: ''DELIVERY_DATE'',',
'        //     message: ''Must be current date'',',
'        //     unsafe: false',
'        // });',
'    }',
'    else{',
'        if(getSelectedIGRecord(''delivery-log'')[0][1] == '''' ||',
'            getSelectedIGRecord(''delivery-log'')[0][3] == '''' ||',
'            getSelectedIGRecord(''delivery-log'')[0][4] == ''''){',
'                this.browserEvent.preventDefault();',
'                ig.view$.grid("gotoCell", rec[0], ''DELIVERY_DATE'');',
'            }',
'            else{',
'                console.log(''valid data'');',
'                console.log($(''#P71_DELIVERY_DATE'').val());',
'                var ig = apex.region("delivery-log").widget().interactiveGrid("getViews").grid;',
'                var model = ig.model;',
'                var ig$ = apex.region("delivery-log").widget().interactiveGrid("getViews").grid.view$;',
'                // var activeRecordId = ig$.grid("getActiveRecordId");',
'                // ig$.grid("gotoCell", activeRecordId, "DELIVERY_DATE").trigger("click");',
'                if(model.getChanges().length > 0) {',
'                    apex.region("delivery-log").widget().interactiveGrid("getActions").invoke("save");',
'                }',
'            }',
'    }',
'}',
'else{',
'    console.log(''invalid date'');',
'    console.log($(''#P71_DELIVERY_DATE'').val());',
'    console.log(getSelectedIGRecord(''delivery-log'')[0][1]);',
'    this.browserEvent.preventDefault();',
'    ig.view$.grid("gotoCell", rec[0], ''DELIVERY_DATE'');',
'    apex.message.showErrors({',
'            type: ''error'',',
'            location: ''inline'',',
'            pageItem: ''DELIVERY_DATE'',',
'            message: ''Delivery date must be valid.'',',
'            unsafe: false',
'        });',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73869496156753510)
,p_event_id=>wwv_flow_imp.id(73867903224753507)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P71_PROCESS'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(73879965330753529)
,p_name=>'On press Enter'
,p_event_sequence=>210
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P71_DATE_FROM'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.key?.toLowerCase() === ''enter'';'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keyup'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73880413951753529)
,p_event_id=>wwv_flow_imp.id(73879965330753529)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P71_DATE_TO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(73880898212753529)
,p_name=>'On Date To press Enter'
,p_event_sequence=>220
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P71_DATE_TO'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.key?.toLowerCase() === ''enter'';'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keyup'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73882369348753531)
,p_event_id=>wwv_flow_imp.id(73880898212753529)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(89961694759523503)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73881810605753531)
,p_event_id=>wwv_flow_imp.id(73880898212753529)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(() => {',
'    $( document ).ready(function() {',
'        $(".a-GV-cell").first().trigger("click");',
'    });',
'},"500");'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73881318796753531)
,p_event_id=>wwv_flow_imp.id(73880898212753529)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.message.clearErrors();',
'if($(''#P71_DATE_FROM'').val()>$(''#P71_DATE_TO'').val()&&$(''#P71_DATE_TO'').val()!=''''){',
'     apex.message.showErrors({',
'            type: ''error'',',
'            location: ''inline'',',
'            pageItem: ''P71_DATE_FROM'',',
'            message: ''Date From must not be greater than Date To'',',
'            unsafe: false',
'        });',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(73866039521753504)
,p_name=>'On Save'
,p_event_sequence=>230
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(89961694759523503)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridsave'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73866597914753504)
,p_event_id=>wwv_flow_imp.id(73866039521753504)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
':P71_PROCESS := :P71_PROCESS;',
'END;'))
,p_attribute_02=>'P71_PROCESS'
,p_attribute_03=>'P71_PROCESS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73867007092753504)
,p_event_id=>wwv_flow_imp.id(73866039521753504)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P71_PROCESS'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73867594109753506)
,p_event_id=>wwv_flow_imp.id(73866039521753504)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item(''#P71_PROCESS'').refresh();',
'                    if($(''#P71_PROCESS'').val()===''C''){',
'                        setTimeout(function() {',
'                            apex.region("delivery-log").refresh();',
'                        }, 1000)',
'                        console.log($(''P71_PROCESS'').val());',
'                        console.log($v(''P71_PROCESS''));',
'                        // showGPopup({',
'                        //     message: ''Add Successful!'',',
'                        //     icon: ICON_OK_LARGE,',
'                        //     width: 230,',
'                        //     timeout: 1500,',
'                        //     timeoutActive: true',
'                        // });',
'                    }',
'                    // else{',
'                    //     // showGPopup({',
'                    //     //     message: ''Update Successful!'',',
'                    //     //     icon: ICON_OK_LARGE,',
'                    //     //     width: 230,',
'                    //     //     timeout: 1500,',
'                    //     //     timeoutActive: true',
'                    //     // });',
'                    //     console.log($(''P71_PROCESS'').val());',
'                    //     console.log($v(''P71_PROCESS''));',
'                    // }',
'const ICON_OK_LARGE = ''fa fa-check-circle fa-lg'';',
'showGPopup({',
'    message: ''Changes saved!'',',
'    icon: ICON_OK_LARGE,',
'    width: 230,',
'    timeout: 1500,',
'    timeoutActive: true',
'});'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(73855793611753465)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(89961694759523503)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Delivery Log - Save Interactive Grid Data_1'
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CASE :APEX$ROW_STATUS',
'    WHEN ''C'' THEN ',
'        INSERT INTO NPT012(DELIVERY_DATE, DELIVERY_MAN, USER_CREATED, DATE_CREATED, USER_UPDATE, DATE_UPDATED,',
'        BATCH, CHECKER, DEP_TIME, ARV_TIME, VAN_NO, RECEIVED_BY)',
'        VALUES(:DELIVERY_DATE, :DELIVERY_MAN, :APP_USER, SYSDATE, :APP_USER, SYSDATE,',
'        (SELECT NVL(MAX(BATCH)+1,1) FROM NPT012 WHERE DELIVERY_DATE = :DELIVERY_DATE), :CHECKER, :DEP_TIME,',
'        :ARV_TIME, :VAN_NO, :RECEIVED_BY)',
'        RETURNING DELIVERY_ID, ''C'' INTO :DELIVERY_ID, :PROCESS;',
'    WHEN ''U'' THEN',
'        UPDATE NPT012 SET DELIVERY_DATE = :DELIVERY_DATE, DELIVERY_MAN = :DELIVERY_MAN, USER_UPDATE = :APP_USER,',
'        DATE_UPDATED = SYSDATE, CHECKER = :CHECKER, DEP_TIME = :DEP_TIME, ARV_TIME = :ARV_TIME, VAN_NO = :VAN_NO,',
'        RECEIVED_BY = :RECEIVED_BY--, BATCH = (SELECT NVL(MAX(BATCH)+1,1) FROM NPT012 WHERE DELIVERY_DATE = :DELIVERY_DATE) ',
'        WHERE DELIVERY_ID = :DELIVERY_ID;',
'    END CASE; ',
'END;'))
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>73855793611753465
);
wwv_flow_imp.component_end;
end;
/
