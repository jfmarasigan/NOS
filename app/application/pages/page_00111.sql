prompt --application/pages/page_00111
begin
--   Manifest
--     PAGE: 00111
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
 p_id=>111
,p_name=>'Review Purchase Order Closing Email'
,p_alias=>'REVIEW-PURCHASE-ORDER-CLOSING-EMAIL'
,p_step_title=>'Review Purchase Order Closing Email'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#js/cmn#MIN#.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p111KeyMap = {',
'    escape: (v) => {',
'        if(!$("#add-close-email").is(":visible") && !$("#search").is(":visible")) {',
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
'function mapP111Keys() {',
'    $(document).off(''keydown.p111keyevents'');',
'    $(document).on(''keydown.p111keyevents'', (ev) => {',
'        ',
'        const focusedElement = document.activeElement;',
'        if (focusedElement.tagName === "INPUT" || focusedElement.tagName === "TEXTAREA") {',
'            return;',
'        }',
'        ',
'        var key = ev.key?.toLowerCase();',
'        if (p111KeyMap[key]) {',
'            ev.preventDefault();',
'            setTimeout(function() {',
'                p111KeyMap[key]();',
'            }, 350)',
'        }',
'    });',
'}',
'',
'function highlightValue() {',
'    $(`#P111_CLOSING_EMAIL`).on("focus", function() {',
'        $(this).select();',
'    });',
'}',
'',
'function selectFirstRow() {',
'    let region = apex.region("rpo-close-email")',
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
'    let region = apex.region("rpo-close-email")',
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
'mapP111Keys();',
'setTitle("Review Purchase Order - PO Closing Email Utilities");',
'highlightValue();',
'',
'$(document).ready(function() {',
'    $("#P111_CLOSING_EMAIL").on("keydown", function(event) {',
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
'    $("#P111_SEARCH_VALUE").on("keydown", function(event) {',
'        if(event.key === "Enter" || event.keyCode === 13) {',
'            $("#search-close-email").trigger("click");',
'            event.preventDefault();',
'        }',
'    });',
'',
'    let currentDate = new Date();',
'    let formattedDate = currentDate.getFullYear().toString() + ',
'        (currentDate.getMonth() + 1).toString().padStart(2, ''0'') + ',
'        currentDate.getDate().toString().padStart(2, ''0'');',
'',
'    $(document).on("keydown", function(event) {',
'        if($("#option").is(":visible")) {',
'            if(event.key === ''A'' || event.key === ''a'') {',
'                generateReport("PO_CLOSING_EMAIL_PRINT_COURIER_NEW", "pdf", {',
'                    fileName: `ReviewPurchaseOrderPOClosingEmailUtilities_${formattedDate}`,',
'                    mode : "print",',
'                    parameters : {',
'                        P_SEARCH_VALUE : $v("P111_P_SEARCH_VALUE")',
'                    },',
'                    spinnerEnabled : true',
'                });',
'            } else if (event.key === "B" || event.key === ''b'') {',
'                generateReport("PO_CLOSING_EMAIL_PRINT_ARIAL", "pdf", {',
'                    fileName: `ReviewPurchaseOrderPOClosingEmailUtilities_${formattedDate}`,',
'                    mode : "print",',
'                    parameters : {',
'                        P_SEARCH_VALUE : $v("P111_P_SEARCH_VALUE")',
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
'.t-Form-labelContainer .t-Form-label::before {',
'    content: "" !important;',
'}',
'',
'#add-close-email label {',
'    color: white;',
'    font-size: 1.125rem;',
'}',
'',
'#search label {',
'    font-size: 1.125rem;',
'}',
'',
'#rpo-close-email .a-IG {',
'    height: calc(75vh + 2px) !important;',
'} ',
'',
'#rpo-close-email .a-IG-contentContainer {',
'    height: 75vh !important;',
'}',
'',
'#rpo-close-email .a-IG-gridView.a-GV {',
'    height: 75vh !important;',
'}',
'',
'#rpo-close-email .a-GV-bdy {',
'    height: calc(75vh - 2.5625rem) !important;',
'}',
'',
'body, #button-region {',
'    background-color: rgb(30, 58, 138);',
'}',
'',
'#add-note,',
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
'#add-note,',
'#search {',
'    border-radius: 12px;',
'}',
'',
'#rpo-close-email table,',
'#rpo-close-email tr,',
'#rpo-close-email th,',
'#rpo-close-email td {',
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
'#rpo-close-email .a-GV-header a, #rpo-close-email th.a-GV-header {',
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
'#rpo-close-email .a-GV-table {',
'    width: 100% !important;',
'}',
'',
'#rpo-close-email .a-GV-table colgroup col:nth-child(1) {',
'    width: 30rem;',
'}',
'#rpo-close-email .a-GV-table colgroup col:nth-child(2),',
'#rpo-close-email .a-GV-table colgroup col:nth-child(3),',
'#rpo-close-email .a-GV-table colgroup col:nth-child(4),',
'#rpo-close-email .a-GV-table colgroup col:nth-child(5) {',
'    width: 10rem;',
'}'))
,p_step_template=>wwv_flow_imp.id(5671392681337017)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(50185873400926904)
,p_plug_name=>'Buttons'
,p_region_name=>'button-region'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>50
,p_plug_grid_row_css_classes=>'buttons-row'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(50186706712926913)
,p_plug_name=>'Add / Update Closing Email'
,p_region_name=>'add-close-email'
,p_region_template_options=>'js-modal:js-dialog-nosize'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_04'
,p_location=>null
,p_plug_header=>'<span style="color: white; font-size: 1.5rem" class="close-email-header"></span>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(50189509038926941)
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
 p_id=>wwv_flow_imp.id(50190015968926946)
