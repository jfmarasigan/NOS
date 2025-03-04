prompt --application/pages/page_00124
begin
--   Manifest
--     PAGE: 00124
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
 p_id=>124
,p_name=>'Credit Memo List'
,p_alias=>'CREDIT-MEMO-LIST1'
,p_step_title=>'Credit Memo List'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#js/cmn#MIN#.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const ICON_OK_LARGE = "fa fa-lg fa-check-circle";',
'const ICON_FAIL_LARGE = "fa fa-lg fa-times-circle msg-icon-yellow";',
'let lastSelected = null;',
'const p124KeyMap = {',
'    s : (v) => {',
'        if(!($(''#add'').is('':visible'') || $(''#refund'').is('':visible'') || $(''#printingOptions'').is('':visible''))){',
'            $("#s").trigger("click");',
'        }',
'    },',
'',
'    i : (v) => {',
'        if(!($(''#add'').is('':visible'') || $(''#refund'').is('':visible'') || $(''#printingOptions'').is('':visible''))){',
'            setTimeout(() => {',
'                $("#i").trigger("click");',
'            }, 350)',
'        }',
'    },',
'',
'    a : (v) => {',
'        if(!($(''#add'').is('':visible'') || $(''#refund'').is('':visible'') || $(''#printingOptions'').is('':visible''))){',
'            $("#a").trigger("click");         ',
'        } else if($(''#printingOptions'').is('':visible'')){',
'            $("#dotmatrix").trigger("click");',
'        }',
'    },',
'   ',
'    u : (v) => {',
'        if(!($(''#add'').is('':visible'') || $(''#refund'').is('':visible'') || $(''#printingOptions'').is('':visible''))){',
'            setTimeout(() => {',
'                $("#u").trigger("click");',
'            }, 350)',
'        }',
'    },',
'',
'    r : (v) => {',
'        if(!($(''#add'').is('':visible'') || $(''#refund'').is('':visible'') || $(''#printingOptions'').is('':visible''))){',
'            setTimeout(() => {',
'                $("#r").trigger("click");',
'            }, 350)',
'        } else if($(''#add'').is('':visible'')) {',
'            $("#r2").trigger("click");',
'        }      ',
'    },',
'',
'    p : (v) => {',
'        if(!($(''#add'').is('':visible'') || $(''#refund'').is('':visible'') || $(''#printingOptions'').is('':visible''))){',
'            setTimeout(() => {',
'                $("#p").trigger("click");',
'            }, 350)',
'        }',
'    },',
'',
'    o : (v) => {',
'        if(!($(''#add'').is('':visible'') || $(''#refund'').is('':visible'')|| $(''#printingOptions'').is('':visible''))){',
'            setTimeout(() => {',
'                $("#o").trigger("click");',
'            }, 350)',
'        }',
'    },',
'',
'    v : (v) => {',
'        if(!($(''#add'').is('':visible'') || $(''#refund'').is('':visible'') || $(''#printingOptions'').is('':visible''))){',
'            setTimeout(() => {',
'                $("#v").trigger("click");',
'            }, 350)',
'        }',
'    },',
'',
'    n : (v) => {',
'        if(!($(''#add'').is('':visible'') || $(''#refund'').is('':visible'') || $(''#printingOptions'').is('':visible''))){',
'            setTimeout(() => {',
'                $("#n").trigger("click");',
'            }, 350)',
'        }',
'    },',
'',
'    d : (v) => {',
'        if($(''#add'').is('':visible'')){',
'            setTimeout(() => {',
'                $("#d").trigger("click");',
'            }, 300)',
'        } else {',
'            setTimeout(() => {',
'                $("#ddate").trigger("click");',
'            }, 300)',
'        }',
'    },',
'',
'    escape : (v) => {',
'        if(!($(''#add'').is('':visible'') || $(''#refund'').is('':visible'') || $(''#printingOptions'').is('':visible''))){',
'            $("#exit").trigger("click");',
'        }',
'    },',
'',
'    b : (v) => {',
'        if($(''#printingOptions'').is('':visible'')){',
'            $("#graphic").trigger("click");',
'        }',
'    },',
'    ',
'    home: (v) => {',
'        $("#home").trigger("click");',
'    },',
'',
'    end: (v) => {',
'        $("#end").trigger("click");',
'    }',
'}',
'',
'function mapP124Keys() {',
'    $(document).off(''keydown.p124keyevents'');',
'    $(document).on(''keydown.p124keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p124KeyMap[key]) {',
'            ev.preventDefault();',
'            p124KeyMap[key]();',
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
'setTitle("Credit Memo");',
'mapP124Keys();'))
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
'.a-GV-table tr.is-selected {',
'    --a-gv-background-color: #F5DC1C !important;',
'}',
'',
'#r2, #d, #dotmatrix, #graphic{',
'    border: 0;',
'    outline: none;',
'}',
'',
'#printingOptions, #dotmatrix, #graphic {',
'    padding-top: 0;',
'    background-color: #056AC8;',
'    color: white;',
'}',
'',
'.button-size{',
'    font-size: 1.125rem;',
'    font-family: Arial;',
'    text-align: center;',
'}',
'',
'.icon-down-chevron, .icon-irr-sort-desc,.icon-up-chevron{',
'    display: none;',
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
'    bottom: 2.5rem;',
'}',
'',
'#creditMemo .a-IG {',
'    height: calc(75vh + 2px) !important;',
'} ',
'',
'#creditMemo .a-IG-contentContainer {',
'    height: 75vh !important;',
'}',
'',
'#creditMemo .a-IG-gridView.a-GV {',
'    height: 75vh !important;',
'}',
'',
'#creditMemo .a-GV-bdy {',
'    height: calc(75vh - 2.5625rem) !important;',
'}'))
,p_step_template=>wwv_flow_imp.id(5671392681337017)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33208676801998108)
,p_plug_name=>'Navigation Menu'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>150
,p_plug_grid_row_css_classes=>'button-row'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(43418646756652542)
,p_plug_name=>'Add Credit Memo'
,p_region_name=>'add'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size480x320'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_04'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(48749262232721125)
,p_plug_name=>'Printing Options'
,p_region_name=>'printingOptions'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size480x320'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_04'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66088517743397850)
,p_plug_name=>'Credit Memo List'
,p_region_name=>'creditMemo'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>140
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH credit_memo AS (',
'    SELECT DISTINCT',
'        npt15.CUSTOMER_ID,',
'        npt15.CREDIT_MEMO_ID,',
'        npt15.CM_STATUS_ID,',
'        npt9.DBA,',
'        npt15.TYPE,',
'        TO_CHAR(npt15.TOTAL_AMOUNT, ''999990.00'') AS "Amount",',
'        TO_CHAR(npt15.CURRENT_BALANCE, ''999990.00'') AS "Balance",',
'        npt15.DATE_CREATED,',
'        npt15.POSTED_DATE,',
'        npt15.RETURN_ID,',
'        npm17.CM_STATUS_NAME',
'    FROM ',
'        NPM017 npm17,',
'        NPT009 npt9,',
'        NPT015 npt15,',
'        NPT037 npt37',
'    WHERE',
'        npt15.CM_STATUS_ID = npm17.CM_STATUS_ID AND',
'        npt15.CUSTOMER_ID = npt9.CUSTOMER_ID AND',
'        (npt15.RETURN_ID = npt37.RETURN_ID OR npt15.RETURN_ID IS NULL) AND',
'        (',
'           (:P124_QUERY_DBA IS NOT NULL AND lower(npt9.DBA) LIKE ''%'' || lower(:P124_QUERY_DBA) || ''%'' )',
'',
'        OR (:P124_QUERY_DBA IS NULL AND :P124_QUERY_CM_NO IS NOT NULL AND npt15.CREDIT_MEMO_ID LIKE :P124_QUERY_CM_NO || ''%'' )',
'',
'        OR (:P124_QUERY_DBA IS NULL AND :P124_QUERY_CM_NO IS NULL AND :P124_QUERY_CM_DATE IS NOT NULL AND TO_DATE(npt15.DATE_CREATED) = TO_DATE(:P124_QUERY_CM_DATE))',
'',
'        OR (:P124_SELECTED_ID IS NOT NULL AND :P124_SELECTED_ID = npt15.CREDIT_MEMO_ID))',
'    ORDER BY',
'        CASE WHEN :P124_QUERY_DBA IS NOT NULL AND lower(npt9.DBA) LIKE lower(:P124_QUERY_DBA) || ''%'' THEN 0 ELSE 1 END,',
'        CASE WHEN :P124_QUERY_DBA IS NOT NULL THEN npt9.DBA END,',
'        npt15.CREDIT_MEMO_ID',
')',
'',
'SELECT',
'    CUSTOMER_ID,',
'    CREDIT_MEMO_ID,',
'    CM_STATUS_ID,',
'    DBA,',
'    TYPE,',
'    "Amount",',
'    "Balance",',
'    DATE_CREATED,',
'    POSTED_DATE,',
'    RETURN_ID,',
'    CM_STATUS_NAME',
'FROM',
'    credit_memo'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P124_QUERY_DBA,P124_QUERY_CM_DATE,P124_QUERY_CM_NO,P124_SELECTED_ID'
,p_prn_page_header=>'Credit Memo List'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(31969581623186044)
,p_name=>'CREDIT_MEMO_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREDIT_MEMO_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>true
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'CM No'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
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
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(31970061409186049)
,p_name=>'DATE_CREATED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DATE_CREATED'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'CM Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_format_mask=>'MM/DD/YYYY'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
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
 p_id=>wwv_flow_imp.id(33208102093998103)
,p_name=>'POSTED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POSTED_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Posted Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_format_mask=>'MM/DD/YYYY'
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
 p_id=>wwv_flow_imp.id(33208559874998107)
,p_name=>'DBA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DBA'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Customer DBA'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>true
,p_max_length=>400
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
 p_id=>wwv_flow_imp.id(43414858873652504)
,p_name=>'CM_STATUS_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CM_STATUS_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Status'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>12
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
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(47893103078514524)
,p_name=>'TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Type'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'CENTER'
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
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(47893704983514530)
,p_name=>'CUSTOMER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CUSTOMER_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(47895255403514545)
,p_name=>'Amount'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'Amount'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Amount'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'RIGHT'
,p_attribute_05=>'BOTH'
,p_format_mask=>'999G999G999G999G990D00'
,p_is_required=>false
,p_max_length=>10
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(47895319628514546)
,p_name=>'Balance'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'Balance'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Balance'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'RIGHT'
,p_attribute_05=>'BOTH'
,p_format_mask=>'999G999G999G999G990D00'
,p_is_required=>false
,p_max_length=>10
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
 p_id=>wwv_flow_imp.id(48747769967721110)
,p_name=>'CM_STATUS_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CM_STATUS_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>120
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(49390742948289432)
,p_name=>'RETURN_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RETURN_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>130
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(66089089513397856)
,p_internal_uid=>66089089513397856
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
 p_id=>wwv_flow_imp.id(66089439530397858)
,p_interactive_grid_id=>wwv_flow_imp.id(66089089513397856)
,p_static_id=>'330391'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(66089680833397860)
,p_report_id=>wwv_flow_imp.id(66089439530397858)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(133834784193753)
,p_view_id=>wwv_flow_imp.id(66089680833397860)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(47895255403514545)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(134829472193761)
,p_view_id=>wwv_flow_imp.id(66089680833397860)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(47895319628514546)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(33213884249998973)
,p_view_id=>wwv_flow_imp.id(66089680833397860)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(31969581623186044)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>136
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(33218356806999010)
,p_view_id=>wwv_flow_imp.id(66089680833397860)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(31970061409186049)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>169
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(33221918128999042)
,p_view_id=>wwv_flow_imp.id(66089680833397860)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(33208102093998103)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>180
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(33255013952126039)
,p_view_id=>wwv_flow_imp.id(66089680833397860)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(33208559874998107)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>374
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43500520240358793)
,p_view_id=>wwv_flow_imp.id(66089680833397860)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(43414858873652504)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(48527211012010912)
,p_view_id=>wwv_flow_imp.id(66089680833397860)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(47893103078514524)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(48539738786077075)
,p_view_id=>wwv_flow_imp.id(66089680833397860)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(47893704983514530)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(48823389548110926)
,p_view_id=>wwv_flow_imp.id(66089680833397860)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(48747769967721110)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(50986167927066696)
,p_view_id=>wwv_flow_imp.id(66089680833397860)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(49390742948289432)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33208759366998109)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(33208676801998108)
,p_button_name=>'Search'
,p_button_static_id=>'s'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>S</u> - Search'
,p_button_redirect_url=>'f?p=&APP_ID.:123:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'btns'
,p_grid_new_row=>'Y'
,p_grid_column_span=>2
,p_grid_column=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(43418858398652544)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(43418646756652542)
,p_button_name=>'Return'
,p_button_static_id=>'r2'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>R</u> - Return Item'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'button-size'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(48749358615721126)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(48749262232721125)
,p_button_name=>'Dotmatrix'
,p_button_static_id=>'dotmatrix'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>A</u> - Dot matrix'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'button-size'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(48749493133721127)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(48749262232721125)
,p_button_name=>'Graphic'
,p_button_static_id=>'graphic'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>B</u> - Graphic'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'button-size'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33208857983998110)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(33208676801998108)
,p_button_name=>'Add'
,p_button_static_id=>'a'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>A</u> - Add'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'has_access(:APP_USER, 24, 55) = ''Y'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'btns'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33209069130998112)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(33208676801998108)
,p_button_name=>'Update'
,p_button_static_id=>'u'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>U</u> - Update'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'has_access(:APP_USER, 24, 56) = ''Y'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'btns'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(43418908874652545)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(43418646756652542)
,p_button_name=>'Direct'
,p_button_static_id=>'d'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>D</u> - Direct Credit Memo'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'button-size'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(43419439981652550)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(33208676801998108)
,p_button_name=>'Inquire'
,p_button_static_id=>'i'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>I</u> - Inquire'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'has_access(:APP_USER, 24, 57) = ''Y'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'btns'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33208973394998111)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(33208676801998108)
,p_button_name=>'Report'
,p_button_static_id=>'r'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>R</u> - Report'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'has_access(:APP_USER, 24, 58) = ''Y'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'btns'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(43419383576652549)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(33208676801998108)
,p_button_name=>'Post'
,p_button_static_id=>'o'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>O</u> - Post'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'has_access(:APP_USER, 24, 60) = ''Y'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'btns'
,p_grid_new_row=>'Y'
,p_grid_column_span=>2
,p_grid_column=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33209163010998113)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(33208676801998108)
,p_button_name=>'Print'
,p_button_static_id=>'p'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>P</u> - Print'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'has_access(:APP_USER, 24, 62) = ''Y'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'btns'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33209205367998114)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(33208676801998108)
,p_button_name=>'Void'
,p_button_static_id=>'v'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>V</u> - Void'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'has_access(:APP_USER, 24, 59) = ''Y'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'btns'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33209388045998115)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(33208676801998108)
,p_button_name=>'VoidAndPrint'
,p_button_static_id=>'n'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>N</u> - Void and Print New'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'has_access(:APP_USER, 24, 61) = ''Y'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'btns'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(71165177802396728)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(33208676801998108)
,p_button_name=>'Daily_Report'
,p_button_static_id=>'ddate'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>D</u> - Daily Report'
,p_button_redirect_url=>'f?p=&APP_ID.:255:&SESSION.::&DEBUG.:::'
,p_button_condition=>'has_access(:APP_USER, 24, 70) = ''Y'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'btns'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(43419246617652548)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(33208676801998108)
,p_button_name=>'Exit'
,p_button_static_id=>'exit'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Exit'
,p_button_redirect_url=>'f?p=&APP_ID.:305:&SESSION.::&DEBUG.:::'
,p_grid_column_css_classes=>'hiddenbtn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(51985755038682948)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_imp.id(33208676801998108)
,p_button_name=>'Home'
,p_button_static_id=>'home'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Home'
,p_warn_on_unsaved_changes=>null
,p_grid_column_css_classes=>'hiddenbtn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(51985800988682949)
,p_button_sequence=>140
,p_button_plug_id=>wwv_flow_imp.id(33208676801998108)
,p_button_name=>'End'
,p_button_static_id=>'end'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'End'
,p_warn_on_unsaved_changes=>null
,p_grid_column_css_classes=>'hiddenbtn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33210408719998126)
,p_name=>'P124_SELECTED_DBA'
,p_item_sequence=>100
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33210599196998127)
,p_name=>'P124_SELECTED_AMOUNT'
,p_item_sequence=>190
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33210607379998128)
,p_name=>'P124_PREPARED_URL'
,p_item_sequence=>200
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43417774603652533)
,p_name=>'P124_QUERY_DBA'
,p_item_sequence=>60
,p_item_default=>'NULL'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43417935507652535)
,p_name=>'P124_QUERY_CM_DATE'
,p_item_sequence=>90
,p_item_default=>'NULL'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47892778216514520)
,p_name=>'P124_SELECTED_ID'
,p_item_sequence=>110
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47893849551514531)
,p_name=>'P124_SELECTED_CUSTOMER'
,p_item_sequence=>170
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47893916753514532)
,p_name=>'P124_SELECTED_TYPE'
,p_item_sequence=>180
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48746997712721102)
,p_name=>'P124_LAST_ACTION'
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48747632585721109)
,p_name=>'P124_SELECTED_STATUS'
,p_item_sequence=>50
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(49389018059289415)
,p_name=>'P124_QUERY_CM_NO'
,p_item_sequence=>80
,p_item_default=>'NULL'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(49389919390289424)
,p_name=>'P124_QUERY_NO_COPY'
,p_item_sequence=>70
,p_item_default=>'NULL'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(49390810643289433)
,p_name=>'P124_SELECTED_RETURN'
,p_item_sequence=>160
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51484577756608127)
,p_name=>'P124_PREVIOUS'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71162457180396701)
,p_name=>'P124_SELECTED_ID_NEW'
,p_item_sequence=>130
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71165406703396731)
,p_name=>'P124_DAILY_DATE'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33210210093998124)
,p_name=>'Selection Change'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(66088517743397850)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33210369700998125)
,p_event_id=>wwv_flow_imp.id(33210210093998124)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var selectedDba;',
'var selectedAmount;',
'var selectedId;',
'var selectedReturn;',
'var selectedCustomer;',
'var selectedType;',
'var selectedStatus;',
'',
'model=this.data.model;',
'',
'if(this.data != null){',
'    if(this.data.selectedRecords[0] != null){',
'        selectedDba = model.getValue(this.data.selectedRecords[0], "DBA");',
'        selectedAmount = model.getValue(this.data.selectedRecords[0], "Amount");',
'        selectedId = model.getValue(this.data.selectedRecords[0], "CREDIT_MEMO_ID");',
'        selectedReturn = model.getValue(this.data.selectedRecords[0], "RETURN_ID");',
'        selectedCustomer = model.getValue(this.data.selectedRecords[0], "CUSTOMER_ID");',
'        selectedType = model.getValue(this.data.selectedRecords[0], "TYPE");',
'        selectedStatus = model.getValue(this.data.selectedRecords[0], "CM_STATUS_NAME");',
'    }',
'}',
'$s("P124_SELECTED_ID", selectedId);',
'apex.item("P124_SELECTED_DBA").setValue(selectedDba);',
'apex.item("P124_SELECTED_AMOUNT").setValue(selectedAmount);',
'$s("P124_SELECTED_CUSTOMER", selectedCustomer);',
'$s("P124_SELECTED_TYPE", selectedType);',
'$s("P124_SELECTED_STATUS", selectedStatus);',
'$s("P124_SELECTED_RETURN", selectedReturn);',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33210725429998129)
,p_name=>'Pass Data'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(33209069130998112)
,p_condition_element=>'P124_SELECTED_STATUS'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'CREATED'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33210884645998130)
,p_event_id=>wwv_flow_imp.id(33210725429998129)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_note VARCHAR(100);',
'    l_amt NUMBER;',
'BEGIN',
'    SELECT',
'        REASON,',
'        TOTAL_AMOUNT',
'    INTO',
'        l_note,',
'        l_amt',
'    FROM',
'        NPT015',
'    WHERE',
'        CREDIT_MEMO_ID = :P124_SELECTED_ID;',
'',
'    :P124_PREPARED_URL := apex_page.get_url(',
'       p_page   => 127,',
'       p_items  => ''P127_CUSTOMER_DBA,P127_CM_AMOUNT,P127_NOTE,P127_PAGE_TYPE,P127_CM_ID'',',
'       p_values => :P124_SELECTED_DBA || '','' || TO_CHAR(l_amt, ''999990.00'') || '','' || l_note || '',update,'' || :P124_SELECTED_ID ',
'    );',
'END;'))
,p_attribute_02=>'P124_SELECTED_ID,P124_SELECTED_DBA,P124_SELECTED_AMOUNT'
,p_attribute_03=>'P124_PREPARED_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P124_SELECTED_TYPE'
,p_client_condition_expression=>'DIRECT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48748554526721118)
,p_event_id=>wwv_flow_imp.id(33210725429998129)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_invoice_id NUMBER;',
'    l_max_item_invoice NUMBER;',
'    l_return_id NUMBER;',
'BEGIN',
'    SELECT',
'        RETURN_ID',
'    INTO',
'        l_return_id',
'    FROM',
'        NPT015',
'    WHERE',
'        CREDIT_MEMO_ID = :P124_SELECTED_ID;',
'',
'    SELECT',
'        MAX(ITEM_INVOICE_ID)',
'    INTO',
'        l_max_item_invoice',
'    FROM',
'        NPT037',
'    WHERE',
'        RETURN_ID = l_return_id;',
'',
'    SELECT',
'        INVOICE_ID ',
'    INTO ',
'        l_invoice_id',
'    FROM',
'        NPT002',
'    WHERE',
'        ITEM_INVOICE_ID = l_max_item_invoice;',
'',
'    :P124_PREPARED_URL := apex_page.get_url(',
'       p_page   => 122,',
'       p_items  => ''P122_PAGE_MODE,P122_CREDIT_MEMO_ID,P122_INVOICE_NUMBER,P122_RETURN_NUMBER'',',
'       p_values => ''update,'' || :P124_SELECTED_ID || '','' || TO_CHAR(l_invoice_id, ''000000'') || '','' || l_return_id',
'    );',
'END;'))
,p_attribute_02=>'P124_SELECTED_ID,P124_SELECTED_DBA,P124_SELECTED_AMOUNT'
,p_attribute_03=>'P124_PREPARED_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P124_SELECTED_TYPE'
,p_client_condition_expression=>'RETURN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33210927295998131)
,p_event_id=>wwv_flow_imp.id(33210725429998129)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P124_PREPARED_URL");',
'apex.navigation.redirect(url);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(43417557823652531)
,p_name=>'When close'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(33208759366998109)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43417660948652532)
,p_event_id=>wwv_flow_imp.id(43417557823652531)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P124_QUERY_DBA'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P123_DBA'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43418006544652536)
,p_event_id=>wwv_flow_imp.id(43417557823652531)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P124_QUERY_CM_NO'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P123_CM_NO'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43418194459652537)
,p_event_id=>wwv_flow_imp.id(43417557823652531)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P124_QUERY_CM_DATE'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P123_CM_DATE'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49389274786289417)
,p_event_id=>wwv_flow_imp.id(43417557823652531)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P124_QUERY_CM_NO'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P123_CM_NO'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49390049009289425)
,p_event_id=>wwv_flow_imp.id(43417557823652531)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P124_QUERY_NO_COPY'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$v("P124_QUERY_CM_NO")'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43418423152652540)
,p_event_id=>wwv_flow_imp.id(43417557823652531)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(66088517743397850)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43418584960652541)
,p_event_id=>wwv_flow_imp.id(43417557823652531)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(() => {',
'    $( document ).ready(function() {',
'        selectFirstRow();',
'    });',
'}, "500");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(43418225212652538)
,p_name=>'Reset'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(33208759366998109)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43418321041652539)
,p_event_id=>wwv_flow_imp.id(43418225212652538)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P124_QUERY_DBA,P124_QUERY_CM_DATE,P124_QUERY_CM_NO,P124_SELECTED_ID'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'NULL'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(43419058300652546)
,p_name=>'Show'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(33208857983998110)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43419142162652547)
,p_event_id=>wwv_flow_imp.id(43419058300652546)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(43418646756652542)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(46319550601497920)
,p_name=>'Click'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(43418908874652545)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46319750594497922)
,p_event_id=>wwv_flow_imp.id(46319550601497920)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P124_PREPARED_URL := apex_page.get_url(',
'       p_page   => 127,',
'       p_items  => ''P127_PAGE_TYPE'',',
'       p_values => ''add'' ',
'    );',
'END;'))
,p_attribute_03=>'P124_PREPARED_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46319640009497921)
,p_event_id=>wwv_flow_imp.id(46319550601497920)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(".ui-dialog-titlebar-close").trigger("click");',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46319809140497923)
,p_event_id=>wwv_flow_imp.id(46319550601497920)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'let url = $v("P124_PREPARED_URL");',
'apex.navigation.redirect(url);',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(47892534691514518)
,p_name=>'To Void'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(33209205367998114)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$v("P124_SELECTED_STATUS") === ''CREATED'' ||',
'$v("P124_SELECTED_STATUS") === ''POSTED'' ||',
'$v("P124_SELECTED_STATUS") === ''PRINTED'' ||',
'$v("P124_SELECTED_STATUS") === ''REDEEMED'''))
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47892641103514519)
,p_event_id=>wwv_flow_imp.id(47892534691514518)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_return NUMBER;',
'BEGIN',
'    UPDATE NPT015',
'    SET TOTAL_AMOUNT = 0,',
'        CURRENT_BALANCE = 0,',
'        CM_STATUS_ID = 5',
'    WHERE',
'        CREDIT_MEMO_ID = :P124_SELECTED_ID;',
'    ',
'    IF :P124_SELECTED_TYPE = ''RETURN'' THEN',
'        SELECT RETURN_ID INTO v_return FROM NPT015 WHERE CREDIT_MEMO_ID = :P124_SELECTED_ID;',
'',
'        UPDATE NPT037',
'        SET RETURNABLE_QUANTITY = 0, RETURN_QUANTITY = 0',
'        WHERE RETURN_ID = v_return;',
'    END IF;',
'END;'))
,p_attribute_02=>'P124_SELECTED_ID,P124_SELECTED_TYPE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47892835188514521)
,p_event_id=>wwv_flow_imp.id(47892534691514518)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(66088517743397850)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58659026955535236)
,p_event_id=>wwv_flow_imp.id(47892534691514518)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var ig = apex.region("creditMemo").widget().interactiveGrid("getViews").grid;',
'var rec = ig.model.getRecord($v("P124_SELECTED_ID"));',
'',
'ig.view$.grid("setSelectedRecords", [rec], true);',
'',
'$s("P124_PREVIOUS", 124)'))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P124_PREVIOUS'
,p_client_condition_expression=>'122'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(47892926621514522)
,p_name=>'To Post'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(43419383576652549)
,p_condition_element=>'P124_SELECTED_STATUS'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'CREATED'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71162678390396703)
,p_event_id=>wwv_flow_imp.id(47892926621514522)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P124_SELECTED_ID_NEW'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$v("P124_SELECTED_ID")'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47893000024514523)
,p_event_id=>wwv_flow_imp.id(47892926621514522)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    UPDATE NPT015',
'    SET CM_STATUS_ID = 2,',
'        POSTED_DATE = SYSDATE()',
'    WHERE',
'        CREDIT_MEMO_ID = :P124_SELECTED_ID;',
'',
'    IF :P124_SELECTED_TYPE = ''RETURN'' THEN',
'        DELETE FROM NPT037',
'        WHERE (RETURN_QUANTITY IS NULL OR RETURN_QUANTITY = 0) AND ',
'                RETURN_ID = :P124_SELECTED_RETURN;',
'    END IF;',
'END;'))
,p_attribute_02=>'P124_SELECTED_ID,P124_SELECTED_RETURN,P124_SELECTED_TYPE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60618703573627522)
,p_event_id=>wwv_flow_imp.id(47892926621514522)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    FOR i in (SELECT',
'                    npt2.ITEM_ID,',
'                    npt2.UOM_ID,',
'                    npt37.RETURN_QUANTITY,',
'                    COALESCE(npt2.DISCOUNTED_PRICE, npt2.ITEM_PRICE) AS "PRICE"',
'                FROM ',
'                    NPT002 npt2,',
'                    NPT037 npt37',
'                WHERE ',
'                    npt37.RETURN_ID = :P124_SELECTED_RETURN AND',
'                    npt37.ITEM_INVOICE_ID = npt2.ITEM_INVOICE_ID) ',
'    LOOP',
'        DECLARE',
'            l_item_id NUMBER;',
'            l_uom_id NUMBER;',
'            l_qty NUMBER;',
'            l_price NUMBER;',
'            l_posted DATE;',
'',
'        BEGIN    ',
'            l_item_id := i.ITEM_ID;',
'            l_uom_id := i.UOM_ID;',
'            l_qty := i.RETURN_QUANTITY;',
'            l_price := i.PRICE;',
'',
'            SELECT',
'                POSTED_DATE',
'            INTO',
'                l_posted',
'            FROM',
'                NPT015',
'            WHERE',
'                CREDIT_MEMO_ID = :P124_SELECTED_ID;',
'         ',
'            INSERT INTO NIT004 (ITEM_ID, WAREHOUSE_ID, CREATE_USER, CREATE_DATE, QTY, UOM_ID)',
'            VALUES(l_item_id, 1, :APP_USER, SYSDATE, l_qty, l_uom_id);',
'',
'            ITEM_TRANS_PKG.log_item_transaction(',
'                l_item_id,',
'                1,',
'                l_uom_id,',
'                ''C'' || TO_CHAR(:P124_SELECTED_ID, ''000000''),',
'                l_posted,',
'                ''I'',',
'                l_qty * l_price,',
'                l_qty',
'            );',
'        EXCEPTION',
'            WHEN DUP_VAL_ON_INDEX THEN',
'                UPDATE NIT004',
'                SET QTY = QTY + l_qty, UPDATE_USER = :APP_USER, UPDATE_DATE = SYSDATE',
'                WHERE ITEM_ID = l_item_id AND ',
'                      UOM_ID = l_uom_id AND ',
'                      WAREHOUSE_ID = 1;',
'                ITEM_TRANS_PKG.log_item_transaction(',
'                    l_item_id,',
'                    1,',
'                    l_uom_id,',
'                    ''C'' || TO_CHAR(:P124_SELECTED_ID, ''000000''),',
'                    l_posted,',
'                    ''I'',',
'                    l_qty * l_price,',
'                    l_qty',
'                );',
'                CONTINUE;',
'        END;',
'    END LOOP;',
'END;'))
,p_attribute_02=>'P124_SELECTED_RETURN,P124_SELECTED_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P124_SELECTED_TYPE'
,p_client_condition_expression=>'RETURN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47893247348514525)
,p_event_id=>wwv_flow_imp.id(47892926621514522)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(66088517743397850)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58659120586535237)
,p_event_id=>wwv_flow_imp.id(47892926621514522)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(() => {',
'  $( document ).ready(function() {',
'        var ig = apex.region("creditMemo").widget().interactiveGrid("getViews").grid;',
'        var rec = ig.model.getRecord($v("P124_SELECTED_ID_NEW"));',
'',
'        let region = apex.region("creditMemo")',
'        let view = region.call("getCurrentView"),',
'        model = view.model,',
'        view$ = view.view$;',
'',
'        if (rec) {',
'            ig.view$.grid("setSelectedRecords", [rec], true);',
'            let offset,',
'                pi = view$.grid("getPageInfo"),',
'                index = model.indexOf(rec);',
'',
'            offset = index * pi.rowHeight;',
'            $(".a-GV-w-scroll").scrollTop( offset );',
'',
'            setTimeout(() => {',
'                $( document ).ready(function() {',
'                    if (rec) {',
'                        view$.grid("setSelectedRecords", [rec], true);',
'                    }',
'                });',
'            }, "500");',
'        }',
'    });',
'}, "1600");',
'',
'$s("P124_PREVIOUS", 124)'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(47893364910514526)
,p_name=>'Void n New'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(33209388045998115)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$v("P124_SELECTED_STATUS") === ''CREATED'' ||',
'$v("P124_SELECTED_STATUS") === ''POSTED'' ||',
'$v("P124_SELECTED_STATUS") === ''PRINTED'''))
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47893504227514528)
,p_event_id=>wwv_flow_imp.id(47893364910514526)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_new_return NUMBER;',
'    v_old_return NUMBER;',
'    v_new_credit NUMBER;',
'BEGIN',
'    IF :P124_SELECTED_TYPE = ''RETURN'' THEN',
'        SELECT max(return_id) + 1 INTO v_new_return FROM NPT015;',
'        SELECT return_id INTO v_old_return FROM NPT015 WHERE credit_memo_id = :P124_SELECTED_ID;',
'    END IF;',
'',
'    SELECT MAX(CREDIT_MEMO_ID) + 1 INTO v_new_credit FROM NPT015;',
'',
'    INSERT INTO NPT015 (CREDIT_MEMO_ID,',
'                        TOTAL_AMOUNT,',
'                        CURRENT_BALANCE,',
'                        USER_CREATED,',
'                        DATE_CREATED,',
'                        USER_UPDATE,',
'                        DATE_UPDATED,',
'                        CUSTOMER_ID,',
'                        REASON,',
'                        POSTED_DATE,',
'                        CM_STATUS_ID,',
'                        RETURN_ID,',
'                        TYPE)',
'    SELECT  v_new_credit,',
'            TOTAL_AMOUNT,',
'            CURRENT_BALANCE,',
'            USER_CREATED,',
'            SYSDATE,',
'            USER_UPDATE,',
'            DATE_UPDATED,',
'            CUSTOMER_ID,',
'            REASON,',
'            SYSDATE,',
'            3,',
'            v_new_return,',
'            TYPE',
'    FROM NPT015',
'    WHERE CREDIT_MEMO_ID = :P124_SELECTED_ID;',
'    ',
'    UPDATE NPT015',
'    SET TOTAL_AMOUNT = 0,',
'        CURRENT_BALANCE = 0,',
'        CM_STATUS_ID = 5',
'    WHERE',
'        CREDIT_MEMO_ID = :P124_SELECTED_ID;    ',
'',
'    IF :P124_SELECTED_TYPE = ''RETURN'' THEN',
'        INSERT INTO NPT037(ITEM_INVOICE_ID, ',
'                           RETURNABLE_QUANTITY,',
'                           RETURN_QUANTITY,',
'                           USER_CREATED,',
'                           RETURN_ID)',
'        SELECT ITEM_INVOICE_ID,',
'               RETURNABLE_QUANTITY,',
'               RETURN_QUANTITY,',
'               USER_CREATED,',
'               v_new_return',
'        FROM',
'            NPT037',
'        WHERE',
'            RETURN_ID = v_old_return;',
'    END IF;  ',
'',
'    :P124_SELECTED_ID := v_new_credit;',
'END;'))
,p_attribute_02=>'P124_SELECTED_ID,P124_SELECTED_TYPE'
,p_attribute_03=>'P124_SELECTED_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65582699090220504)
,p_event_id=>wwv_flow_imp.id(47893364910514526)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("#p").trigger(''click'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(47894499493514537)
,p_name=>'Close Update'
,p_event_sequence=>130
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47895673228514549)
,p_event_id=>wwv_flow_imp.id(47894499493514537)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P124_SELECTED_ID,P124_SELECTED_ID_NEW'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P127_CM_ID'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48747031253721103)
,p_event_id=>wwv_flow_imp.id(47894499493514537)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P124_LAST_ACTION'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P127_PAGE_TYPE'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65586252331220540)
,p_event_id=>wwv_flow_imp.id(47894499493514537)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var ig = apex.region("creditMemo").widget().interactiveGrid("getViews").grid;',
'var rec = ig.model.getRecord($v("P124_SELECTED_ID"));',
'',
'setTimeout(() => {',
'  $( document ).ready(function() {',
'        let region = apex.region("creditMemo")',
'        let view = region.call("getCurrentView"),',
'        model = view.model,',
'        view$ = view.view$;',
'',
'        if (rec) {',
'            ig.view$.grid("setSelectedRecords", [rec], true);',
'            let offset,',
'                pi = view$.grid("getPageInfo"),',
'                index = model.indexOf(rec);',
'',
'            offset = index * pi.rowHeight;',
'            $(".a-GV-w-scroll").scrollTop( offset );',
'',
'            setTimeout(() => {',
'                $( document ).ready(function() {',
'                    if (rec) {',
'                        view$.grid("setSelectedRecords", [rec], true);',
'                    }',
'                });',
'            }, "500");',
'        }',
'    });',
'}, "1600");',
'',
''))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P124_LAST_ACTION'
,p_client_condition_expression=>'update'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58659935217535245)
,p_event_id=>wwv_flow_imp.id(47894499493514537)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P124_LAST_ACTION'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P125_VALID'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65585357224220531)
,p_event_id=>wwv_flow_imp.id(47894499493514537)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P124_SELECTED_ID'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P127_CM_ID'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65585547485220533)
,p_event_id=>wwv_flow_imp.id(47894499493514537)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P124_LAST_ACTION'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P127_PAGE_TYPE'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48746832454721101)
,p_event_id=>wwv_flow_imp.id(47894499493514537)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var type;',
'',
'if($v("P124_LAST_ACTION") == ''add''){',
'    type = ''added'';',
'} else if ($v("P124_LAST_ACTION") == ''update''){',
'    type = ''updated'';',
'}',
'showGPopup({',
'    message: `Credit Memo successfully ` + type + `!`,',
'    icon: ICON_OK_LARGE,',
'    width: 500,',
'    timeout: 1500,',
'    timeoutActive: true',
'});',
'',
''))
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'$v("P124_LAST_ACTION") == ''add'' || $v("P124_LAST_ACTION") == ''update'''
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48747160572721104)
,p_event_id=>wwv_flow_imp.id(47894499493514537)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'showGPopup({',
'    message: `CUSTOMER NOT FOUND!`,',
'    icon: ICON_FAIL_LARGE,',
'    width: 500,',
'    top: "80%",',
'    timeout: 1500,',
'    timeoutActive: true',
'});'))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P124_LAST_ACTION'
,p_client_condition_expression=>'none'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47894544915514538)
,p_event_id=>wwv_flow_imp.id(47894499493514537)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(66088517743397850)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65586891050220546)
,p_event_id=>wwv_flow_imp.id(47894499493514537)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'console.log("Added: " + $v("P124_SELECTED_ID_NEW"))'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P124_LAST_ACTION'
,p_client_condition_expression=>'add'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65587261240220550)
,p_event_id=>wwv_flow_imp.id(47894499493514537)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(() => {',
'  $( document ).ready(function() {',
'        var ig = apex.region("creditMemo").widget().interactiveGrid("getViews").grid;',
'        var rec = ig.model.getRecord($v("P124_SELECTED_ID_NEW"));',
'        ',
'        let region = apex.region("creditMemo")',
'        let view = region.call("getCurrentView"),',
'        model = view.model,',
'        view$ = view.view$;',
'',
'        if (rec) {',
'            ig.view$.grid("setSelectedRecords", [rec], true);',
'            let offset,',
'                pi = view$.grid("getPageInfo"),',
'                index = model.indexOf(rec);',
'',
'            offset = index * pi.rowHeight;',
'            $(".a-GV-w-scroll").scrollTop( offset );',
'',
'            setTimeout(() => {',
'                $( document ).ready(function() {',
'                    if (rec) {',
'                        view$.grid("setSelectedRecords", [rec], true);',
'                    }',
'                });',
'            }, "500");',
'        }',
'    });',
'}, "1600");',
'',
''))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P124_LAST_ACTION'
,p_client_condition_expression=>'add'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58659835317535244)
,p_event_id=>wwv_flow_imp.id(47894499493514537)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'showGPopup({',
'    message: `Invoice does not exist!`,',
'    icon: ICON_FAIL_LARGE,',
'    width: 300,',
'    top: "80%",',
'    timeout: 1500,',
'    timeoutActive: true',
'});',
'',
'$s("P124_LAST_ACTION", "none");',
''))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P124_LAST_ACTION'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58660022191535246)
,p_event_id=>wwv_flow_imp.id(47894499493514537)
,p_event_result=>'TRUE'
,p_action_sequence=>140
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'showGPopup({',
'    message: `There is a unposted Return Items Created for this Invoice!`,',
'    icon: ICON_FAIL_LARGE,',
'    width: 550,',
'    top: "80%",',
'    timeout: 1500,',
'    timeoutActive: true',
'});',
'',
'$s("P124_LAST_ACTION", "none");',
''))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P124_LAST_ACTION'
,p_client_condition_expression=>'2'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(48747274214721105)
,p_name=>'New'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(43418858398652544)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48747362290721106)
,p_event_id=>wwv_flow_imp.id(48747274214721105)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P124_PREPARED_URL := apex_page.get_url(',
'       p_page   => 125',
'    );',
'END;'))
,p_attribute_03=>'P124_PREPARED_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48747511729721108)
,p_event_id=>wwv_flow_imp.id(48747274214721105)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(".ui-dialog-titlebar-close").trigger("click");',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48747434232721107)
,p_event_id=>wwv_flow_imp.id(48747274214721105)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'let url = $v("P124_PREPARED_URL");',
'apex.navigation.redirect(url);',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(48748662343721119)
,p_name=>'Inquire'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(43419439981652550)
,p_condition_element=>'P124_SELECTED_TYPE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'RETURN'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48748889313721121)
,p_event_id=>wwv_flow_imp.id(48748662343721119)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_invoice_id NUMBER;',
'    l_max_item_invoice NUMBER;',
'    l_return_id NUMBER;',
'BEGIN',
'    SELECT',
'        RETURN_ID',
'    INTO',
'        l_return_id',
'    FROM',
'        NPT015',
'    WHERE',
'        CREDIT_MEMO_ID = :P124_SELECTED_ID;',
'',
'    SELECT',
'        MAX(ITEM_INVOICE_ID)',
'    INTO',
'        l_max_item_invoice',
'    FROM',
'        NPT037',
'    WHERE',
'        RETURN_ID = l_return_id;',
'',
'    SELECT',
'        INVOICE_ID ',
'    INTO ',
'        l_invoice_id',
'    FROM',
'        NPT002',
'    WHERE',
'        ITEM_INVOICE_ID = l_max_item_invoice;',
'',
'    :P124_PREPARED_URL := apex_page.get_url(',
'       p_page   => 122,',
'       p_items  => ''P122_PAGE_MODE,P122_CREDIT_MEMO_ID,P122_INVOICE_NUMBER,P122_RETURN_NUMBER'',',
'       p_values => ''inquire,'' || :P124_SELECTED_ID || '','' || TO_CHAR(l_invoice_id, ''000000'') || '','' || l_return_id',
'    );',
'END;'))
,p_attribute_02=>'P124_SELECTED_ID,P124_SELECTED_DBA,P124_SELECTED_AMOUNT'
,p_attribute_03=>'P124_PREPARED_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48748921239721122)
,p_event_id=>wwv_flow_imp.id(48748662343721119)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P124_PREPARED_URL");',
'apex.navigation.redirect(url);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(48749579997721128)
,p_name=>'New_1'
,p_event_sequence=>160
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(48749358615721126)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71162740150396704)
,p_event_id=>wwv_flow_imp.id(48749579997721128)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P124_SELECTED_ID_NEW'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$v("P124_SELECTED_ID")'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71165897927396735)
,p_event_id=>wwv_flow_imp.id(48749579997721128)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var d = new Date($v("P124_DAILY_DATE"));',
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
'generateReport("CMEMO_DAILY_REPORT", "pdf", { ',
'    fileName: "daily_return_" + datestamp + ".pdf",',
'    mode : "print",',
'    parameters : {',
'        P_DATE : $v("P124_DAILY_DATE"),',
'        P_PRINT_TYPE: "dotmatrix",',
'        P_APP_USER: ''&APP_USER.''',
'    }',
'})',
''))
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P124_DAILY_DATE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48749615409721129)
,p_event_id=>wwv_flow_imp.id(48749579997721128)
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
'generateReport("CREDIT_MEMO_DIRECT", "pdf", { ',
'    fileName: "CreditMemo_" + $v("P124_SELECTED_ID") + "_" + datestamp + ".pdf",',
'    mode : "print",',
'    parameters : {',
'        P_CREDIT_MEMO_ID : $v("P124_SELECTED_ID"),',
'        P_PRINT_TYPE: "dotmatrix",',
'        P_APP_USER: ''&APP_USER.''',
'    }',
'})'))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P124_SELECTED_TYPE'
,p_client_condition_expression=>'DIRECT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48749961820721132)
,p_event_id=>wwv_flow_imp.id(48749579997721128)
,p_event_result=>'TRUE'
,p_action_sequence=>40
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
'',
'generateReport("CREDIT_MEMO_RETURN", "pdf", { ',
'    fileName: "CreditMemo_" + $v("P124_SELECTED_ID") + "_" + datestamp + ".pdf",',
'    mode : "print",',
'    parameters : {',
'        P_CREDIT_MEMO_ID : $v("P124_SELECTED_ID"),',
'        P_PRINT_TYPE: "dotmatrix",',
'        P_APP_USER: ''&APP_USER.''',
'    }',
'})',
''))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P124_SELECTED_TYPE'
,p_client_condition_expression=>'RETURN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49388287603289407)
,p_event_id=>wwv_flow_imp.id(48749579997721128)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    UPDATE NPT015',
'    SET CM_STATUS_ID = 3',
'    WHERE CREDIT_MEMO_ID = :P124_SELECTED_ID;',
'END;'))
,p_attribute_02=>'P124_SELECTED_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64671544848531930)
,p_event_id=>wwv_flow_imp.id(48749579997721128)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(".ui-dialog-titlebar-close").trigger("click");'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64671732374531932)
,p_event_id=>wwv_flow_imp.id(48749579997721128)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(66088517743397850)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71162849553396705)
,p_event_id=>wwv_flow_imp.id(48749579997721128)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(() => {',
'  $( document ).ready(function() {',
'        var ig = apex.region("creditMemo").widget().interactiveGrid("getViews").grid;',
'        var rec = ig.model.getRecord($v("P124_SELECTED_ID_NEW"));',
'',
'        let region = apex.region("creditMemo")',
'        let view = region.call("getCurrentView"),',
'        model = view.model,',
'        view$ = view.view$;',
'',
'        if (rec) {',
'            ig.view$.grid("setSelectedRecords", [rec], true);',
'            let offset,',
'                pi = view$.grid("getPageInfo"),',
'                index = model.indexOf(rec);',
'',
'            offset = index * pi.rowHeight;',
'            $(".a-GV-w-scroll").scrollTop( offset );',
'',
'            setTimeout(() => {',
'                $( document ).ready(function() {',
'                    if (rec) {',
'                        view$.grid("setSelectedRecords", [rec], true);',
'                    }',
'                });',
'            }, "500");',
'        }',
'    });',
'}, "1600");',
'',
'$s("P124_PREVIOUS", 124)'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(48749757991721130)
,p_name=>'New_2'
,p_event_sequence=>170
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(48749493133721127)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71162904495396706)
,p_event_id=>wwv_flow_imp.id(48749757991721130)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P124_SELECTED_ID_NEW'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$v("P124_SELECTED_ID")'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72491637259106918)
,p_event_id=>wwv_flow_imp.id(48749757991721130)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var d = new Date($v("P124_DAILY_DATE"));',
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
'generateReport("CMEMO_DAILY_REPORT", "pdf", { ',
'    fileName: "daily_return_" + datestamp + ".pdf",',
'    mode : "print",',
'    parameters : {',
'        P_DATE : $v("P124_DAILY_DATE"),',
'        P_PRINT_TYPE: "graphic",',
'        P_APP_USER: ''&APP_USER.''',
'    }',
'})',
''))
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P124_DAILY_DATE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48750021554721133)
,p_event_id=>wwv_flow_imp.id(48749757991721130)
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
'generateReport("CREDIT_MEMO_DIRECT", "pdf", { ',
'    fileName: "CreditMemo_" + $v("P124_SELECTED_ID") + "_" + datestamp + ".pdf",',
'    mode : "print",',
'    parameters : {',
'        P_CREDIT_MEMO_ID : $v("P124_SELECTED_ID"),',
'        P_PRINT_TYPE: "graphic",',
'        P_APP_USER: ''&APP_USER.''',
'    }',
'})'))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P124_SELECTED_TYPE'
,p_client_condition_expression=>'DIRECT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48750117770721134)
,p_event_id=>wwv_flow_imp.id(48749757991721130)
,p_event_result=>'TRUE'
,p_action_sequence=>40
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
'generateReport("CREDIT_MEMO_RETURN", "pdf", { ',
'    fileName: "CreditMemo_" + $v("P124_SELECTED_ID") + "_" + datestamp + ".pdf",',
'    mode : "print",',
'    parameters : {',
'        P_CREDIT_MEMO_ID : $v("P124_SELECTED_ID"),',
'        P_PRINT_TYPE: "graphic",',
'        P_APP_USER: ''&APP_USER.''',
'    }',
'})'))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P124_SELECTED_TYPE'
,p_client_condition_expression=>'RETURN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49388394157289408)
,p_event_id=>wwv_flow_imp.id(48749757991721130)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    UPDATE NPT015',
'    SET CM_STATUS_ID = 3',
'    WHERE CREDIT_MEMO_ID = :P124_SELECTED_ID;',
'END;'))
,p_attribute_02=>'P124_SELECTED_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64671934602531934)
,p_event_id=>wwv_flow_imp.id(48749757991721130)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(".ui-dialog-titlebar-close").trigger("click");'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64671814041531933)
,p_event_id=>wwv_flow_imp.id(48749757991721130)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(66088517743397850)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71163053773396707)
,p_event_id=>wwv_flow_imp.id(48749757991721130)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(() => {',
'  $( document ).ready(function() {',
'        var ig = apex.region("creditMemo").widget().interactiveGrid("getViews").grid;',
'        var rec = ig.model.getRecord($v("P124_SELECTED_ID_NEW"));',
'',
'        let region = apex.region("creditMemo")',
'        let view = region.call("getCurrentView"),',
'        model = view.model,',
'        view$ = view.view$;',
'',
'        if (rec) {',
'            ig.view$.grid("setSelectedRecords", [rec], true);',
'            let offset,',
'                pi = view$.grid("getPageInfo"),',
'                index = model.indexOf(rec);',
'',
'            offset = index * pi.rowHeight;',
'            $(".a-GV-w-scroll").scrollTop( offset );',
'',
'            setTimeout(() => {',
'                $( document ).ready(function() {',
'                    if (rec) {',
'                        view$.grid("setSelectedRecords", [rec], true);',
'                    }',
'                });',
'            }, "500");',
'        }',
'    });',
'}, "1600");',
'',
'$s("P124_PREVIOUS", 124)'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(48750291034721135)
,p_name=>'Printable'
,p_event_sequence=>180
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(33209163010998113)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$v("P124_SELECTED_STATUS") == ''POSTED'' || $v("P124_SELECTED_STATUS") == ''PRINTED'' || $v("P124_SELECTED_STATUS") == ''REDEEMED'''
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48750339580721136)
,p_event_id=>wwv_flow_imp.id(48750291034721135)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(48749262232721125)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(49388613791289411)
,p_name=>'New_4'
,p_event_sequence=>190
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(33208973394998111)
,p_condition_element=>'P124_SELECTED_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49388785262289412)
,p_event_id=>wwv_flow_imp.id(49388613791289411)
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
'generateReport("CREDIT_MEMO_REPORT", "xlsx", { ',
'    fileName: "CreditMemo_" + $v("P124_SELECTED_ID") + "_" + datestamp + ".xlsx",',
'    mode : "export",',
'    parameters : {',
'        P_CM_NO: $v("P124_QUERY_NO_COPY"),',
'        P_DBA : $v("P124_QUERY_DBA"),',
'        P_CM_DATE: $v("P124_QUERY_CM_DATE")',
'    }',
'})'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(51985908552682950)
,p_name=>'New_5'
,p_event_sequence=>200
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(51985755038682948)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(55719965203275601)
,p_event_id=>wwv_flow_imp.id(51985908552682950)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'selectFirstRow()'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(55720038765275602)
,p_name=>'New_5_1'
,p_event_sequence=>210
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(51985800988682949)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(55720135774275603)
,p_event_id=>wwv_flow_imp.id(55720038765275602)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'selectLastRow()'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(55723890602275640)
,p_name=>'showpopup'
,p_event_sequence=>220
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51484289772608124)
,p_event_id=>wwv_flow_imp.id(55723890602275640)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'showGPopup({',
'    message: `Return record added!`,',
'    icon: ICON_OK_LARGE,',
'    width: 300,',
'    top: "80%",',
'    timeout: 1500,',
'    timeoutActive: true',
'});',
'',
'$s("P124_LAST_ACTION", "none");'))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P124_LAST_ACTION'
,p_client_condition_expression=>'add'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51484367593608125)
,p_event_id=>wwv_flow_imp.id(55723890602275640)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'showGPopup({',
'    message: `Return record edited!`,',
'    icon: ICON_OK_LARGE,',
'    width: 300,',
'    top: "80%",',
'    timeout: 1500,',
'    timeoutActive: true',
'});',
'',
'$s("P124_LAST_ACTION", "none");'))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P124_LAST_ACTION'
,p_client_condition_expression=>'update'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33210054029998122)
,p_name=>'GoToTop'
,p_event_sequence=>230
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51484416333608126)
,p_event_id=>wwv_flow_imp.id(33210054029998122)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#s").trigger("click");',
''))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P124_PREVIOUS'
,p_client_condition_expression=>'305'
,p_server_condition_type=>'EXISTS'
,p_server_condition_expr1=>'SELECT * FROM NPT015'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(55720499009275606)
,p_event_id=>wwv_flow_imp.id(33210054029998122)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var ig = apex.region("creditMemo").widget().interactiveGrid("getViews").grid;',
'var rec = ig.model.getRecord($v("P124_SELECTED_ID"));',
'',
'let region = apex.region("creditMemo")',
'let view = region.call("getCurrentView"),',
'model = view.model,',
'view$ = view.view$;',
'',
'if($v("P124_SELECTED_ID") !== ''''){',
'    setTimeout(() => {',
'        $( document ).ready(function() {',
'            if (rec) {',
'                ig.view$.grid("setSelectedRecords", [rec], true);',
'                let offset,',
'                    pi = view$.grid("getPageInfo"),',
'                    index = model.indexOf(rec);',
'',
'                offset = index * pi.rowHeight;',
'                $(".a-GV-w-scroll").scrollTop( offset );',
'            }',
'        });',
'',
'        setTimeout(() => {',
'            $( document ).ready(function() {',
'                if (rec) {',
'                    view$.grid("setSelectedRecords", [rec], true);',
'                }',
'            });',
'        }, "500");',
'    }, "1500");',
'} else {',
'    selectFirstRow();',
'}',
'',
'$s("P124_PREVIOUS", 124)'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(58658462052535230)
,p_name=>'When Posted'
,p_event_sequence=>230
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(33209069130998112)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$v("P124_SELECTED_STATUS") == ''POSTED'' || ',
'$v("P124_SELECTED_STATUS") == ''PRINTED'' ||',
'$v("P124_SELECTED_STATUS") == ''REDEEMED'' ||',
'$v("P124_SELECTED_STATUS") == ''VOIDED'''))
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58658522034535231)
,p_event_id=>wwv_flow_imp.id(58658462052535230)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'showGPopup({',
'    message: `Cannot Update since Status is Already Posted!`,',
'    icon: ICON_FAIL_LARGE,',
'    width: 450,',
'    timeout: 1500,',
'    timeoutActive: true',
'});'))
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P124_SELECTED_STATUS'
,p_client_condition_expression=>'VOIDED'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(62599044340572601)
,p_event_id=>wwv_flow_imp.id(58658462052535230)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'showGPopup({',
'    message: `Cannot Update since Status is Already Voided!`,',
'    icon: ICON_FAIL_LARGE,',
'    width: 450,',
'    timeout: 1500,',
'    timeoutActive: true',
'});'))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P124_SELECTED_STATUS'
,p_client_condition_expression=>'VOIDED'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(58658651513535232)
,p_name=>'Direct'
,p_event_sequence=>240
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(43419439981652550)
,p_condition_element=>'P124_SELECTED_TYPE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'DIRECT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58658789976535233)
,p_event_id=>wwv_flow_imp.id(58658651513535232)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'showGPopup({',
'    message: `Cannot Inquire since Type is Direct!`,',
'    icon: ICON_FAIL_LARGE,',
'    width: 400,',
'    timeout: 1500,',
'    timeoutActive: true',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(58658884709535234)
,p_name=>'Not Printable'
,p_event_sequence=>250
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(33209163010998113)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$v("P124_SELECTED_STATUS") == ''CREATED'' || $v("P124_SELECTED_STATUS") == ''VOIDED'''
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58658932068535235)
,p_event_id=>wwv_flow_imp.id(58658884709535234)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'showGPopup({',
'    message: `Cannot Print since Status is not Posted!`,',
'    icon: ICON_FAIL_LARGE,',
'    width: 450,',
'    timeout: 1500,',
'    timeoutActive: true',
'});',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(65586030900220538)
,p_name=>'New_3'
,p_event_sequence=>260
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(43419246617652548)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65586152795220539)
,p_event_id=>wwv_flow_imp.id(65586030900220538)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P124_QUERY_DBA,P124_QUERY_NO_COPY,P124_QUERY_CM_NO,P124_SELECTED_ID'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'NULL'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71165280809396729)
,p_name=>'onClose'
,p_event_sequence=>270
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(71165177802396728)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71165397990396730)
,p_event_id=>wwv_flow_imp.id(71165280809396729)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P124_DAILY_DATE'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P255_SEARCH_QUERY'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71165544014396732)
,p_event_id=>wwv_flow_imp.id(71165280809396729)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(48749262232721125)
);
wwv_flow_imp.component_end;
end;
/
