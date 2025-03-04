prompt --application/pages/page_00136
begin
--   Manifest
--     PAGE: 00136
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
 p_id=>136
,p_name=>'Review Purchase Order Signature'
,p_alias=>'REVIEW-PURCHASE-ORDER-SIGNATURE'
,p_step_title=>'Review Purchase Order Signature'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#js/cmn#MIN#.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p136KeyMap = {',
'    escape: (v) => {',
'        if(!$("#add-signature").is(":visible") && !$("#search").is(":visible") && !$("#option").is(":visible")) {',
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
'function mapP136Keys() {',
'    $(document).off(''keydown.p136keyevents'');',
'    $(document).on(''keydown.p136keyevents'', (ev) => {',
'        ',
'        const focusedElement = document.activeElement;',
'        if (focusedElement.tagName === "INPUT" || focusedElement.tagName === "TEXTAREA") {',
'            return;',
'        }',
'        ',
'        var key = ev.key?.toLowerCase();',
'        if (p136KeyMap[key]) {',
'            ev.preventDefault();',
'            setTimeout(() => {',
'                p136KeyMap[key]();',
'            }, 350);',
'        }',
'    });',
'}',
'',
'function selectFirstRow() {',
'    let region = apex.region("rpo-signature")',
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
'    let region = apex.region("rpo-signature")',
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
'function highlightValue() {',
'    $(`#P136_SIGNATURE`).on("focus", function() {',
'        $(this).select();',
'    });',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP136Keys();',
'setTitle("Review Purchase Order - PO Signature Utilities");',
'highlightValue();',
'',
'$(document).ready(function() {',
'    $("#P136_SIGNATURE").on("keydown", function(event) {',
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
'    $("#P136_SEARCH_VALUE").on("keydown", function(event) {',
'        if(event.key === "Enter" || event.keyCode === 13) {',
'            $("#search-signature").trigger("click");',
'            event.preventDefault();',
'        }',
'    });',
'',
'    let currentDate = new Date();',
'    let formattedDate = currentDate.getFullYear().toString() + ',
'        (currentDate.getMonth() + 1).toString().padStart(2, ''0'') + ',
'        currentDate.getDate().toString().padStart(2, ''0'');',
'    ',
'    $(document).on("keydown", function(event) {',
'        if($("#option").is(":visible")) {',
'            if(event.key === ''A'' || event.key === ''a'') {',
'                generateReport("PO_SIGNATURE_PRINT_COURIER_NEW", "pdf", {',
'                    fileName: `ReviewPurchaseOrderPOSignatureUtilities_${formattedDate}`,',
'                    mode : "print",',
'                    parameters : {',
'                        P_SEARCH_VALUE : $v("P136_P_SEARCH_VALUE")',
'                    },',
'                    spinnerEnabled : true',
'                });',
'            } else if (event.key === "B" || event.key === ''b'') {',
'                generateReport("PO_SIGNATURE_PRINT_ARIAL", "pdf", {',
'                    fileName: `ReviewPurchaseOrderPOSignatureUtilities_${formattedDate}`,',
'                    mode : "print",',
'                    parameters : {',
'                        P_SEARCH_VALUE : $v("P136_P_SEARCH_VALUE")',
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
'#add-signature label {',
'    color: white;',
'    font-size: 1.125rem;',
'}',
'',
'#search label {',
'    font-size: 1.125rem;',
'}',
'',
'#rpo-signature .a-IG {',
'    height: calc(75vh + 2px) !important;',
'} ',
'',
'#rpo-signature .a-IG-contentContainer {',
'    height: 75vh !important;',
'}',
'',
'#rpo-signature .a-IG-gridView.a-GV {',
'    height: 75vh !important;',
'}',
'',
'#rpo-signature .a-GV-bdy {',
'    height: calc(75vh - 2.5625rem) !important;',
'}',
'',
'body, #button-region {',
'    background-color: rgb(30, 58, 138);',
'}',
'',
'#add-signature,',
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
'#add-signature,',
'#search {',
'    border-radius: 12px;',
'}',
'',
'#rpo-signature table,',
'#rpo-signature tr,',
'#rpo-signature th,',
'#rpo-signature td {',
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
'#rpo-signature .a-GV-header a, #rpo-signature th.a-GV-header {',
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
'#rpo-signature .a-GV-table {',
'    width: 100% !important;',
'}',
'',
'#rpo-signature .a-GV-table colgroup col:nth-child(1) {',
'    width: 30rem;',
'}',
'',
'#rpo-signature .a-GV-table colgroup col:nth-child(2),',
'#rpo-signature .a-GV-table colgroup col:nth-child(3),',
'#rpo-signature .a-GV-table colgroup col:nth-child(4),',
'#rpo-signature .a-GV-table colgroup col:nth-child(5) {',
'    width: 10rem;',
'}'))
,p_step_template=>wwv_flow_imp.id(5671392681337017)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(71479659961170404)
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
 p_id=>wwv_flow_imp.id(71481786499170425)