,p_plug_name=>'Header'
,p_region_name=>'search-header'
,p_parent_plug_id=>wwv_flow_imp.id(50189509038926941)
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
 p_id=>wwv_flow_imp.id(50427068749129832)
,p_plug_name=>'Review Purchase Order Closing Email'
,p_region_name=>'rpo-close-email'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>40
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH closing_email AS (',
'    SELECT',
'        closing_email_id,',
'        closing_email,',
'        create_user,',
'        TO_CHAR(create_date, ''MM/DD/YYYY'') as create_date,',
'        update_user,',
'        TO_CHAR(update_date, ''MM/DD/YYYY'') as update_date',
'    FROM',
'        NIM034',
'    WHERE',
'        UPPER(closing_email) LIKE ''%'' || UPPER(:P111_SEARCH_VALUE) || ''%''',
'    ORDER BY',
'        CASE WHEN :P111_SEARCH_VALUE IS NOT NULL AND UPPER(closing_email) LIKE UPPER(:P111_SEARCH_VALUE) || ''%'' THEN 1 ELSE 2 END,',
'        closing_email ASC',
')',
'',
'SELECT * FROM closing_email'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P111_SEARCH_VALUE'
,p_prn_page_header=>'Review Purchase Order Closing Email'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(50428397653129850)
,p_name=>'CLOSING_EMAIL_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CLOSING_EMAIL_ID'
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
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(50429399916129854)
,p_name=>'CLOSING_EMAIL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CLOSING_EMAIL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Closing Email'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>true
,p_max_length=>4000
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(50430312264129856)
,p_name=>'CREATE_USER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATE_USER'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Created User'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>40
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(50431345469129857)
,p_name=>'CREATE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATE_DATE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Date Created'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(50432348052129857)
,p_name=>'UPDATE_USER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATE_USER'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Last Updated By'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>40
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(50433342146129859)
,p_name=>'UPDATE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATE_DATE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Date Updated'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(50427580125129840)
,p_internal_uid=>50427580125129840
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
 p_id=>wwv_flow_imp.id(50427946887129842)
,p_interactive_grid_id=>wwv_flow_imp.id(50427580125129840)
,p_static_id=>'504280'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(50428146235129843)
,p_report_id=>wwv_flow_imp.id(50427946887129842)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(50428758811129853)
,p_view_id=>wwv_flow_imp.id(50428146235129843)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(50428397653129850)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(50429788065129854)
,p_view_id=>wwv_flow_imp.id(50428146235129843)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(50429399916129854)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(50430704262129856)
,p_view_id=>wwv_flow_imp.id(50428146235129843)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(50430312264129856)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(50431731122129857)
,p_view_id=>wwv_flow_imp.id(50428146235129843)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(50431345469129857)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(50432735090129859)
,p_view_id=>wwv_flow_imp.id(50428146235129843)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(50432348052129857)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(50433769070129859)
,p_view_id=>wwv_flow_imp.id(50428146235129843)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(50433342146129859)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(50462240609444426)
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
 p_id=>wwv_flow_imp.id(50462464887444428)
,p_plug_name=>'Dotmatrix'
,p_region_name=>'dot'
,p_parent_plug_id=>wwv_flow_imp.id(50462240609444426)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--hiddenOverflow:margin-bottom-none'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>20
,p_location=>null
,p_plug_source=>'A - Dotmatrix'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(50462524659444429)
,p_plug_name=>'Graphic Printer'
,p_region_name=>'graphic'
,p_parent_plug_id=>wwv_flow_imp.id(50462240609444426)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--hiddenOverflow:margin-bottom-none'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>30
,p_location=>null
,p_plug_source=>'B - Graphic Printer'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(50185969029926905)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(50185873400926904)
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
,p_button_css_classes=>'btns'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(50186035779926906)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(50185873400926904)
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
,p_button_css_classes=>'btns'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(50186157739926907)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(50185873400926904)
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
 p_id=>wwv_flow_imp.id(50190111137926947)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(50189509038926941)
,p_button_name=>'Search'
,p_button_static_id=>'search-close-email'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Search'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'hide'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(50186291566926908)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(50185873400926904)
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
 p_id=>wwv_flow_imp.id(50186334367926909)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(50185873400926904)
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
 p_id=>wwv_flow_imp.id(50186435292926910)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(50185873400926904)
,p_button_name=>'HOME'
,p_button_static_id=>'home'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Home'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'hide'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(50186641404926912)
,p_button_sequence=>60
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(50186504523926911)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(50185873400926904)
,p_button_name=>'END'
,p_button_static_id=>'end'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'End'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'hide'
,p_grid_column_css_classes=>'hide'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50187020733926916)
,p_name=>'P111_PROCESS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(50186706712926913)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50187136935926917)
,p_name=>'P111_CLOSING_EMAIL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(50186706712926913)
,p_prompt=>'Closing Email'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>3
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(15621067564319309)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--indicatorAsterisk:t-Form-fieldContainer--large:margin-top-sm:margin-right-md'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50188357053926929)
,p_name=>'P111_CLOSING_EMAIL_ID'
,p_item_sequence=>20
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50189935639926945)
,p_name=>'P111_SEARCH_VALUE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(50189509038926941)
,p_prompt=>'Closing Email'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:margin-right-lg'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51617387731202041)
,p_name=>'P111_P_SEARCH_VALUE'
,p_item_sequence=>30
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(50186849531926914)
,p_name=>'Open Add'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(50185969029926905)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50186918487926915)
,p_event_id=>wwv_flow_imp.id(50186849531926914)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#add-close-email").dialog("option", "width", 600);',
'$(".close-email-header").text("Add Closing Email");',
'apex.item("P111_PROCESS").setValue("A");',
'apex.message.clearErrors();'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50187216713926918)
,p_event_id=>wwv_flow_imp.id(50186849531926914)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(50186706712926913)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50187368854926919)
,p_event_id=>wwv_flow_imp.id(50186849531926914)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P111_CLOSING_EMAIL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71620126317549122)
,p_event_id=>wwv_flow_imp.id(50186849531926914)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).off(''keydown.p111keyevents'');',
'$("#add-close-email").on("dialogbeforeclose", function(event, ui) {',
'    setTimeout(mapP111Keys, 0);',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(50187403333926920)
,p_name=>'Open Update'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(50186035779926906)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50187582718926921)
,p_event_id=>wwv_flow_imp.id(50187403333926920)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#add-close-email").dialog("option", "width", 600);',
'$(".close-email-header").text("Update Closing Email");',
'apex.item("P111_PROCESS").setValue("U");',
'apex.message.clearErrors();'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50187659224926922)
,p_event_id=>wwv_flow_imp.id(50187403333926920)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P111_CLOSING_EMAIL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50187792950926923)
,p_event_id=>wwv_flow_imp.id(50187403333926920)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(50186706712926913)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50188626019926932)
,p_event_id=>wwv_flow_imp.id(50187403333926920)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_closing_email NIM034.closing_email%TYPE;',
'BEGIN',
'    IF :P111_PROCESS = ''U'' THEN',
'        SELECT closing_email',
'        INTO l_closing_email',
'        FROM NIM034',
'        WHERE closing_email_id = :P111_CLOSING_EMAIL_ID;',
'',
'        :P111_CLOSING_EMAIL := l_closing_email;',
'    END IF;',
'END;'))
,p_attribute_02=>'P111_CLOSING_EMAIL_ID,P111_PROCESS'
,p_attribute_03=>'P111_CLOSING_EMAIL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(55264355396963927)
,p_event_id=>wwv_flow_imp.id(50187403333926920)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(function() {',
'    apex.item("P111_CLOSING_EMAIL").setFocus();',
'}, 200)'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71620287763549123)
,p_event_id=>wwv_flow_imp.id(50187403333926920)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).off(''keydown.p111keyevents'');',
'$("#add-close-email").on("dialogbeforeclose", function(event, ui) {',
'    setTimeout(mapP111Keys, 0);',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(50187822995926924)
,p_name=>'Validate and Submit'
,p_event_sequence=>30
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'validate'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50187996477926925)
,p_event_id=>wwv_flow_imp.id(50187822995926924)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var closingEmail = $v("P111_CLOSING_EMAIL");',
'',
'apex.message.clearErrors();',
'var hasErrors = false;',
'',
'if(closingEmail === "") {',
'    apex.message.showErrors([{',
'        type: "error",',
'        location: ["inline"],',
'        pageItem: "P111_CLOSING_EMAIL",',
'        message: "Closing Email cannot be empty",',
'        unsafe: false',
'    }]);',
'    hasErrors = true;',
'} else if (closingEmail.length > 600) {',
'    apex.message.showErrors([{',
'        type: "error",',
'        location: ["inline"],',
'        pageItem: "P111_CLOSING_EMAIL",',
'        message: "Closing Email cannot exceed 600 characters",',
'        unsafe: false',
'    }]);',
'    hasErrors = true;',
'}',
'',
'if (hasErrors) {',
'    return false;',
'}',
'',
'apex.message.clearErrors();'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50188098461926926)
,p_event_id=>wwv_flow_imp.id(50187822995926924)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const ICON_FAIL_LARGE = ''fa fa-lg fa-times-circle msg-icon-yellow'';',
'const ICON_OK_LARGE = ''fa fa-lg fa-check-circle'';',
'',
'async function insertClosingEmail() {',
'    try {',
'        if($v("P111_PROCESS") === ''A'') {',
'            await insertToNIM034();',
'',
'            $(''#add-close-email'').dialog("close");',
'            apex.item("P111_CLOSING_EMAIL").setValue(null);',
'            showGPopup({ message: `Closing Email has been created!`, width: 600, icon: ICON_OK_LARGE, top: "85%", timeoutActive: true })',
'        } else if($v("P111_PROCESS") === ''U'') {',
'            await updateClosingEmail();',
'',
'            $(''#add-close-email'').dialog("close");',
'            showGPopup({ message: `Closing Email has been updated!`, width: 600, icon: ICON_OK_LARGE, top: "85%", timeoutActive: true });',
'        }',
'        apex.region("rpo-close-email").refresh();',
'        setTimeout(function() {',
'            $(".a-GV-cell").first().trigger("click");',
'        }, 2000);',
'    } catch (error) {',
'        showGPopup({ message: error, width: 600, icon: ICON_FAIL_LARGE, top: "85%", timeoutActive: true });',
'    }',
'}',
'',
'async function insertToNIM034() {',
'    const response = await apex.server.process("INSERT_TO_NIM034", ',
'    {',
'        pageItems: ''#P111_CLOSING_EMAIL''',
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
'async function updateClosingEmail() {',
'    const response = await apex.server.process("UPDATE_CLOSING_EMAIL", ',
'    {',
'        pageItems: ''#P111_CLOSING_EMAIL, #P111_CLOSING_EMAIL_ID''',
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
'insertClosingEmail()'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(50188454088926930)
,p_name=>'Selection Change'
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(50427068749129832)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50188504803926931)
,p_event_id=>wwv_flow_imp.id(50188454088926930)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (this.data.selectedRecords && this.data.selectedRecords.length > 0) {',
'    let closingEmailIDSelected = this.data.selectedRecords[0][0];',
'    apex.item("P111_CLOSING_EMAIL_ID").setValue(closingEmailIDSelected);',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(50188747890926933)
,p_name=>'Go to Top'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(50186435292926910)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50188828555926934)
,p_event_id=>wwv_flow_imp.id(50188747890926933)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'selectFirstRow();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(50188975406926935)
,p_name=>'Go to Bottom'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(50186504523926911)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50189017477926936)
,p_event_id=>wwv_flow_imp.id(50188975406926935)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'selectLastRow();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(50189114373926937)
,p_name=>'Select First Cell'
,p_event_sequence=>70
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(50427068749129832)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|gridpagechange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50189224672926938)
,p_event_id=>wwv_flow_imp.id(50189114373926937)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(".a-GV-cell").first().trigger("click");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(50189397122926939)
,p_name=>'Select First'
,p_event_sequence=>80
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50189400614926940)
,p_event_id=>wwv_flow_imp.id(50189397122926939)
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
 p_id=>wwv_flow_imp.id(50189642900926942)
