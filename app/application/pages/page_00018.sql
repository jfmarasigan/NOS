prompt --application/pages/page_00018
begin
--   Manifest
--     PAGE: 00018
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
 p_id=>18
,p_name=>'RPO Line Items'
,p_alias=>'RPO-LINE-ITEMS'
,p_step_title=>'RPO Line Items'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#js/cmn#MIN#.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p18KeyMap = {',
'    escape: (v) => {',
'        if($("#item-table").is('':visible'')) {',
'            $("#close").trigger("click");',
'        }',
'    },',
'',
'    enter: (v) => {',
'        if($("#item-table").is('':visible'')) {',
'            $.event.trigger("submit")',
'        }',
'    },',
'',
'    home: (v) => {',
'        if($("#item-table").is('':visible'')) {',
'            $("#top").trigger("click");',
'        }',
'    },',
'',
'    end: (v) => {',
'        if($("#item-table").is('':visible'')) {',
'            $("#bottom").trigger("click");',
'        }',
'    }',
'}',
'',
'function mapP18Keys() {',
'    $(document).off(''keydown.p18keyevents'');',
'    $(document).on(''keydown.p18keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p18KeyMap[key]) {',
'            ev.preventDefault();',
'            p18KeyMap[key]();',
'        }',
'    });',
'}',
'',
'function selectFirstRow() {',
'    let region = apex.region("item-table")',
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
'    let region = apex.region("item-table")',
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
'// function isLastRowEmpty(currentIndex) {',
'//     let grid = apex.region("table").widget().interactiveGrid("getViews", "grid");',
'//     let model = grid.model;',
'    // let activeRecordId = grid.getActiveRecordId();',
'    // let utCsKey = model.getFieldKey("UT_CS");',
'    // let intUomKey = model.getFieldKey("INT_UOM");',
'    // let extUomKey = model.getFieldKey("UOM_CODE");',
'    // let lastRecord = model.recordAt(currentIndex - 1);',
'',
'    // let utCs = model.getValue(lastRecord, "UT_CS");',
'    // let intUom = model.getValue(lastRecord, "INT_UOM");',
'    // let extUom = model.getValue(lastRecord, "UOM_CODE");',
'',
'    // return !utCs || !intUom || !extUom;',
'// }'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP18Keys();',
'setTitle(`Line Items`);',
'// apex.message.setThemeHooks({ beforeShow: function(pMsgType, pElement$){ setTimeout(function() { $(''.t-Alert'').fadeOut(''slow''); }, 0); }});',
'$(document).ready(function() { ',
'    var ig$ = apex.region("table").widget().interactiveGrid("getViews", "grid").view$;',
'',
'    ig$.on("keydown", ".a-GV-cell input", function(event) {',
'        var $cell = $(event.target).closest(".a-GV-cell");',
'        var cellIndex = $cell.index();',
'        var grid = apex.region("table").widget().interactiveGrid("getViews", "grid");',
'        var model = grid.model;',
'        var activeRecordId = grid.getActiveRecordId();',
'        var lastRecordId = model.getTotalRecords();',
'',
'        var currentIndex = -1;',
'        for (let index = 0; index < lastRecordId; index++) {',
'            let record = model.recordAt(index);',
'            if (model.getValue(record, "ITEM_ID") === activeRecordId) {',
'                currentIndex = index + 1;',
'                break;',
'            }',
'        }',
'',
'        // if ((cellIndex === 3 || cellIndex === 5 || cellIndex === 7 || cellIndex === 8 || cellIndex === 9) && (event.key === "Enter" || event.keyCode === 13)) {',
'        //     setTimeout(function () {',
'        //         apex.region("table").widget().interactiveGrid("getActions").invoke("selection-add-row");',
'        //         setTimeout(function() {',
'        //             var ig$ = apex.region("table").widget().interactiveGrid("getViews").grid.view$;',
'        //             var activeRecordId = ig$.grid("getActiveRecordId");',
'        //             ig$.grid("gotoCell", activeRecordId, "ITEM_NUM").trigger("click");',
'        //         }, 500)',
'        //     }, 100);',
'            ',
'        //     event.preventDefault();',
'        // }',
'',
'        // const isEmpty = isLastRowEmpty(currentIndex);',
'',
'        // if ((cellIndex === 9) && (event.key === "Tab" || event.keyCode === 9)) {',
'        //     if(!event.shiftKey) {',
'        //         event.preventDefault();',
'        //         if(currentIndex === lastRecordId && !isEmpty) {',
'        //             setTimeout(function () {',
'        //                 apex.region("table").widget().interactiveGrid("getActions").invoke("selection-add-row");',
'        //                 setTimeout(function() {',
'        //                     var ig$ = apex.region("table").widget().interactiveGrid("getViews").grid.view$;',
'        //                     var activeRecordId = ig$.grid("getActiveRecordId");',
'        //                     ig$.grid("gotoCell", activeRecordId, "ITEM_NUM").trigger("click");',
'        //                 }, 500)',
'        //             }, 100);',
'        //         }',
'        //     }',
'        // }',
'',
'        if ((cellIndex === 7) && (event.key === "Tab" || event.keyCode === 9)) {',
'            if(!event.shiftKey) {',
'                event.preventDefault();',
'                if(currentIndex === lastRecordId) {',
'                    setTimeout(function () {',
'                        apex.region("table").widget().interactiveGrid("getActions").invoke("selection-add-row");',
'                        setTimeout(function() {',
'                            var ig$ = apex.region("table").widget().interactiveGrid("getViews").grid.view$;',
'                            var activeRecordId = ig$.grid("getActiveRecordId");',
'                            ig$.grid("gotoCell", activeRecordId, "ITEM_NUM").trigger("click");',
'                        }, 500)',
'                    }, 100);',
'                }',
'            }',
'        }',
'',
'        // if(cellIndex === 9 && event.keyCode === 9) {',
'        //     if(!event.shiftKey && currentIndex === lastRecordId) {',
'        //         event.preventDefault();',
'        //     }',
'        // }',
'        ',
'        // if (event.key === "Escape" || event.keyCode === 27) {',
'            // var ig = apex.region("table").widget().interactiveGrid("getViews").grid;',
'            // var model = ig.model;',
'            // var ig$ = apex.region("table").widget().interactiveGrid("getViews").grid.view$;',
'            // var activeRecordId = ig$.grid("getActiveRecordId");',
'        //     ig$.grid("gotoCell", activeRecordId, "ITEM_NUM").trigger("click");',
'        //     if(model.getChanges().length > 0) {',
'                // setTimeout(function() {',
'                //     apex.region("table").widget().interactiveGrid("getActions").invoke("save");',
'                //     if (model.getTotalRecords() === 1) {',
'                //         $("#exit").trigger("click");',
'                //     }',
'                // }, 500)',
'        //     } ',
'        //     else {',
'        //         $("#exit").trigger("click");',
'        //     }',
'',
'            ',
'        //     event.preventDefault();',
'        // }',
'',
'        if(currentIndex === lastRecordId && cellIndex === 7) {',
'            if(event.key === "Enter" || event.keyCode === 13) {',
'                var ig$ = apex.region("table").widget().interactiveGrid("getViews").grid.view$;',
'                var activeRecordId = ig$.grid("getActiveRecordId");',
'                ig$.grid("gotoCell", activeRecordId, "ITEM_NUM").trigger("click");',
'                setTimeout(function() {',
'                    apex.region("table").widget().interactiveGrid("getActions").invoke("save");',
'                }, 500)',
'            }',
'        }',
'        ',
'    });',
'',
'    $(document).on("keydown", function(e) {',
'        if (e.key === "Escape" || e.keyCode === 27) {',
'            if(!$("#item-table").is(":visible")) {',
'                $("#exit").trigger("click");',
'            }',
'            ',
'        }',
'    });',
'});',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-GV-table tr.is-selected .a-GV-cell {',
'     background-color: #F5DC1C;',
'}',
'',
'.a-PopupLOV-results {',
'    color: black;',
'    background-color: white;',
'}',
'',
'#item-table {',
'    border-radius: 12px;',
'    background-color: #056AC8 !important;',
'}',
'',
'.disabled {',
'    opacity: 0.5;',
'    cursor: not-allowed;',
'    pointer-events: none;',
'}',
'',
'.t-DialogRegion-body {',
'    background-color: #056AC8 !important;',
'}',
'',
'.space-between {',
'    justify-content: space-between;',
'}',
'',
'.d-flex {',
'    display: flex;',
'}',
'',
'.align-center {',
'    align-items: center;',
'}',
'',
'.ml-1 {',
'    margin-left: 3rem;',
'}',
'',
'#line-item label,',
'#line-item span {',
'    font-size: 1.125rem !important;',
'    color: white;',
'}',
'',
'.t-Form-labelContainer {',
'    text-align: start !important;',
'}',
'',
'.t-Header .t-Header-branding {',
'    background-color: white !important;',
'    color: rgb(30, 58, 138) !important;',
'}',
'',
'body {',
'    background-color: rgb(30, 58, 138);',
'}',
'',
'.t-Region {',
'    background-color: rgb(30, 58, 138);',
'}',
'',
'#table table,',
'#table tr,',
'#table th',
'#item-table table,',
'#item-table tr,',
'#item-table th {',
'    font-size: 1rem;',
'}',
'',
'#table td,',
'#item-table td {',
'    font-size: 1.125rem;',
'}',
'',
'.hide {',
'    display: none;',
'}',
'',
'.ui-dialog-content {',
'    overflow: hidden;',
'}',
'',
'.ui-dialog {',
'    background-color: #056AC8;',
'}',
'',
'#table .a-GV-header a, #table th.a-GV-header {',
'    background-color: #046BC8;',
'    color: white;',
'    pointer-events: none;',
'}',
'',
'.a-IG,',
'.a-GV-table .a-GV-cell, th.a-GV-header{',
'    border-color: 	black !important;',
'}',
'',
'.ui-dialog-titlebar {',
'    display: none !important;',
'}',
'',
'#table .a-GV-table,',
'#item-table .a-GV-table {',
'    width: 100% !important;',
'}',
'',
'#table .a-GV-table colgroup col:nth-child(12),',
'#table .a-GV-table colgroup col:nth-child(10),',
'#table .a-GV-table colgroup col:nth-child(11) {',
'    width: 0;',
'}',
'',
'#table .a-GV-table colgroup col:nth-child(1) {',
'    width: 11rem;',
'}',
'',
'',
'#table .a-GV-table colgroup col:nth-child(2),',
'#table .a-GV-table colgroup col:nth-child(13) {',
'    width: 8rem;',
'}',
'',
'#table .a-GV-table colgroup col:nth-child(3) {',
'    width: 25rem;',
'}',
'',
'#table .a-GV-table colgroup col:nth-child(6),',
'#table .a-GV-table colgroup col:nth-child(8) {',
'    width: 7rem;',
'}',
'',
'#table .a-GV-table colgroup col:nth-child(4),',
'#table .a-GV-table colgroup col:nth-child(5),',
'#table .a-GV-table colgroup col:nth-child(7) {',
'    width: 5rem;',
'}',
'',
'#table .a-GV-table colgroup col:nth-child(9) {',
'    width: 6rem;',
'}',
'',
'#item-table .a-GV-table colgroup col:nth-child(1) {',
'    width: 10rem;',
'}',
'',
'#item-table .a-GV-table colgroup col:nth-child(2) {',
'    width: 7rem;',
'}',
'',
'#item-table .a-GV-table colgroup col:nth-child(3) {',
'    width: 10rem;',
'}',
'',
'#item-table .a-GV-table colgroup col:nth-child(4) {',
'    width: 6rem;',
'}'))
,p_step_template=>wwv_flow_imp.id(5671392681337017)
,p_page_css_classes=>'is-readonly'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16246408351344117)
,p_plug_name=>'Line Item Details'
,p_region_name=>'line-item'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--hiddenOverflow:margin-top-md:margin-bottom-md'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>10
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21393260260641020)
,p_plug_name=>'Item Masterfile'
,p_region_name=>'item-table'
,p_region_template_options=>'#DEFAULT#:js-dialog-size720x480'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_04'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH level_1_data AS (',
'    SELECT ',
'        nit002.item_id,',
'        nit002.uom_id,',
'        nim026.uom_code AS int_uom,',
'        nit002.price AS sell_prx',
'    FROM',
'        NIT002 nit002',
'    JOIN',
'        NIM026 nim026 ON nit002.uom_id = nim026.uom_id',
'    WHERE',
'        nit002."LEVEL" = 1',
'),',
'level_4_data AS (',
'    SELECT ',
'        nit002.item_id,',
'        nit002.quantity AS ut_cs',
'    FROM',
'        NIT002 nit002',
'    WHERE',
'        nit002."LEVEL" = 4',
')',
'SELECT',
'    nit007.item_number AS "V_ITEM_NUMBER",',
'    nit001.item_id AS "ITEM_ID",',
'    nit001.item_num AS "ITEM_NUM",',
'    nit001.item_desc AS "ITEM_DESC",',
'    nim022.brand_name AS "BRAND_NAME",',
'    l1.uom_id AS "UOM_ID",',
'    l4.ut_cs AS "UT_CS",',
'    l1.int_uom AS "INT_UOM",',
'    l1.sell_prx AS "SELL_PRX",',
'    nit007.vendor_id AS "VENDOR_ID",',
'    ROW_NUMBER() OVER (ORDER BY nit001.ITEM_NUM) AS "ROW_NUM"',
'FROM',
'    NIT001 nit001',
'JOIN',
'    NIM022 nim022 ON nit001.brand_id = nim022.brand_id',
'JOIN',
'    NIT007 nit007 ON nit001.item_id = nit007.item_id',
'LEFT JOIN',
'    level_1_data l1 ON nit001.item_id = l1.item_id',
'LEFT JOIN',
'    level_4_data l4 ON nit001.item_id = l4.item_id',
'WHERE',
'    nit007.vendor_id = :P18_VENDOR_ID',
'    AND',
'    (:P18_ITEM_IDS IS NULL',
'        OR (nit001.item_id) NOT IN ',
'        (SELECT REGEXP_SUBSTR(:P18_ITEM_IDS, ''[^,]+'', 1, LEVEL)',
'         FROM dual',
'         CONNECT BY REGEXP_SUBSTR(:P18_ITEM_IDS, ''[^,]+'', 1, LEVEL) IS NOT NULL)) AND',
'    ((:P18_ITEM_NUM IS NOT NULL AND UPPER(nit001.item_num) LIKE ''%'' || UPPER(:P18_ITEM_NUM) || ''%'')',
'    OR',
'    (:P18_ITEM_NUM IS NULL AND :P18_ITEM_DESC IS NOT NULL AND UPPER(nit001.item_desc) LIKE ''%'' || UPPER(:P18_ITEM_DESC) || ''%''))'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P18_ITEM_NUM,P18_ITEM_DESC,P18_ITEM_IDS,P18_VENDOR_ID'
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
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="d-flex space-between align-center" style="color: white;">',
'    <div>',
'        <h5>Help on Item Masterfile</h5>',
'    </div>',
'    <div class="d-flex">',
'        <div><u>Home</u> - Top</div>',
'        <div class="ml-1"><u>End</u>  Bottom</div>',
'    </div>',
'</div>'))
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(29986616318862718)
,p_name=>'V_ITEM_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'V_ITEM_NUMBER'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Vendor Item Number'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>80
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
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(29986795025862719)
,p_name=>'ITEM_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEM_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>20
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
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(29986841174862720)
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
,p_is_required=>true
,p_max_length=>40
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
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(29986997819862721)
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
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(29987007516862722)
,p_name=>'BRAND_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BRAND_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Brand Name'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>200
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
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(29987170846862723)
,p_name=>'UOM_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UOM_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
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
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(29987200560862724)
,p_name=>'UT_CS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UT_CS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>70
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
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(29987341904862725)
,p_name=>'INT_UOM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INT_UOM'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>80
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
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(29987431731862726)
,p_name=>'SELL_PRX'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SELL_PRX'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
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
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(29987593610862727)
,p_name=>'VENDOR_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VENDOR_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
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
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(29988000372862732)
,p_name=>'ROW_NUM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROW_NUM'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>110
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
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(21393389596641021)
,p_internal_uid=>21393389596641021
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
,p_fixed_header_max_height=>393
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
 p_id=>wwv_flow_imp.id(21454100672948796)