,p_plug_name=>'Add Signature'
,p_region_name=>'add-signature'
,p_region_template_options=>'js-modal:js-dialog-nosize'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_04'
,p_location=>null
,p_plug_header=>'<span style="color: white; font-size: 1.5rem" class="signature-header"></span>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(71483297316170440)
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
 p_id=>wwv_flow_imp.id(71483453301170442)
,p_plug_name=>'Header'
,p_region_name=>'search-header'
,p_parent_plug_id=>wwv_flow_imp.id(71483297316170440)
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
 p_id=>wwv_flow_imp.id(71589893149388690)
,p_plug_name=>'Review Purchase Order Signature'
,p_region_name=>'rpo-signature'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>40
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH signature AS (',
'    SELECT',
'        signature_id,',
'        signature,',
'        create_user,',
'        create_date,',
'        update_user,',
'        update_date',
'    FROM',
'        NIM044',
'    WHERE',
'        UPPER(signature) LIKE ''%'' || UPPER(:P136_SEARCH_VALUE) || ''%''',
'    ORDER BY',
'        CASE WHEN :P136_SEARCH_VALUE IS NOT NULL AND UPPER(signature) LIKE UPPER(:P136_SEARCH_VALUE) || ''%'' THEN 1 ELSE 2 END,',
'        signature ASC',
')',
'SELECT * FROM signature'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P136_SEARCH_VALUE'
,p_prn_page_header=>'Review Purchase Order Signature'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(71591009350388721)
,p_name=>'SIGNATURE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SIGNATURE_ID'
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
 p_id=>wwv_flow_imp.id(71592087082388728)
,p_name=>'SIGNATURE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SIGNATURE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Signature'
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
 p_id=>wwv_flow_imp.id(71593053650388729)
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
 p_id=>wwv_flow_imp.id(71594079992388732)
,p_name=>'CREATE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATE_DATE'
,p_data_type=>'DATE'
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
 p_id=>wwv_flow_imp.id(71595091927388734)
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
 p_id=>wwv_flow_imp.id(71596011517388734)
,p_name=>'UPDATE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATE_DATE'
,p_data_type=>'DATE'
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
 p_id=>wwv_flow_imp.id(71590388951388703)
,p_internal_uid=>71590388951388703
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
 p_id=>wwv_flow_imp.id(71590628296388707)
,p_interactive_grid_id=>wwv_flow_imp.id(71590388951388703)
,p_static_id=>'715907'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(71590849909388710)
,p_report_id=>wwv_flow_imp.id(71590628296388707)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(71591464998388726)
,p_view_id=>wwv_flow_imp.id(71590849909388710)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(71591009350388721)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(71592433769388729)
,p_view_id=>wwv_flow_imp.id(71590849909388710)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(71592087082388728)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(71593412235388731)
,p_view_id=>wwv_flow_imp.id(71590849909388710)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(71593053650388729)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(71594441826388732)
,p_view_id=>wwv_flow_imp.id(71590849909388710)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(71594079992388732)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(71595415300388734)
,p_view_id=>wwv_flow_imp.id(71590849909388710)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(71595091927388734)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(71596403923388735)
,p_view_id=>wwv_flow_imp.id(71590849909388710)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(71596011517388734)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(71618752535549108)
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
 p_id=>wwv_flow_imp.id(71618966965549110)
,p_plug_name=>'Dotmatrix'
,p_region_name=>'dot'
,p_parent_plug_id=>wwv_flow_imp.id(71618752535549108)
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
 p_id=>wwv_flow_imp.id(71619011591549111)
,p_plug_name=>'Graphic Printer'
,p_region_name=>'graphic'
,p_parent_plug_id=>wwv_flow_imp.id(71618752535549108)
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
 p_id=>wwv_flow_imp.id(71479959496170407)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(71479659961170404)
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
 p_id=>wwv_flow_imp.id(71480058095170408)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(71479659961170404)
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
 p_id=>wwv_flow_imp.id(71480134781170409)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(71479659961170404)
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
 p_id=>wwv_flow_imp.id(71483571496170443)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(71483297316170440)
,p_button_name=>'Search'
,p_button_static_id=>'search-signature'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Search'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'hide'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(71480297903170410)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(71479659961170404)
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
 p_id=>wwv_flow_imp.id(71480342295170411)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(71479659961170404)
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
 p_id=>wwv_flow_imp.id(71480471052170412)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(71479659961170404)
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
 p_id=>wwv_flow_imp.id(71480546729170413)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(71479659961170404)
,p_button_name=>'END'
,p_button_static_id=>'end'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'End'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'hide'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(71480648586170414)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(71479659961170404)
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
 p_id=>wwv_flow_imp.id(71481375246170421)
,p_name=>'P136_SIGNATURE_ID'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71481443733170422)
,p_name=>'P136_P_SEARCH_VALUE'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71481826244170426)
,p_name=>'P136_PROCESS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(71481786499170425)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71481916751170427)
,p_name=>'P136_SIGNATURE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(71481786499170425)
,p_prompt=>'Signature'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>3
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(15621067564319309)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--indicatorAsterisk:t-Form-fieldContainer--large:margin-top-sm:margin-right-md'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71483373352170441)
,p_name=>'P136_SEARCH_VALUE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(71483297316170440)
,p_prompt=>'Signature'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:margin-right-lg'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71480758395170415)
,p_name=>'Go to Top'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(71480471052170412)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71480885082170416)
,p_event_id=>wwv_flow_imp.id(71480758395170415)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'selectFirstRow();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71480938532170417)
,p_name=>'Go to Bottom'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(71480546729170413)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71481034438170418)
,p_event_id=>wwv_flow_imp.id(71480938532170417)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'selectLastRow();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71481172150170419)
,p_name=>'Selection Change'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(71589893149388690)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71481276052170420)
,p_event_id=>wwv_flow_imp.id(71481172150170419)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (this.data.selectedRecords && this.data.selectedRecords.length > 0) {',
'    let signatureIDSelected = this.data.selectedRecords[0][0];',
'    apex.item("P136_SIGNATURE_ID").setValue(signatureIDSelected);',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71481543197170423)
,p_name=>'Select First Cell'
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71481679504170424)
,p_event_id=>wwv_flow_imp.id(71481543197170423)
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
 p_id=>wwv_flow_imp.id(71482042124170428)
