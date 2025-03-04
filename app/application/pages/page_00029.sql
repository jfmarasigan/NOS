prompt --application/pages/page_00029
begin
--   Manifest
--     PAGE: 00029
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
 p_id=>29
,p_name=>'Review Purchase Order'
,p_alias=>'REVIEW-PURCHASE-ORDER'
,p_step_title=>'Review Purchase Order'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#js/cmn#MIN#.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p29KeyMap = {',
'    a : (v) => {',
'        $("#a").trigger("click");',
'    },',
'    u : (v) => {',
'        $("#u").trigger("click");',
'    },',
'    i : (v) => {',
'        $("#i").trigger("click");',
'    },',
'    s : (v) => {',
'        $("#s").trigger("click");',
'    },',
'    c : (v) => {',
'        $("#c").trigger("click");',
'    },',
'    n : (v) => {',
'        $("#n").trigger("click");',
'    },',
'    l : (v) => {',
'        $("#l").trigger("click");',
'    },',
'    o : (v) => {',
'        $("#o").trigger("click");',
'    },',
'    p : (v) => {',
'        $("#p").trigger("click");',
'    },',
'    h : (v) => {',
'        $("#h").trigger("click");',
'    },',
'    t : (v) => {',
'        $("#t").trigger("click");',
'    },',
'    escape : (v) => {',
'        if(!$("#sort-by").is(":visible") && !$("#success").is(":visible") && !$("#sup-app").is(":visible")) {',
'            $("#exit").trigger("click");',
'        }',
'    },',
'    home: (v) => {',
'        $("#top").trigger("click");',
'    },',
'    end: (v) => {',
'        $("#bottom").trigger("click");',
'    }',
'}',
'',
'function mapP29Keys() {',
'    $(document).off(''keydown.p29keyevents'');',
'    $(document).on(''keydown.p29keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p29KeyMap[key]) {',
'            ev.preventDefault();',
'            setTimeout(function() {',
'                p29KeyMap[key]();',
'            }, 350);',
'        }',
'    });',
'}',
'',
'function selectFirstRow() {',
'    let region = apex.region("table")',
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
'    let region = apex.region("table")',
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
'function selectRecord() {',
'    apex.region("table").call("getCurrentView").model.fetchAll(function(status) {',
'        if (status.done) {',
'            ',
'            let view = apex.region("table").call("getCurrentView"),',
'                model = view.model,',
'                view$ = view.view$,',
'                id = $v("P29_PO_NUMBER"),',
'                rec = model.getRecord(id);',
'',
'            if (rec) {',
'                let pi = view$.grid("getPageInfo"),',
'                    index = model.indexOf(rec),',
'                    offset = index * pi.rowHeight;',
'',
'                $(".a-GV-w-scroll").scrollTop(offset);',
'                view$.grid("setSelectedRecords", [rec], true);',
'',
'                setTimeout(function () {',
'                    let row$ = view$.find(`tr[data-id=''${id}'']`);',
'                    console.log("row$", row$);',
'                    if (row$.length > 0) {',
'                        $(row$).find(".a-GV-cell").first().trigger("click");',
'                    } else {',
'                        $(".a-GV-cell").first().trigger("click");',
'                    }',
'                }, 500);',
'            } else {',
'                setTimeout(function () {',
'                    $(".a-GV-cell").first().trigger("click");',
'                }, 500);',
'            }',
'        }',
'    });',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP29Keys();',
'setTitle("Review Purchase Order");',
'selectRecord();',
'',
'$(document).on("keydown", function(e) {',
'    if ($("#sort-by").is(":visible")) {',
'        const buttons = $(".sort-btns");',
'        const focusedIndex = buttons.index(document.activeElement);',
'        ',
'        if (e.key === "ArrowDown") {',
'            e.preventDefault();',
'            const nextIndex = (focusedIndex + 1) % buttons.length;',
'            buttons.eq(nextIndex).focus();',
'        } else if (e.key === "ArrowUp") {',
'            e.preventDefault();',
'            const prevIndex = (focusedIndex - 1 + buttons.length) % buttons.length;',
'            buttons.eq(prevIndex).focus();',
'        }',
'    }',
'});'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.apex-item-text {',
'    background-color: white;',
'}',
'',
'.a-GV-table tr.is-selected .a-GV-cell {',
'     background-color: #F5DC1C;',
'}',
'',
'label#P29_USER_ID_LABEL,',
'label#P29_PASSWORD_LABEL {',
'    display: flex;',
'    align-items: start;',
'    margin-left: .50rem;',
'}',
'',
'#sup-app.t-DialogRegion {',
'    min-height: 120px !important;',
'    background-color: white;',
'    border-radius: 12px;',
'}',
'',
'#sup-app {',
'    border-radius: 12px;',
'}',
'',
'#sup-app label {',
'    font-size: 1.125rem;',
'}',
'',
'.t-Region#sup-app-header {',
'    background-color: #046BC8;',
'}',
'',
'#incoming,',
'#success,',
'#sort-by {',
'    border-radius: 12px;',
'}',
'',
'.sort-by .t-Form-itemText {',
'    font-size: 1rem !important;',
'    color: white !important;',
'}',
'',
'.sort-btns:focus {',
'    background-color: #beddfa !important;',
'    border: none;',
'    outline: none;',
'}',
'',
'#sort-by .t-DialogRegion-body {',
'    padding-block-end: var(--ut-dialog-region-padding-y, .5rem) !important;',
'    padding-inline-end: var(--ut-dialog-region-padding-x, .5rem) !important;',
'    padding-inline-start: var(--ut-dialog-region-padding-x, .5rem) !important;',
'}',
'',
'.sort-btns {',
'    text-align: left !important;',
'    font-size: 1.125rem;',
'    padding: 1rem .5rem 1rem .5rem;',
'    background-color: white !important;',
'    border-radius: 0 !important;',
'}',
'',
'div#sort-by.ui-dialog-content {',
'    padding: 0 !important;',
'    background-color: #056AC8;',
'}',
'',
'.ui-dialog {',
'    background-color: #056AC8;',
'}',
'',
'.pr-1 {',
'    padding-right: .50rem;',
'}',
'',
'.align-center {',
'    align-items: center;',
'}',
'',
'.bg-success {',
'    background-color: #056AC8;',
'}',
'',
'div#incoming.ui-dialog-content {',
'    padding: 0 !important;',
'    background-color: #056AC8;',
'}',
'',
'#inc {',
'    background-color: #056AC8;',
'    color: white;',
'}',
'',
'div#success.ui-dialog-content {',
'    padding: 0 !important;',
'}',
'',
'.h-110 {',
'    height: 110px;',
'}',
'',
'.buttons-row {',
'    position: absolute;',
'    width: 98vw;',
'    bottom: 1.75rem;',
'}',
'',
'#table .a-IG {',
'    height: calc(75vh + 2px) !important;',
'} ',
'',
'#table .a-IG-contentContainer {',
'    height: 75vh !important;',
'}',
'',
'#table .a-IG-gridView.a-GV {',
'    height: 75vh !important;',
'}',
'',
'#table .a-GV-bdy {',
'    height: calc(75vh - 2.5625rem) !important;',
'}',
'',
'.text-white {',
'    color: white;',
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
'.sorted-by {',
'    font-size: 1rem;',
'    margin-bottom: .5rem;',
'    color: white;',
'}',
'',
'#table table,',
'#table tr,',
'#table th {',
'    font-size: 1rem;',
'}',
'',
'#table td {',
'    font-size: 1.125rem;',
'}',
'',
'.btns {',
'    font-size: 1.125rem;',
'    color: white;',
'}',
'',
'.text-left {',
'    text-align: left;',
'}',
'',
'.margin-right {',
'    margin-right: 2.5rem;',
'}',
'',
'.hide {',
'    display: none;',
'}',
'',
'.content-block {',
'    font-size: 1.25rem;',
'    display: flex;',
'    justify-content: space-between;',
'    font-weight: 700;',
'}',
'',
'.ui-dialog-titlebar {',
'    display: none !important;',
'}',
'',
'.ui-widget-overlay.ui-front {',
'    background-color: transparent !important;',
'    opacity: 0 !important;',
'}',
'',
'.a-GV-header a, th.a-GV-header {',
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
'#table .a-GV-table {',
'    width: 100% !important;',
'}',
'',
'#table .a-GV-table colgroup col:nth-child(2) {',
'    width: 3rem;',
'}',
'',
'#table .a-GV-table colgroup col:nth-child(3) {',
'    width: 3rem;',
'}',
'',
'#table .a-GV-table colgroup col:nth-child(5) {',
'    width: 26rem;',
'}'))
,p_step_template=>wwv_flow_imp.id(5671392681337017)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11735556766394621)
,p_plug_name=>'Buttons'
,p_plug_display_sequence=>70
,p_plug_grid_row_css_classes=>'buttons-row'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15908222943779132)
,p_plug_name=>'Review Purchase Order'
,p_region_name=>'table'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>60
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH my_select AS (',
'    SELECT',
'        nit012.po_id AS "PO_NUMBER",',
'        CASE',
'            WHEN nit012.is_posted = ''Y'' THEN ''P''',
'            ELSE ''''',
'        END AS "IS_POSTED",',
'        CASE',
'            WHEN nit012.parent_po_id IS NOT NULL THEN ''C''',
'            WHEN EXISTS (',
'                SELECT 1',
'                FROM NIT012 n',
'                WHERE n.parent_po_id = nit012.po_id',
'            ) THEN ''M''',
'            ELSE ''''',
'        END AS "P",',
'        nit006.vendor_name AS "VENDOR_NAME",',
'        nit012.vessel_name AS "VESSEL_NAME",',
'        TO_CHAR(nit012.etd_date, ''MM/DD/YYYY'') AS "ETD",',
'        TO_CHAR(nit012.eta_date, ''MM/DD/YYYY'') AS "ETA",',
'        nit012.vendor_id AS "VENDOR_ID"',
'    FROM',
'        NIT012 nit012',
'    JOIN',
'        NIT006 nit006 ON nit012.vendor_id = nit006.vendor_id',
'    WHERE',
'        (UPPER(:P29_START_WITH) IS NOT NULL AND nit012.po_id LIKE UPPER(:P29_START_WITH) || ''%'')',
'    ORDER BY',
'        -- CASE WHEN UPPER(:P29_PO_NUMBER) = nit012.po_id THEN 1 ELSE 2 END,',
'        CASE ',
'            WHEN :P29_SORTED_BY = ''PO Number'' THEN nit012.po_id',
'            WHEN :P29_SORTED_BY = ''Supplier'' THEN UPPER(nit006.vendor_name)',
'        END,',
'        CASE',
'            WHEN :P29_SORTED_BY = ''ETA'' THEN nit012.eta_date',
'        END',
')',
'SELECT * FROM my_select;',
'    '))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P29_START_WITH,P29_SORTED_BY'
,p_prn_page_header=>'Review Purchase Order'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(25390737427344222)
,p_name=>'PO_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PO_NUMBER'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'PO Number'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>60
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
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(25390843963344223)
,p_name=>'IS_POSTED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_POSTED'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
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
 p_id=>wwv_flow_imp.id(25390920524344224)
,p_name=>'P'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'P'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>1
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
 p_id=>wwv_flow_imp.id(25391039514344225)
,p_name=>'VENDOR_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VENDOR_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Vendor Name'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>200
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
 p_id=>wwv_flow_imp.id(25391177126344226)
,p_name=>'VESSEL_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VESSEL_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Vessel Name'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>200
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
 p_id=>wwv_flow_imp.id(25391202369344227)
,p_name=>'ETD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ETD'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'ETD'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(25391377330344228)
,p_name=>'ETA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ETA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'ETA'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(25391497870344229)
,p_name=>'VENDOR_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VENDOR_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>80
,p_attribute_01=>'Y'
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
 p_id=>wwv_flow_imp.id(15908652911779137)
,p_internal_uid=>15908652911779137
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>false
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
,p_fixed_header_max_height=>500
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
 p_id=>wwv_flow_imp.id(15909028943779139)
,p_interactive_grid_id=>wwv_flow_imp.id(15908652911779137)
,p_static_id=>'159091'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(15909207120779139)
,p_report_id=>wwv_flow_imp.id(15909028943779139)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(25614619004943025)
,p_view_id=>wwv_flow_imp.id(15909207120779139)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(25390737427344222)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(25615510949943032)
,p_view_id=>wwv_flow_imp.id(15909207120779139)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(25390843963344223)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(25616498009943039)
,p_view_id=>wwv_flow_imp.id(15909207120779139)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(25390920524344224)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(25617302357943045)
,p_view_id=>wwv_flow_imp.id(15909207120779139)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(25391039514344225)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(25618293064943053)
,p_view_id=>wwv_flow_imp.id(15909207120779139)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(25391177126344226)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(25619191828943064)
,p_view_id=>wwv_flow_imp.id(15909207120779139)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(25391202369344227)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(25620047798943071)
,p_view_id=>wwv_flow_imp.id(15909207120779139)
,p_display_seq=>25
,p_column_id=>wwv_flow_imp.id(25391377330344228)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(25620931869943078)
,p_view_id=>wwv_flow_imp.id(15909207120779139)
,p_display_seq=>26
,p_column_id=>wwv_flow_imp.id(25391497870344229)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(25844946877615028)
,p_plug_name=>'Wrapper - Incoming'
,p_region_name=>'incoming'
,p_region_template_options=>'#DEFAULT#:js-dialog-nosize'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>70
,p_plug_display_point=>'REGION_POSITION_04'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(25845604000615035)
,p_plug_name=>'Incoming'
,p_region_name=>'inc'
,p_parent_plug_id=>wwv_flow_imp.id(25844946877615028)
,p_region_css_classes=>'h-110'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--hiddenOverflow:margin-top-none:margin-bottom-none'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(25845735286615036)
,p_plug_name=>'Loading Bar'
,p_parent_plug_id=>wwv_flow_imp.id(25845604000615035)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="position: relative; width: 100%; height: 50px; border: 1px solid black; background-color: white;">',
'    <div id="loadingProgressBar" style="width: 0; height: 100%; background-color: #A3D5F7;">',
'    </div>',
'    <div id="progressText" style="position: absolute; top: 30%; left: 50%; transform: translateX(-50%, -50%); color: black;">',
'        0%',
'    </div>',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(25845931424615038)
,p_plug_name=>'Wrapper - Success'
,p_title=>'Successful Update'
,p_region_name=>'success'
,p_region_css_classes=>'bg-success'
,p_region_template_options=>'#DEFAULT#:t-DialogRegion--noPadding:js-dialog-nosize:margin-bottom-none:margin-left-none:margin-right-none'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>80
,p_plug_display_point=>'REGION_POSITION_04'
,p_location=>null
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="display: flex; justify-content: space-between; font-size: 1.125rem; color: white;">',
'    <div style="font-weight: 600; margin: .50rem 0 2rem .50rem;">',
'        Successful Update',
'    </div>',
'    <div style="margin-right: .50rem;">x</div>',
'</div>',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(25846213077615041)
,p_plug_name=>'Button'
,p_parent_plug_id=>wwv_flow_imp.id(25845931424615038)
,p_region_css_classes=>'bg-success'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--hiddenOverflow:margin-top-lg:margin-bottom-none:margin-right-none'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(25846359824615042)
,p_plug_name=>'Message'
,p_parent_plug_id=>wwv_flow_imp.id(25845931424615038)
,p_region_template_options=>'#DEFAULT#:t-Region--showIcon:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--hiddenOverflow:margin-top-none:margin-bottom-none:margin-left-lg:margin-right-none'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="color: white; display: flex; justify-content: center; margin-right: 2rem;">',
'    <img src="#APP_FILES#img/circle-info-solid.png" style="width: 40px; height: 40px;">',
'    <div style="display: flex; align-items: center; margin-left: .25rem;">',
'        <p>Incoming shipments log successfully updated.</p>',
'    </div>',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(25847036282615049)
,p_plug_name=>'Sort By'
,p_region_name=>'sort-by'
,p_region_template_options=>'#DEFAULT#:js-dialog-nosize'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>90
,p_plug_display_point=>'REGION_POSITION_04'
,p_location=>null
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="font-size: 1.5rem; font-weight: 600; margin-bottom: 1rem;" class="text-white">',
'    Sort By',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26260289565850114)
,p_plug_name=>'Header'
,p_region_name=>'sort-header'
,p_plug_display_sequence=>50
,p_plug_grid_column_css_classes=>'sort-by'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26263857873850150)
,p_plug_name=>'Success'
,p_region_name=>'create-success'
,p_plug_display_sequence=>100
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="successMessage" style="text-align: center; width: auto; height: 40px; position: fixed; top: 80%; left: 35%; background-color: #056AC8; color: white; padding: 5px 15px 5px 15px; font-size: 1.125rem; display: none; z-index: 9999; border: 2px s'
||'olid black; border-radius: 12px; box-shadow: 0 10px 10px -4px rgba(0, 0, 0, 0.2);">',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(62112760253066949)
,p_plug_name=>'Supervisor Approval'
,p_region_name=>'sup-app'
,p_region_template_options=>'t-DialogRegion--noPadding:js-modal:js-dialog-nosize'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>100
,p_plug_display_point=>'REGION_POSITION_04'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64470282585367201)
,p_plug_name=>'Header'
,p_region_name=>'sup-app-header'
,p_parent_plug_id=>wwv_flow_imp.id(62112760253066949)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="background-color: #056AC8; font-size: 1.5rem; color: white; padding: .50rem 0 .50rem 0; margin-left: .50rem;"',
'     id="sup-app-header">',
'    Supervisor Approval',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11735645125394622)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11735556766394621)
,p_button_name=>'ADD'
,p_button_static_id=>'a'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>A</u> - Add'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'has_access(:APP_USER, 8, 24) = ''Y'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'Y'
,p_grid_column_span=>1
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(25846132365615040)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(25846213077615041)
,p_button_name=>'OK'
,p_button_static_id=>'ok'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--small:t-Button--padTop:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'OK'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
,p_grid_column_span=>1
,p_grid_column=>12
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26259159975850103)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(25847036282615049)
,p_button_name=>'PO_Number'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'PO Number'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'sort-btns'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(16249719834344150)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11735556766394621)
,p_button_name=>'CREATE_CHILD_PO'
,p_button_static_id=>'c'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>C</u> - Create Child PO'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'has_access(:APP_USER, 8, 32) = ''Y'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26259386262850105)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(25847036282615049)
,p_button_name=>'Supplier'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Supplier'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'sort-btns'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(20867750704453201)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(11735556766394621)
,p_button_name=>'ADD_NEW'
,p_button_static_id=>'n'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>N</u> - Add New PO using an existing PO'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'has_access(:APP_USER, 8, 33) = ''Y'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>3
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26259452187850106)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(25847036282615049)
,p_button_name=>'ETA'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'ETA'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'sort-btns'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11735762036394623)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(11735556766394621)
,p_button_name=>'UPDATE'
,p_button_static_id=>'u'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>U</u> - Update'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'has_access(:APP_USER, 8, 25) = ''Y'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11735898566394624)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(11735556766394621)
,p_button_name=>'INQUIRE'
,p_button_static_id=>'i'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>I</u> - Inquire'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'has_access(:APP_USER, 8, 205) = ''Y'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11736057369394626)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(11735556766394621)
,p_button_name=>'INCOMING'
,p_button_static_id=>'l'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>L</u> - Incoming'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'has_access(:APP_USER, 8, 27) = ''Y'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(62112617157066948)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(11735556766394621)
,p_button_name=>'UNPOST'
,p_button_static_id=>'t'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>T</u> - Unpost'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'has_access(:APP_USER, 8, 101) = ''Y'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11735950772394625)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(11735556766394621)
,p_button_name=>'PRINT'
,p_button_static_id=>'p'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>P</u> - Print'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'has_access(:APP_USER, 8, 26) = ''Y'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'Y'
,p_grid_column_span=>1
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(20867874482453202)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(11735556766394621)
,p_button_name=>'EXPORT'
,p_button_static_id=>'h'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>H</u> - Export'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'has_access(:APP_USER, 8, 31) = ''Y'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11736178494394627)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(11735556766394621)
,p_button_name=>'SORT'
,p_button_static_id=>'o'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>O</u> - Sort'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>3
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11736218701394628)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(11735556766394621)
,p_button_name=>'TOP'
,p_button_static_id=>'top'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>Home</u> - Top'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11736302792394629)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_imp.id(11735556766394621)
,p_button_name=>'BOTTOM'
,p_button_static_id=>'bottom'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>End</u> - Bottom'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11736573297394631)
,p_button_sequence=>140
,p_button_plug_id=>wwv_flow_imp.id(11735556766394621)
,p_button_name=>'SEARCH'
,p_button_static_id=>'s'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>S</u> - Search'
,p_button_redirect_url=>'f?p=&APP_ID.:39:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11736407767394630)
,p_button_sequence=>150
,p_button_plug_id=>wwv_flow_imp.id(11735556766394621)
,p_button_name=>'TO_EXIT'
,p_button_static_id=>'exit'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>Esc</u> - To Exit'
,p_button_redirect_url=>'f?p=&APP_ID.:302:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'btns text-left'
,p_grid_column_css_classes=>'margin-right hide'
,p_grid_new_row=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16249679368344149)
,p_name=>'P29_START_WITH'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20868120454453205)
,p_name=>'P29_PO_NUMBER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(15908222943779132)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20870166827453225)
,p_name=>'P29_URL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(15908222943779132)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24534662625263044)
,p_name=>'P29_VENDOR_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(15908222943779132)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25392538752344240)
,p_name=>'P29_PO_NO_S'
,p_item_sequence=>20
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25393166431344246)
,p_name=>'P29_FROM'
,p_item_sequence=>30
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25845374733615032)
,p_name=>'P29_PO_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(25845604000615035)
,p_pre_element_text=>'Incoming Goods for PO Number: &nbsp;'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--normalDisplay'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26259594752850107)
,p_name=>'P29_SORTED_BY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(26260289565850114)
,p_prompt=>'Sorted By'
,p_pre_element_text=>'Sorted By: &nbsp'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'text-white'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large:t-Form-fieldContainer--normalDisplay'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(62112864980066950)
,p_name=>'P29_USER_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(62112760253066949)
,p_prompt=>'User ID'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'autocomplete="username"'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:margin-right-sm'
,p_warn_on_unsaved_changes=>'I'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64470676368367205)
,p_name=>'P29_PASSWORD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(62112760253066949)
,p_prompt=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_tag_attributes=>'autocomplete="current-password"'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:margin-bottom-md:margin-right-sm'
,p_warn_on_unsaved_changes=>'I'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16246257640344115)
,p_name=>'Open Search Modal'
,p_event_sequence=>10
,p_condition_element=>'P29_START_WITH'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'EXISTS'
,p_display_when_cond=>'SELECT * FROM NIT012'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16246356549344116)
,p_event_id=>wwv_flow_imp.id(16246257640344115)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("#s").trigger("click");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16249093189344143)
,p_name=>'Reset S Key'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11736573297394631)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16249130462344144)
,p_event_id=>wwv_flow_imp.id(16249093189344143)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mapP29Keys();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16249267949344145)
,p_name=>'On Search'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11736573297394631)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16249389031344146)
,p_event_id=>wwv_flow_imp.id(16249267949344145)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P29_START_WITH'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P39_START_WITH'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20868222979453206)
,p_event_id=>wwv_flow_imp.id(16249267949344145)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P29_PO_NUMBER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16249467798344147)
,p_event_id=>wwv_flow_imp.id(16249267949344145)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(15908222943779132)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16249565870344148)
,p_event_id=>wwv_flow_imp.id(16249267949344145)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(function() {',
'    $(".a-GV-cell").first().trigger("click");',
'}, 500);',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20867954008453203)
,p_name=>'Selection Item Change'
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(15908222943779132)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20868096244453204)
,p_event_id=>wwv_flow_imp.id(20867954008453203)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (this.data.selectedRecords && this.data.selectedRecords.length > 0) {',
'    let poNoSelected = this.data.selectedRecords[0][0];',
'    let vendoIdSelected = this.data.selectedRecords[0][7];',
'    apex.item("P29_PO_NUMBER").setValue(poNoSelected);',
'    apex.item("P29_VENDOR_ID").setValue(vendoIdSelected);',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20870218956453226)
,p_name=>'Redirect to Update Page'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11735762036394623)
,p_condition_element=>'P29_PO_NUMBER'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(55262635241963910)
,p_event_id=>wwv_flow_imp.id(20870218956453226)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var grid = apex.region("table").widget().interactiveGrid(''getViews'', ''grid'');',
'var model = grid.model;',
'var selectedRecord = grid.getSelectedRecords()[0][1];',
'',
'if(selectedRecord === ''P'') {',
'    return false;',
'} else {',
'    return true;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20870372120453227)
,p_event_id=>wwv_flow_imp.id(20870218956453226)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P29_URL := apex_page.get_url(',
'       p_page   => 46,',
'       p_items  => ''P46_PUR_ORDER_NO_U,P46_FROM,P46_VENDOR_ID_C'',',
'       p_values => :P29_PO_NUMBER || '','' || ''U'' || '','' || :P29_VENDOR_ID',
'     );',
'END;'))
,p_attribute_02=>'P29_PO_NUMBER,P29_VENDOR_ID'
,p_attribute_03=>'P29_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20870470057453228)
,p_event_id=>wwv_flow_imp.id(20870218956453226)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P29_PO_NUMBER,P29_VENDOR_ID'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P29_URL");',
'apex.navigation.redirect(url);',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(21978560747914336)
,p_name=>'Redirect to Inquire Page'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11735898566394624)
,p_condition_element=>'P29_PO_NUMBER'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21978672436914337)
,p_event_id=>wwv_flow_imp.id(21978560747914336)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P29_URL := apex_page.get_url(',
'       p_page   => 48,',
'       p_items  => ''P48_PO_NO,P48_VENDOR_ID'',',
'       p_values => :P29_PO_NUMBER || '','' || :P29_VENDOR_ID',
'     );',
'END;'))
,p_attribute_02=>'P29_PO_NUMBER,P29_VENDOR_ID'
,p_attribute_03=>'P29_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21978837189914339)
,p_event_id=>wwv_flow_imp.id(21978560747914336)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P29_PO_NUMBER,P29_VENDOR_ID'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P29_URL");',
'apex.navigation.redirect(url);',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22395432383487217)
,p_name=>'Go To Top'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11736218701394628)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22395575327487218)
,p_event_id=>wwv_flow_imp.id(22395432383487217)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'selectFirstRow();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22395676343487219)
,p_name=>'Go To Bottom'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11736302792394629)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22395783193487220)
,p_event_id=>wwv_flow_imp.id(22395676343487219)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'selectLastRow();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24533609368263034)
,p_name=>'Redirect to Child PO'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(16249719834344150)
,p_condition_element=>'P29_PO_NUMBER'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25843069144615009)
,p_event_id=>wwv_flow_imp.id(24533609368263034)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var grid = apex.region("table").widget().interactiveGrid(''getViews'', ''grid'');',
'var model = grid.model;',
'var selectedRecord = grid.getSelectedRecords()[0][2];',
'',
'if(selectedRecord === ''C'') {',
'    return false;',
'} else {',
'    return true;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24533701564263035)
,p_event_id=>wwv_flow_imp.id(24533609368263034)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P29_URL := apex_page.get_url(',
'       p_page   => 46,',
'       p_items  => ''P46_MOTHER_NO,P46_FROM,P46_VENDOR_ID_C'',',
'       p_values => :P29_PO_NUMBER || '','' || ''C'' || '','' || :P29_VENDOR_ID',
'     );',
'END;'))
,p_attribute_02=>'P29_PO_NUMBER,P29_VENDOR_ID'
,p_attribute_03=>'P29_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24533860410263036)
,p_event_id=>wwv_flow_imp.id(24533609368263034)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P29_PO_NUMBER,P29_VENDOR_ID'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P29_URL");',
'apex.navigation.redirect(url);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24533979647263037)
,p_name=>'Redirect to Add PO'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11735645125394622)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24534019503263038)
,p_event_id=>wwv_flow_imp.id(24533979647263037)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P29_URL := apex_page.get_url(',
'       p_page   => 46,',
'       p_items  => ''P46_FROM'',',
'       p_values => ''A''',
'     );',
'END;'))
,p_attribute_02=>'P29_PO_NUMBER'
,p_attribute_03=>'P29_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24534122635263039)
,p_event_id=>wwv_flow_imp.id(24533979647263037)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P29_URL");',
'apex.navigation.redirect(url);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24650546223650417)
,p_name=>'Redirect to Reference PO'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(20867750704453201)
,p_condition_element=>'P29_PO_NUMBER'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24650674432650418)
,p_event_id=>wwv_flow_imp.id(24650546223650417)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P29_URL := apex_page.get_url(',
'       p_page   => 46,',
'       p_items  => ''P46_REFERENCE_PO,P46_FROM,P46_VENDOR_ID_C'',',
'       p_values => :P29_PO_NUMBER || '','' || ''R'' || '','' || :P29_VENDOR_ID',
'     );',
'END;'))
,p_attribute_02=>'P29_PO_NUMBER,P29_VENDOR_ID'
,p_attribute_03=>'P29_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24650796241650419)
,p_event_id=>wwv_flow_imp.id(24650546223650417)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P29_PO_NUMBER,P29_VENDOR_ID'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P29_URL");',
'apex.navigation.redirect(url);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25845135001615030)
,p_name=>'Update Incoming PO'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11736057369394626)
,p_condition_element=>'P29_PO_NUMBER'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25845452044615033)
,p_event_id=>wwv_flow_imp.id(25845135001615030)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P29_PO_ID'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P29_PO_NUMBER'
,p_attribute_07=>'P29_PO_NUMBER'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25845263739615031)
,p_event_id=>wwv_flow_imp.id(25845135001615030)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(25844946877615028)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25846681251615045)
,p_event_id=>wwv_flow_imp.id(25845135001615030)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_po_exists    NUMBER;',
'    v_total_po     NUMBER;',
'    v_po_to_remove NIT024.PO_ID%TYPE;',
'    v_new_po_eta   NIT012.ETA_DATE%TYPE;',
'    v_min_eta_date DATE;',
'    v_max_eta_date DATE;',
'BEGIN',
'    SELECT COUNT(*)',
'    INTO v_po_exists',
'    FROM NIT024',
'    WHERE PO_ID = :P29_PO_NUMBER;',
'',
'    IF v_po_exists > 0 THEN',
'        DELETE FROM NIT025 WHERE PO_ID = :P29_PO_NUMBER;',
'',
'        INSERT INTO NIT025 (PO_ID, ITEM_ID, QTY, CREATE_USER, CREATE_DATE, UPDATE_USER, UPDATE_DATE, VENDOR_PRICE, INTERNAL_UOM_ID, EXTERNAL_UOM_ID, INTERNAL_PRICE, EXTERNAL_PRICE)',
'        SELECT PO_ID, ITEM_ID, QTY, V(''APP_USER''), SYSDATE, V(''APP_USER''), SYSDATE, VENDOR_PRICE, INTERNAL_UOM_ID, EXTERNAL_UOM_ID, INTERNAL_PRICE, EXTERNAL_PRICE',
'        FROM NIT013 WHERE PO_ID = :P29_PO_NUMBER;',
'',
'        UPDATE NIT024 SET UPDATE_USER = V(''APP_USER''), UPDATE_DATE = SYSDATE WHERE PO_ID = :P29_PO_NUMBER;',
'',
'    ELSE',
'        SELECT ETA_DATE',
'        INTO v_new_po_eta',
'        FROM NIT012',
'        WHERE PO_ID = :P29_PO_NUMBER;',
'',
'        SELECT COUNT(*)',
'        INTO v_total_po',
'        FROM NIT024;',
'',
'        IF v_total_po < 6 THEN',
'            IF TRUNC(v_new_po_eta) > TRUNC(v_max_eta_date) THEN',
'                RETURN;',
'            ELSIF TRUNC(v_new_po_eta) < TRUNC(SYSDATE) THEN',
'                RETURN;',
'            END IF;',
'',
'            INSERT INTO NIT024 (PO_ID, CREATE_USER, CREATE_DATE, UPDATE_USER, UPDATE_DATE)',
'            SELECT PO_ID, V(''APP_USER''), SYSDATE, V(''APP_USER''), SYSDATE',
'            FROM NIT012 WHERE PO_ID = :P29_PO_NUMBER;',
'',
'            INSERT INTO NIT025 (PO_ID, ITEM_ID, QTY, CREATE_USER, CREATE_DATE, UPDATE_USER, UPDATE_DATE, VENDOR_PRICE, INTERNAL_UOM_ID, EXTERNAL_UOM_ID, INTERNAL_PRICE, EXTERNAL_PRICE)',
'            SELECT PO_ID, ITEM_ID, QTY, V(''APP_USER''), SYSDATE, V(''APP_USER''), SYSDATE, VENDOR_PRICE, INTERNAL_UOM_ID, EXTERNAL_UOM_ID, INTERNAL_PRICE, EXTERNAL_PRICE',
'            FROM NIT013 WHERE PO_ID = :P29_PO_NUMBER;',
'',
'        ELSE',
'            SELECT MIN(n12.eta_date), MAX(n12.eta_date)',
'            INTO v_min_eta_date, v_max_eta_date',
'            FROM NIT024 n24',
'            JOIN NIT012 n12 ON n24.PO_ID = n12.PO_ID;',
'',
'            IF TRUNC(v_new_po_eta) > TRUNC(v_max_eta_date) THEN',
'                RETURN;',
'            ELSIF TRUNC(v_new_po_eta) < TRUNC(SYSDATE) THEN',
'                RETURN;',
'            END IF;',
'',
'            SELECT n24.PO_ID',
'            INTO v_po_to_remove',
'            FROM NIT024 n24',
'            JOIN NIT012 n12 ON n24.PO_ID = n12.PO_ID',
'            WHERE (TRUNC(n12.eta_date) > TRUNC(SYSDATE) AND TRUNC(n12.eta_date) > TRUNC(v_new_po_eta))',
'            OR TRUNC(n12.eta_date) = (SELECT MAX(eta_date) FROM NIT012 n12_sub JOIN NIT024 n24_sub ON n12_sub.PO_ID = n24_sub.PO_ID)',
'            FETCH FIRST ROW ONLY;',
'',
'            DELETE FROM NIT025 WHERE PO_ID = v_po_to_remove;',
'            DELETE FROM NIT024 WHERE PO_ID = v_po_to_remove;',
'',
'            INSERT INTO NIT024 (PO_ID, CREATE_USER, CREATE_DATE, UPDATE_USER, UPDATE_DATE)',
'            SELECT PO_ID, V(''APP_USER''), SYSDATE, V(''APP_USER''), SYSDATE',
'            FROM NIT012 WHERE PO_ID = :P29_PO_NUMBER;',
'',
'            INSERT INTO NIT025 (PO_ID, ITEM_ID, QTY, CREATE_USER, CREATE_DATE, UPDATE_USER, UPDATE_DATE, VENDOR_PRICE, INTERNAL_UOM_ID, EXTERNAL_UOM_ID, INTERNAL_PRICE, EXTERNAL_PRICE)',
'            SELECT PO_ID, ITEM_ID, QTY, V(''APP_USER''), SYSDATE, V(''APP_USER''), SYSDATE, VENDOR_PRICE, INTERNAL_UOM_ID, EXTERNAL_UOM_ID, INTERNAL_PRICE, EXTERNAL_PRICE',
'            FROM NIT013 WHERE PO_ID = :P29_PO_NUMBER;',
'',
'        END IF;',
'    END IF;',
'END;'))
,p_attribute_02=>'P29_PO_NUMBER'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25845506065615034)
,p_event_id=>wwv_flow_imp.id(25845135001615030)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#incoming").dialog("option", "width", 600);',
'',
'',
'$(document).ready(function() {',
'    $("#success").dialog({',
'        autoOpen: false,',
'        modal: true,',
'        width: 520,',
'    });',
'    let progress = 0;',
'',
'    let interval = setInterval(function() {',
'        $("#loadingProgressBar").css("width", progress + "%");',
'        $("#progressText").text(progress + "%");',
'',
'        if (progress >= 100) {',
'            clearInterval(interval);',
'            setTimeout(function() {',
'                $(''#incoming'').dialog("close");',
'                $(''#success'').dialog("open");',
'            }, 300);',
'        }',
'        progress += 10;',
'    }, 500);',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25846830232615047)
,p_name=>'Close'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(25846132365615040)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25846999014615048)
,p_event_id=>wwv_flow_imp.id(25846830232615047)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(25845931424615038)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25847130675615050)
,p_name=>'Open Sort By Modal'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11736178494394627)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26258980444850101)
,p_event_id=>wwv_flow_imp.id(25847130675615050)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(25847036282615049)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33624909684196815)
,p_event_id=>wwv_flow_imp.id(25847130675615050)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).off(''keydown.p29keyevents'');',
'$("#sort-by").on("dialogbeforeclose", function(event, ui) {',
'    setTimeout(mapP29Keys, 0);',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26259629649850108)
,p_name=>'Set Sorted By - PN'
,p_event_sequence=>160
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(26259159975850103)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26259799790850109)
,p_event_id=>wwv_flow_imp.id(26259629649850108)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P29_SORTED_BY'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'PO Number'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26260395732850115)
,p_event_id=>wwv_flow_imp.id(26259629649850108)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(15908222943779132)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26260679995850118)
,p_event_id=>wwv_flow_imp.id(26259629649850108)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(25847036282615049)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26262197769850133)
,p_event_id=>wwv_flow_imp.id(26259629649850108)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(function() {',
'    $(".a-GV-cell").first().trigger("click");',
'}, 500);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26259859045850110)
,p_name=>'Set Sorted By - Supplier'
,p_event_sequence=>170
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(26259386262850105)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26259964023850111)
,p_event_id=>wwv_flow_imp.id(26259859045850110)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P29_SORTED_BY'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'Supplier'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26260462941850116)
,p_event_id=>wwv_flow_imp.id(26259859045850110)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(15908222943779132)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26260709013850119)
,p_event_id=>wwv_flow_imp.id(26259859045850110)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(25847036282615049)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26262203480850134)
,p_event_id=>wwv_flow_imp.id(26259859045850110)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(function() {',
'    $(".a-GV-cell").first().trigger("click");',
'}, 500);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26260099555850112)
,p_name=>'Set Sorted By - ETA'
,p_event_sequence=>180
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(26259452187850106)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26260161679850113)
,p_event_id=>wwv_flow_imp.id(26260099555850112)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P29_SORTED_BY'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'ETA'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26260511143850117)
,p_event_id=>wwv_flow_imp.id(26260099555850112)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(15908222943779132)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26260862574850120)
,p_event_id=>wwv_flow_imp.id(26260099555850112)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(25847036282615049)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26262310358850135)
,p_event_id=>wwv_flow_imp.id(26260099555850112)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(function() {',
'    $(".a-GV-cell").first().trigger("click");',
'}, 500);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26624464107248001)
,p_name=>'Show Success'
,p_event_sequence=>210
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26624531729248002)
,p_event_id=>wwv_flow_imp.id(26624464107248001)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var toast = document.getElementById(''successMessage'');',
'if ($v("P29_PO_NO_S") && $v("P29_FROM")) {',
'    toast.style.display = "block";',
'    toast.style.opacity = 1;',
'',
'    $("#successMessage").html(',
'        `<img src="#APP_FILES#img/circle-check-solid.png" style="width: 18px; height: 18px; vertical-align: middle; margin-right: 5px; margin-bottom: 2px;">` +',
'        ($v("P29_FROM") === "C" ? ',
'        `Child PO # : ${$v("P29_PO_NO_S")} has been created!` :',
'        `PO # : ${$v("P29_PO_NO_S")} has been created!`)',
'    );',
'',
'    apex.item("P29_PO_NO_S").setValue(null);',
'    apex.item("P29_FROM").setValue(null);',
'',
'    setTimeout(function() {',
'        toast.style.transition = "opacity 1s";',
'        toast.style.opacity = 0;',
'',
'        setTimeout(function() {',
'            toast.style.display = ''none'';',
'        }, 1000);',
'    }, 3000);',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(40826978081330205)
,p_name=>'Print Report'
,p_event_sequence=>220
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11735950772394625)
,p_condition_element=>'P29_PO_NUMBER'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40827008015330206)
,p_event_id=>wwv_flow_imp.id(40826978081330205)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'generateReport("PURCHASE_ORDER_PRINT", "pdf", {',
'    fileName: $v("P29_PO_NUMBER"),',
'    mode : "print",',
'    parameters : {',
'        P_PO_ID : $v("P29_PO_NUMBER"),',
'        P_VENDOR_ID : $v("P29_VENDOR_ID")',
'    },',
'    spinnerEnabled : true',
'});',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(40827178539330207)
,p_name=>'Export Report'
,p_event_sequence=>230
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(20867874482453202)
,p_condition_element=>'P29_START_WITH'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40827243020330208)
,p_event_id=>wwv_flow_imp.id(40827178539330207)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let currentDate = new Date();',
'let formattedDate = currentDate.getFullYear().toString() + ',
'    (currentDate.getMonth() + 1).toString().padStart(2, ''0'') + ',
'    currentDate.getDate().toString().padStart(2, ''0'');',
'',
'generateReport("PURCHASE_ORDER_EXPORT", "xlsx", {',
'    fileName: `PurchaseOrder_${formattedDate}`,',
'    mode : "export",',
'    parameters : {',
'        P_START_WITH : $v("P29_START_WITH"),',
'        P_SORTED_BY : $v("P29_SORTED_BY")',
'    },',
'    spinnerEnabled : true',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(52085431781356705)
,p_name=>'Select First Cell'
,p_event_sequence=>240
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52085534911356706)
,p_event_id=>wwv_flow_imp.id(52085431781356705)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(function() {',
'    $( document ).ready(function() {',
'        $("#table .a-GV-bdy .a-GV-w-scroll .a-GV-table tbody").children(".a-GV-row").each( function () {',
'            if( $(this).attr("data-id") == $v(''P29_PO_NUMBER'') ){',
'                $(this).find(".a-GV-cell").first().trigger("click");',
'            } else if($v(''P29_PO_NUMBER'') === "") {',
'                $(".a-GV-cell").first().trigger("click");',
'            }',
'        });',
'    });',
'}, 500);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(64470355194367202)
,p_name=>'Open Supervisor Approval'
,p_event_sequence=>250
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(62112617157066948)
,p_condition_element=>'P29_PO_NUMBER'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64471301215367212)
,p_event_id=>wwv_flow_imp.id(64470355194367202)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var grid = apex.region("table").widget().interactiveGrid(''getViews'', ''grid'');',
'var model = grid.model;',
'',
'var selectedRecords = grid.getSelectedRecords();',
'',
'console.log(selectedRecords)',
'',
'if(selectedRecords.length > 0) {',
'    var selectedRecord = grid.getSelectedRecords()[0][1];',
'    if(selectedRecord === ''P'') {',
'        return true;',
'    } else {',
'        return false;',
'    }',
'} else {',
'    return false;',
'}',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64470445025367203)
,p_event_id=>wwv_flow_imp.id(64470355194367202)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).off(''keydown.p29keyevents'');',
'$("#sup-app").on("dialogbeforeclose", function(event, ui) {',
'    setTimeout(mapP29Keys, 0);',
'});',
'$("#sup-app").dialog("option", "width", 400);'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64470581984367204)
,p_event_id=>wwv_flow_imp.id(64470355194367202)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(62112760253066949)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(64470858539367207)
,p_name=>'On Enter'
,p_event_sequence=>260
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P29_PASSWORD'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.key?.toLowerCase() === "enter";'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64470966016367208)
,p_event_id=>wwv_flow_imp.id(64470858539367207)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P29_PO_NUMBER'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process(''UNPOST'', {',
'    x01: $v("P29_USER_ID"),',
'    x02: $v("P29_PASSWORD"),',
'    x03: $v("P29_PO_NUMBER")',
'})',
'.done(data => {',
'    if(!data.success) {',
'        apex.message.showErrors([',
'            {',
'                type: "error",',
'                location: "inline",',
'                pageItem: "P29_USER_ID",',
'                message: data.errorMessage',
'            },',
'            {',
'                type: "error",',
'                location: "inline",',
'                pageItem: "P29_PASSWORD",',
'                message: data.errorMessage',
'            }',
'        ]);',
'    } else {',
'         $.event.trigger("unpost");',
'    }',
'})',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(64471061792367209)
,p_name=>'Unpost PO'
,p_event_sequence=>270
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'unpost'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64471182828367210)
,p_event_id=>wwv_flow_imp.id(64471061792367209)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(62112760253066949)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65873860357340904)
,p_event_id=>wwv_flow_imp.id(64471061792367209)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    APEX_UTIL.SET_SESSION_STATE(',
'        p_name => ''P29_PO_NUMBER'',',
'        p_value => :P29_PO_NUMBER',
'    );',
'END;'))
,p_attribute_02=>'P29_PO_NUMBER'
,p_attribute_03=>'P29_PO_NUMBER'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64471203924367211)
,p_event_id=>wwv_flow_imp.id(64471061792367209)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(15908222943779132)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65873917268340905)
,p_event_id=>wwv_flow_imp.id(64471061792367209)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'selectRecord();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(65875387885340919)
,p_name=>'Set Sorted By'
,p_event_sequence=>280
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65875404126340920)
,p_event_id=>wwv_flow_imp.id(65875387885340919)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if($v("P29_SORTED_BY") === "") {',
'    apex.item("P29_SORTED_BY").setValue("PO Number");',
'}'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(64470744919367206)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UNPOST'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_user_id NPM009.user_name%TYPE;',
'    l_password varchar2(100);',
'    l_po_id NIT012.po_id%TYPE;',
'    l_result boolean;',
'BEGIN',
'    l_user_id := apex_application.g_x01;',
'    l_password := apex_application.g_x02;',
'    l_po_id := apex_application.g_x03;',
'',
'    l_result := nos_authentication_pkg.nos_authentication2(l_user_id, l_password);',
'',
'    IF l_result THEN',
'        UPDATE NIT012',
'        SET is_posted = ''N''',
'        WHERE po_id = l_po_id;',
'',
'        HTP.P(''{"success": true}'');',
'    ELSE',
'        HTP.p(''{"success": false, "errorMessage": "Invalid Credentials"}'');',
'    END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>64470744919367206
);
wwv_flow_imp.component_end;
end;
/