,p_interactive_grid_id=>wwv_flow_imp.id(21393389596641021)
,p_static_id=>'214542'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(21454349173948798)
,p_report_id=>wwv_flow_imp.id(21454100672948796)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(30738329524510706)
,p_view_id=>wwv_flow_imp.id(21454349173948798)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(29986616318862718)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(30739294085510715)
,p_view_id=>wwv_flow_imp.id(21454349173948798)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(29986795025862719)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(30740189874510723)
,p_view_id=>wwv_flow_imp.id(21454349173948798)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(29986841174862720)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(30741059918510732)
,p_view_id=>wwv_flow_imp.id(21454349173948798)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(29986997819862721)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(30741912820510742)
,p_view_id=>wwv_flow_imp.id(21454349173948798)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(29987007516862722)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(30742822020510750)
,p_view_id=>wwv_flow_imp.id(21454349173948798)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(29987170846862723)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(30743741112510756)
,p_view_id=>wwv_flow_imp.id(21454349173948798)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(29987200560862724)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(30744651021510764)
,p_view_id=>wwv_flow_imp.id(21454349173948798)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(29987341904862725)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(30745528053510771)
,p_view_id=>wwv_flow_imp.id(21454349173948798)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(29987431731862726)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(30746464281510779)
,p_view_id=>wwv_flow_imp.id(21454349173948798)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(29987593610862727)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31004307445174292)
,p_view_id=>wwv_flow_imp.id(21454349173948798)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(29988000372862732)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(23003338014723733)
,p_plug_name=>'RPO Line Item'
,p_region_name=>'table'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    CASE',
'        WHEN nit013.VENDOR_ID = :P18_VENDOR_ID THEN nit007.ITEM_NUMBER',
'        ELSE NULL',
'    END AS "ITEM_NUMBER",',
'    nit001.ITEM_NUM,                          ',
'    nit001.ITEM_DESC,                         ',
'    nit013.QTY,                               ',
'    (SELECT nit002.QUANTITY',
'    FROM NIT002 nit002',
'    WHERE nit002.ITEM_ID = nit001.ITEM_ID',
'    AND nit002."LEVEL" = 4) AS "UT_CS",',
'    nit013.VENDOR_PRICE,                      ',
'    (SELECT nim026_uom.UOM_CODE          ',
'     FROM NIM026 nim026_uom',
'     JOIN NIT002 nit002_uom ON nim026_uom.UOM_ID = nit002_uom.UOM_ID',
'     WHERE nit002_uom.ITEM_ID = nit001.ITEM_ID',
'     AND nit002_uom."LEVEL" = 1',
'    ) AS "INT_UOM",',
'    nit013.INTERNAL_PRICE,                    ',
'    -- (SELECT nim026_uom_code.UOM_CODE',
'    --  FROM NIM026 nim026_uom_code',
'    --  WHERE nim026_uom_code.UOM_ID = nit013.external_uom_id) AS "UOM_CODE",',
'    -- nit013.EXTERNAL_PRICE,                    ',
'    (SELECT nit002_price.PRICE',
'    FROM NIT002 nit002_price',
'    WHERE nit002_price.ITEM_ID = nit001.ITEM_ID',
'    AND nit002_price."LEVEL" = 1) AS "SELL_PRX",',
'    nit013.ITEM_ID,',
'    -- nit013.EXTERNAL_UOM_ID as UOM_ID,',
'    nit013.ITEM_ID as "OLD_ITEM_ID",',
'    -- (SELECT nit002_qty.QUANTITY',
'    -- FROM NIT002 nit002_qty',
'    -- WHERE nit002_qty.ITEM_ID = nit013.ITEM_ID',
'    -- AND nit002_qty.UOM_ID = nit013.EXTERNAL_UOM_ID) AS "NIT2_QTY",',
'    nit013.VENDOR_ID AS "VENDOR_ID",',
'    -- (SELECT nit002_lvl."LEVEL"',
'    -- FROM NIT002 nit002_lvl',
'    -- WHERE nit002_lvl.ITEM_ID = nit013.ITEM_ID',
'    -- AND nit002_lvl.UOM_ID = nit013.EXTERNAL_UOM_ID) AS "LEVEL",',
'    nit013.QTY * nit013.INTERNAL_PRICE AS "TOTAL_AMOUNT"',
'FROM',
'    NIT013 nit013',
'JOIN',
'    NIT001 nit001 ON nit013.ITEM_ID = nit001.ITEM_ID',
'JOIN',
'    NIT002 nit002 ON nit001.ITEM_ID = nit002.ITEM_ID',
'JOIN',
'    NIM026 nim026 ON nit002.UOM_ID = nim026.UOM_ID',
'LEFT JOIN',
'    NIT007 nit007 ON nit001.ITEM_ID = nit007.ITEM_ID AND nit013.VENDOR_ID = nit007.VENDOR_ID',
'WHERE',
'    nit013.PO_ID = :P18_PO_NO',
'    AND nit002.UOM_ID = (SELECT MAX(UOM_ID) FROM NIT002 WHERE ITEM_ID = nit013.ITEM_ID)'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P18_PO_NO,P18_PO_VALUE'
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
 p_id=>wwv_flow_imp.id(24652163558650433)