,p_name=>'Open Add'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(71479959496170407)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71482180983170429)
,p_event_id=>wwv_flow_imp.id(71482042124170428)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#add-signature").dialog("option", "width", 600);',
'$(".signature-header").text("Add Signature");',
'apex.item("P136_PROCESS").setValue("A");',
'apex.message.clearErrors();'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71482236164170430)
,p_event_id=>wwv_flow_imp.id(71482042124170428)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(71481786499170425)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71482367425170431)
,p_event_id=>wwv_flow_imp.id(71482042124170428)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P136_SIGNATURE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71482448531170432)
,p_event_id=>wwv_flow_imp.id(71482042124170428)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).off(''keydown.p136keyevents'');',
'$("#add-signature").on("dialogbeforeclose", function(event, ui) {',
'    setTimeout(mapP136Keys, 0);',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71482520977170433)
,p_name=>'Open Update'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(71480058095170408)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71482699793170434)
,p_event_id=>wwv_flow_imp.id(71482520977170433)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#add-signature").dialog("option", "width", 600);',
'$(".signature-header").text("Update Signature");',
'apex.item("P136_PROCESS").setValue("U");',
'apex.message.clearErrors();'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71482792430170435)
,p_event_id=>wwv_flow_imp.id(71482520977170433)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P136_SIGNATURE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71482817129170436)
,p_event_id=>wwv_flow_imp.id(71482520977170433)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(71481786499170425)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71482974284170437)
,p_event_id=>wwv_flow_imp.id(71482520977170433)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_signature NIM044.signature%TYPE;',
'BEGIN',
'    IF :P136_PROCESS = ''U'' THEN',
'        SELECT signature',
'        INTO l_signature',
'        FROM NIM044',
'        WHERE signature_id = :P136_SIGNATURE_ID;',
'',
'        :P136_SIGNATURE := l_signature;',
'    END IF;',
'END;'))
,p_attribute_02=>'P136_PROCESS,P136_SIGNATURE_ID'
,p_attribute_03=>'P136_SIGNATURE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71483060458170438)
,p_event_id=>wwv_flow_imp.id(71482520977170433)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(function() {',
'    apex.item("P136_SIGNATURE").setFocus();',
'}, 200)'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71483170914170439)
,p_event_id=>wwv_flow_imp.id(71482520977170433)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).off(''keydown.p136keyevents'');',
'$("#add-signature").on("dialogbeforeclose", function(event, ui) {',
'    setTimeout(mapP136Keys, 0);',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71483601742170444)
,p_name=>'On Search'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(71483571496170443)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71483783942170445)
,p_event_id=>wwv_flow_imp.id(71483601742170444)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(71483297316170440)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71483888436170446)
,p_event_id=>wwv_flow_imp.id(71483601742170444)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(71589893149388690)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71483982030170447)
,p_event_id=>wwv_flow_imp.id(71483601742170444)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P136_P_SEARCH_VALUE'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$v("P136_SEARCH_VALUE")'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71484069791170448)
,p_event_id=>wwv_flow_imp.id(71483601742170444)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P136_SIGNATURE_ID'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71484148724170449)
,p_name=>'Open Search'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(71480342295170411)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71484205487170450)
,p_event_id=>wwv_flow_imp.id(71484148724170449)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("#search").dialog("option", "width", 600);'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71618044641549101)
,p_event_id=>wwv_flow_imp.id(71484148724170449)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(71483297316170440)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71618119010549102)
,p_event_id=>wwv_flow_imp.id(71484148724170449)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).off(''keydown.p136keyevents'');',
'$("#search").on("dialogbeforeclose", function(event, ui) {',
'    setTimeout(mapP136Keys, 0);',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71618297044549103)
,p_name=>'Validate and Submit'
,p_event_sequence=>90
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'validate'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71618333981549104)
,p_event_id=>wwv_flow_imp.id(71618297044549103)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var signature = $v("P136_SIGNATURE");',
'',
'apex.message.clearErrors();',
'var hasErrors = false;',
'',
'if(signature === "") {',
'    apex.message.showErrors([{',
'        type: "error",',
'        location: ["inline"],',
'        pageItem: "P136_SIGNATURE",',
'        message: "Signature cannot be empty",',
'        unsafe: false',
'    }]);',
'    hasErrors = true;',
'} else if(signature.length > 4000) {',
'    apex.message.showErrors([{',
'        type: "error",',
'        location: ["inline"],',
'        pageItem: "P136_SIGNATURE",',
'        message: "Remarks cannot exceed 4000 characters",',
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
 p_id=>wwv_flow_imp.id(71618430377549105)
