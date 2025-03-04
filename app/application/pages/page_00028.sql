prompt --application/pages/page_00028
begin
--   Manifest
--     PAGE: 00028
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
 p_id=>28
,p_name=>'Delivery Log'
,p_alias=>'DELIVERY-LOG'
,p_step_title=>'Delivery Log'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#js/cmn#MIN#.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
'',
'const p28KeyMap = {',
'    f1 : (v) => {',
'        $("#f1").trigger("click");',
'    },',
'    f4 : (v) => {',
'        $("#f2").trigger("click");',
'    },',
'    f3 : (v) => {',
'        if(withInvoice&&emptyRecordFlag!=''t''){',
'            $("#f3").trigger("click");',
'        }    ',
'    },',
'    escape : (v) => {',
'        apex.navigation.redirect($(''#P28_EXIT_URL'').val());',
'    },',
'    f8 : (v) => {',
'        $("#f8").trigger("click");',
'    }',
'}',
'',
'const printKeyMap = {',
'    a : (v) => {',
'        console.log(''arial'');',
'        if($("#print-controls").is('':visible'')){',
'            generateReport("DELIVERY_LOG_REPORT_ARIAL", "pdf", { ',
'                fileName: "DeliveryLog_" + datestamp + ".pdf",',
'                mode : "print",',
'                parameters : {',
'                    P_DATE_FROM : $v("P28_DATE_FROM"),',
'                    P_DATE_TO : $v("P28_DATE_TO")',
'                }',
'            });',
'        }',
'    },',
'    b : (v) => {',
'        console.log(''courier new'');',
'        console.log($v("P28_DATE_FROM"));',
'        console.log($v("P28_DATE_TO"));',
'        console.log(parseMDY($v("P28_DATE_FROM")));',
'        console.log(parseMDY($v("P28_DATE_TO")));',
'        if($("#print-controls").is('':visible'')){',
'            generateReport("DELIVERY_LOG_REPORT_ARIAL", "pdf", { ',
'                fileName: "DeliveryLog_" + datestamp + ".pdf",',
'                mode : "print",',
'                parameters : {',
'                    P_DATE_FROM : parseMDY($v("P28_DATE_FROM")),',
'                    P_DATE_TO : parseMDY($v("P28_DATE_TO"))',
'                }',
'            });',
'        }',
'    },',
'    c : (v) => {',
'        console.log(''export'');',
'        if($("#print-controls").is('':visible'')){',
'            generateReport("DELIVERY_LOG_REPORT_ARIAL", "pdf", { ',
'                fileName: "DeliveryLog_" + datestamp + ".pdf",',
'                mode : "print",',
'                parameters : {',
'                    P_DATE_FROM : $v("P28_DATE_FROM"),',
'                    P_DATE_TO : $v("P28_DATE_TO")',
'                }',
'            });',
'        }',
'    },',
'    escape : (v) => {',
'        console.log(''close dialog'');',
'            $( document ).ready(function() {',
'                $("#print-controls").dialog().dialog("close");',
'            });',
'        $(document).off(''keydown.printkeyevents'');',
'        mapP28Keys();',
'    }',
'}',
'function mapPrintKeys() {',
'    $(document).off(''keydown.printkeyevents'');',
'    $(document).on(''keydown.printkeyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (printKeyMap[key]) {',
'            ev.preventDefault();',
'            printKeyMap[key]();',
'        }',
'    });',
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
'var withInvoice = false;',
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
'}',
'',
'const ICON_ERROR_LARGE = ''fa fa-times-circle fa-lg'';',
'function TimeError(message, width, cell, ig, rec){',
'            showGPopup({',
'            message: message,',
'            icon: ICON_ERROR_LARGE,',
'            width: width,',
'            timeout: 1750,',
'            timeoutActive: true',
'        });',
'        setTimeout(() => {',
'            $( document ).ready(function() {',
'                ig.view$.grid("gotoCell", rec[0], cell);',
'            });',
'        },"1750");',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTitle(''Delivery Log'');',
'mapP28Keys();',
'apex.actions.shortcutSupport("off");',
'',
'const dateFields = [''P28_DATE_FROM'', ''P28_DATE_TO'', ''delivery-date''];',
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
'        ',
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
'.ui-dialog-titlebar{',
'    border-bottom: none;',
'}',
'.text-white{',
'    color:white;',
'}',
'.text-black{',
'    color: black;',
'}',
'.t-Form-labelContainer.col.col-1{',
'        text-align: center;',
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
'    left: 35% !important;',
'    width:60rem !important;',
'}',
'#P28_DATE_FROM_error, #P28_DATE_TO_error{',
'    color: #FFD700;',
'}',
'/* .t-Alert{',
'    display:none;',
'} */',
'.center{',
'    text-align: center;',
'}',
'#print-controls{',
'    height: 240px;',
'}',
'.t-DialogRegion-body{',
'    background-color: #046BC8;',
'}'))
,p_step_template=>wwv_flow_imp.id(5671392681337017)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16111681940770144)
,p_plug_name=>'Delivery Log'
,p_region_name=>'delivery-log'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>100
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DELIVERY_ID,',
'       TO_CHAR(DELIVERY_DATE, ''MM/DD/YYYY'') AS DELIVERY_DATE,',
'       BATCH,',
'       CHECKER,',
'       DELIVERY_MAN,',
'       DEP_TIME,',
'       ARV_TIME,',
'       VAN_NO,',
'       RECEIVED_BY',
'from (delivery_log_pkg.delivery_log_table(TO_DATE(:P28_DATE_FROM),TO_DATE(:P28_DATE_TO)))'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P28_DATE_FROM,P28_DATE_TO'
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
 p_id=>wwv_flow_imp.id(75085860462648143)