,p_name=>'ITEM_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEM_NUMBER'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Vendor Item Number'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>80
,p_enable_filter=>false
,p_filter_is_required=>false
,p_static_id=>'v-item-num'
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
 p_id=>wwv_flow_imp.id(24652235693650434)
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
,p_is_required=>false
,p_max_length=>40
,p_enable_filter=>false
,p_filter_is_required=>false
,p_static_id=>'item-num'
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
 p_id=>wwv_flow_imp.id(24652301723650435)
,p_name=>'ITEM_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEM_DESC'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Item Description'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
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
 p_id=>wwv_flow_imp.id(24652455326650436)
,p_name=>'QTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'# / Cs'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
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
 p_id=>wwv_flow_imp.id(24652510960650437)
,p_name=>'UT_CS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UT_CS'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Ut / Cs'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'is-readonly'
,p_attribute_03=>'right'
,p_attribute_04=>'decimal'
,p_is_required=>false
,p_enable_filter=>false
,p_filter_is_required=>false
,p_static_id=>'ut-cs'
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
 p_id=>wwv_flow_imp.id(24652678774650438)
,p_name=>'VENDOR_PRICE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VENDOR_PRICE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Vendor Price'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_attribute_04=>'decimal'
,p_format_mask=>'999G999G999G999G990D00'
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
 p_id=>wwv_flow_imp.id(24652746882650439)
