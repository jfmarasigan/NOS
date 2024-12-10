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
'let lastSelected = null;',
'const p124KeyMap = {',
'    s : (v) => {',
'        if(!($(''#add'').is('':visible'') || $(''#refund'').is('':visible''))){',
'            $("#s").trigger("click");',
'        }',
'    },',
'',
'    a : (v) => {',
'        if(!($(''#add'').is('':visible'') || $(''#refund'').is('':visible''))){',
'            $("#a").trigger("click");',
'        }',
'    },',
'   ',
'    u : (v) => {',
'        if(!($(''#add'').is('':visible'') || $(''#refund'').is('':visible''))){',
'            $("#u").trigger("click");',
'        }',
'    },',
'',
'    r : (v) => {',
'        if(!($(''#add'').is('':visible'') || $(''#refund'').is('':visible''))){',
'            $("#r").trigger("click");',
'        } else if($(''#add'').is('':visible'')) {',
'            $("#r2").trigger("click");',
'        }      ',
'    },',
'',
'    p : (v) => {',
'        if(!($(''#add'').is('':visible'') || $(''#refund'').is('':visible''))){',
'            $("#p").trigger("click");',
'        }',
'    },',
'',
'    v : (v) => {',
'        if(!($(''#add'').is('':visible'') || $(''#refund'').is('':visible''))){',
'            $("#v").trigger("click");',
'        }',
'    },',
'',
'    n : (v) => {',
'        if(!($(''#add'').is('':visible'') || $(''#refund'').is('':visible''))){',
'            $("#n").trigger("click");',
'        }',
'    },',
'',
'    d : (v) => {',
'        if($(''#add'').is('':visible'')){',
'            $("#d").trigger("click");',
'        }',
'    },',
'',
'    escape : (v) => {',
'        if(!($(''#add'').is('':visible'') || $(''#refund'').is('':visible''))){',
'            $("#exit").trigger("click");',
'        }',
'    },',
'    ',
'    // home: (v) => {',
'    //     $("#top").trigger("click");',
'    // },',
'',
'    // end: (v) => {',
'    //     $("#bottom").trigger("click");',
'    // }',
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
'mapP124Keys();',
'$("#s").trigger("click");'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
'.a-GV-header a, th.a-GV-header {',
'    background-color: #056BC9;',
'    color: white;',
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
'}',
'',
'.t-Header .t-Header-branding {',
'    background-color: white !important;',
'    color: rgb(30, 58, 138) !important;',
'}',
'',
'.format-size{',
'    font-size: 1.125rem;',
'    font-family: Arial;',
'    color: white;',
'}',
'',
'.format-size-black{',
'    font-size: 1.125rem;',
'    font-family: Arial;',
'}',
'',
'.button-size{',
'    font-size: 1.125rem;',
'    font-family: Arial;',
'    text-align: center;',
'}',
'',
'.ui-dialog-title{',
'    font-size: 1.5rem;',
'    padding-top: 0.2rem;',
'    padding-bottom: 0.2rem;',
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
'.ui-dialog-titlebar-close, #exit{',
'    display: none;',
'}',
'',
'.a-GV-hdr .a-GV-table {',
'    width: 100% !important;',
'} '))
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
,p_plug_display_sequence=>50
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
 p_id=>wwv_flow_imp.id(66088517743397850)
,p_plug_name=>'Credit Memo List'
,p_region_name=>'creditMemo'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>40
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    npt15.CREDIT_MEMO_ID,',
'    npt9.DBA,',
'    npt15.TOTAL_AMOUNT,',
'    npt15.CURRENT_BALANCE,',
'    npt15.DATE_CREATED,',
'    npt15.POSTED_DATE,',
'    npm17.CM_STATUS_NAME',
'FROM ',
'    NPM017 npm17,',
'    NPT005 npt5,',
'    NPT009 npt9,',
'    NPT015 npt15',
'WHERE',
'    npt15.CM_STATUS_ID = npm17.CM_STATUS_ID AND',
'    npt15.CREDIT_MEMO_ID = npt5.CREDIT_MEMO_ID AND',
'    npt15.CUSTOMER_ID = npt9.CUSTOMER_ID AND',
'    (',
'       (:P124_QUERY_DBA IS NOT NULL AND lower(npt9.DBA) LIKE lower(:P124_QUERY_DBA) || ''%'' )',
'',
'    OR (:P124_QUERY_DBA IS NULL AND :P124_QUERY_CM_NO IS NOT NULL AND npt15.CREDIT_MEMO_ID LIKE :P124_QUERY_CM_NO || ''%'' )',
'',
'    OR (:P124_QUERY_DBA IS NULL AND :P124_QUERY_CM_NO IS NULL AND :P124_QUERY_CM_DATE IS NOT NULL AND npt15.DATE_CREATED LIKE :P124_QUERY_CM_DATE || ''%'')',
'',
'    );'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P124_QUERY_DBA,P124_QUERY_CM_NO,P124_QUERY_CM_DATE'
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
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(31969727560186046)
,p_name=>'TOTAL_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOTAL_AMOUNT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Amount'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'RIGHT'
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(31969874746186047)
,p_name=>'CURRENT_BALANCE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CURRENT_BALANCE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Balance'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'RIGHT'
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
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
,p_include_in_export=>true
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
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
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
 p_id=>wwv_flow_imp.id(33213884249998973)