,p_event_id=>wwv_flow_imp.id(71618297044549103)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const ICON_FAIL_LARGE = ''fa fa-lg fa-times-circle msg-icon-yellow'';',
'const ICON_OK_LARGE = ''fa fa-lg fa-check-circle'';',
'',
'async function insertSignature() {',
'    try {',
'        if($v("P136_PROCESS") === ''A'') {',
'            await insertToNIM044();',
'',
'            $(''#add-signature'').dialog("close");',
'            apex.item("P136_SIGNATURE").setValue(null);',
'            showGPopup({ message: `Signature has been created!`, width: 600, icon: ICON_OK_LARGE, top: "85%", timeoutActive: true })',
'        } else if($v("P136_PROCESS") === ''U'') {',
'            await updateSignature();',
'',
'            $(''#add-signature'').dialog("close");',
'            showGPopup({ message: `Signature has been updated!`, width: 600, icon: ICON_OK_LARGE, top: "85%", timeoutActive: true });',
'        }',
'',
'        apex.region("rpo-signature").refresh();',
'        setTimeout(function() {',
'            $(".a-GV-cell").first().trigger("click");',
'        }, 2000);',
'    } catch (error) {',
'        showGPopup({ message: error, width: 600, icon: ICON_FAIL_LARGE, top: "85%", timeoutActive: true });',
'    }',
'}',
'',
'async function insertToNIM044() {',
'    const response = await apex.server.process(''INSERT_TO_NIM044'', {',
'        pageItems: ''#P136_SIGNATURE''',
'    }, {',
'        dataType: ''json''',
'    });',
'',
'    if(response.success) {',
'        return true;',
'    } else {',
'        throw ''An unknown error occured.'';',
'    }',
'}',
'',
'async function updateSignature() {',
'    const response = await apex.server.process(''UPDATE_SIGNATURE'', {',
'        pageItems: ''#P136_SIGNATURE_ID, #P136_SIGNATURE''',
'    }, {',
'        dataType: ''json''',
'    });',
'',
'    if(response.success) {',
'        return true;',
'    } else {',
'        throw ''An unknown error occured.'';',
'    }',
'}',
'',
'insertSignature();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71619131969549112)
,p_name=>'Open Options'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(71480134781170409)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71619284818549113)
,p_event_id=>wwv_flow_imp.id(71619131969549112)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(71618752535549108)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71619340777549114)
,p_event_id=>wwv_flow_imp.id(71619131969549112)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).off(''keydown.p136keyevents'');',
'$("#option").on("dialogbeforeclose", function(event, ui) {',
'    setTimeout(mapP136Keys, 0);',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71622121902549142)
,p_name=>'Export'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(71480297903170410)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71622221400549143)
,p_event_id=>wwv_flow_imp.id(71622121902549142)
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
'generateReport("PO_SIGNATURE_EXPORT", "xlsx", {',
'    fileName: `ReviewPurchaseOrderPOSignatureUtilities_${formattedDate}`,',
'    mode : "export",',
'    parameters : {',
'        P_SEARCH_VALUE : $v("P136_P_SEARCH_VALUE")',
'    },',
'    spinnerEnabled : true',
'});'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(71618557269549106)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'INSERT_TO_NIM044'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'INSERT INTO ',
'    NIM044 (signature, create_user, create_date)',
'VALUES',
'    (:P136_SIGNATURE, V(''APP_USER''), SYSDATE);',
'',
'HTP.P(''{"success": true}'');'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>71618557269549106
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(71618676347549107)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UPDATE_SIGNATURE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'UPDATE ',
'    NIM044',
'SET',
'    signature = :P136_SIGNATURE,',
'    update_user = V(''APP_USER''),',
'    update_date = SYSDATE',
'WHERE',
'    signature_id = :P136_SIGNATURE_ID;',
'',
'HTP.P(''{"success": true}'');'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>71618676347549107
);
wwv_flow_imp.component_end;
end;
/