,p_name=>'INT_UOM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INT_UOM'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Int UOM'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'is-readonly'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>16
,p_enable_filter=>false
,p_filter_is_required=>false
,p_static_id=>'int-uom'
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
 p_id=>wwv_flow_imp.id(24652864097650440)
,p_name=>'INTERNAL_PRICE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INTERNAL_PRICE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Int Price'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_attribute_04=>'decimal'
,p_format_mask=>'999G999G999G999G990D00'
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
 p_id=>wwv_flow_imp.id(24653153821650443)
,p_name=>'SELL_PRX'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SELL_PRX'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Sell Prx'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'is-readonly'
,p_attribute_03=>'right'
,p_attribute_04=>'decimal'
,p_format_mask=>'999G999G999G999G990D00'
,p_is_required=>false
,p_enable_filter=>false
,p_filter_is_required=>false
,p_static_id=>'sell-prx'
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
 p_id=>wwv_flow_imp.id(24653243396650444)
,p_name=>'ITEM_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEM_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Item Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_enable_filter=>false
,p_filter_is_required=>false
,p_static_id=>'item-id'
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
 p_id=>wwv_flow_imp.id(26625343037248010)
,p_name=>'OLD_ITEM_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OLD_ITEM_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Old Item Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>140
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'is-readonly'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>false
,p_enable_filter=>false
,p_filter_is_required=>false
,p_static_id=>'old-item-id'
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
 p_id=>wwv_flow_imp.id(29986456861862716)
,p_name=>'VENDOR_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VENDOR_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Vendor Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>160
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'is-readonly'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>false
,p_enable_filter=>false
,p_filter_is_required=>false
,p_static_id=>'vendor-id'
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
 p_id=>wwv_flow_imp.id(77038790261800905)
