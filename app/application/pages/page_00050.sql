prompt --application/pages/page_00050
begin
--   Manifest
--     PAGE: 00050
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
 p_id=>50
,p_name=>'Transfer Records'
,p_alias=>'TRANSFER-RECORDS'
,p_step_title=>'Transfer Records'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#js/cmn#MIN#.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const ICON_OK_LARGE = "fa fa-lg fa-check-circle";',
'const ICON_FAIL_LARGE = "fa fa-lg fa-times-circle msg-icon-yellow";',
'let forSelection = $v("P50_LAST_ACTION") == ''update'' || $v("P50_LAST_ACTION") == ''add'';',
'let isIGFirstLoad = true;',
'let lastSelected = null;',
'const p50KeyMap = {',
'    u : (v) => {',
'        setTimeout(() => {',
'            $("#u").trigger("click");',
'        }, 350)',
'    },',
'',
'    v : (v) => {',
'        setTimeout(() => {',
'            $("#v").trigger("click");',
'        }, 350)',
'    },',
'',
'    i : (v) => {',
'        setTimeout(() => {',
'            $("#i").trigger("click");',
'        }, 350)',
'    },',
'',
'    d : (v) => {',
'        $("#d").trigger("click");',
'    },',
'',
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
'    s : (v) => {',
'        $("#s").trigger("click");',
'    },',
'',
'    p : (v) => {',
'        setTimeout(() => {',
'            $("#p").trigger("click");',
'        }, 350)',
'    },',
'',
'    h : (v) => {',
'        setTimeout(() => {',
'            $("#h").trigger("click");',
'        }, 350)',
'    },',
'',
'    c : (v) => {',
'        setTimeout(() => {',
'            $("#c").trigger("click");',
'        }, 350)',
'    },',
'',
'    o : (v) => {',
'        setTimeout(() => {',
'            $("#o").trigger("click");',
'        }, 350)',
'    },',
'',
'    escape : (v) => {',
'        if(!$("#printingOptions").is('':visible'')){',
'            $.event.trigger("exit");',
'        }',
'    },',
'    ',
'    home: (v) => {',
'        $("#top").trigger("click");',
'    },',
'    end: (v) => {',
'        $("#bottom").trigger("click");',
'    }',
'}',
'',
'function mapP50Keys() {',
'    $(document).off(''keydown.p50keyevents'');',
'    $(document).on(''keydown.p50keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p50KeyMap[key]) {',
'            ev.preventDefault();',
'            p50KeyMap[key]();',
'        }',
'    });',
'}',
'',
'function selectFirstRow() {',
'    let region = apex.region("transferList")',
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
'    let region = apex.region("transferList")',
'    let view = region.call("getCurrentView"),',
'    model = view.model,',
'    view$ = view.view$;',
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
'}',
'',
'function focusOnRecord(igId, recId, callback) {',
'    const ig1 = apex.region(igId).widget();',
'    const gv1 = ig1.interactiveGrid("getViews").grid;',
'    const record = gv1.model.getRecord(recId);',
'',
'    let region = apex.region(igId);',
'    let view = region.call("getCurrentView"),',
'    model = view.model,',
'    view$ = view.view$;',
'    ',
'    if (record) {       ',
'        let offset,',
'            pi = view$.grid("getPageInfo"),',
'            index = model.indexOf(record);',
'',
'        offset = index * pi.rowHeight;',
'        $(".a-GV-w-scroll").scrollTop( offset );',
'',
'        setTimeout(() => {',
'            gv1.view$.grid("setSelectedRecords", [record], true);',
'        }, 500)      ',
'',
'        if (callback) {',
'            callback();',
'        }       ',
'    } else {',
'        console.log("Record not found.");',
'    }',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP50Keys();',
'setTitle("Transfer List");'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
'.icon-down-chevron, .icon-irr-sort-desc,.icon-up-chevron{',
'    display: none;',
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
'.ui-dialog-titlebar{',
'    border-bottom: 0;',
'}',
'',
'#transferList .a-IG {',
'    height: calc(75vh + 2px) !important;',
'} ',
'',
'#transferList .a-IG-contentContainer {',
'    height: 75vh !important;',
'}',
'',
'#transferList .a-IG-gridView.a-GV {',
'    height: 75vh !important;',
'}',
'',
'#transferList .a-GV-bdy {',
'    height: calc(75vh - 2.5625rem) !important;',
'}',
'',
'.t-Header .t-Header-branding {',
'    background-color: white !important;',
'    color: rgb(30, 58, 138) !important;',
'}',
'',
'.format-size{',
'    font-size: 1.01rem;',
'    font-family: Arial;',
'}',
'',
'.ui-dialog-title{',
'    font-size: 1.5rem;',
'}',
'',
'.t-Form-labelContainer{',
'    text-align: left;',
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
'table, body, #content, #nav{',
'    background-color: rgb(30, 58, 138);',
'    overflow: hidden;',
'}',
'',
'table, tr, td, th {',
'    font-size: 1.125rem;',
'    font-family: Arial;',
'}',
'',
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
'}',
'',
'.ui-dialog.modal-dialog--pullout{',
'    left: 40% !important;',
'}',
'',
'.ui-dialog-titlebar-close{',
'    display: none;',
'}',
'',
'.a-GV-hdr .a-GV-table {',
'    width: 100% !important;',
'} ',
'',
'.a-GV-header-sort{',
'    display: none;',
'}'))
,p_step_template=>wwv_flow_imp.id(5671392681337017)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10904163791353208)
,p_plug_name=>'Content'
,p_region_name=>'content'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>10
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10220110378449141)
,p_plug_name=>'Navigation Menu'
,p_region_name=>'nav'
,p_parent_plug_id=>wwv_flow_imp.id(10904163791353208)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>40
,p_plug_grid_row_css_classes=>'buttons-row'
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18918448978729202)
,p_plug_name=>'Transfer List'
,p_title=>'Transfer List'
,p_region_name=>'transferList'
,p_parent_plug_id=>wwv_flow_imp.id(10904163791353208)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders:t-Form--labelsAbove:margin-top-sm'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    transfer_id AS "Transfer ID",',
'    ''TR-'' || TO_CHAR(TRANSFER_DATE, ''yyyy'') || ''-'' || TO_CHAR(transfer_number,''fm00000'') AS "Display ID",',
'    is_posted AS "Posted",',
'    transfer_date,',
'    (SELECT warehouse_location FROM NIM027 WHERE warehouse_id = fromwarehouse_id) || '' - '' || (SELECT location_desc FROM NIM027 WHERE warehouse_id = fromwarehouse_id) AS "Transfer From Location",',
'    (SELECT warehouse_location FROM NIM027 WHERE warehouse_id = towarehouse_id) || '' - '' || (SELECT location_desc FROM NIM027 WHERE warehouse_id = towarehouse_id) AS "Transfer Destination Location",',
'    order_writer,',
'    delivery_name,',
'    receiver',
'FROM',
'    NIT010 nit10',
'WHERE',
'    :P50_START_WITH IS NOT NULL AND ''TR-'' || to_char(transfer_date,''yyyy'') || ''-'' ||to_char(transfer_number,''fm00000'') LIKE UPPER(to_char(:P50_START_WITH)) || ''%''',
'',
'UNION',
'',
'SELECT',
'    transfer_id AS "Transfer ID",',
'    ''TR-'' || TO_CHAR(TRANSFER_DATE, ''yyyy'') || ''-'' || TO_CHAR(transfer_number,''fm00000'') AS "Display ID",',
'    is_posted AS "Posted",',
'    transfer_date,',
'    (SELECT warehouse_location FROM NIM027 WHERE warehouse_id = fromwarehouse_id) || '' - '' || (SELECT location_desc FROM NIM027 WHERE warehouse_id = fromwarehouse_id) AS "Transfer From Location",',
'    (SELECT warehouse_location FROM NIM027 WHERE warehouse_id = towarehouse_id) || '' - '' || (SELECT location_desc FROM NIM027 WHERE warehouse_id = towarehouse_id) AS "Transfer Destination Location",',
'    order_writer,',
'    delivery_name,',
'    receiver',
'FROM',
'    NIT010 nit10',
'WHERE',
'    :P50_SELECTED_ID IS NOT NULL AND :P50_SELECTED_ID_STORE = transfer_id',
'',
'UNION',
'',
'SELECT DISTINCT',
'    nit10.transfer_id AS "Transfer ID",',
'    ''TR-'' || TO_CHAR(nit10.TRANSFER_DATE, ''yyyy'') || ''-'' || TO_CHAR(nit10.transfer_number,''fm00000'') AS "Display ID",',
'    nit10.is_posted AS "Posted",',
'    nit10.transfer_date,',
'    (SELECT warehouse_location FROM NIM027 WHERE warehouse_id = fromwarehouse_id) || '' - '' || (SELECT location_desc FROM NIM027 WHERE warehouse_id = fromwarehouse_id) AS "Transfer From Location",',
'    (SELECT warehouse_location FROM NIM027 WHERE warehouse_id = towarehouse_id) || '' - '' || (SELECT location_desc FROM NIM027 WHERE warehouse_id = towarehouse_id) AS "Transfer Destination Location",',
'    nit10.order_writer,',
'    nit10.delivery_name,',
'    nit10.receiver',
'FROM',
'    NIT001 nit1,',
'    NIT002 nit2,',
'    NIT010 nit10,',
'    NIT011 nit11',
'WHERE',
'    nit10.TRANSFER_ID = nit11.TRANSFER_ID AND',
'    (nit11.ITEM_ID = nit2.ITEM_ID AND nit2.UOM_ID = (SELECT MAX(UOM_ID) FROM NIT002 WHERE ITEM_ID = nit11.ITEM_ID)) AND',
'    nit11.ITEM_ID = nit1.ITEM_ID AND',
'    (',
'        (:P50_VH_NUM_QUERY IS NOT NULL AND UPPER(nit1.ITEM_NUM) LIKE UPPER(:P50_VH_NUM_QUERY) || ''%'') OR',
'        (:P50_VH_NUM_QUERY IS NULL AND :P50_VH_DESC_QUERY IS NULL AND :P50_VH_UPC_QUERY IS NOT NULL AND UPPER(nit2.UPC) LIKE UPPER(:P50_VH_UPC_QUERY) || ''%'') OR',
'        (:P50_VH_NUM_QUERY IS NULL AND :P50_VH_UPC_QUERY IS NULL AND :P50_VH_DESC_QUERY IS NOT NULL AND UPPER(nit1.ITEM_DESC) LIKE ''%'' || UPPER(:P50_VH_DESC_QUERY) || ''%'')',
'    )'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P50_START_WITH,P50_SELECTED_ID_STORE,P50_VH_NUM_QUERY,P50_VH_UPC_QUERY,P50_VH_DESC_QUERY'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Transfer List'
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
 p_id=>wwv_flow_imp.id(18918611130729204)