,p_name=>'DELIVERY_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DELIVERY_ID'
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
 p_id=>wwv_flow_imp.id(75085919956648144)
,p_name=>'DELIVERY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DELIVERY_DATE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Delivery Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>10
,p_enable_filter=>false
,p_filter_is_required=>false
,p_static_id=>'delivery-date'
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true,',
'        width:150,',
'        noStretch: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(75086019889648145)
,p_name=>'BATCH'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BATCH'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Batch'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'CENTER'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>false
,p_enable_filter=>false
,p_filter_is_required=>false
,p_static_id=>'batch'
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true,',
'        width:70,',
'        noStretch: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(75086168518648146)
,p_name=>'CHECKER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CHECKER'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Checker'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>20
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'        // width:150,',
'        // noStretch: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(75086219182648147)
,p_name=>'DELIVERY_MAN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DELIVERY_MAN'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Delivery Man'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>50
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true,',
'        width:400,',
'        noStretch: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(75086376842648148)
,p_name=>'DEP_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEP_TIME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Dep Time'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>7
,p_enable_filter=>false
,p_filter_is_required=>false
,p_static_id=>'dep-time'
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true,',
'        width:110,',
'        noStretch: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(75086439281648149)
,p_name=>'ARV_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ARV_TIME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Arv Time'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>7
,p_enable_filter=>false
,p_filter_is_required=>false
,p_static_id=>'arv-time'
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true,',
'        width:110,',
'        noStretch: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(75086544622648150)
,p_name=>'VAN_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VAN_NO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Van No'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>7
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true,',
'        width:110,',
'        noStretch: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(75302306378364501)
,p_name=>'RECEIVED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RECEIVED_BY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Received By'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>30
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'        // width:150,',
'        // noStretch: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(16111790833770145)
,p_internal_uid=>16111790833770145
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
 p_id=>wwv_flow_imp.id(19003529860169085)
