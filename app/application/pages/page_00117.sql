prompt --application/pages/page_00117
begin
--   Manifest
--     PAGE: 00117
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
 p_id=>117
,p_name=>'Collection Entry Type'
,p_alias=>'COLLECTION-ENTRY-TYPE'
,p_step_title=>'Collection Entry Type'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p117KeyMap = {',
'    escape: (v) => {',
'        if(!$("#add-collect-type").is(":visible") && !$("#search").is(":visible") && !$("#option").is(":visible")) {',
'            $("#exit").trigger("click");',
'        }',
'    },',
'    a: (v) => {',
'        $("#a").trigger("click");',
'    },',
'    u: (v) => {',
'        $("#u").trigger("click");',
'    },',
'    s: (v) => {',
'        $("#s").trigger("click");',
'    },',
'    p: (v) => {',
'        $("#p").trigger("click");',
'    },',
'    h: (v) => {',
'        $("#h").trigger("click");',
'    },',
'    home: (v) =>{',
'        $("#home").trigger("click");',
'    },',
'    end: (v) =>{',
'        $("#end").trigger("click");',
'    }',
'}',
'',
'function mapP117Keys() {',
'    $(document).off(''keydown.p117keyevents'');',
'    $(document).on(''keydown.p117keyevents'', (ev) => {',
'        ',
'        const focusedElement = document.activeElement;',
'        if (focusedElement.tagName === "INPUT" || focusedElement.tagName === "TEXTAREA") {',
'            return;',
'        }',
'        ',
'        var key = ev.key?.toLowerCase();',
'        if (p117KeyMap[key]) {',
'            ev.preventDefault();',
'            setTimeout(function() {',
'                p117KeyMap[key]();',
'            }, 350)',
'        }',
'    });',
'}',
'',
'async function doesCodeExists() {',
'    const response = await apex.server.process("DOES_CODE_EXIST", {',
'        pageItems: ''#P117_COLLECTION_TYPE_CODE''',
'    }, {',
'        dataType: ''json''',
'    });',
'',
'    if(response.success) {',
'        return true;',
'    } else {',
'        throw response.message;',
'    }',
'}',
'',
'async function doesNameExists() {',
'    const response = await apex.server.process("DOES_NAME_EXIST", {',
'        pageItems: ''#P117_COLLECTION_TYPE_NAME, #P117_COLLECTION_TYPE_ID''',
'    }, {',
'        dataType: ''json''',
'    });',
'',
'    if(response.success) {',
'        return true;',
'    } else {',
'        throw response.message;',
'    }',
'}',
'',
'async function insertToNPM015() {',
'    const response = await apex.server.process("INSERT_TO_NPM015", ',
'    {',
'        pageItems: ''#P117_COLLECTION_TYPE_CODE, #P117_COLLECTION_TYPE_NAME, #P117_COLLECTION_TYPE_DESCRIPTION''',
'    }, {',
'        dateType: ''json''',
'    })',
'',
'    if(response.success) {',
'        return true;',
'    } else {',
'        throw ''An unknown error occured.'';',
'    }',
'}',
'',
'async function updateCollectionType() {',
'    const response = await apex.server.process("UPDATE_COLLECTION_TYPE", ',
'    {',
'        pageItems: ''#P117_COLLECTION_TYPE_NAME, #P117_COLLECTION_TYPE_DESCRIPTION, #P117_COLLECTION_TYPE_ID''',
'    }, {',
'        dateType: ''json''',
'    })',
'',
'    if(response.success) {',
'        return true;',
'    } else {',
'        throw ''An unknown error occured.'';',
'    }',
'}',
'',
'function highlightValue() {',
'    const inputFieldIds = ["P117_COLLECTION_TYPE_CODE", "P117_COLLECTION_TYPE_NAME", ',
'                           "P117_COLLECTION_TYPE_DESCRIPTION"];',
'',
'    inputFieldIds.forEach((fieldId) => {',
'        $(`#${fieldId}`).on("focus", function() {',
'            $(this).select();',
'        });',
'    })',
'}',
'',
'function selectFirstRow() {',
'    let region = apex.region("collection-type")',
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
'    let region = apex.region("collection-type")',
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
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP117Keys();',
'setTitle("Collection Entry - Collection Type Utilities");',
'highlightValue();',
'',
'$(document).ready(function() {',
'    $("#P117_COLLECTION_TYPE_CODE, #P117_COLLECTION_TYPE_NAME, #P117_COLLECTION_TYPE_DESCRIPTION").on("keydown", function(event) {',
'        if (event.key === "Enter" || event.keyCode === 13) {',
'            if(event.shiftKey) {',
'                return;',
'            } else {',
'                $.event.trigger("validate");',
'                event.preventDefault();',
'            }',
'        }',
'    });',
'',
'    $("#P117_CODE, #P117_NAME").on("keydown", function(event) {',
'        if(event.key === "Enter" || event.keyCode === 13) {',
'            $("#search-collection-type").trigger("click");',
'            event.preventDefault();',
'        }',
'    });',
'    let currentDate = new Date();',
'    let formattedDate = currentDate.getFullYear().toString() + ',
'        (currentDate.getMonth() + 1).toString().padStart(2, ''0'') + ',
'        currentDate.getDate().toString().padStart(2, ''0'');',
'    ',
'    $(document).on("keydown", function(event) {',
'        if($("#option").is(":visible")) {',
'            if(event.key === ''A'' || event.key === ''a'') {',
'                generateReport("COLLECTION_TYPE_PRINT_COURIER_NEW", "pdf", {',
'                    fileName: `CollectionEntryCollectionTypeUtilities_${formattedDate}`,',
'                    mode : "print",',
'                    parameters : {',
'                        P_CODE : $v("P117_P_CODE"),',
'                        P_NAME : $v("P117_P_NAME")',
'                    },',
'                    spinnerEnabled : true',
'                });',
'            } else if (event.key === "B" || event.key === ''b'') {',
'                generateReport("COLLECTION_TYPE_PRINT_ARIAL", "pdf", {',
'                    fileName: `CollectionEntryCollectionTypeUtilities_${formattedDate}`,',
'                    mode : "print",',
'                    parameters : {',
'                        P_CODE : $v("P117_P_CODE"),',
'                        P_NAME : $v("P117_P_NAME")',
'                    },',
'                    spinnerEnabled : true',
'                });',
'            }',
'        }',
'    });',
'});'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Region#dot,',
'.t-Region#graphic {',
'    border-radius: 0 !important;',
'    font-size: 1.125rem;',
'    border: none !important;',
'    outline: none !important;',
'    background-color: #056AC8 !important; ',
'    color: white !important;',
'}',
'',
'.t-Header .t-Header-branding {',
'    background-color: white !important;',
'    color: rgb(30, 58, 138) !important;',
'}',
'',
'.t-DialogRegion-bodyWrapperOut {',
'    overflow: hidden !important;',
'}',
'',
'#search.t-DialogRegion {',
'    min-height: 120px !important;',
'    background-color: white;',
'    border-radius: 12px;',
'}',
'',
'.t-Form-error {',
'    color: #FFD700 !important;',
'    font-weight: 700;',
'}',
'',
'.t-Form-error #P117_CODE_error,',
'.t-Form-error #P117_NAME_error {',
'    color: red !important;',
'}',
'',
'.t-Form-labelContainer .t-Form-label::before {',
'    content: "" !important;',
'}',
'',
'#add-collect-type label {',
'    color: white;',
'    font-size: 1.125rem;',
'}',
'',
'#search label {',
'    font-size: 1.125rem;',
'}',
'',
'#collection-type .a-IG {',
'    height: calc(75vh + 2px) !important;',
'} ',
'',
'#collection-type .a-IG-contentContainer {',
'    height: 75vh !important;',
'}',
'',
'#collection-type .a-IG-gridView.a-GV {',
'    height: 75vh !important;',
'}',
'',
'#collection-type .a-GV-bdy {',
'    height: calc(75vh - 2.5625rem) !important;',
'}',
'',
'body, #button-region {',
'    background-color: rgb(30, 58, 138);',
'}',
'',
'#add-collect-type,',
'.t-Region#search-header {',
'    background-color: #046BC8;',
'}',
'',
'.buttons-row {',
'    position: absolute;',
'    width: 98vw;',
'    bottom: 1rem;',
'}',
'',
'.ui-dialog {',
'    background-color: #056AC8;',
'}',
'',
'#add-collect-type,',
'#search {',
'    border-radius: 12px;',
'}',
'',
'#collection-type table,',
'#collection-type tr,',
'#collection-type th,',
'#collection-type td {',
'    font-size: 1.125rem;',
'}',
'',
'.btns {',
'    font-size: 1.125rem;',
'    color: white;',
'    text-align: left;',
'}',
'',
'.hide {',
'    display: none;',
'}',
'',
'#collection-type .a-GV-header a, #collection-type th.a-GV-header {',
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
'#collection-type .a-GV-table {',
'    width: 100% !important;',
'}',
'',
'#collection-type .a-GV-table colgroup col:nth-child(1) {',
'    width: 4rem;',
'}',
'',
'#collection-type .a-GV-table colgroup col:nth-child(2) {',
'    width: 13rem;',
'}',
'',
'#collection-type .a-GV-table colgroup col:nth-child(3) {',
'    width: 40rem;',
'}',
'',
'#collection-type .a-GV-table colgroup col:nth-child(4),',
'#collection-type .a-GV-table colgroup col:nth-child(5),',
'#collection-type .a-GV-table colgroup col:nth-child(7) {',
'    width: 8.5rem;',
'}',
'',
'#collection-type .a-GV-table colgroup col:nth-child(6) {',
'    width: 10rem;',
'}',
'',
'.is-selected td{',
'    background-color: #F5DC1C !important;',
'}',
'',
'.is-focused {',
'    box-shadow: 0 0 0 1px black inset !important;',
'}'))
,p_step_template=>wwv_flow_imp.id(5671392681337017)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(51404547598205170)
,p_plug_name=>'Collection Entry Type'
,p_region_name=>'collection-type'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>50
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH collection_entry_type AS (',
'    SELECT',
'        collection_type_id,',
'        collection_type_code,',
'        collection_type_name,',
'        collection_type_description,',
'        user_created,',
'        TO_CHAR(date_created, ''MM/DD/YYYY'') as date_created,',
'        user_updated,',
'        TO_CHAR(date_updated, ''MM/DD/YYYY'') as date_updated',
'    FROM',
'        NPM015',
'    WHERE',
'        (:P117_CODE IS NULL AND :P117_NAME IS NULL)',
'        OR (:P117_CODE IS NOT NULL AND UPPER(collection_type_code) = UPPER(:P117_CODE))',
'        OR (:P117_NAME IS NOT NULL AND UPPER(collection_type_name) LIKE ''%'' || UPPER(:P117_NAME) || ''%'')',
'    ORDER BY',
'        CASE WHEN :P117_NAME IS NOT NULL AND UPPER(collection_type_name) LIKE UPPER(:P117_NAME) || ''%'' THEN 1 ELSE 2 END,',
'        CASE WHEN :P117_CODE IS NOT NULL THEN collection_type_code',
'             WHEN :P117_NAME IS NOT NULL THEN collection_type_name END ASC',
')',
'',
'SELECT * FROM collection_entry_type'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P117_CODE,P117_NAME'
,p_prn_page_header=>'Collection Entry Type'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(51417948516263303)
,p_name=>'COLLECTION_TYPE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COLLECTION_TYPE_ID'
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
 p_id=>wwv_flow_imp.id(51418092058263304)
,p_name=>'COLLECTION_TYPE_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COLLECTION_TYPE_CODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Code'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>4
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
 p_id=>wwv_flow_imp.id(51418177956263305)
,p_name=>'COLLECTION_TYPE_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COLLECTION_TYPE_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Collection Type Name'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>80
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
 p_id=>wwv_flow_imp.id(51418245556263306)
,p_name=>'COLLECTION_TYPE_DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COLLECTION_TYPE_DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Collection Type Description'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>400
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
 p_id=>wwv_flow_imp.id(51418372538263307)
,p_name=>'USER_CREATED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USER_CREATED'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Created User'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>200
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
 p_id=>wwv_flow_imp.id(51418485911263308)
,p_name=>'DATE_CREATED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DATE_CREATED'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Date Created'
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
 p_id=>wwv_flow_imp.id(51418540632263309)
,p_name=>'USER_UPDATED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USER_UPDATED'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Last Updated By'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>200
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
 p_id=>wwv_flow_imp.id(51418620137263310)
,p_name=>'DATE_UPDATED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DATE_UPDATED'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Date Updated'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(51405088294205178)
,p_internal_uid=>51405088294205178
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
 p_id=>wwv_flow_imp.id(51405470712205179)
,p_interactive_grid_id=>wwv_flow_imp.id(51405088294205178)
,p_static_id=>'514055'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(51405696430205181)
,p_report_id=>wwv_flow_imp.id(51405470712205179)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(51423973164272739)
,p_view_id=>wwv_flow_imp.id(51405696430205181)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(51417948516263303)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(51424840308272746)
,p_view_id=>wwv_flow_imp.id(51405696430205181)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(51418092058263304)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(51425769995272754)
,p_view_id=>wwv_flow_imp.id(51405696430205181)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(51418177956263305)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(51426629841272760)
,p_view_id=>wwv_flow_imp.id(51405696430205181)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(51418245556263306)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(51427527677272768)
,p_view_id=>wwv_flow_imp.id(51405696430205181)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(51418372538263307)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(51428408893272776)
,p_view_id=>wwv_flow_imp.id(51405696430205181)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(51418485911263308)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(51429348533272782)
,p_view_id=>wwv_flow_imp.id(51405696430205181)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(51418540632263309)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(51430208270272789)
,p_view_id=>wwv_flow_imp.id(51405696430205181)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(51418620137263310)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(51418719669263311)
,p_plug_name=>'Buttons'
,p_region_name=>'button-region'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>60
,p_plug_grid_row_css_classes=>'buttons-row'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(51419550760263319)
,p_plug_name=>'Add and Update Collection Type'
,p_region_name=>'add-collect-type'
,p_region_template_options=>'js-modal:js-dialog-nosize'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_04'
,p_location=>null
,p_plug_header=>'<span style="color: white; font-size: 1.5rem" class="collect-type-header"></span>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(51422291515263346)
,p_plug_name=>'Search'
,p_region_name=>'search'
,p_region_template_options=>'t-DialogRegion--noPadding:js-modal:js-dialog-nosize'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_04'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(51422501566263349)
,p_plug_name=>'Header'
,p_region_name=>'search-header'
,p_parent_plug_id=>wwv_flow_imp.id(51422291515263346)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="background-color: #056AC8; font-size: 1.5rem; color: white; padding: .50rem 0 .50rem 0; margin-left: 1rem;"',
'     id="search-header">',
'    Search',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(51614328532202011)
,p_plug_name=>'Printing Options'
,p_region_name=>'option'
,p_region_template_options=>'js-modal:js-dialog-nosize'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>50
,p_plug_display_point=>'REGION_POSITION_04'
,p_location=>null
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="font-size: 1.5rem; font-weight: 600; margin-bottom: 1rem; color: white;">',
'    Printing Options',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(51614857394202016)
,p_plug_name=>'Dotmatrix'
,p_region_name=>'dot'
,p_parent_plug_id=>wwv_flow_imp.id(51614328532202011)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--hiddenOverflow:margin-bottom-none'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>30
,p_location=>null
,p_plug_source=>'A - Dotmatrix'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(51614945493202017)
,p_plug_name=>'Graphic Printer'
,p_region_name=>'graphic'
,p_parent_plug_id=>wwv_flow_imp.id(51614328532202011)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--hiddenOverflow:margin-bottom-none'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>40
,p_location=>null
,p_plug_source=>'B- Graphic Printer'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(51418886815263312)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(51418719669263311)
,p_button_name=>'ADD'
,p_button_static_id=>'a'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>A</u> - Add'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(51418911790263313)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(51418719669263311)
,p_button_name=>'UPDATE'
,p_button_static_id=>'u'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>U</u> - Update'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(51419001697263314)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(51418719669263311)
,p_button_name=>'PRINT'
,p_button_static_id=>'p'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>P</u> - Print'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(51419129690263315)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(51418719669263311)
,p_button_name=>'EXPORT'
,p_button_static_id=>'h'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>H</u> - Export'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(51613651875202004)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(51422291515263346)
,p_button_name=>'Search'
,p_button_static_id=>'search-collection-type'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Search'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'hide'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(51419285683263316)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(51418719669263311)
,p_button_name=>'SEARCH'
,p_button_static_id=>'s'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>S</u> - Search'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(51419307522263317)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(51418719669263311)
,p_button_name=>'HOME'
,p_button_static_id=>'home'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Home'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns hide'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(51419470170263318)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(51418719669263311)
,p_button_name=>'END'
,p_button_static_id=>'end'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'End'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns hide'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(51617607918202044)
,p_button_sequence=>70
,p_button_name=>'EXIT'
,p_button_static_id=>'exit'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Exit'
,p_button_redirect_url=>'f?p=&APP_ID.:160:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'hide'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51419673063263320)
,p_name=>'P117_PROCESS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(51419550760263319)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51419746730263321)
,p_name=>'P117_COLLECTION_TYPE_CODE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(51419550760263319)
,p_prompt=>'Collection Type Code'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>1
,p_colspan=>9
,p_grid_label_column_span=>5
,p_field_template=>wwv_flow_imp.id(15621067564319309)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:margin-top-sm:margin-right-sm'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51419899074263322)
,p_name=>'P117_COLLECTION_TYPE_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(51419550760263319)
,p_prompt=>'Collection Type Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>5
,p_field_template=>wwv_flow_imp.id(15621067564319309)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:margin-top-sm:margin-right-md'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51419904717263323)
,p_name=>'P117_COLLECTION_TYPE_DESCRIPTION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(51419550760263319)
,p_prompt=>'Collection Type Description'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>3
,p_grid_label_column_span=>5
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:margin-top-sm:margin-right-md'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51420922159263333)
,p_name=>'P117_COLLECTION_TYPE_ID'
,p_item_sequence=>20
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51422371962263347)
,p_name=>'P117_CODE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(51422291515263346)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Go To Code :'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:margin-right-lg'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51422668116263350)
,p_name=>'P117_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(51422291515263346)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Name :'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:margin-bottom-md:margin-right-lg'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51615024248202018)
,p_name=>'P117_P_CODE'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51615179998202019)
,p_name=>'P117_P_NAME'
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(51420011342263324)
,p_name=>'Open Add'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(51418886815263312)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51420192331263325)
,p_event_id=>wwv_flow_imp.id(51420011342263324)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#add-collect-type").dialog("option", "width", 700);',
'$(".collect-type-header").text("Add Collection Type");',
'apex.item("P117_PROCESS").setValue("A");',
'apex.item("P117_COLLECTION_TYPE_CODE").enable();',
'apex.message.clearErrors();'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51420235378263326)
,p_event_id=>wwv_flow_imp.id(51420011342263324)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(51419550760263319)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51420346084263327)
,p_event_id=>wwv_flow_imp.id(51420011342263324)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P117_COLLECTION_TYPE_CODE,P117_COLLECTION_TYPE_NAME,P117_COLLECTION_TYPE_DESCRIPTION'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71619405031549115)
,p_event_id=>wwv_flow_imp.id(51420011342263324)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).off(''keydown.p117keyevents'');',
'$("#add-collect-type").on("dialogbeforeclose", function(event, ui) {',
'    setTimeout(mapP117Keys, 0);',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(51420493039263328)
,p_name=>'Validate and Submit'
,p_event_sequence=>20
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'validate'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51420512866263329)
,p_event_id=>wwv_flow_imp.id(51420493039263328)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const ICON_FAIL_LARGE = ''fa fa-lg fa-times-circle msg-icon-yellow'';',
'const ICON_OK_LARGE = ''fa fa-lg fa-check-circle'';',
'',
'async function validateFields() {',
'    var code = $v("P117_COLLECTION_TYPE_CODE");',
'    var typeName = $v("P117_COLLECTION_TYPE_NAME");',
'    var description = $v("P117_COLLECTION_TYPE_DESCRIPTION");',
'',
'    function showError(pageItem, error) {',
'        apex.message.showErrors([{',
'            type: "error",',
'            location: ["inline"],',
'            pageItem: pageItem,',
'            message: error,',
'            unsafe: false',
'        }]);',
'        hasErrors = true;',
'    }',
'',
'    apex.message.clearErrors();',
'    var hasErrors = false;',
'',
'    if(code === "") {',
'        showError("P117_COLLECTION_TYPE_CODE","Collection Type Code cannot be empty");',
'    } else if (code.length > 1) {',
'        showError("P117_COLLECTION_TYPE_CODE","Collection Type Code cannot exceed 1 character");',
'    } else if(code) {',
'        if($v("P117_PROCESS") === ''A'') {',
'            try {',
'                await doesCodeExists();',
'            } catch (error) {',
'                showError("P117_COLLECTION_TYPE_CODE",error);',
'            }',
'        }',
'        ',
'    }',
'',
'    if(typeName === "") {',
'        showError("P117_COLLECTION_TYPE_NAME","Collection Type Name cannot be empty");',
'    } else if (typeName.length > 20) {',
'        showError("P117_COLLECTION_TYPE_NAME","Collection Type Name cannot exceed 20 characters");',
'    } else if(typeName) {',
'        try {',
'            await doesNameExists();',
'        } catch (error) {',
'            showError("P117_COLLECTION_TYPE_NAME", error);',
'        }',
'    }',
'',
'    if (description && description.length > 80) {',
'        showError("P117_COLLECTION_TYPE_DESCRIPTION","Collection Type Description cannot exceed 80 characters");',
'    }',
'',
'    return hasErrors;',
'}',
'',
'async function insertCollectionType() {',
'    const hasErrors = await validateFields();',
'    if(hasErrors) {',
'        return;',
'    }',
'',
'    try {',
'        if($v("P117_PROCESS") === ''A'') {',
'            await insertToNPM015();',
'',
'            $(''#add-collect-type'').dialog("close");',
'            apex.item("P117_COLLECTION_TYPE_CODE").setValue(null);',
'            apex.item("P117_COLLECTION_TYPE_NAME").setValue(null);',
'            apex.item("P117_COLLECTION_TYPE_DESCRIPTION").setValue(null);',
'            showGPopup({ message: `Collection Type has been created!`, width: 600, icon: ICON_OK_LARGE, top: "85%", timeoutActive: true })',
'        } else if($v("P117_PROCESS") === ''U'') {',
'            await updateCollectionType();',
'',
'            $(''#add-collect-type'').dialog("close");',
'            showGPopup({ message: `Collection Type has been updated!`, width: 600, icon: ICON_OK_LARGE, top: "85%", timeoutActive: true });',
'        }',
'        apex.region("collection-type").refresh();',
'        setTimeout(function() {',
'            $(".a-GV-cell").first().trigger("click");',
'        }, 2000);',
'    } catch (error) {',
'        showGPopup({ message: error, width: 600, icon: ICON_FAIL_LARGE, top: "85%", timeoutActive: true });',
'    }',
'}',
'',
'insertCollectionType();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(51421032449263334)
,p_name=>'Selection Change'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(51404547598205170)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51421129219263335)
,p_event_id=>wwv_flow_imp.id(51421032449263334)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (this.data.selectedRecords && this.data.selectedRecords.length > 0) {',
'    let typeIDSelected = this.data.selectedRecords[0][0];',
'    apex.item("P117_COLLECTION_TYPE_ID").setValue(typeIDSelected);',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(51421294761263336)
,p_name=>'Select First Cell'
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(51404547598205170)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|gridpagechange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51421391089263337)
,p_event_id=>wwv_flow_imp.id(51421294761263336)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(".a-GV-cell").first().trigger("click");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(51421460616263338)
,p_name=>'Select First'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51421562938263339)
,p_event_id=>wwv_flow_imp.id(51421460616263338)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(function() {',
'    $(".a-GV-cell").first().trigger("click");',
'}, 300);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(51421634489263340)
,p_name=>'Open Update'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(51418911790263313)
,p_condition_element=>'P117_COLLECTION_TYPE_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51421737641263341)
,p_event_id=>wwv_flow_imp.id(51421634489263340)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#add-collect-type").dialog("option", "width", 700);',
'$(".collect-type-header").text("Update Collection Type");',
'apex.item("P117_PROCESS").setValue("U");',
'apex.item("P117_COLLECTION_TYPE_CODE").disable();',
'apex.message.clearErrors();'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51421839456263342)
,p_event_id=>wwv_flow_imp.id(51421634489263340)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P117_COLLECTION_TYPE_CODE,P117_COLLECTION_TYPE_NAME,P117_COLLECTION_TYPE_DESCRIPTION'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51421928695263343)
,p_event_id=>wwv_flow_imp.id(51421634489263340)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(51419550760263319)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51422054234263344)
,p_event_id=>wwv_flow_imp.id(51421634489263340)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_code NPM015.collection_type_code%TYPE;',
'    l_name NPM015.collection_type_name%TYPE;',
'    l_description NPM015.collection_type_description%TYPE;',
'BEGIN',
'    IF :P117_PROCESS = ''U'' THEN',
'        SELECT collection_type_code, collection_type_name, collection_type_description',
'        INTO l_code, l_name, l_description',
'        FROM NPM015',
'        WHERE collection_type_id = :P117_COLLECTION_TYPE_ID;',
'',
'        :P117_COLLECTION_TYPE_CODE := l_code;',
'        :P117_COLLECTION_TYPE_NAME := l_name;',
'        :P117_COLLECTION_TYPE_DESCRIPTION := l_description;',
'    END IF;',
'END;'))
,p_attribute_02=>'P117_COLLECTION_TYPE_ID,P117_PROCESS'
,p_attribute_03=>'P117_COLLECTION_TYPE_CODE,P117_COLLECTION_TYPE_NAME,P117_COLLECTION_TYPE_DESCRIPTION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(55263931976963923)
,p_event_id=>wwv_flow_imp.id(51421634489263340)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(function() {',
'    apex.item("P117_COLLECTION_TYPE_NAME").setFocus();',
'}, 200)'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71619558409549116)
,p_event_id=>wwv_flow_imp.id(51421634489263340)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).off(''keydown.p117keyevents'');',
'$("#add-collect-type").on("dialogbeforeclose", function(event, ui) {',
'    setTimeout(mapP117Keys, 0);',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(51613313512202001)
,p_name=>'Open Search'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(51419285683263316)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51613440206202002)
,p_event_id=>wwv_flow_imp.id(51613313512202001)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("#search").dialog("option", "width", 600);'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51613591463202003)
,p_event_id=>wwv_flow_imp.id(51613313512202001)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(51422291515263346)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71619798723549118)
,p_event_id=>wwv_flow_imp.id(51613313512202001)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).off(''keydown.p117keyevents'');',
'$("#search").on("dialogbeforeclose", function(event, ui) {',
'    setTimeout(mapP117Keys, 0);',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(51613727057202005)
,p_name=>'Search'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(51613651875202004)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51614131404202009)
,p_event_id=>wwv_flow_imp.id(51613727057202005)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let code = $v("P117_CODE");',
'let typeName = $v("P117_NAME");',
'',
'apex.message.clearErrors();',
'var hasErrors = false;',
'',
'if(code && typeName) {',
'    if(code) {',
'        apex.message.showErrors([{',
'            type: "error",',
'            location: ["inline"],',
'            pageItem: "P117_CODE",',
'            message: "Only one field can be filled",',
'            unsafe: false',
'        }]);',
'        hasErrors = true;',
'    }',
'',
'    if(typeName) {',
'        apex.message.showErrors([{',
'            type: "error",',
'            location: ["inline"],',
'            pageItem: "P117_NAME",',
'            message: "Only one field can be filled",',
'            unsafe: false',
'        }]);',
'        hasErrors = true;',
'    }',
'    ',
'}',
'',
'if(hasErrors) {',
'    return false;',
'}',
'',
'apex.message.clearErrors();'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51613803508202006)
,p_event_id=>wwv_flow_imp.id(51613727057202005)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(51422291515263346)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51613905812202007)
,p_event_id=>wwv_flow_imp.id(51613727057202005)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(51404547598205170)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51615567831202023)
,p_event_id=>wwv_flow_imp.id(51613727057202005)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P117_P_CODE'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$v("P117_CODE");'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51615615299202024)
,p_event_id=>wwv_flow_imp.id(51613727057202005)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P117_P_NAME'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$v("P117_NAME");'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51614052283202008)
,p_event_id=>wwv_flow_imp.id(51613727057202005)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P117_COLLECTION_TYPE_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51614260141202010)
,p_event_id=>wwv_flow_imp.id(51613727057202005)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P117_CODE,P117_NAME'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(51614400913202012)
,p_name=>'Open Options'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(51419001697263314)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51614510922202013)
,p_event_id=>wwv_flow_imp.id(51614400913202012)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(51614328532202011)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51614653504202014)
,p_event_id=>wwv_flow_imp.id(51614400913202012)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).off(''keydown.p117keyevents'');',
'$("#option").on("dialogbeforeclose", function(event, ui) {',
'    setTimeout(mapP117Keys, 0);',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(51615378826202021)
,p_name=>'Export'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(51419129690263315)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51615499686202022)
,p_event_id=>wwv_flow_imp.id(51615378826202021)
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
'generateReport("COLLECTION_TYPE_EXPORT", "xlsx", {',
'    fileName: `CollectionEntryCollectionTypeUtilities_${formattedDate}`,',
'    mode : "export",',
'    parameters : {',
'        P_CODE : $v("P117_P_CODE"),',
'        P_NAME : $v("P117_P_NAME")',
'    },',
'    spinnerEnabled : true',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(51615889076202026)
,p_name=>'Go to Top'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(51419307522263317)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51615989014202027)
,p_event_id=>wwv_flow_imp.id(51615889076202026)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'selectFirstRow();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(51616058358202028)
,p_name=>'Go to Bottom'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(51419470170263318)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51616144171202029)
,p_event_id=>wwv_flow_imp.id(51616058358202028)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'selectLastRow();'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(51615787276202025)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Session'
,p_attribute_01=>'CLEAR_CACHE_FOR_ITEMS'
,p_attribute_03=>'P117_CODE,P117_NAME'
,p_internal_uid=>51615787276202025
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(51420896260263332)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DOES_CODE_EXIST'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_exists NUMBER;',
'BEGIN',
'    SELECT COUNT(*)',
'    INTO l_exists',
'    FROM NPM015',
'    WHERE UPPER(collection_type_code) = UPPER(:P117_COLLECTION_TYPE_CODE);',
'',
'    IF l_exists = 0 THEN',
'        HTP.P(''{"success": true}'');',
'    ELSE',
'        HTP.P(''{"success": false, "message": "Code already exists"}'');',
'    END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>51420896260263332
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(55263623881963920)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DOES_NAME_EXIST'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_exists NUMBER;',
'BEGIN',
'    SELECT COUNT(*)',
'    INTO l_exists',
'    FROM NPM015',
'    WHERE UPPER(collection_type_name) = UPPER(:P117_COLLECTION_TYPE_NAME)',
'    AND collection_type_id != :P117_COLLECTION_TYPE_ID;',
'',
'    IF l_exists = 0 THEN',
'        HTP.P(''{"success": true}'');',
'    ELSE',
'        HTP.P(''{"success": false, "message": "Name already exists"}'');',
'    END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>55263623881963920
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(51420740915263331)
,p_process_sequence=>30
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'INSERT_TO_NPM015'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'INSERT INTO',
'    NPM015 (collection_type_code, collection_type_name, collection_type_description, user_created, date_created)',
'VALUES',
'    (:P117_COLLECTION_TYPE_CODE, :P117_COLLECTION_TYPE_NAME, :P117_COLLECTION_TYPE_DESCRIPTION,',
'    V(''APP_USER''), SYSDATE);',
'',
'HTP.P(''{"success": true}'');'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>51420740915263331
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(51422153569263345)
,p_process_sequence=>40
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UPDATE_COLLECTION_TYPE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'UPDATE ',
'    NPM015',
'SET',
'    collection_type_name = :P117_COLLECTION_TYPE_NAME,',
'    collection_type_description = :P117_COLLECTION_TYPE_DESCRIPTION,',
'    user_updated = V(''APP_USER''),',
'    date_updated = SYSDATE',
'WHERE',
'    collection_type_id = :P117_COLLECTION_TYPE_ID;',
'',
'HTP.P(''{"success": true}'');'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>51422153569263345
);
wwv_flow_imp.component_end;
end;
/