,p_name=>'Transfer ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'Transfer ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
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
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(18918767612729205)
,p_name=>'TRANSFER_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TRANSFER_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Transfer Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_format_mask=>'MM/DD/YYYY'
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(18918858065729206)
,p_name=>'Transfer From Location'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'Transfer From Location'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Transfer From Location'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>243
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
 p_id=>wwv_flow_imp.id(18918953996729207)
,p_name=>'Transfer Destination Location'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'Transfer Destination Location'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Transfer Destination Location'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>243
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
 p_id=>wwv_flow_imp.id(18919047676729208)
,p_name=>'DELIVERY_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DELIVERY_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Delivery Man'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>120
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
 p_id=>wwv_flow_imp.id(18919188153729209)
,p_name=>'RECEIVER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RECEIVER'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Receiver'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>120
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
 p_id=>wwv_flow_imp.id(26844980918736923)
,p_name=>'Posted'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'Posted'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'P'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>4
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
 p_id=>wwv_flow_imp.id(58656624837535212)
,p_name=>'ORDER_WRITER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORDER_WRITER'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Order Writer'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>120
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
 p_id=>wwv_flow_imp.id(60621292204627547)
,p_name=>'Display ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'Display ID'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Transfer Number'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>14
,p_enable_filter=>false
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
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(18918555962729203)
,p_internal_uid=>18918555962729203
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
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>600
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    // options.initialSelection = !($v("P50_LAST_ACTION") == ''add'' || $v("P50_LAST_ACTION") == ''update'')',
'    options.defaultModelOptions = {',
'        pageSize: 10000',
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
 p_id=>wwv_flow_imp.id(18946398670872204)