,p_interactive_grid_id=>wwv_flow_imp.id(16111790833770145)
,p_static_id=>'190036'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(19003787797169085)
,p_report_id=>wwv_flow_imp.id(19003529860169085)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(75308683817364884)
,p_view_id=>wwv_flow_imp.id(19003787797169085)
,p_display_seq=>94
,p_column_id=>wwv_flow_imp.id(75085860462648143)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(75309547881364892)
,p_view_id=>wwv_flow_imp.id(19003787797169085)
,p_display_seq=>95
,p_column_id=>wwv_flow_imp.id(75085919956648144)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(75310485612364900)
,p_view_id=>wwv_flow_imp.id(19003787797169085)
,p_display_seq=>96
,p_column_id=>wwv_flow_imp.id(75086019889648145)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(75311376731364912)
,p_view_id=>wwv_flow_imp.id(19003787797169085)
,p_display_seq=>97
,p_column_id=>wwv_flow_imp.id(75086168518648146)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(75312253109364939)
,p_view_id=>wwv_flow_imp.id(19003787797169085)
,p_display_seq=>98
,p_column_id=>wwv_flow_imp.id(75086219182648147)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(75313190267364951)
,p_view_id=>wwv_flow_imp.id(19003787797169085)
,p_display_seq=>99
,p_column_id=>wwv_flow_imp.id(75086376842648148)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(75314000682364959)
,p_view_id=>wwv_flow_imp.id(19003787797169085)
,p_display_seq=>100
,p_column_id=>wwv_flow_imp.id(75086439281648149)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(75314827983364965)
,p_view_id=>wwv_flow_imp.id(19003787797169085)
,p_display_seq=>101
,p_column_id=>wwv_flow_imp.id(75086544622648150)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(75315787556364971)
,p_view_id=>wwv_flow_imp.id(19003787797169085)
,p_display_seq=>102
,p_column_id=>wwv_flow_imp.id(75302306378364501)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18998405182168306)
,p_plug_name=>'Page Controls'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>110
,p_plug_grid_row_css_classes=>'buttons-row'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19000099641168322)
,p_plug_name=>'Search/Add Modal'
,p_region_name=>'inline-dialog'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400:t-Form--stretchInputs:t-Form--leftLabels'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_04'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(74547755017481823)
,p_plug_name=>'Print Controls'
,p_title=>'Print'
,p_region_name=>'print-controls'
,p_region_template_options=>'#DEFAULT#:js-dialog-nosize'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>50
,p_plug_display_point=>'REGION_POSITION_04'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(74547856916481824)
,p_plug_name=>'Arial'
,p_parent_plug_id=>wwv_flow_imp.id(74547755017481823)
,p_region_css_classes=>'center text-white fs-1125'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--hiddenOverflow:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source=>'<u>A</u> - Arial'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(74548176899481827)
,p_plug_name=>'Courier New'
,p_parent_plug_id=>wwv_flow_imp.id(74547755017481823)
,p_region_css_classes=>'center text-white fs-1125'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--hiddenOverflow:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source=>'<u>B</u> - Courier New'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(74548233457481828)
,p_plug_name=>'Export'
,p_parent_plug_id=>wwv_flow_imp.id(74547755017481823)
,p_region_css_classes=>'center text-white fs-1125'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--hiddenOverflow:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source=>'<u>C</u> - Export'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(34231121246738350)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(18998405182168306)
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
 p_id=>wwv_flow_imp.id(18998585153168307)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(18998405182168306)
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
 p_id=>wwv_flow_imp.id(18999703026168319)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(18998405182168306)
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
 p_id=>wwv_flow_imp.id(18999876603168320)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(18998405182168306)
,p_button_name=>'PRINT'
,p_button_static_id=>'f8'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>F8</u> - Print'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18999955653168321)
,p_name=>'P28_EXIT_URL'
,p_item_sequence=>120
,p_source=>'apex_page.get_url(p_page => 300)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19000162860168323)
,p_name=>'P28_INVOICE_NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(19000099641168322)
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
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20117371602473938)
,p_name=>'P28_SELECTED_ITEM'
,p_item_sequence=>130
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20118559138473950)
,p_name=>'P28_PREPARED_URL'
,p_item_sequence=>140
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21253048862923115)
,p_name=>'P28_MODAL_MODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(19000099641168322)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48718482887541710)
,p_name=>'P28_DELIVERY_ID'
,p_item_sequence=>60
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48719782639541723)
,p_name=>'P28_DATE_FROM'
,p_item_sequence=>40
,p_prompt=>'Date From:'
,p_placeholder=>'MM/DD/YYYY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'fs-1125'
,p_colspan=>2
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48719872221541724)
,p_name=>'P28_DATE_TO'
,p_item_sequence=>50
,p_prompt=>'To:'
,p_placeholder=>'MM/DD/YYYY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'fs-1125'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48720408213541730)
,p_name=>'P28_BATCH_NO'
,p_item_sequence=>80
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52714853410504913)
,p_name=>'P28_DELIVERY_DATE'
,p_item_sequence=>70
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67462571317426342)
,p_name=>'P28_PROCESS'
,p_item_sequence=>90
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(52715112366504916)
,p_computation_sequence=>10
,p_computation_item=>'P28_DELIVERY_DATE'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'NULL'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(71674679866631231)
,p_computation_sequence=>20
,p_computation_item=>'P28_PROCESS'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'NULL'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(67462201008426339)
,p_tabular_form_region_id=>wwv_flow_imp.id(16111681940770144)
,p_validation_name=>'Valid Date'
,p_validation_sequence=>10
,p_validation=>'DELIVERY_DATE'
,p_validation_type=>'ITEM_IS_DATE'
,p_error_message=>'#COLUMN_HEADER# is invalid.'
,p_associated_column=>'DELIVERY_DATE'
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(67462415238426341)
,p_tabular_form_region_id=>wwv_flow_imp.id(16111681940770144)
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
 p_id=>wwv_flow_imp.id(19000756567168329)