,p_view_id=>wwv_flow_imp.id(66089680833397860)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(31969581623186044)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>136
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(33215655225998987)
,p_view_id=>wwv_flow_imp.id(66089680833397860)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(31969727560186046)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>152
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(33216585290998996)
,p_view_id=>wwv_flow_imp.id(66089680833397860)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(31969874746186047)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>162
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
,p_display_seq=>6
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
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(43414858873652504)
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
,p_button_css_classes=>'format-size'
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
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>R</u> - Return Item'
,p_button_redirect_url=>'f?p=&APP_ID.:125:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'button-size'
,p_grid_new_row=>'Y'
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
,p_button_css_classes=>'format-size'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(43418908874652545)
,p_button_sequence=>20
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
,p_button_css_classes=>'format-size'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(43419439981652550)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(33208676801998108)
,p_button_name=>'Inquire'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>L</u> - Inquire'
,p_button_css_classes=>'format-size'
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
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>R</u> - Report'
,p_button_css_classes=>'format-size'
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
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>O</u> - Post'
,p_button_css_classes=>'format-size'
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
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>P</u> - Print'
,p_button_css_classes=>'format-size'
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
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>V</u> - Void'
,p_button_css_classes=>'format-size'
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
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>N</u> - Void and Print New'
,p_button_css_classes=>'format-size'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(43419246617652548)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(33208676801998108)
,p_button_name=>'Exit'
,p_button_static_id=>'exit'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Exit'
,p_button_redirect_url=>'f?p=&APP_ID.:305:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33210408719998126)
,p_name=>'P124_SELECTED_DBA'
,p_item_sequence=>60
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33210599196998127)
,p_name=>'P124_SELECTED_AMOUNT'
,p_item_sequence=>70
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33210607379998128)
,p_name=>'P124_PREPARED_URL'
,p_item_sequence=>80
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43417774603652533)
,p_name=>'P124_QUERY_DBA'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43417843703652534)
,p_name=>'P124_QUERY_CM_NO'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43417935507652535)
,p_name=>'P124_QUERY_CM_DATE'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33210054029998122)
,p_name=>'GoToTop'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33210198214998123)
,p_event_id=>wwv_flow_imp.id(33210054029998122)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'selectFirstRow();'
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
'',
'model=this.data.model;',
'',
'if(this.data != null){',
'    if(this.data.selectedRecords[0] != null){',
'        selectedDba = model.getValue(this.data.selectedRecords[0], "DBA");',
'        selectedAmount = model.getValue(this.data.selectedRecords[0], "TOTAL_AMOUNT");',
'    }',
'}',
'apex.item("P124_SELECTED_DBA").setValue(selectedDba);',
'apex.item("P124_SELECTED_AMOUNT").setValue(selectedAmount);',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33210725429998129)
,p_name=>'Pass Data'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(33209069130998112)
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
'BEGIN',
'    :P124_PREPARED_URL := apex_page.get_url(',
'       p_page   => 125,',
'       p_items  => ''P125_TITLE,P125_CUSTOMER_DBA_U,P125_CM_AMOUNT'',',
'       p_values => ''Update'' || '','' || :P124_SELECTED_DBA || '','' || :P124_SELECTED_AMOUNT',
'    );',
'END;'))
,p_attribute_02=>'P124_SELECTED_DBA,P124_SELECTED_AMOUNT'
,p_attribute_03=>'P124_PREPARED_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33210927295998131)
,p_event_id=>wwv_flow_imp.id(33210725429998129)
,p_event_result=>'TRUE'
,p_action_sequence=>20
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
 p_id=>wwv_flow_imp.id(43418423152652540)
,p_event_id=>wwv_flow_imp.id(43417557823652531)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(66088517743397850)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43418584960652541)
,p_event_id=>wwv_flow_imp.id(43417557823652531)
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
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P124_QUERY_DBA,P124_QUERY_CM_NO,P124_QUERY_CM_DATE'
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
 p_id=>wwv_flow_imp.id(45601910123188045)
,p_name=>'Change'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P124_INVOICE_NUMBER'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45602087743188046)
,p_event_id=>wwv_flow_imp.id(45601910123188045)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_invoice VARCHAR2(10);',
'BEGIN',
'    SELECT',
'        TO_CHAR(:P99_SEARCH_QUERY, ''000000'')',
'    INTO',
'        l_invoice',
'    FROM',
'        DUAL;',
'',
'    :P124_PREPARED_URL := apex_page.get_url(',
'       p_page   => 122,',
'       p_items  => ''P122_INVOICE_NUMBER,P122_PAGE_MODE,P122_INVOICE_DATE'',',
'       p_values => l_invoice || '',add,'' || SYSDATE',
'    );',
'END;'))
,p_attribute_02=>'P124_INVOICE_NUMBER'
,p_attribute_03=>'P124_PREPARED_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45602108145188047)
,p_event_id=>wwv_flow_imp.id(45601910123188045)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// let url = $v("P124_PREPARED_URL");',
'// apex.navigation.redirect(url);',
'console.log($v("P124_PREPARED_URL"));',
'console.log("goto")'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(46319550601497920)
,p_name=>'Close'
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
'       p_page   => 127',
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
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'let url = $v("P124_PREPARED_URL");',
'apex.navigation.redirect(url);',
''))
);
wwv_flow_imp.component_end;
end;
/