,p_interactive_grid_id=>wwv_flow_imp.id(18918555962729203)
,p_static_id=>'189464'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(18946533187872204)
,p_report_id=>wwv_flow_imp.id(18946398670872204)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(18947096072872207)
,p_view_id=>wwv_flow_imp.id(18946533187872204)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(18918611130729204)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>151
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(18947989792872214)
,p_view_id=>wwv_flow_imp.id(18946533187872204)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(18918767612729205)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>162
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(18948774733872221)
,p_view_id=>wwv_flow_imp.id(18946533187872204)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(18918858065729206)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>314
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(18949687421872228)
,p_view_id=>wwv_flow_imp.id(18946533187872204)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(18918953996729207)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>283
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(18950555928872235)
,p_view_id=>wwv_flow_imp.id(18946533187872204)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(18919047676729208)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>163
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(18951400240872243)
,p_view_id=>wwv_flow_imp.id(18946533187872204)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(18919188153729209)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>157
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(27409086665901701)
,p_view_id=>wwv_flow_imp.id(18946533187872204)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(26844980918736923)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>59
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(59920924666321109)
,p_view_id=>wwv_flow_imp.id(18946533187872204)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(58656624837535212)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(62477282524523664)
,p_view_id=>wwv_flow_imp.id(18946533187872204)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(60621292204627547)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>165.812
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(45277893992848228)
,p_plug_name=>'Printing Options'
,p_region_name=>'printingOptions'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size480x320'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_04'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10220299040449142)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10220110378449141)
,p_button_name=>'Add'
,p_button_static_id=>'a'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>A</u> - Add'
,p_button_redirect_url=>'f?p=&APP_ID.:51:&SESSION.::&DEBUG.:::'
,p_button_condition=>'has_access(:APP_USER, 7, 20) = ''Y'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'btns'
,p_grid_new_row=>'Y'
,p_grid_column_span=>2
,p_grid_column=>1
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(45278144530848231)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(45277893992848228)
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
 p_id=>wwv_flow_imp.id(10220701987449147)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(10220110378449141)
,p_button_name=>'Update'
,p_button_static_id=>'u'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>U</u> - Update'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'has_access(:APP_USER, 7, 21) = ''Y'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'btns'
,p_grid_new_row=>'N'
,p_grid_column_span=>2
,p_grid_column=>3
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(45278253708848232)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(45277893992848228)
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
 p_id=>wwv_flow_imp.id(10221066761449150)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(10220110378449141)