,p_name=>'Search/Add Modal close event'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P28_INVOICE_NUMBER'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.key?.toLowerCase() === ''escape'';'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keyup'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19000830588168330)
,p_event_id=>wwv_flow_imp.id(19000756567168329)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(19000099641168322)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19001550955168337)
,p_name=>'On f2 click'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(18998585153168307)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45105571956730750)
,p_event_id=>wwv_flow_imp.id(19001550955168337)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'focusOnIGLastRecordFirstCell(''delivery-log'')'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45103819813730733)
,p_event_id=>wwv_flow_imp.id(19001550955168337)
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
 p_id=>wwv_flow_imp.id(21251769505923102)
,p_name=>'On f3 click'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(18999703026168319)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21251898380923103)
,p_event_id=>wwv_flow_imp.id(21251769505923102)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
':P28_PREPARED_URL := apex_page.get_url(',
'    p_clear_cache => 42,',
'    p_page => 42,',
'    p_items => ''P42_BATCH,P42_DELIVERY_ID'',',
'    p_values => :P28_BATCH_NO || '','' || :P28_DELIVERY_ID',
');',
'END;'))
,p_attribute_02=>'P28_SELECTED_ITEM,P28_BATCH_NO,P28_DELIVERY_ID'
,p_attribute_03=>'P28_PREPARED_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21252778854923112)
,p_event_id=>wwv_flow_imp.id(21251769505923102)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).off(''keydown.p28keyevents'');',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21251956587923104)
,p_event_id=>wwv_flow_imp.id(21251769505923102)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect($v(''P28_PREPARED_URL''));'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(21252844114923113)
,p_name=>'On Inquire close'
,p_event_sequence=>70
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21252999361923114)
,p_event_id=>wwv_flow_imp.id(21252844114923113)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mapP28Keys();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(35233527112472401)
,p_name=>'On f1 press'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(34231121246738350)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(35233600650472402)
,p_event_id=>wwv_flow_imp.id(35233527112472401)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P28_DATE_FROM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48720301448541729)
,p_event_id=>wwv_flow_imp.id(35233527112472401)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P28_DATE_FROM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44050821771431028)
,p_name=>'On Dialog Close'
,p_event_sequence=>110
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44050917576431029)
,p_event_id=>wwv_flow_imp.id(44050821771431028)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(16111681940770144)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44756587762706108)
,p_name=>'On Date Confirm'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P28_DATE_TO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusout'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44756638227706109)
,p_event_id=>wwv_flow_imp.id(44756587762706108)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(16111681940770144)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(48718000399541706)
,p_name=>'On selection change'
,p_event_sequence=>140
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(16111681940770144)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48718115741541707)
,p_event_id=>wwv_flow_imp.id(48718000399541706)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const selectedRecord = getSelectedIGRecord(''delivery-log'');',
'if (selectedRecord.length > 0) {',
'    emptyRecordFlag = getSelectedIGRecord(''delivery-log'')[0][0];',
'    emptyRecordFlag = emptyRecordFlag.substr(0,1);',
'    withInvoice = true;',
'}',
'else{',
'    withInvoice = false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48718551635541711)
,p_event_id=>wwv_flow_imp.id(48718000399541706)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P28_DELIVERY_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'getSelectedIGRecord(''delivery-log'')[0][0];'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'getSelectedIGRecord(''delivery-log'').length > 0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48720552128541731)
,p_event_id=>wwv_flow_imp.id(48718000399541706)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P28_BATCH_NO'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'getSelectedIGRecord(''delivery-log'')[0][2];'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'getSelectedIGRecord(''delivery-log'').length > 0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75082420093648109)
,p_event_id=>wwv_flow_imp.id(48718000399541706)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(() => {',
'    if(emptyRecordFlag !== ''t''){',
'        apex.item(''delivery-date'').node.readOnly = true;',
'    }',
'    else{',
'        apex.item(''delivery-date'').node.readOnly = false;',
'    }',
'},"1");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(48720693829541732)
,p_name=>'Set Departure Time'
,p_event_sequence=>160
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(16111681940770144)
,p_triggering_element=>'DEP_TIME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48720787939541733)
,p_event_id=>wwv_flow_imp.id(48720693829541732)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'DEP_TIME'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var time = $(''#dep-time'').val();',
'const ICON_ERROR_LARGE = ''fa fa-times-circle fa-lg'';',
'const selectedRecord = getSelectedIGRecord(''delivery-log'');',
'var grid = apex.region("delivery-log").widget().interactiveGrid(''getViews'').grid;',
'var model = grid.model;',
'var rowId = selectedRecord[0][0];',
'var ig = apex.region(''delivery-log'').widget().interactiveGrid("getViews","grid");',
'var rec = ig.model.getRecord(rowId);',
'if(time!=''''){',
'    if(time.length==5){',
'        if(time.substr(0,2)<1||time.substr(0,2)>12||time.substr(3,2)>59){',
'            TimeError(''Dep Time must be valid'',260,''DEP_TIME'',ig,rec);',
'        }',
'        else{',
'            if(time.substr(0,2)>=8&&time.substr(0,2)<=11){',
'                $(''#dep-time'').val($(''#dep-time'').val() + ''AM''); ',
'            }',
'            else{',
'                $(''#dep-time'').val($(''#dep-time'').val() + ''PM'');',
'            }',
'        }',
'    }',
'    else if(time.length==4){',
'        if(time.substr(0,1)<1||time.substr(2,2)>59){',
'            TimeError(''Dep Time must be valid'',260,''DEP_TIME'',ig,rec);',
'        }',
'        else{',
'            if(time.substr(0,1)>=8&&time.substr(0,1)<=11){',
'                $(''#dep-time'').val($(''#dep-time'').val() + ''AM'');',
'            }',
'            else{',
'                $(''#dep-time'').val($(''#dep-time'').val() + ''PM'');',
'            }',
'        }',
'    }',
'    else{',
'        TimeError(''Dep Time must be valid'',260,''DEP_TIME'',ig,rec);',
'    }',
'}',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(48720908218541735)
,p_name=>'Set Arrival Time'
,p_event_sequence=>170
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(16111681940770144)
,p_triggering_element=>'ARV_TIME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48720809295541734)
,p_event_id=>wwv_flow_imp.id(48720908218541735)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'ARV_TIME'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const selectedRecord = getSelectedIGRecord(''delivery-log'');',
'var grid = apex.region("delivery-log").widget().interactiveGrid(''getViews'').grid;',
'var model = grid.model;',
'var rowId = selectedRecord[0][0];',
'var ig = apex.region(''delivery-log'').widget().interactiveGrid("getViews","grid");',
'var rec = ig.model.getRecord(rowId);',
'var time = $(''#arv-time'').val();',
'var depTime = new Date();',
'var arvTime = new Date();',
'var depTimeVal =  getSelectedIGRecord(''delivery-log'')[0][5];',
'var depTimeHrs;',
'var depTimeMins;',
'if(depTimeVal.length==7){',
'    depTimeHrs = depTimeVal.substr(0,2);',
'    depTimeMins = depTimeVal.substr(3,2);',
'    if(depTimeHrs<8||depTimeHrs>11&&depTimeHrs!=12){',
'        depTimeHrs = parseInt(depTimeHrs) + 12;',
'    }',
'    depTime.setHours(depTimeHrs,depTimeMins,0);',
'}',
'else if(depTimeVal.length==6){',
'    depTimeHrs = depTimeVal.substr(0,1);',
'    depTimeMins = depTimeVal.substr(2,2);',
'    if(depTimeHrs<8||depTimeHrs>11){',
'        depTimeHrs = parseInt(depTimeHrs) + 12;',
'    }',
'    depTime.setHours(depTimeHrs,depTimeMins,0);',
'}',
'if(time!=''''){',
'    if(time.length==5){',
'        if(time.substr(0,2)<1||time.substr(0,2)>12||time.substr(3,2)>59){',
'            TimeError(''Arv Time must be valid'', 255, ''ARV_TIME'', ig, rec);',
'        }',
'        else{',
'            if(time.substr(0,2)>=8&&time.substr(0,2)<=11){',
'                arvTime.setHours(time.substr(0,2),time.substr(3,2),0);',
'                console.log(depTime>arvTime);',
'                $(''#arv-time'').val($(''#arv-time'').val() + ''AM''); ',
'            }',
'            else{',
'                if(time.substr(0,2)!=12){',
'                    time = '''' + (parseInt(time.substr(0,2)) + 12) + time.substr(2,3);',
'                }',
'                arvTime.setHours(time.substr(0,2),time.substr(3,2),0);',
'                console.log(depTime>arvTime);',
'                if(depTime>arvTime){',
'                    TimeError(''Dep Time must not be greater than Arv Time'', 430, ''DEP_TIME'', ig, rec)',
'                }',
'                $(''#arv-time'').val($(''#arv-time'').val() + ''PM'');',
'            }',
'        }',
'    }',
'    else if(time.length==4){',
'        if(time.substr(0,1)<1||time.substr(2,2)>59){',
'            TimeError(''Arv Time must be valid'', 255, ''ARV_TIME'', ig, rec);',
'        }',
'        else{',
'            if(time.substr(0,1)>=8&&time.substr(0,1)<=11){',
'                arvTime.setHours(time.substr(0,1),time.substr(2,2),0);',
'                console.log(depTime>arvTime);',
'                if(depTime>arvTime){',
'                    TimeError(''Dep Time must not be greater than Arv Time'', 430, ''DEP_TIME'', ig, rec);',
'                }',
'                $(''#arv-time'').val($(''#arv-time'').val() + ''AM'');',
'            }   ',
'            else{',
'                time = '''' + (parseInt(time.substr(0,1)) + 12) + time.substr(1,3);',
'                arvTime.setHours(time.substr(0,2),time.substr(3,2),0);',
'                console.log(depTime>arvTime);',
'                if(depTime>arvTime){',
'                    TimeError(''Dep Time must not be greater than Arv Time'', 430, ''DEP_TIME'', ig, rec)',
'                }',
'                $(''#arv-time'').val($(''#arv-time'').val() + ''PM'');',
'            }',
'        }',
'    ',
'    }',
'    else{',
'        TimeError(''Arv Time must be valid'', 255, ''ARV_TIME'', ig, rec);',
'    }',
'}',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(52714988007504914)
,p_name=>'Set Date'
,p_event_sequence=>180
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(16111681940770144)
,p_triggering_element=>'DELIVERY_DATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusout'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52715041774504915)
,p_event_id=>wwv_flow_imp.id(52714988007504914)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P28_DELIVERY_DATE'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'getSelectedIGRecord(''delivery-log'')[0][1];'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(55360180773980737)
,p_name=>'Set Read Only fields'
,p_event_sequence=>190
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(55360201903980738)
,p_event_id=>wwv_flow_imp.id(55360180773980737)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// $(''#batch'').attr({''readonly'':true});',
'apex.item(''batch'').node.readOnly = true;'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(55361009147980746)
,p_name=>'On press tab'
,p_event_sequence=>200
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(16111681940770144)
,p_triggering_element=>'RECEIVED_BY'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.key?.toLowerCase() === ''tab'';'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(55361139608980747)
,p_event_id=>wwv_flow_imp.id(55361009147980746)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P28_DELIVERY_DATE'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'getSelectedIGRecord(''delivery-log'')[0][1];'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(55361239230980748)
,p_event_id=>wwv_flow_imp.id(55361009147980746)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const ICON_ERROR_LARGE = ''fa fa-times-circle fa-lg'';',
'console.log("event triggered");',
'const selectedRecord = getSelectedIGRecord(''delivery-log'');',
'var grid = apex.region("delivery-log").widget().interactiveGrid(''getViews'').grid;',
'var model = grid.model;',
'var rowId = selectedRecord[0][0];',
'var ig = apex.region(''delivery-log'').widget().interactiveGrid("getViews","grid");',
'var rec = ig.model.getRecord(rowId);',
'apex.message.clearErrors();',
'if(!isNaN(parseMDY($(''#P28_DELIVERY_DATE'').val()))){',
'    if(emptyRecordFlag ===''t'' && parseDate($(''#P28_DELIVERY_DATE'').val()).getTime() != currentDate.getTime()){',
'        console.log(''unmatched date'');',
'        console.log(''empty record'');',
'        this.browserEvent.preventDefault();',
'        ig.view$.grid("gotoCell", rec[0], ''DELIVERY_DATE'');',
'        showGPopup({',
'            message: ''Delivery Date must be current date'',',
'            icon: ICON_ERROR_LARGE,',
'            width: 360,',
'            timeout: 1750,',
'            timeoutActive: true',
'        });',
'    }',
'    else{',
'        if(getSelectedIGRecord(''delivery-log'')[0][1] == '''' ||',
'            getSelectedIGRecord(''delivery-log'')[0][3] == ''''){',
'                this.browserEvent.preventDefault();',
'                ig.view$.grid("gotoCell", rec[0], ''DELIVERY_DATE'');',
'            }',
'            else{',
'                console.log(''valid data'');',
'                console.log($(''#P28_DELIVERY_DATE'').val());',
'                var ig = apex.region("delivery-log").widget().interactiveGrid("getViews").grid;',
'                var model = ig.model;',
'                var ig$ = apex.region("delivery-log").widget().interactiveGrid("getViews").grid.view$;',
'                // var activeRecordId = ig$.grid("getActiveRecordId");',
'                if(model.getChanges().length > 0) {',
'                    console.log("with changes");',
'                    apex.region("delivery-log").widget().interactiveGrid("getActions").invoke("save");',
'                }',
'            }',
'    }',
'}',
'else{',
'    console.log(''invalid date'');',
'    console.log($(''#P28_DELIVERY_DATE'').val());',
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
 p_id=>wwv_flow_imp.id(67462603413426343)
,p_event_id=>wwv_flow_imp.id(55361009147980746)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P28_PROCESS'
,p_build_option_id=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(55361325420980749)
,p_name=>'On press Enter'
,p_event_sequence=>210
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P28_DATE_FROM'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.key?.toLowerCase() === ''enter'';'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keyup'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67458622538426303)
,p_event_id=>wwv_flow_imp.id(55361325420980749)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P28_DATE_TO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(67458700395426304)
,p_name=>'On Date To press Enter'
,p_event_sequence=>220
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P28_DATE_TO'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.key?.toLowerCase() === ''enter'';'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keyup'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71671665849631201)
,p_event_id=>wwv_flow_imp.id(67458700395426304)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.message.clearErrors();',
'if(parseDate($(''#P28_DATE_FROM'').val())>parseDate($(''#P28_DATE_TO'').val())&&$(''#P28_DATE_TO'').val()!=''''){',
'     apex.message.showErrors({',
'            type: ''error'',',
'            location: ''inline'',',
'            pageItem: ''P28_DATE_FROM'',',
'            message: ''Date From must not be greater than Date To'',',
'            unsafe: false',
'        });',
'}',
'else if(isNaN(parseMDY($(''#P28_DATE_FROM'').val()))&&$(''#P28_DATE_FROM'').val()!==''''){',
'    apex.message.showErrors({',
'        type: ''error'',',
'        location: ''inline'',',
'        pageItem: ''P28_DATE_FROM'',',
'        message: ''Date From must be in valid format'',',
'        unsafe: false',
'    });',
'    $(''#P28_DATE_FROM'').val('''');',
'}',
'if(isNaN(parseMDY($(''#P28_DATE_TO'').val()))&&$(''#P28_DATE_TO'').val()!==''''){',
'    apex.message.showErrors({',
'        type: ''error'',',
'        location: ''inline'',',
'        pageItem: ''P28_DATE_TO'',',
'        message: ''Date To must be in valid format'',',
'        unsafe: false',
'    });',
'    $(''#P28_DATE_TO'').val('''');',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67670973450797602)
,p_event_id=>wwv_flow_imp.id(67458700395426304)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(16111681940770144)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67458805715426305)
,p_event_id=>wwv_flow_imp.id(67458700395426304)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(() => {',
'    $( document ).ready(function() {',
'        $(".a-GV-cell").first().trigger("click");',
'    });',
'},"500");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71673719446631222)
,p_name=>'On Save'
,p_event_sequence=>230
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(16111681940770144)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridsave'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71674145959631226)
,p_event_id=>wwv_flow_imp.id(71673719446631222)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
':P28_PROCESS := :P28_PROCESS;',
'END;'))
,p_attribute_02=>'P28_PROCESS'
,p_attribute_03=>'P28_PROCESS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_build_option_id=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71674207346631227)
,p_event_id=>wwv_flow_imp.id(71673719446631222)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P28_PROCESS'
,p_build_option_id=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71673820454631223)
,p_event_id=>wwv_flow_imp.id(71673719446631222)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const ICON_OK_LARGE = ''fa fa-check-circle fa-lg'';',
'// apex.item(''#P28_PROCESS'').refresh();',
'                    // if($(''#P28_PROCESS'').val()===''C''){',
'                    //     setTimeout(function() {',
'                    //         apex.region("delivery-log").refresh();',
'                    //     }, 1000)',
'                    //     console.log($(''#P28_PROCESS'').val());',
'                    //     console.log($v(''P28_PROCESS''));',
'                    //     // showGPopup({',
'                    //     //     message: ''Add Successful!'',',
'                    //     //     icon: ICON_OK_LARGE,',
'                    //     //     width: 230,',
'                    //     //     timeout: 1500,',
'                    //     //     timeoutActive: true',
'                    //     // });',
'                    // }',
'                    // else{',
'                    //     // showGPopup({',
'                    //     //     message: ''Update Successful!'',',
'                    //     //     icon: ICON_OK_LARGE,',
'                    //     //     width: 230,',
'                    //     //     timeout: 1500,',
'                    //     //     timeoutActive: true',
'                    //     // });',
'                    //     console.log($(''#P28_PROCESS'').val());',
'                    //     console.log($v(''P28_PROCESS''));',
'                    // }',
'if(this.data.status===''success''){',
'    // showGPopup({',
'    //     message: ''Changes saved'',',
'    //     icon: ICON_OK_LARGE,',
'    //     width: 230,',
'    //     timeout: 1500,',
'    //     timeoutActive: true',
'    // });',
'}',
'else{',
'    console.log(this.data.status);',
'}',
'setTimeout(() => {',
'    $(''.t-Button--closeAlert'').trigger(''click'');',
'},"1750");',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(75602768102531601)
,p_name=>'On focus loss'
,p_event_sequence=>240
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P28_DATE_FROM'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusout'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75602815837531602)
,p_event_id=>wwv_flow_imp.id(75602768102531601)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.message.clearErrors();',
'if(isNaN(parseMDY($(''#P28_DATE_FROM'').val()))){',
'    apex.message.showErrors({',
'            type: ''error'',',
'            location: ''inline'',',
'            pageItem: ''P28_DATE_FROM'',',
'            message: ''Date From must be in valid format'',',
'            unsafe: false',
'        });',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(75602909597531603)
,p_name=>'On Date To Focus Loss'
,p_event_sequence=>250
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P28_DATE_TO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusout'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75603091564531604)
,p_event_id=>wwv_flow_imp.id(75602909597531603)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.message.clearErrors();',
'if(isNaN(parseMDY($(''#P28_DATE_FROM'').val()))){',
'    apex.message.showErrors({',
'            type: ''error'',',
'            location: ''inline'',',
'            pageItem: ''P28_DATE_TO'',',
'            message: ''Date To must be in valid format'',',
'            unsafe: false',
'        });',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(75603135265531605)
,p_name=>'New'
,p_event_sequence=>260
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P28_DATE_FROM'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75603207327531606)
,p_event_id=>wwv_flow_imp.id(75603135265531605)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.clearErrors();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(75603372751531607)
,p_name=>'New_1'
,p_event_sequence=>270
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P28_DATE_TO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75603466416531608)
,p_event_id=>wwv_flow_imp.id(75603372751531607)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.clearErrors();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(74547972889481825)
,p_name=>'New_2'
,p_event_sequence=>280
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(18999876603168320)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74548082781481826)
,p_event_id=>wwv_flow_imp.id(74547972889481825)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(74547755017481823)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74548366470481829)
,p_event_id=>wwv_flow_imp.id(74547972889481825)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'console.log($("#print-controls").is('':visible''));',
'$(document).off(''keydown.p28keyevents'');',
'mapPrintKeys();'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(55359559276980731)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(16111681940770144)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Delivery Log - Save Interactive Grid Data_1'
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CASE :APEX$ROW_STATUS',
'    WHEN ''C'' THEN',
'        INSERT INTO NPT012(DELIVERY_DATE, DELIVERY_MAN, USER_CREATED, DATE_CREATED, USER_UPDATE, DATE_UPDATED,',
'        BATCH, CHECKER, DEP_TIME, ARV_TIME, VAN_NO, RECEIVED_BY)',
'        VALUES(:DELIVERY_DATE, :DELIVERY_MAN, :APP_USER, SYSDATE, :APP_USER, SYSDATE,',
'        (SELECT NVL(MAX(BATCH)+1,1) FROM NPT012 WHERE DELIVERY_DATE = :DELIVERY_DATE), :CHECKER, :DEP_TIME,',
'        :ARV_TIME, :VAN_NO, :RECEIVED_BY)',
'        RETURNING DELIVERY_ID INTO :DELIVERY_ID;',
'    WHEN ''U'' THEN',
'        UPDATE NPT012 SET DELIVERY_DATE = :DELIVERY_DATE, DELIVERY_MAN = :DELIVERY_MAN, USER_UPDATE = :APP_USER,',
'        DATE_UPDATED = SYSDATE, CHECKER = :CHECKER, DEP_TIME = :DEP_TIME, ARV_TIME = :ARV_TIME, VAN_NO = :VAN_NO,',
'        RECEIVED_BY = :RECEIVED_BY--, BATCH = (SELECT NVL(MAX(BATCH)+1,1) FROM NPT012 WHERE DELIVERY_DATE = :DELIVERY_DATE) ',
'        WHERE DELIVERY_ID = :DELIVERY_ID;',
'    END CASE; ',
'END;'))
,p_attribute_05=>'Y'
,p_attribute_06=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>55359559276980731
);
wwv_flow_imp.component_end;
end;
/