,p_name=>'TOTAL_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOTAL_AMOUNT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Total Amount'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>180
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_format_mask=>'999G999G999G999G990D00'
,p_is_required=>false
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(23003419268723734)
,p_internal_uid=>23003419268723734
,p_is_editable=>true
,p_edit_operations=>'i:u'
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
,p_enable_flashback=>false
,p_define_chart_view=>false
,p_enable_download=>false
,p_download_formats=>null
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
'        resizeColumns: false,',
'        reorderColumns: false,',
'        footer: false,',
'        skipReadonlyCells: true',
'    };',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(24518629433228742)
,p_interactive_grid_id=>wwv_flow_imp.id(23003419268723734)
,p_static_id=>'245187'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(24518892078228743)
,p_report_id=>wwv_flow_imp.id(24518629433228742)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(25328606371983478)
,p_view_id=>wwv_flow_imp.id(24518892078228743)
,p_display_seq=>30
,p_column_id=>wwv_flow_imp.id(24652163558650433)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(25329797083983489)
,p_view_id=>wwv_flow_imp.id(24518892078228743)
,p_display_seq=>31
,p_column_id=>wwv_flow_imp.id(24652235693650434)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(25330880704983500)
,p_view_id=>wwv_flow_imp.id(24518892078228743)
,p_display_seq=>32
,p_column_id=>wwv_flow_imp.id(24652301723650435)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(25331955083983506)
,p_view_id=>wwv_flow_imp.id(24518892078228743)
,p_display_seq=>33
,p_column_id=>wwv_flow_imp.id(24652455326650436)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(25333077873983512)
,p_view_id=>wwv_flow_imp.id(24518892078228743)
,p_display_seq=>34
,p_column_id=>wwv_flow_imp.id(24652510960650437)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(25334184420983520)
,p_view_id=>wwv_flow_imp.id(24518892078228743)
,p_display_seq=>35
,p_column_id=>wwv_flow_imp.id(24652678774650438)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(25335240382983528)
,p_view_id=>wwv_flow_imp.id(24518892078228743)
,p_display_seq=>36
,p_column_id=>wwv_flow_imp.id(24652746882650439)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(25336376902983537)
,p_view_id=>wwv_flow_imp.id(24518892078228743)
,p_display_seq=>37
,p_column_id=>wwv_flow_imp.id(24652864097650440)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(25339560349983560)
,p_view_id=>wwv_flow_imp.id(24518892078228743)
,p_display_seq=>40
,p_column_id=>wwv_flow_imp.id(24653153821650443)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(25340681964983570)
,p_view_id=>wwv_flow_imp.id(24518892078228743)
,p_display_seq=>41
,p_column_id=>wwv_flow_imp.id(24653243396650444)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(26956547959287018)
,p_view_id=>wwv_flow_imp.id(24518892078228743)
,p_display_seq=>43
,p_column_id=>wwv_flow_imp.id(26625343037248010)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(30635007371696128)
,p_view_id=>wwv_flow_imp.id(24518892078228743)
,p_display_seq=>46
,p_column_id=>wwv_flow_imp.id(29986456861862716)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(77958666450074340)
,p_view_id=>wwv_flow_imp.id(24518892078228743)
,p_display_seq=>48
,p_column_id=>wwv_flow_imp.id(77038790261800905)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(20868519252453209)
,p_button_sequence=>40
,p_button_name=>'Exit'
,p_button_static_id=>'exit'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Exit'
,p_button_redirect_url=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.:::'
,p_grid_column_css_classes=>'hide'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(58826895975441019)
,p_button_sequence=>70
,p_button_name=>'TEST'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Test'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(21496368468198612)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(21393260260641020)
,p_button_name=>'Home'
,p_button_static_id=>'top'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Home'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'hide'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(21496451571198613)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(21393260260641020)
,p_button_name=>'End'
,p_button_static_id=>'bottom'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'End'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'hide'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(25389900557344214)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_imp.id(21393260260641020)
,p_button_name=>'Close'
,p_button_static_id=>'close'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Close'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'hide'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16246628160344119)
,p_name=>'P18_PO_NO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(16246408351344117)
,p_pre_element_text=>'PO No: &nbsp;'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>0
,p_grid_column_css_classes=>'text-white'
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:margin-left-none:t-Form-fieldContainer--normalDisplay'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16246785822344120)
,p_name=>'P18_TOTAL_QTY_CS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(16246408351344117)
,p_prompt=>'Total Qty (in Cs): '
,p_pre_element_text=>'Total Qty (in Cs): &nbsp;'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:margin-left-md:t-Form-fieldContainer--normalDisplay'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16246839137344121)
,p_name=>'P18_PO_VALUE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(16246408351344117)
,p_prompt=>'PO Value: '
,p_pre_element_text=>'Total Internal PO Value:&nbsp;$ &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:margin-left-md:t-Form-fieldContainer--normalDisplay'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21394156995641029)
,p_name=>'P18_ITEM_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(21393260260641020)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21497050750198619)
,p_name=>'P18_ITEM_NUM'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(16246408351344117)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21497184062198620)
,p_name=>'P18_ITEM_DESC'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(16246408351344117)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21975235445914303)
,p_name=>'P18_VENDOR_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(16246408351344117)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21977442329914325)
,p_name=>'P18_UOM_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(21393260260641020)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22396167166487224)
,p_name=>'P18_V_ITEM_NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(21393260260641020)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22396206535487225)
,p_name=>'P18_SELECTED_ITEM_NUM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(21393260260641020)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22396389386487226)
,p_name=>'P18_SELECTED_ITEM_DESC'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(21393260260641020)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23000981376723709)
,p_name=>'P18_SELECTED_UT_CS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(21393260260641020)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23001080836723710)
,p_name=>'P18_SELECTED_INT_UOM'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(21393260260641020)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23001140895723711)
,p_name=>'P18_SELECTED_SELL_PRX'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(21393260260641020)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24532562876263023)
,p_name=>'P18_SELECTED_ITEM_ID'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(16246408351344117)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25389272426344207)
,p_name=>'P18_ITEM_IDS'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(21393260260641020)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25392325734344238)
,p_name=>'P18_URL'
,p_item_sequence=>50
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25392824078344243)
,p_name=>'P18_FROM'
,p_item_sequence=>60
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26625443723248011)
,p_name=>'P18_PO_VALUE_EXT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(16246408351344117)
,p_prompt=>'Po Value:'
,p_pre_element_text=>'Total External PO Value:&nbsp;$ &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--normalDisplay'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29986241569862714)
,p_name=>'P18_SELECTED_VENDOR_ID'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(21393260260641020)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(21393913069641027)
,p_name=>'Select First Row'
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(21393260260641020)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21394021765641028)
,p_event_id=>wwv_flow_imp.id(21393913069641027)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var itemIdSelected;',
'var uomIdSelected;',
'var itemNoSelected;',
'var itemDescSelected;',
'var vItemNumSelected;',
'var utCsSelected;',
'var intUomSelected;',
'var sellPrxSelected;',
'var vendorIdSelected;',
'',
'if(this.data != null){',
'    if(this.data.selectedRecords[0] != null){',
'        itemIdSelected = this.data.model.getValue(this.data.selectedRecords[0], "ITEM_ID");',
'        uomIdSelected = this.data.model.getValue(this.data.selectedRecords[0], "UOM_ID");',
'        itemNoSelected = this.data.model.getValue(this.data.selectedRecords[0], "ITEM_NUM");',
'        itemDescSelected = this.data.model.getValue(this.data.selectedRecords[0], "ITEM_DESC");',
'        vItemNumSelected = this.data.model.getValue(this.data.selectedRecords[0], "V_ITEM_NUMBER");',
'        utCsSelected = this.data.model.getValue(this.data.selectedRecords[0], "UT_CS");',
'        intUomSelected = this.data.model.getValue(this.data.selectedRecords[0], "INT_UOM");',
'        sellPrxSelected = this.data.model.getValue(this.data.selectedRecords[0], "SELL_PRX");',
'        vendorIdSelected = this.data.model.getValue(this.data.selectedRecords[0], "VENDOR_ID");',
'    }',
'}',
'apex.item("P18_ITEM_ID").setValue(itemIdSelected)',
'apex.item("P18_SELECTED_ITEM_ID").setValue(itemIdSelected)',
'apex.item("P18_UOM_ID").setValue(uomIdSelected)',
'apex.item("P18_SELECTED_ITEM_NUM").setValue(itemNoSelected)',
'apex.item("P18_SELECTED_ITEM_DESC").setValue(itemDescSelected)',
'apex.item("P18_V_ITEM_NUMBER").setValue(vItemNumSelected)',
'apex.item("P18_SELECTED_UT_CS").setValue(utCsSelected)',
'apex.item("P18_SELECTED_INT_UOM").setValue(intUomSelected)',
'apex.item("P18_SELECTED_SELL_PRX").setValue(sellPrxSelected)',
'apex.item("P18_SELECTED_VENDOR_ID").setValue(vendorIdSelected)',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(21496553080198614)
,p_name=>'On Home Click'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(21496368468198612)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21496672798198615)
,p_event_id=>wwv_flow_imp.id(21496553080198614)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'selectFirstRow();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(21496710261198616)
,p_name=>'On End Click'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(21496451571198613)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21496804911198617)
,p_event_id=>wwv_flow_imp.id(21496710261198616)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'selectLastRow();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(21498481190198633)
,p_name=>'Pass Value'
,p_event_sequence=>130
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'submit'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22396430900487227)
,p_event_id=>wwv_flow_imp.id(21498481190198633)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var grid = apex.region(''table'').widget().interactiveGrid(''getViews'',''grid'');',
'var model = grid.model;',
'var record = grid.getSelectedRecords();',
'',
'record.forEach(function(object, index){',
'    rec = record[index];',
'    model.setValue(rec,''ITEM_ID'',apex.item( "P18_ITEM_ID" ).getValue());',
'    model.setValue(rec,''ITEM_NUM'',apex.item( "P18_SELECTED_ITEM_NUM" ).getValue());',
'    model.setValue(rec,''ITEM_DESC'',apex.item( "P18_SELECTED_ITEM_DESC" ).getValue());',
'    model.setValue(rec,''VENDOR_ID'',apex.item( "P18_SELECTED_VENDOR_ID" ).getValue());',
'    model.setValue(rec,''UT_CS'',apex.item( "P18_SELECTED_UT_CS" ).getValue());',
'    model.setValue(rec,''INT_UOM'',apex.item( "P18_SELECTED_INT_UOM" ).getValue());',
'    model.setValue(rec,''SELL_PRX'',apex.item( "P18_SELECTED_SELL_PRX" ).getValue());',
'    model.setValue(rec,''QTY'',''0'');',
'    model.setValue(rec,''VENDOR_PRICE'',''0'');',
'    model.setValue(rec,''INTERNAL_PRICE'',''0'');',
'    // model.setValue(rec,''EXTERNAL_PRICE'',''0'');',
'',
'    var selectedVendorId = apex.item("P18_VENDOR_ID").getValue();',
'    var itemVendorId = apex.item("P18_SELECTED_VENDOR_ID").getValue();',
'    if (selectedVendorId === itemVendorId) {',
'        model.setValue(rec, ''ITEM_NUMBER'', apex.item("P18_V_ITEM_NUMBER").getValue());',
'    } else {',
'        model.setValue(rec, ''ITEM_NUMBER'', null);',
'    }',
'});'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21498878812198637)
,p_event_id=>wwv_flow_imp.id(21498481190198633)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(21393260260641020)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22396746767487230)
,p_event_id=>wwv_flow_imp.id(21498481190198633)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var ig$ = apex.region("table").widget().interactiveGrid("getViews").grid.view$;',
'var activeRecordId = ig$.grid("getActiveRecordId");',
'',
'',
'apex.item("P18_ITEM_NUM").setValue(null);',
'apex.item("P18_ITEM_DESC").setValue(null)',
'',
'setTimeout(function () {',
'    ig$.grid("gotoCell", activeRecordId, "QTY");',
'    setTimeout(function() {',
'        var focusedCell = ig$.find(".a-GV-cell.is-active.is-focused input");',
'        console.log("focusedCell", focusedCell)',
'        if(focusedCell.length > 0) {',
'            focusedCell[0].focus();',
'            focusedCell[0].select();',
'        }',
'    },200)',
'}, 300);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(21499538051198644)
,p_name=>'Cell Selections'
,p_event_sequence=>140
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23003065174723730)
,p_event_id=>wwv_flow_imp.id(21499538051198644)
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
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21392912633641017)
,p_event_id=>wwv_flow_imp.id(21499538051198644)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).ready(function() {',
'    setTimeout(() => {',
'        var ig$ = apex.region("table").widget().interactiveGrid("getViews").grid.view$;',
'        ',
'        var activeRecordId = ig$.grid("getActiveRecordId");',
'',
'        ig$.grid("gotoCell", activeRecordId, "ITEM_NUM").trigger("click");',
'    }, 400);',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24531711769263015)
,p_name=>'Sel ITEM_NUM'
,p_event_sequence=>330
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(23003338014723733)
,p_triggering_element=>'ITEM_NUM'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'!$(''#item-table'').is('':visible'')'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24531877037263016)
,p_event_id=>wwv_flow_imp.id(24531711769263015)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_ITEM_NUM'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':ITEM_NUM'
,p_attribute_07=>'ITEM_NUM'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25389139126344206)
,p_event_id=>wwv_flow_imp.id(24531711769263015)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'ITEM_ID'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let selectedItemIDs = [];',
'let model = apex.region("table").widget().interactiveGrid(''getViews'').grid.model;',
'let totalRecords = model.getTotalRecords(true);',
'',
'for (let index = 0; index < totalRecords; index++) {',
'  let record = model.recordAt(index);',
'  ',
'  let itemID = model.getValue(record, "ITEM_ID");',
'  ',
'  if (itemID && typeof itemID === ''string'' && !itemID.startsWith(''t'')) {',
'      selectedItemIDs.push(itemID);',
'  }',
'}',
'',
'apex.item("P18_ITEM_IDS").setValue(selectedItemIDs.join('',''));',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24531919354263017)
,p_event_id=>wwv_flow_imp.id(24531711769263015)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(21393260260641020)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24532064563263018)
,p_event_id=>wwv_flow_imp.id(24531711769263015)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(21393260260641020)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25389842571344213)
,p_event_id=>wwv_flow_imp.id(24531711769263015)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if(this.data != null){',
'    if(this.data.selectedRecords[0] != null){',
'        refocusOnIG("item-table", "V_ITEM_NUMBER", this.data.selectedRecords[0]);',
'    }',
'}',
'',
'setTimeout(() => {',
'    $( document ).ready(function() {',
'        $("#item-table .a-GV-cell").first().trigger("click");',
'    });',
'}, 1000);',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24532186848263019)
,p_name=>'Set ITEM_DESC'
,p_event_sequence=>340
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(23003338014723733)
,p_triggering_element=>'ITEM_DESC'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'!$(''#item-table'').is('':visible'')'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24532281095263020)
,p_event_id=>wwv_flow_imp.id(24532186848263019)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_ITEM_DESC'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':ITEM_DESC'
,p_attribute_07=>'ITEM_DESC'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25389430723344209)
,p_event_id=>wwv_flow_imp.id(24532186848263019)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'ITEM_ID'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let selectedItemIDs = [];',
'let model = apex.region("table").widget().interactiveGrid(''getViews'').grid.model;',
'let totalRecords = model.getTotalRecords(true);',
'',
'for (let index = 0; index < totalRecords; index++) {',
'  let record = model.recordAt(index);',
'  ',
'  let itemID = model.getValue(record, "ITEM_ID");',
'  ',
'  if (itemID && typeof itemID === ''string'' && !itemID.startsWith(''t'')) {',
'      selectedItemIDs.push(itemID);',
'  }',
'}',
'',
'apex.item("P18_ITEM_IDS").setValue(selectedItemIDs.join('',''));'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24532376120263021)
,p_event_id=>wwv_flow_imp.id(24532186848263019)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(21393260260641020)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24532450309263022)
,p_event_id=>wwv_flow_imp.id(24532186848263019)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(21393260260641020)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29987625420862728)
,p_event_id=>wwv_flow_imp.id(24532186848263019)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if(this.data != null){',
'    if(this.data.selectedRecords[0] != null){',
'        refocusOnIG("item-table", "V_ITEM_NUMBER", this.data.selectedRecords[0]);',
'    }',
'}',
'',
'setTimeout(() => {',
'    $( document ).ready(function() {',
'        $("#item-table .a-GV-cell").first().trigger("click");',
'    });',
'}, 1000);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24532650885263024)
,p_name=>'Selection Change ITEM_ID'
,p_event_sequence=>350
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(23003338014723733)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24532776070263025)
,p_event_id=>wwv_flow_imp.id(24532650885263024)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_SELECTED_ITEM_ID'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var item_id;',
'',
'if (this.data && this.data.selectedRecords && this.data.selectedRecords.length > 0) {',
'    var selectedRecord = this.data.selectedRecords[0];',
'    ',
'    if (selectedRecord != null) {',
'        item_id = this.data.model.getValue(selectedRecord, "ITEM_ID");',
'    }',
'}',
'',
'if (item_id !== undefined) {',
'    apex.item("P18_SELECTED_ITEM_ID").setValue(item_id);',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24649856186650410)
,p_name=>'Set UOM_ID'
,p_event_sequence=>360
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(23003338014723733)
,p_triggering_element=>'UOM_CODE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24649919105650411)
,p_event_id=>wwv_flow_imp.id(24649856186650410)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'UOM_ID'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':UOM_CODE'
,p_attribute_07=>'UOM_CODE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24651796434650429)
,p_name=>'Make Read Only'
,p_event_sequence=>370
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24651814038650430)
,p_event_id=>wwv_flow_imp.id(24651796434650429)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("v-item-num").node.readOnly = true;',
'apex.item("item-id").node.readOnly = true;',
'apex.item("ut-cs").node.readOnly = true;',
'apex.item("int-uom").node.readOnly = true;',
'apex.item("sell-prx").node.readOnly = true;',
'// apex.item("uom-id").node.readOnly = true;',
'apex.item("old-item-id").node.readOnly = true;',
'// apex.item("nit2-qty").node.readOnly = true;',
'apex.item("vendor-id").node.readOnly = true;',
'// apex.item("level").node.readOnly = true;',
'apex.item("total-amount").node.readOnly = true;'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25389561410344210)
,p_name=>'Get Total QTY'
,p_event_sequence=>380
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(23003338014723733)
,p_triggering_element=>'QTY'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25391829622344233)
,p_event_id=>wwv_flow_imp.id(25389561410344210)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_TOTAL_QTY_CS'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':QTY'
,p_attribute_07=>'QTY'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25391912852344234)
,p_event_id=>wwv_flow_imp.id(25389561410344210)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_TOTAL_QTY_CS'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var model = apex.region("table").widget().interactiveGrid("getViews", "grid").model;',
'var n_amt, n_totamt = 0;',
'col_amt = model.getFieldKey("QTY");',
'model.forEach(function(igrow) {',
'    n_amt = parseInt(igrow[col_amt], 10);',
'    if (!isNaN(n_amt)) {',
'        n_totamt += n_amt;',
'    }',
'});',
'apex.item("P18_TOTAL_QTY_CS").setValue(n_totamt);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25390062804344215)
,p_name=>'Close Dialog'
,p_event_sequence=>390
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(25389900557344214)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25390151384344216)
,p_event_id=>wwv_flow_imp.id(25390062804344215)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(21393260260641020)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25390485500344219)
,p_event_id=>wwv_flow_imp.id(25390062804344215)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).ready(function() {',
'    setTimeout(() => {',
'        var ig$ = apex.region("table").widget().interactiveGrid("getViews").grid.view$;',
'        ',
'        var activeRecordId = ig$.grid("getActiveRecordId");',
'',
'        ig$.grid("gotoCell", activeRecordId, "ITEM_NUM").trigger("click");',
'    }, 300);',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25392001464344235)
,p_name=>'Exit'
,p_event_sequence=>400
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(23003338014723733)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.data.status == "success"'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'interactivegridsave'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25392786786344242)
,p_event_id=>wwv_flow_imp.id(25392001464344235)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(function () {',
'    var ig = apex.region("table");',
'    var view = ig.widget().interactiveGrid("getViews","grid");',
'    view.model.clearChanges();',
'}, 100);'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25392202997344237)
,p_event_id=>wwv_flow_imp.id(25392001464344235)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P18_URL := apex_page.get_url(',
'       p_page   => 29,',
'       p_items  => ''P29_PO_NO_S,P29_FROM,P29_PO_NUMBER'',',
'       p_values => :P18_PO_NO || '','' || :P18_FROM || '','' || :P18_PO_NO',
'     );',
'END;'))
,p_attribute_02=>'P18_PO_NO,P18_FROM'
,p_attribute_03=>'P18_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25392656756344241)
,p_event_id=>wwv_flow_imp.id(25392001464344235)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_PO_NO,P18_FROM'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P18_URL");',
'apex.navigation.redirect(url);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25842321347615002)
,p_name=>'Back'
,p_event_sequence=>410
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(20868519252453209)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25842426768615003)
,p_event_id=>wwv_flow_imp.id(25842321347615002)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(function () {',
'    var ig = apex.region("table");',
'    var view = ig.widget().interactiveGrid("getViews","grid");',
'    view.model.clearChanges();',
'}, 100);'))
,p_build_option_id=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25842556931615004)
,p_event_id=>wwv_flow_imp.id(25842321347615002)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P18_URL := apex_page.get_url(',
'       p_page   => 29,',
'       p_items  => ''P29_PO_NO_S,P29_FROM,P29_PO_NUMBER'',',
'       p_values => :P18_PO_NO || '','' || :P18_FROM || '','' || :P18_PO_NO',
'     );',
'END;'))
,p_attribute_02=>'P18_PO_NO,P18_FROM'
,p_attribute_03=>'P18_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_build_option_id=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25842691331615005)
,p_event_id=>wwv_flow_imp.id(25842321347615002)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_PO_NO,P18_FROM'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P18_URL");',
'apex.navigation.redirect(url);'))
,p_build_option_id=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25844214824615021)
,p_name=>'Get PO Value'
,p_event_sequence=>420
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(23003338014723733)
,p_triggering_element=>'QTY,INTERNAL_PRICE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25844382851615022)
,p_event_id=>wwv_flow_imp.id(25844214824615021)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_PO_VALUE'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'(:QTY * :UT_CS) * TO_NUMBER(REPLACE(:INTERNAL_PRICE,'','',''''))'
,p_attribute_07=>'QTY,INTERNAL_PRICE,UT_CS'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77038562133800903)
,p_event_id=>wwv_flow_imp.id(25844214824615021)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'TOTAL_AMOUNT'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':QTY * TO_NUMBER(REPLACE(:INTERNAL_PRICE,'','',''''))'
,p_attribute_07=>'QTY,INTERNAL_PRICE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25844458849615023)
,p_event_id=>wwv_flow_imp.id(25844214824615021)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_PO_VALUE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var model = apex.region("table").widget().interactiveGrid("getViews", "grid").model;',
'var n_price, n_qty, n_ut_cs, n_totValue = 0;',
'var col_price = model.getFieldKey("INTERNAL_PRICE");',
'var col_qty = model.getFieldKey("QTY");',
'var col_ut_cs = model.getFieldKey("UT_CS");',
'',
'model.forEach(function(igrow) {',
'    n_price = parseFloat(igrow[col_price].replace(/,/g, ""));',
'    n_qty = parseInt(igrow[col_qty], 10);',
'    n_ut_cs = parseFloat(igrow[col_ut_cs]);',
'',
'    if (!isNaN(n_price) && !isNaN(n_qty) && !isNaN(n_ut_cs)) {',
'        n_totValue += (n_qty * n_ut_cs) * n_price;',
'    }',
'});',
'',
'n_totValue = n_totValue.toLocaleString("en-US", {',
'    minimumFractionDigits: 2,',
'    maximumFractionDigits: 2',
'});',
'',
'apex.item("P18_PO_VALUE").setValue(n_totValue);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26625582190248012)
,p_name=>'Get EXT PO Value'
,p_event_sequence=>430
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(23003338014723733)
,p_triggering_element=>'EXTERNAL_PRICE,QTY,LEVEL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26625611120248013)
,p_event_id=>wwv_flow_imp.id(26625582190248012)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_PO_VALUE_EXT'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'TO_NUMBER(REPLACE(:EXTERNAL_PRICE,'','',''''))'
,p_attribute_07=>'QTY,EXTERNAL_PRICE,NIT2_QTY'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26625789199248014)
,p_event_id=>wwv_flow_imp.id(26625582190248012)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_PO_VALUE_EXT'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var model = apex.region("table").widget().interactiveGrid("getViews", "grid").model;',
'var n_price, n_qty, n_ut_cs, n_nit2_qty, uom_code, n_totValue = 0;',
'var col_price = model.getFieldKey("EXTERNAL_PRICE");',
'var col_qty = model.getFieldKey("QTY");',
'var col_ut_cs = model.getFieldKey("UT_CS");',
'var col_nit2_qty = model.getFieldKey("NIT2_QTY");',
'var col_uom_code = model.getFieldKey("UOM_ID");',
'var col_level = model.getFieldKey("LEVEL");',
'',
'model.forEach(function(igrow) {',
'    n_price = parseFloat(igrow[col_price].replace(/,/g, ""));',
'    n_qty = parseInt(igrow[col_qty], 10);',
'    n_ut_cs = parseFloat(igrow[col_ut_cs]);',
'    n_nit2_qty = parseFloat(igrow[col_nit2_qty]);',
'    uom_code = parseInt(igrow[col_uom_code], 10);',
'    level = parseInt(igrow[col_level], 10);',
'',
'',
'    if (!isNaN(n_price) && !isNaN(n_qty) && !isNaN(n_ut_cs)) {',
'        if (level === 4) {',
'            n_totValue += n_qty * n_price;',
'        } else if ((level === 2 || level === 3) && !isNaN(n_nit2_qty)) {',
'            n_totValue += ((n_qty * n_ut_cs) / n_nit2_qty) * n_price;',
'        } else if (level === 1) {',
'            n_totValue += (n_qty * n_ut_cs) * n_price;',
'        }',
'    }',
'});',
'',
'if (!isNaN(n_totValue)) {',
'    n_totValue = n_totValue.toLocaleString("en-US", {',
'        minimumFractionDigits: 2,',
'        maximumFractionDigits: 2',
'    });',
'} else {',
'    n_totValue = "0.00";',
'}',
'',
'apex.item("P18_PO_VALUE_EXT").setValue(n_totValue);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26627979298248036)
,p_name=>'Set NIT2_QTY'
,p_event_sequence=>440
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(23003338014723733)
,p_triggering_element=>'UOM_CODE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26628009950248037)
,p_event_id=>wwv_flow_imp.id(26627979298248036)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'NIT2_QTY'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    nit002.QUANTITY',
'FROM',
'    NIT002 nit002',
'WHERE',
'    nit002.ITEM_ID = :ITEM_ID AND',
'    nit002.UOM_ID = :UOM_CODE'))
,p_attribute_07=>'ITEM_ID,UOM_CODE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(58826981060441020)
,p_name=>'TEST'
,p_event_sequence=>450
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(58826895975441019)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58827092067441021)
,p_event_id=>wwv_flow_imp.id(58826981060441020)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'console.log(isLastRowEmpty())'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(68269973051096604)
,p_name=>'Set LEVEL'
,p_event_sequence=>460
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(23003338014723733)
,p_triggering_element=>'UOM_CODE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68270049001096605)
,p_event_id=>wwv_flow_imp.id(68269973051096604)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'LEVEL'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    nit002."LEVEL"',
'FROM',
'    NIT002 nit002',
'WHERE',
'    nit002.ITEM_ID = :ITEM_ID AND',
'    nit002.UOM_ID = :UOM_CODE'))
,p_attribute_07=>'ITEM_ID,UOM_CODE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(68270483587096609)
,p_name=>'Set Ext Price'
,p_event_sequence=>470
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(23003338014723733)
,p_triggering_element=>'INTERNAL_PRICE,NIT2_QTY'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68270510352096610)
,p_event_id=>wwv_flow_imp.id(68270483587096609)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'EXTERNAL_PRICE'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'TO_NUMBER(REPLACE(:INTERNAL_PRICE, '','', '''')) * :NIT2_QTY'
,p_attribute_07=>'INTERNAL_PRICE,NIT2_QTY'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(23004993767723749)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(23003338014723733)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'RPO Line Item - Save Interactive Grid Data'
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_internal_uom_id NIT013.internal_uom_id%TYPE;',
'    l_internal_price NUMBER(6,2);',
'    -- l_external_price NUMBER(6,2);',
'    l_vendor_price NUMBER(6,2);',
'BEGIN',
'        :P18_PO_VALUE := TO_NUMBER(REPLACE(:P18_PO_VALUE, '','', ''''));',
'        -- :P18_PO_VALUE_EXT := TO_NUMBER(REPLACE(:P18_PO_VALUE_EXT, '','', ''''));',
'        l_vendor_price := TO_NUMBER(REPLACE(:vendor_price, '','', ''''));',
'        l_internal_price := TO_NUMBER(REPLACE(:internal_price, '','', ''''));',
'        -- l_external_price := TO_NUMBER(REPLACE(:external_price, '','', ''''));',
'        ',
'        IF :int_uom IS NOT NULL THEN',
'            SELECT uom_id',
'            INTO v_internal_uom_id',
'            FROM NIM026',
'            WHERE uom_code = :INT_UOM;',
'        END IF;',
'',
'        IF :APEX$ROW_STATUS = ''U'' THEN',
'            :qty := NVL(:qty, 0);',
'            l_vendor_price := NVL(l_vendor_price, 0);',
'            l_internal_price := NVL(l_internal_price, 0);',
'            -- l_external_price := NVL(l_external_price, 0);',
'',
'            IF :qty = 0',
'            --  OR :uom_code IS NULL ',
'             THEN',
'                DELETE FROM NIT013 ',
'                WHERE po_id = V(''P18_PO_NO'')',
'                AND item_id = :item_id;',
'            ELSE',
'                UPDATE NIT013 ',
'                SET item_id = :item_id,',
'                    qty = :qty,',
'                    update_user = V(''APP_USER''),',
'                    update_date = SYSDATE,',
'                    vendor_price = l_vendor_price,',
'                    -- external_uom_id = :uom_id,',
'                    internal_price = l_internal_price,',
'                    -- external_price = l_external_price,',
'                    vendor_id = :vendor_id',
'                WHERE po_id = V(''P18_PO_NO'')',
'                AND item_id = :old_item_id;',
'',
'                UPDATE NIT012',
'                SET in_po_value = :P18_PO_VALUE',
'                    -- ex_po_value = :P18_PO_VALUE_EXT',
'                WHERE po_id = V(''P18_PO_NO'');',
'            END IF;',
'',
'        ELSIF :APEX$ROW_STATUS = ''C'' THEN',
'        ',
'            :qty := NVL(:qty, 0);',
'            l_vendor_price := NVL(l_vendor_price, 0);',
'            l_internal_price := NVL(l_internal_price, 0);',
'            -- l_external_price := NVL(l_external_price, 0);',
'',
'            IF :qty != 0',
'            --  AND :uom_code IS NOT NULL ',
'             THEN',
'                INSERT INTO NIT013 (po_id, item_id, qty, create_user, create_date, vendor_price, internal_uom_id, internal_price, vendor_id) ',
'                VALUES (V(''P18_PO_NO''), :item_id, :qty, V(''APP_USER''), SYSDATE, l_vendor_price, v_internal_uom_id, l_internal_price, :vendor_id );',
'',
'                UPDATE NIT012',
'                SET in_po_value = :P18_PO_VALUE',
'                    -- ex_po_value = :P18_PO_VALUE_EXT',
'                WHERE po_id = V(''P18_PO_NO'');',
'                ',
'            END IF;',
'        END IF;',
'END;'))
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>23004993767723749
);
wwv_flow_imp.component_end;
end;
/