,p_button_name=>'Inquire'
,p_button_static_id=>'i'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>I</u> - Inquire'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'has_access(:APP_USER, 7, 204) = ''Y'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'btns'
,p_grid_new_row=>'N'
,p_grid_column_span=>2
,p_grid_column=>5
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26845016082736924)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(10220110378449141)
,p_button_name=>'Post'
,p_button_static_id=>'o'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>O</u> - Post'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'has_access(:APP_USER, 7, 51) = ''Y'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'btns'
,p_grid_new_row=>'N'
,p_grid_column_span=>2
,p_grid_column=>7
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(71166203335396739)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(10220110378449141)
,p_button_name=>'ViewHistory'
,p_button_static_id=>'v'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>V</u> - View Item Transfer Record History'
,p_button_redirect_url=>'f?p=&APP_ID.:256:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'btns'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>4
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10220590368449145)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(10220110378449141)
,p_button_name=>'Print'
,p_button_static_id=>'p'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>P</u> - Print'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'has_access(:APP_USER, 7, 22) = ''Y'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'btns'
,p_grid_new_row=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(16029202838346122)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(10220110378449141)
,p_button_name=>'Print_Content'
,p_button_static_id=>'c'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>C</u> - Print Content'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'has_access(:APP_USER, 7, 52) = ''Y'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'btns'
,p_grid_new_row=>'N'
,p_grid_column_span=>2
,p_grid_column=>3
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10220865225449148)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(10220110378449141)
,p_button_name=>'Export'
,p_button_static_id=>'h'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>H</u> - Export'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'has_access(:APP_USER, 7, 23) = ''Y'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'btns'
,p_grid_new_row=>'N'
,p_grid_column_span=>2
,p_grid_column=>5
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10903483970353201)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(10220110378449141)
,p_button_name=>'Search'
,p_button_static_id=>'s'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>S</u> - Search'
,p_button_redirect_url=>'f?p=&APP_ID.:54:&SESSION.::&DEBUG.::P54_START_WITH:&P50_START_WITH.'
,p_button_css_classes=>'btns'
,p_grid_new_row=>'N'
,p_grid_column_span=>2
,p_grid_column=>7
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10220668965449146)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(10220110378449141)
,p_button_name=>'Top'
,p_button_static_id=>'top'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>Home</u> - Top'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns'
,p_grid_new_row=>'N'
,p_grid_column_span=>2
,p_grid_column=>9
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10220947766449149)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_imp.id(10220110378449141)
,p_button_name=>'Bottom'
,p_button_static_id=>'bottom'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>End</u> - Bottom'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10904218668353209)
,p_name=>'P50_SELECTED_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10904163791353208)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10904525761353212)
,p_name=>'P50_START_WITH'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(10904163791353208)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10904934846353216)
,p_name=>'P50_PREPARED_URL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(10904163791353208)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11426096623400429)
,p_name=>'P50_PREVIOUS'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(10904163791353208)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26845733758736931)
,p_name=>'P50_SELECTED_STATUS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(10904163791353208)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26846133780736935)
,p_name=>'P50_IS_VALID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(10904163791353208)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45278845168848238)
,p_name=>'P50_PRINT_SELECTION'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(10904163791353208)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51303136088993345)
,p_name=>'P50_LAST_ACTION'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(10904163791353208)
,p_item_default=>'none'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71166576790396742)
,p_name=>'P50_VH_NUM_QUERY'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(10904163791353208)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71166636221396743)
,p_name=>'P50_VH_UPC_QUERY'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(10904163791353208)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71166700723396744)
,p_name=>'P50_VH_DESC_QUERY'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(10904163791353208)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(72490507410106907)
,p_name=>'P50_SELECTED_ID_STORE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(10904163791353208)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10904668620353213)
,p_name=>'Open Search'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(10903483970353201)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18921389494729231)
,p_event_id=>wwv_flow_imp.id(10904668620353213)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P50_START_WITH,P50_SELECTED_ID,P50_SELECTED_ID_STORE,P50_VH_NUM_QUERY,P50_VH_UPC_QUERY,P50_VH_DESC_QUERY'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'NULL'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18920928723729227)
,p_event_id=>wwv_flow_imp.id(10904668620353213)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(document).off(''keydown.p50keyevents'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10903953597353206)
,p_name=>'Go to bottom'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(10220947766449149)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10904044904353207)
,p_event_id=>wwv_flow_imp.id(10903953597353206)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'selectLastRow()'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16027716517346107)
,p_name=>'Search'
,p_event_sequence=>20
,p_condition_element=>'P50_PREVIOUS'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'300'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16027819774346108)
,p_event_id=>wwv_flow_imp.id(16027716517346107)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("#s").trigger("click");'
,p_server_condition_type=>'EXISTS'
,p_server_condition_expr1=>'SELECT * FROM NIT010'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(51303442946993348)
,p_name=>'Show popup'
,p_event_sequence=>30
,p_condition_element=>'P50_PREVIOUS'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'56'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51302903240993343)
,p_event_id=>wwv_flow_imp.id(51303442946993348)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.region("transferList").refresh();',
'',
'let message = '''';',
'',
'if($v("P50_LAST_ACTION") == ''add''){',
'    message = ''Record added!'';',
'} else if($v("P50_LAST_ACTION") == ''add''){',
'    message = ''Record updated!'';',
'}',
'',
'showGPopup({',
'    message: message,',
'    icon: ICON_OK_LARGE,',
'    width: 500,',
'    top: "80%",',
'    timeout: 1500,',
'    closeCallback: function() {',
'        setTimeout(() => {',
'            focusOnRecord("transferList", $v("P50_SELECTED_ID_STORE"))',
'        }, 500)',
'    },',
'    timeoutActive: true',
'});',
'',
'$s("P50_LAST_ACTION", "none");'))
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'$v("P50_LAST_ACTION") == ''add'' || $v("P50_LAST_ACTION") == ''update'''
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10903784489353204)
,p_name=>'Go to top'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(10220668965449146)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10903809512353205)
,p_event_id=>wwv_flow_imp.id(10903784489353204)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'selectFirstRow()'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12126973123406425)
,p_name=>'Inquire'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(10221066761449150)
,p_condition_element=>'P50_SELECTED_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12127079647406426)
,p_event_id=>wwv_flow_imp.id(12126973123406425)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P50_PREPARED_URL := apex_page.get_url(',
'       p_page   => 53,',
'       p_items  => ''P53_TRANSFER_ID'',',
'       p_values => :P50_SELECTED_ID',
'    );',
'END;'))
,p_attribute_02=>'P50_SELECTED_ID'
,p_attribute_03=>'P50_PREPARED_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12127110068406427)
,p_event_id=>wwv_flow_imp.id(12126973123406425)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P50_PREPARED_URL");',
'apex.navigation.redirect(url);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12894031148147726)
,p_name=>'Pass ID to page 52'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(10220701987449147)
,p_condition_element=>'P50_SELECTED_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12894167761147727)
,p_event_id=>wwv_flow_imp.id(12894031148147726)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P50_PREPARED_URL := apex_page.get_url(',
'       p_page   => 52,',
'       p_items  => ''P52_TRANSFER_ID'',',
'       p_values => :P50_SELECTED_ID',
'    );',
'END;'))
,p_attribute_02=>'P50_SELECTED_ID'
,p_attribute_03=>'P50_PREPARED_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P50_SELECTED_STATUS'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12894229797147728)
,p_event_id=>wwv_flow_imp.id(12894031148147726)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P50_PREPARED_URL");',
'apex.navigation.redirect(url);'))
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P50_SELECTED_STATUS'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(15249876883369635)
,p_name=>'Print_1'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(10220590368449145)
,p_condition_element=>'P50_SELECTED_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45278919155848239)
,p_event_id=>wwv_flow_imp.id(15249876883369635)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P50_PRINT_SELECTION'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'1'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45278502205848235)
,p_event_id=>wwv_flow_imp.id(15249876883369635)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(45277893992848228)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16029067625346120)
,p_name=>'Print_2'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(10220865225449148)
,p_condition_element=>'P50_SELECTED_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45279941389848249)
,p_event_id=>wwv_flow_imp.id(16029067625346120)
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
'generateReport("TRANSFER_LIST_XLS", "xlsx", { ',
'    fileName: "TransferList_" + datestamp + ".xlsx",',
'    mode : "export",',
'    parameters : {',
'        P_STARTS_WITH: $v("P50_START_WITH"),',
'        P_PRINT_TYPE: "graphic",',
'        P_VH_NUM: $v("P50_VH_NUM_QUERY"),',
'        P_VH_UPC: $v("P50_VH_UPC_QUERY"),',
'        P_VH_DESC: $v("P50_VH_DESC_QUERY"),',
'        P_SELECTED_ID: $v("P50_SELECTED_ID_STORE")',
'    }',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16029591760346125)
,p_name=>'Print_3'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(16029202838346122)
,p_condition_element=>'P50_SELECTED_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45279116914848241)
,p_event_id=>wwv_flow_imp.id(16029591760346125)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P50_PRINT_SELECTION'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'2'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45279272302848242)
,p_event_id=>wwv_flow_imp.id(16029591760346125)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(45277893992848228)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16029769070346127)
,p_name=>'Exit'
,p_event_sequence=>100
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'exit'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16029900216346128)
,p_event_id=>wwv_flow_imp.id(16029769070346127)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P50_PREPARED_URL := apex_page.get_url(',
'       p_page   => 300',
'    );',
'END;'))
,p_attribute_03=>'P50_PREPARED_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16030015233346129)
,p_event_id=>wwv_flow_imp.id(16029769070346127)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P50_PREPARED_URL");',
'apex.navigation.redirect(url);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18919284315729210)
,p_name=>'Selection change'
,p_event_sequence=>110
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(18918448978729202)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18919349071729211)
,p_event_id=>wwv_flow_imp.id(18919284315729210)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var selectedNumber;',
'var selectedStatus;',
'',
'model=this.data.model;',
'',
'if(this.data != null){',
'    if(this.data.selectedRecords[0] != null){',
'        selectedNumber = model.getValue(this.data.selectedRecords[0], "Transfer ID");',
'        selectedStatus = model.getValue(this.data.selectedRecords[0], "Posted");',
'        console.log("TEST");',
'',
'        if(forSelection){',
'            // selectLastRow();',
'            // selectLastRow();',
'            // selectFirstRow();',
'            // selectLastRow();',
'            // selectFirstRow();',
'            ',
'            let message = '''';',
'            if($v("P50_LAST_ACTION") == ''update''){',
'                message = ''Record updated!''',
'            } else if($v("P50_LAST_ACTION") == ''add''){',
'                message = ''Record added!''',
'            }',
'            showGPopup({',
'                message: message,',
'                icon: ICON_OK_LARGE,',
'                width: 500,',
'                top: "80%",',
'                timeout: 1500,',
'                closeCallback: function() {',
'                    forSelection = false;',
'                    setTimeout(() => {',
'                        focusOnRecord("transferList", $v("P50_SELECTED_ID_STORE"))',
'                    }, 800);',
'                },',
'                timeoutActive: true',
'            });',
'        }',
'    }',
'}',
'apex.item("P50_SELECTED_ID").setValue(selectedNumber);',
'apex.item("P50_SELECTED_STATUS").setValue(selectedStatus);',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18920638467729224)
,p_name=>'Search close'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(10903483970353201)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18920702091729225)
,p_event_id=>wwv_flow_imp.id(18920638467729224)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P50_START_WITH'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P54_START_WITH'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18920826368729226)
,p_event_id=>wwv_flow_imp.id(18920638467729224)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(18918448978729202)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18921800433729236)
,p_event_id=>wwv_flow_imp.id(18920638467729224)
,p_event_result=>'TRUE'
,p_action_sequence=>50
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
 p_id=>wwv_flow_imp.id(18921082523729228)