,p_name=>'Open Search'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(50186334367926909)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50189738100926943)
,p_event_id=>wwv_flow_imp.id(50189642900926942)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("#search").dialog("option", "width", 600);'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50189888323926944)
,p_event_id=>wwv_flow_imp.id(50189642900926942)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(50189509038926941)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71620351623549124)
,p_event_id=>wwv_flow_imp.id(50189642900926942)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).off(''keydown.p111keyevents'');',
'$("#search").on("dialogbeforeclose", function(event, ui) {',
'    setTimeout(mapP111Keys, 0);',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(50190271014926948)
,p_name=>'Search'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(50190111137926947)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50190311996926949)
,p_event_id=>wwv_flow_imp.id(50190271014926948)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(50189509038926941)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50190401247926950)
,p_event_id=>wwv_flow_imp.id(50190271014926948)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(50427068749129832)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51617543084202043)
,p_event_id=>wwv_flow_imp.id(50190271014926948)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P111_P_SEARCH_VALUE'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$v("P111_SEARCH_VALUE");'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50459795314444401)
,p_event_id=>wwv_flow_imp.id(50190271014926948)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P111_CLOSING_EMAIL_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51617451642202042)
,p_event_id=>wwv_flow_imp.id(50190271014926948)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P111_SEARCH_VALUE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(50462655427444430)
,p_name=>'Open Options'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(50186157739926907)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50462715930444431)
,p_event_id=>wwv_flow_imp.id(50462655427444430)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(50462240609444426)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50462888925444432)
,p_event_id=>wwv_flow_imp.id(50462655427444430)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).off(''keydown.p111keyevents'');',
'$("#option").on("dialogbeforeclose", function(event, ui) {',
'    setTimeout(mapP111Keys, 0);',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(50463335910444437)
,p_name=>'Export'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(50186291566926908)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50463458637444438)
,p_event_id=>wwv_flow_imp.id(50463335910444437)
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
'generateReport("PO_CLOSING_EMAIL_EXPORT", "xlsx", {',
'    fileName: `ReviewPurchaseOrderPOClosingEmailUtilities_${formattedDate}`,',
'    mode : "export",',
'    parameters : {',
'        P_SEARCH_VALUE : $v("P111_P_SEARCH_VALUE")',
'    },',
'    spinnerEnabled : true',
'});'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(51617208776202040)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Session'
,p_attribute_01=>'CLEAR_CACHE_FOR_ITEMS'
,p_attribute_03=>'P111_SEARCH_VALUE'
,p_internal_uid=>51617208776202040
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(50188196904926927)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'INSERT_TO_NIM034'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'INSERT INTO',
'    NIM034(closing_email, create_user, create_date)',
'VALUES',
'    (:P111_CLOSING_EMAIL, V(''APP_USER''), SYSDATE);',
'',
'HTP.P(''{"success": true}'');'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>50188196904926927
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(50188298080926928)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UPDATE_CLOSING_EMAIL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'UPDATE',
'    NIM034',
'SET',
'    closing_email = :P111_CLOSING_EMAIL,',
'    update_user = V(''APP_USER''),',
'    update_date = SYSDATE',
'WHERE',
'    closing_email_id = :P111_CLOSING_EMAIL_ID;',
'',
'HTP.P(''{"success": true}'');'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>50188298080926928
);
wwv_flow_imp.component_end;
end;
/