,p_name=>'Rebind keys'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(10903483970353201)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18921125204729229)
,p_event_id=>wwv_flow_imp.id(18921082523729228)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP50Keys();',
'selectFirstRow();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26845172858736925)
,p_name=>'Post Update'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(26845016082736924)
,p_condition_element=>'P50_SELECTED_STATUS'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26846218895736936)
,p_event_id=>wwv_flow_imp.id(26845172858736925)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'Check if sufficient'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_item NUMBER;',
'    v_uom NUMBER;',
'    v_new_qty NUMBER;',
'    v_old_qty NUMBER;',
'    v_dest NUMBER;',
'    v_from NUMBER;',
'BEGIN',
'    SELECT FROMWAREHOUSE_ID INTO v_from FROM NIT010 WHERE TRANSFER_ID = :P50_SELECTED_ID;',
'    SELECT TOWAREHOUSE_ID INTO v_dest FROM NIT010 WHERE TRANSFER_ID = :P50_SELECTED_ID;',
'    ',
'    FOR i in (SELECT ITEM_ID, UOM_ID, QTY FROM NIT011 WHERE TRANSFER_ID = :P50_SELECTED_ID) LOOP   ',
'        --SET VALUES ',
'        v_item := i.ITEM_ID;',
'        v_uom := i.UOM_ID;',
'        v_new_qty := i.QTY;',
'        ',
'        :P50_IS_VALID := 1;',
'        SELECT QTY ',
'        INTO v_old_qty ',
'        FROM NIT004 ',
'        WHERE ',
'            WAREHOUSE_ID = v_from AND',
'            ITEM_ID = v_item AND',
'            UOM_ID = v_uom;',
'        IF v_old_qty < v_new_qty THEN',
'            :P50_IS_VALID := 0;',
'            EXIT;',
'        END IF;',
'    END LOOP;',
'     ',
'    IF :P50_IS_VALID = 1 THEN',
'        UPDATE NIT010',
'        SET IS_POSTED = ''P''',
'        WHERE TRANSFER_ID = :P50_SELECTED_ID; ',
'    END IF;',
'',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        :P50_IS_VALID := 0;',
'END;'))
,p_attribute_02=>'P50_SELECTED_ID,P50_IS_VALID'
,p_attribute_03=>'P50_IS_VALID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(35459386710234025)
,p_event_id=>wwv_flow_imp.id(26845172858736925)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'showGPopup({',
'    message: `Insufficient items from source warehouse for transfer!`,',
'    icon: ICON_FAIL_LARGE,',
'    width: 500,',
'    timeout: 1500,',
'    timeoutActive: true',
'});'))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P50_IS_VALID'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(35459458115234026)
,p_event_id=>wwv_flow_imp.id(26845172858736925)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'showGPopup({',
'    message: `Transfer Complete!`,',
'    icon: ICON_OK_LARGE,',
'    width: 230,',
'    timeout: 1500,',
'    timeoutActive: true',
'});'))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P50_IS_VALID'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26845487815736928)
,p_event_id=>wwv_flow_imp.id(26845172858736925)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_name=>'Update Warehouse'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_item NUMBER;',
'    v_uom NUMBER;',
'    v_new_qty NUMBER;',
'    v_old_qty NUMBER;',
'    v_dest NUMBER;',
'    v_from NUMBER;',
'BEGIN',
'    SELECT FROMWAREHOUSE_ID INTO v_from FROM NIT010 WHERE TRANSFER_ID = :P50_SELECTED_ID;',
'    SELECT TOWAREHOUSE_ID INTO v_dest FROM NIT010 WHERE TRANSFER_ID = :P50_SELECTED_ID;',
'    ',
'    FOR i in (SELECT ITEM_ID, UOM_ID, QTY FROM NIT011 WHERE TRANSFER_ID = :P50_SELECTED_ID) LOOP   ',
'        --SET VALUES ',
'        v_item := i.ITEM_ID;',
'        v_uom := i.UOM_ID;',
'        v_new_qty := i.QTY;',
'        ',
'        SELECT QTY ',
'        INTO v_old_qty ',
'        FROM NIT004 ',
'        WHERE ',
'            WAREHOUSE_ID = v_from AND',
'            ITEM_ID = v_item AND',
'            UOM_ID = v_uom;',
'        ',
'        --TAKE FROM SOURCE',
'        UPDATE',
'            NIT004',
'        SET',
'            QTY = QTY - v_new_qty',
'        WHERE',
'            WAREHOUSE_ID = v_from AND',
'            ITEM_ID = v_item AND',
'            UOM_ID = v_uom;',
'        ',
'        --ADD TO DESTINATION',
'        INSERT INTO NIT004 VALUES (v_item, v_dest, :APP_USER, SYSDATE(), '''', '''', v_new_qty, v_uom);',
'    END LOOP;',
'    ',
'EXCEPTION ',
'    WHEN dup_val_on_index THEN',
'        UPDATE',
'            NIT004',
'        SET',
'            QTY = QTY + v_new_qty,',
'            UPDATE_USER = :APP_USER,',
'            UPDATE_DATE = SYSDATE()',
'        WHERE',
'            WAREHOUSE_ID = v_dest AND',
'            ITEM_ID = v_item AND',
'            UOM_ID = v_uom;',
'END;'))
,p_attribute_02=>'P50_SELECTED_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P50_IS_VALID'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72490440858106906)
,p_event_id=>wwv_flow_imp.id(26845172858736925)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_name=>'To Transaction Map'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_item_id NUMBER;',
'    l_warehouse_in NUMBER;',
'    l_warehouse_out NUMBER;',
'    l_uom_id NUMBER;',
'    l_reference_number VARCHAR(15);',
'    l_reference_date DATE;',
'    l_qty NUMBER;',
'BEGIN',
'    FOR i IN (SELECT',
'                nit11.ITEM_ID,',
'                nit10.TOWAREHOUSE_ID,',
'                nit10.FROMWAREHOUSE_ID,',
'                nit11.UOM_ID,',
'                nit10.TRANSFER_NUMBER,',
'                nit10.TRANSFER_DATE,',
'                nit11.QTY                ',
'            FROM',
'                NIT010 nit10,',
'                NIT011 nit11',
'            WHERE',
'                nit10.TRANSFER_ID = nit11.TRANSFER_ID AND',
'                nit10.TRANSFER_ID = :P50_SELECTED_ID',
'            ) ',
'    LOOP',
'        l_item_id := i.ITEM_ID;',
'        l_warehouse_in := i.TOWAREHOUSE_ID;',
'        l_warehouse_out := i.FROMWAREHOUSE_ID;',
'        l_uom_id := i.UOM_ID;',
'        l_reference_date := i.TRANSFER_DATE;',
'        l_qty := i.QTY;',
'        l_reference_number := i.TRANSFER_NUMBER;',
'',
'        ITEM_TRANS_PKG.log_item_transaction(',
'            l_item_id,',
'            l_warehouse_in,',
'            l_uom_id,',
'            ''TR-'' || TO_CHAR(l_reference_date, ''yyyy'') || ''-'' || TO_CHAR(l_reference_number, ''fm00000''),',
'            l_reference_date,',
'            ''I'',',
'            NULL,',
'            l_qty',
'        );',
'',
'        ITEM_TRANS_PKG.log_item_transaction(',
'            l_item_id,',
'            l_warehouse_out,',
'            l_uom_id,',
'            ''TR-'' || TO_CHAR(l_reference_date, ''yyyy'') || ''-'' || TO_CHAR(l_reference_number, ''fm00000''),',
'            l_reference_date,',
'            ''O'',',
'            NULL,',
'            l_qty',
'        );',
'    END LOOP;',
'END;'))
,p_attribute_02=>'P50_SELECTED_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P50_IS_VALID'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65582709503220505)
,p_event_id=>wwv_flow_imp.id(26845172858736925)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var ig = apex.region("transferList").widget().interactiveGrid("getViews").grid;',
'var rec = ig.model.getRecord($v("P50_SELECTED_ID"));',
'',
'setTimeout(() => {',
'    $( document ).ready(function() {',
'        if (rec) {',
'            ig.view$.grid("setSelectedRecords", [rec], true);',
'        }',
'    });',
'}, "500");'))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P50_IS_VALID'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26845955315736933)
,p_event_id=>wwv_flow_imp.id(26845172858736925)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_name=>'Success'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(18918448978729202)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P50_IS_VALID'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(45278640203848236)
,p_name=>'Print Dotmatrix'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(45278144530848231)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15249911918369636)
,p_event_id=>wwv_flow_imp.id(45278640203848236)
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
'generateReport("TRANSFER_LIST", "pdf", { ',
'    fileName: "TransferList_" + datestamp + ".pdf",',
'    mode : "print",',
'    parameters : {',
'        P_STARTS_WITH : $v("P50_START_WITH"),',
'        P_PRINT_TYPE: "dotmatrix",',
'        P_VH_NUM: $v("P50_VH_NUM_QUERY"),',
'        P_VH_UPC: $v("P50_VH_UPC_QUERY"),',
'        P_VH_DESC: $v("P50_VH_DESC_QUERY"),',
'        P_SELECTED_ID: $v("P50_SELECTED_ID_STORE")',
'    }',
'});'))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P50_PRINT_SELECTION'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45279019798848240)
,p_event_id=>wwv_flow_imp.id(45278640203848236)
,p_event_result=>'TRUE'
,p_action_sequence=>30
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
'generateReport("ITEM_LINE", "pdf", { ',
'    fileName: "TransferListContents_" + datestamp + ".pdf",',
'    mode : "print",',
'    parameters : {',
'        P_TRANSFER_ID : $v("P50_SELECTED_ID"),',
'        P_PRINT_TYPE: "dotmatrix"',
'    }',
'});'))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P50_PRINT_SELECTION'
,p_client_condition_expression=>'2'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(45279580276848245)
,p_name=>'Print Graphic'
,p_event_sequence=>160
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(45278253708848232)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45279704902848247)
,p_event_id=>wwv_flow_imp.id(45279580276848245)
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
'generateReport("TRANSFER_LIST", "pdf", { ',
'    fileName: "TransferList_" + datestamp + ".pdf",',
'    mode : "print",',
'    parameters : {',
'        P_STARTS_WITH : $v("P50_START_WITH"),',
'        P_PRINT_TYPE: "graphic",',
'        P_VH_NUM: $v("P50_VH_NUM_QUERY"),',
'        P_VH_UPC: $v("P50_VH_UPC_QUERY"),',
'        P_VH_DESC: $v("P50_VH_DESC_QUERY"),',
'        P_SELECTED_ID: $v("P50_SELECTED_ID_STORE")',
'    }',
'});'))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P50_PRINT_SELECTION'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45279894204848248)
,p_event_id=>wwv_flow_imp.id(45279580276848245)
,p_event_result=>'TRUE'
,p_action_sequence=>20
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
'generateReport("ITEM_LINE", "pdf", { ',
'    fileName: "TransferListContents_" + datestamp + ".pdf",',
'    mode : "print",',
'    parameters : {',
'        P_TRANSFER_ID : $v("P50_SELECTED_ID"),',
'        P_PRINT_TYPE: "graphic"',
'    }',
'});'))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P50_PRINT_SELECTION'
,p_client_condition_expression=>'2'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71166878968396745)
,p_name=>'import vals'
,p_event_sequence=>170
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(71166203335396739)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71166962872396746)
,p_event_id=>wwv_flow_imp.id(71166878968396745)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P50_VH_NUM_QUERY'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P256_ITEM_NUMBER'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71167005829396747)
,p_event_id=>wwv_flow_imp.id(71166878968396745)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P50_VH_UPC_QUERY'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P256_UPC'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71167176415396748)
,p_event_id=>wwv_flow_imp.id(71166878968396745)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P50_VH_DESC_QUERY'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P256_ITEM_DESCRIPTION'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72489913978106901)
,p_event_id=>wwv_flow_imp.id(71166878968396745)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(18918448978729202)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72490187258106903)
,p_event_id=>wwv_flow_imp.id(71166878968396745)
,p_event_result=>'TRUE'
,p_action_sequence=>50
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
 p_id=>wwv_flow_imp.id(72490282869106904)
,p_name=>'null queries'
,p_event_sequence=>180
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(71166203335396739)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72490375303106905)
,p_event_id=>wwv_flow_imp.id(72490282869106904)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P50_VH_NUM_QUERY,P50_VH_UPC_QUERY,P50_VH_DESC_QUERY,P50_SELECTED_ID_STORE,P50_START_WITH'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'NULL'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77075308367218001)
,p_name=>'Fetch all model'
,p_event_sequence=>190
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77075453981218002)
,p_event_id=>wwv_flow_imp.id(77075308367218001)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.region("transferList").call("getCurrentView").model.fetchAll(function(status) {',
'    if ( status.done ) {',
'        ',
'    }',
'});'))
);
wwv_flow_imp.component_end;
end;
/
