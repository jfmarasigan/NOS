prompt --application/pages/page_00094
begin
--   Manifest
--     PAGE: 00094
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
 p_id=>94
,p_name=>'Add/Update Convert Item A to Item B'
,p_alias=>'ADD-UPDATE-CONVERT-ITEM-A-TO-ITEM-B'
,p_step_title=>'Add/Update Convert Item A to Item B'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#js/cmn#MIN#.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p94KeyMap = {',
'    escape: (v) => {',
'        if($("#item-table").is(":visible")) {',
'            if($v("P94_ITEM") === "FROM") {',
'                $.event.trigger("closeItemMasterfile");',
'                apex.item("P94_FROM_NUM_UNITS").setFocus();',
'            } else if($v("P94_ITEM") === "TO") {',
'                $.event.trigger("closeItemMasterfile");',
'                apex.item("P94_TO_NUM_UNITS").setFocus();',
'            }',
'        } else {',
'            $("#exit").trigger("click");',
'        }',
'        ',
'',
'    },',
'    enter: (v) => {',
'        if($("#item-table").is('':visible'')) {',
'            $.event.trigger("passvalue")',
'        }',
'    },',
'    home: (v) => {',
'        if($("#item-table").is('':visible'')) {',
'            $("#home").trigger("click");',
'        }',
'    },',
'',
'    end: (v) => {',
'        if($("#item-table").is('':visible'')) {',
'            $("#end").trigger("click");',
'        }',
'    }',
'}',
'',
'function mapP94Keys() {',
'    $(document).off(''keydown.p94keyevents'');',
'    $(document).on(''keydown.p94keyevents'', (ev) => {',
'        ',
'        var key = ev.key?.toLowerCase();',
'        if (p94KeyMap[key]) {',
'            ev.preventDefault();',
'            p94KeyMap[key]();',
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
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP94Keys();',
'',
'let fromValue = $v("P94_FROM");',
'setTitle(`${fromValue === "A" ? "Add Convert Item A to Item B" : "Update Convert Item A to Item B"}`);',
'',
'let isDialogOpen = false;',
'',
'document.addEventListener(''focusin'', function (event) {',
'    let popupLovDialog = event.target.closest(''.ui-dialog.ui-dialog-popuplov'');',
'    if (popupLovDialog && getComputedStyle(popupLovDialog).display !== ''none'') {',
'        isDialogOpen = true;',
'    }',
'});',
'',
'document.addEventListener(''focusout'', function (event) {',
'    let allDialogs = document.querySelectorAll(''.ui-dialog.ui-dialog-popuplov'');',
'    let anyDialogOpen = Array.from(allDialogs).some(dialog => getComputedStyle(dialog).display !== ''none'');',
'',
'    isDialogOpen = anyDialogOpen;',
'});',
'',
'$(document).ready(function() { ',
'    $("#P94_TO_UOM, #P94_NOTE").on("keydown", function(event) {',
'        if($v("P94_FROM") === "A") {',
'            if (event.key === "Enter" || event.keyCode === 13) {',
'                if(isDialogOpen) {',
'                    event.preventDefault();',
'                    return;',
'                }',
'                $.event.trigger(''submit'');',
'            }',
'        }',
'    });',
'',
'    $(document).on("keydown", function(event) {',
'        if($v("P94_FROM") === "U") {',
'            if (event.key === "Enter" || event.keyCode === 13) {',
'                if(isDialogOpen) {',
'                    event.preventDefault();',
'                    return;',
'                }',
'                $.event.trigger(''submit'');',
'            }',
'        }',
'    });',
'',
'    $("#P94_ITEM_FROM").on("keydown", function(event) {',
'        if (event.key === "Tab") {',
'            if(!event.shiftKey) {',
'                $.event.trigger(''item-from'');',
'                event.preventDefault();',
'            }',
'        }',
'    });',
'',
'    $("#P94_ITEM_TO").on("keydown", function(event) {',
'        if (event.key === "Tab") {',
'            if(!event.shiftKey) {',
'                $.event.trigger(''item-to'');',
'                event.preventDefault();',
'            }',
'        }',
'    });',
'});'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.hide {',
'    display: none;',
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
'.form-container label,',
'.form-container input,',
'.t-Region-title {',
'    font-size: 1.125rem;',
'}',
'',
'.t-Form-labelContainer #P94_RECORD_NUM_LABEL,',
'.t-Form-labelContainer #P94_WHS_LOCATION_LABEL, ',
'.t-Form-labelContainer #P94_ITEM_FROM_LABEL, ',
'.t-Form-labelContainer #P94_ITEM_TO_LABEL,',
'.t-Form-labelContainer #P94_NOTE_LABEL,',
'.t-Form-labelContainer #P94_INVOICE_NO_LABEL,',
'.t-Form-labelContainer #P94_CUSTOMER_NAME_LABEL  {',
'    display: flex;',
'    align-items: start;',
'}',
'',
'.t-Form-labelContainer .t-Form-label::before {',
'    content: "" !important;',
'}',
'',
'.ui-dialog-titlebar {',
'    display: none !important;',
'}',
'',
'.ui-dialog-content {',
'    overflow: hidden;',
'}',
'',
'.ui-dialog.ui-corner-all:has(#item-table) {',
'    height: 37rem !important;',
'    width: 50rem !important;',
'}',
'',
'.ui-dialog:not(.ui-corner-all) {',
'    border-radius: 0 !important;',
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
'#item-table {',
'    border-radius: 12px;',
'    background-color: #056AC8 !important;',
'}',
'',
'#item-table table,',
'#item-table tr,',
'#item-table th {',
'    font-size: 1rem;',
'}',
'',
'#item-table td {',
'    font-size: 1.125rem;',
'}',
'',
'#item-table .a-GV-table {',
'    width: 100% !important;',
'}',
'',
'#item-table .a-GV-table colgroup col:nth-child(1) {',
'    width: 7rem;',
'}',
'',
'#item-table .a-GV-table colgroup col:nth-child(2) {',
'    width: 15rem;',
'}',
'',
'#item-table .a-GV-table colgroup col:nth-child(3) {',
'    width: 6rem;',
'}'))
,p_step_template=>wwv_flow_imp.id(5671392681337017)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(32049483135460431)
,p_plug_name=>'Conversion Form'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody:margin-top-lg:margin-bottom-none'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>20
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(37837261168283646)
,p_plug_name=>'Help on Item Masterfile'
,p_region_name=>'item-table'
,p_region_css_classes=>'item-table'
,p_region_template_options=>'#DEFAULT#:js-dialog-nosize'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_04'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    nit001.item_num,',
'    nit001.item_id,',
'    nit001.item_desc,',
'    nim022.brand_name',
'FROM',
'    NIT001 nit001',
'JOIN',
'    NIM022 nim022 ON nit001.brand_id = nim022.brand_id',
'WHERE',
'    (:P94_ITEM = ''FROM'' AND UPPER(nit001.item_num) LIKE ''%'' || UPPER(:P94_ITEM_FROM) || ''%'')',
'    OR',
'    (:P94_ITEM = ''TO'' AND UPPER(nit001.item_num) LIKE ''%'' || UPPER(:P94_ITEM_TO) || ''%'');'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P94_ITEM,P94_ITEM_FROM,P94_ITEM_TO'
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
 p_id=>wwv_flow_imp.id(40828734324330223)
,p_name=>'ITEM_NUM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEM_NUM'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Item Number'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(40828877105330224)
,p_name=>'ITEM_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEM_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>20
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
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(40828960694330225)
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
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(40829007431330226)
,p_name=>'BRAND_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BRAND_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Brand Name'
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(39852701820059204)
,p_internal_uid=>39852701820059204
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
 p_id=>wwv_flow_imp.id(39869432598186893)
,p_interactive_grid_id=>wwv_flow_imp.id(39852701820059204)
,p_static_id=>'398695'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(39869646796186896)
,p_report_id=>wwv_flow_imp.id(39869432598186893)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(41863040928397795)
,p_view_id=>wwv_flow_imp.id(39869646796186896)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(40828734324330223)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(41863935981397804)
,p_view_id=>wwv_flow_imp.id(39869646796186896)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(40828877105330224)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(41864804756397810)
,p_view_id=>wwv_flow_imp.id(39869646796186896)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(40828960694330225)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(41865737540397818)
,p_view_id=>wwv_flow_imp.id(39869646796186896)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(40829007431330226)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33270295960145350)
,p_button_sequence=>40
,p_button_name=>'EXIT'
,p_button_static_id=>'exit'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Exit'
,p_button_redirect_url=>'f?p=&APP_ID.:91:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'hide'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(40134549348196218)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(37837261168283646)
,p_button_name=>'Home'
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
 p_id=>wwv_flow_imp.id(40134648035196219)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(37837261168283646)
,p_button_name=>'End'
,p_button_static_id=>'end'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'End'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'hide'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32049563732460432)
,p_name=>'P94_RECORD_NUM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(32049483135460431)
,p_prompt=>'Conversion Record Number:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge:margin-top-md:t-Form-fieldContainer--normalDisplay'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32049636610460433)
,p_name=>'P94_PROCESS_DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(32049483135460431)
,p_prompt=>'Processing Date'
,p_placeholder=>'MM/DD/YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_column=>9
,p_field_template=>wwv_flow_imp.id(15621067564319309)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge:margin-top-md'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32049702474460434)
,p_name=>'P94_WHS_LOCATION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(32049483135460431)
,p_prompt=>'Warehouse Location'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'SELECT warehouse_location as d, warehouse_id as r FROM NIM027'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(15621067564319309)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32049888398460435)
,p_name=>'P94_ITEM_FROM'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(32049483135460431)
,p_prompt=>'Item From'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(15621067564319309)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32049909095460436)
,p_name=>'P94_FROM_NUM_UNITS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(32049483135460431)
,p_prompt=>'Number of Units'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(15621067564319309)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32050005461460437)
,p_name=>'P94_FROM_UOM'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(32049483135460431)
,p_prompt=>'UOM'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    uom_code as d, uom_id as r',
'FROM',
'    NIM026',
'WHERE',
'    uom_id IN (SELECT nit002.uom_id FROM NIT002 nit002 WHERE nit002.item_id = :P94_ITEM_FROM_ID)'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P94_ITEM_FROM_ID'
,p_ajax_items_to_submit=>'P94_ITEM_FROM_ID'
,p_ajax_optimize_refresh=>'N'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(15621067564319309)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32050161677460438)
,p_name=>'P94_ITEM_TO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(32049483135460431)
,p_prompt=>'Item To'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(15621067564319309)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32050273095460439)
,p_name=>'P94_TO_NUM_UNITS'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(32049483135460431)
,p_prompt=>'Number of Units'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(15621067564319309)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32050343213460440)
,p_name=>'P94_TO_UOM'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(32049483135460431)
,p_prompt=>'UOM'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    uom_code as d, uom_id as r',
'FROM',
'    NIM026',
'WHERE',
'    uom_id IN (SELECT nit002.uom_id FROM NIT002 nit002 WHERE nit002.item_id = :P94_ITEM_TO_ID)'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P94_ITEM_TO_ID'
,p_ajax_items_to_submit=>'P94_ITEM_TO_ID'
,p_ajax_optimize_refresh=>'N'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(15621067564319309)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32050436983460441)
,p_name=>'P94_NOTE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(32049483135460431)
,p_prompt=>'Note'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39852406525059201)
,p_name=>'P94_ITEM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(37837261168283646)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39853960216059216)
,p_name=>'P94_ITEM_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(37837261168283646)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39855310392059230)
,p_name=>'P94_ITEM_NUM'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(37837261168283646)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39855472609059231)
,p_name=>'P94_ITEM_FROM_ID'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(32049483135460431)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39855560896059232)
,p_name=>'P94_ITEM_TO_ID'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(32049483135460431)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39856064364059237)
,p_name=>'P94_FROM'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(32049483135460431)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40137698730196249)
,p_name=>'P94_URL'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(32049483135460431)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42173839128532438)
,p_name=>'P94_INVOICE_NO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(32049483135460431)
,p_prompt=>'Invoice Number'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>4
,p_display_when=>'P94_FROM'
,p_display_when2=>'U'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42173980057532439)
,p_name=>'P94_INVOICE_DATE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(32049483135460431)
,p_prompt=>'Invoice Date'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_display_when=>'P94_FROM'
,p_display_when2=>'U'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42174078328532440)
,p_name=>'P94_CUSTOMER_NAME'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(32049483135460431)
,p_prompt=>'Customer Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>8
,p_display_when=>'P94_FROM'
,p_display_when2=>'U'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge:margin-bottom-md'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37837318874283647)
,p_name=>'Open Item Masterfile - From'
,p_event_sequence=>10
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_condition_element=>'P94_ITEM_FROM'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'item-from'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39852536351059202)
,p_event_id=>wwv_flow_imp.id(37837318874283647)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P94_ITEM'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'FROM'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39853316935059210)
,p_event_id=>wwv_flow_imp.id(37837318874283647)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#item-table").dialog({',
'  position: { my: "right top", at: "right-40 top+90", of: window }',
'});'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37837495124283648)
,p_event_id=>wwv_flow_imp.id(37837318874283647)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(37837261168283646)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39853150351059208)
,p_event_id=>wwv_flow_imp.id(37837318874283647)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(37837261168283646)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39853567499059212)
,p_event_id=>wwv_flow_imp.id(37837318874283647)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(() => {',
'    $( document ).ready(function() {',
'        $("#item-table .a-GV-cell").first().trigger("click");',
'    });',
'}, 500);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37837512465283649)
,p_name=>'Open Item Masterfile - To'
,p_event_sequence=>20
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_condition_element=>'P94_ITEM_TO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'item-to'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39852664984059203)
,p_event_id=>wwv_flow_imp.id(37837512465283649)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P94_ITEM'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'TO'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39853484869059211)
,p_event_id=>wwv_flow_imp.id(37837512465283649)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#item-table").dialog({',
'  position: { my: "right", at: "right-20", of: window }',
'});'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37837687714283650)
,p_event_id=>wwv_flow_imp.id(37837512465283649)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(37837261168283646)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39853255474059209)
,p_event_id=>wwv_flow_imp.id(37837512465283649)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(37837261168283646)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39854347051059220)
,p_event_id=>wwv_flow_imp.id(37837512465283649)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(() => {',
'    $( document ).ready(function() {',
'        $("#item-table .a-GV-cell").first().trigger("click");',
'    });',
'}, 500);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39853673532059213)
,p_name=>'Selection Change'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(37837261168283646)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39853720890059214)
,p_event_id=>wwv_flow_imp.id(39853673532059213)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var itemIdSelected;',
'var itemNumSelected;',
'if(this.data != null){',
'    if(this.data.selectedRecords[0] != null){',
'        itemIdSelected = this.data.model.getValue(this.data.selectedRecords[0], "ITEM_ID");',
'        itemNumSelected = this.data.model.getValue(this.data.selectedRecords[0], "ITEM_NUM");',
'    }',
'}',
'apex.item("P94_ITEM_ID").setValue(itemIdSelected);',
'apex.item("P94_ITEM_NUM").setValue(itemNumSelected);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39854003214059217)
,p_name=>'Pass Value'
,p_event_sequence=>40
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'passvalue'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39854142192059218)
,p_event_id=>wwv_flow_imp.id(39854003214059217)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if($v("P94_ITEM") === "FROM") {',
'    apex.item("P94_ITEM_FROM").setValue($v("P94_ITEM_NUM"));',
'    apex.item("P94_ITEM_FROM_ID").setValue($v("P94_ITEM_ID"));',
'} else if($v("P94_ITEM") === "TO") {',
'    apex.item("P94_ITEM_TO").setValue($v("P94_ITEM_NUM"));',
'    apex.item("P94_ITEM_TO_ID").setValue($v("P94_ITEM_ID"));',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39854247359059219)
,p_event_id=>wwv_flow_imp.id(39854003214059217)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(37837261168283646)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39854452640059221)
,p_event_id=>wwv_flow_imp.id(39854003214059217)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P94_FROM_NUM_UNITS'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P94_ITEM'
,p_client_condition_expression=>'FROM'
,p_build_option_id=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39854570867059222)
,p_event_id=>wwv_flow_imp.id(39854003214059217)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P94_TO_NUM_UNITS'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P94_ITEM'
,p_client_condition_expression=>'TO'
,p_build_option_id=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39856486683059241)
,p_event_id=>wwv_flow_imp.id(39854003214059217)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if($v("P94_ITEM") === "FROM") {',
'    apex.item("P94_FROM_NUM_UNITS").setFocus();',
'} else if($v("P94_ITEM") === "TO") {',
'    apex.item("P94_TO_NUM_UNITS").setFocus();',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39854644087059223)
,p_name=>'Close Item Masterfile'
,p_event_sequence=>50
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'closeItemMasterfile'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39854749756059224)
,p_event_id=>wwv_flow_imp.id(39854644087059223)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(37837261168283646)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39854836416059225)
,p_name=>'Submit'
,p_event_sequence=>60
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>wwv_flow_string.join(wwv_flow_t_varchar2(
'document',
''))
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'submit'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39855061536059227)
,p_event_id=>wwv_flow_imp.id(39854836416059225)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var processDate = $v(''P94_PROCESS_DATE'');',
'var whsLoc = $v(''P94_WHS_LOCATION'');',
'var itemFrom = $v(''P94_ITEM_FROM'');',
'var fromNoUnits = $v(''P94_FROM_NUM_UNITS'');',
'var fromUOM = $v(''P94_FROM_UOM'');',
'var itemTo = $v(''P94_ITEM_TO'');',
'var toNoUnits = $v(''P94_TO_NUM_UNITS'');',
'var toUOM = $v(''P94_TO_UOM'');',
'var note = $v(''P94_NOTE'');',
'var invoiceNo = $v(''P94_INVOICE_NO'');',
'var invoiceDate = $v(''P94_INVOICE_DATE'');',
'var customerName = $v(''P94_CUSTOMER_NAME'');',
'apex.message.clearErrors();',
'var hasErrors = false;',
'var numRegex = /^[0-9]+$/;',
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
'    return (date.getFullYear() === year && date.getMonth() === (month - 1) && date.getDate() === day);',
'}',
'if (processDate == "") {',
'    apex.message.showErrors([{type: "error",location: ["inline"],pageItem: "P94_PROCESS_DATE",message: "Processing Date cannot be empty",unsafe: false}])',
'    hasErrors = true;',
'} else if (!isDateValid(processDate)) {',
'    apex.message.showErrors([{type: "error",location: ["inline"],pageItem: "P94_PROCESS_DATE",message: "Please Enter a valid date",unsafe: false}])',
'    hasErrors = true;',
'}',
'if (whsLoc == "") {',
'    apex.message.showErrors([{type: "error",location: ["inline"],pageItem: "P94_WHS_LOCATION",message: "Warehouse Location cannot be empty",unsafe: false}])',
'    hasErrors = true;',
'}',
'if (itemFrom == "") {',
'    apex.message.showErrors([{type: "error",location: ["inline"],pageItem: "P94_ITEM_FROM",message: "Item From cannot be empty",unsafe: false}])',
'    hasErrors = true;',
'}',
'if (fromNoUnits == "") {',
'    apex.message.showErrors([{type: "error",location: ["inline"],pageItem: "P94_FROM_NUM_UNITS",message: "Number of units cannot be empty",unsafe: false}])',
'    hasErrors = true;',
'} else if (!numRegex.test(fromNoUnits)) {',
'    apex.message.showErrors([{type: "error",location: ["inline"], pageItem: "P94_FROM_NUM_UNITS", message: "Number of units must be a number",unsafe: false',
'    }])',
'    hasErrors = true;',
'}',
'if (fromUOM == "") {',
'    apex.message.showErrors([{type: "error",location: ["inline"],pageItem: "P94_FROM_UOM",message: "UOM cannot be empty",unsafe: false',
'    }])',
'    hasErrors = true;',
'}',
'if (itemTo == "") {',
'    apex.message.showErrors([{type: "error",location: ["inline"],pageItem: "P94_ITEM_TO",message: "Item To cannot be empty",unsafe: false',
'    }])',
'    hasErrors = true;',
'}',
'if (toNoUnits == "") {',
'    apex.message.showErrors([{type: "error",location: ["inline"],pageItem: "P94_TO_NUM_UNITS",message: "Number of units cannot be empty",unsafe: false',
'    }])',
'    hasErrors = true;',
'}',
'if (toUOM == "") {',
'    apex.message.showErrors([{type: "error",location: ["inline"],pageItem: "P94_TO_UOM",message: "UOM cannot be empty",unsafe: false',
'    }])',
'    hasErrors = true;',
'}',
'if (note.length > 40) {',
'    apex.message.showErrors([{type: "error",location: ["inline"],pageItem: "P94_NOTE",message: "Note cannot exceed 40 characters",unsafe: false',
'    }])',
'    hasErrors = true;',
'}',
'if (invoiceNo.length > 9) {',
'    apex.message.showErrors([{type: "error",location: ["inline"],pageItem: "P94_INVOICE_NO",message: "Invoice Number cannot exceed 9 characters",unsafe: false',
'    }])',
'    hasErrors = true;',
'}',
'if (!isDateValid(invoiceDate) && invoiceDate !== "") {',
'    apex.message.showErrors([{type: "error",location: ["inline"],pageItem: "P94_INVOICE_DATE",message: "Please enter a valid date",unsafe: false',
'    }])',
'    hasErrors = true;',
'}',
'if (customerName.length > 40) {',
'    apex.message.showErrors([{type: "error",location: ["inline"],pageItem: "P94_CUSTOMER_NAME",message: "Customer Name cannot exceed 40 characters",unsafe: false',
'    }])',
'    hasErrors = true;',
'}',
'if (hasErrors) {',
'    return false;',
'}',
'',
'apex.message.clearErrors();',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39856339582059240)
,p_event_id=>wwv_flow_imp.id(39854836416059225)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P94_FROM = ''A'' THEN',
'        INSERT INTO NIT020(convert_id, processing_date, warehouse_id, from_item_id, from_no_of_units, from_uom_id,',
'                           to_item_id, to_no_of_units, to_uom_id, notes, create_user, create_date)',
'                    VALUES(:P94_RECORD_NUM, :P94_PROCESS_DATE, :P94_WHS_LOCATION, :P94_ITEM_FROM_ID, :P94_FROM_NUM_UNITS,',
'                           :P94_FROM_UOM, :P94_ITEM_TO_ID, :P94_TO_NUM_UNITS, :P94_TO_UOM, :P94_NOTE,',
'                           V(''APP_USER''), SYSDATE);',
'        :P94_URL := apex_page.get_url(',
'           p_page   => 91,',
'           p_items  => ''P91_CONVERT_ID_F,P91_FROM'',',
'           p_values => :P94_RECORD_NUM || '','' || :P94_FROM',
'        );',
'    ELSIF :P94_FROM = ''U'' THEN',
'        UPDATE',
'            NIT020',
'        SET',
'            processing_date = :P94_PROCESS_DATE,',
'            warehouse_id = :P94_WHS_LOCATION,',
'            from_item_id = :P94_ITEM_FROM_ID,',
'            from_no_of_units = :P94_FROM_NUM_UNITS,',
'            from_uom_id = :P94_FROM_UOM,',
'            to_item_id = :P94_ITEM_TO_ID,',
'            to_no_of_units = :P94_TO_NUM_UNITS,',
'            to_uom_id = :P94_TO_UOM,',
'            notes = :P94_NOTE,',
'            update_user = V(''APP_USER''),',
'            update_date = SYSDATE,',
'            invoice_number = :P94_INVOICE_NO,',
'            invoice_date = :P94_INVOICE_DATE,',
'            customer_name = :P94_CUSTOMER_NAME',
'        WHERE',
'            CONVERT_ID = :P94_RECORD_NUM;',
'        :P94_URL := apex_page.get_url(',
'           p_page   => 91,',
'           p_items  => ''P91_CONVERT_ID_F,P91_FROM'',',
'           p_values => :P94_RECORD_NUM || '','' || :P94_FROM',
'        );',
'    END IF;',
'END;'))
,p_attribute_02=>'P94_RECORD_NUM,P94_FROM,P94_PROCESS_DATE,P94_WHS_LOCATION,P94_ITEM_FROM_ID,P94_FROM_NUM_UNITS,P94_FROM_UOM,P94_ITEM_TO_ID,P94_TO_NUM_UNITS,P94_TO_UOM,P94_NOTE,P94_INVOICE_NO,P94_INVOICE_DATE,P94_CUSTOMER_NAME'
,p_attribute_03=>'P94_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40137789807196250)
,p_event_id=>wwv_flow_imp.id(39854836416059225)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P94_URL");',
'apex.navigation.redirect(url);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39856161078059238)
,p_name=>'Set CRN'
,p_event_sequence=>70
,p_condition_element=>'P94_FROM'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'A'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39856200418059239)
,p_event_id=>wwv_flow_imp.id(39856161078059238)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_current_year VARCHAR2(4);',
'    v_sequence VARCHAR2(3);',
'BEGIN',
'    v_current_year := TO_CHAR(SYSDATE, ''YYYY'');',
'',
'    SELECT LPAD(NVL(MAX(TO_NUMBER(SUBSTR(convert_id, 6, 3))), 0) + 1, 3, ''0'')',
'    INTO v_sequence',
'    FROM NIT020',
'    WHERE SUBSTR(convert_id, 1, 4) = v_current_year;',
'',
'    :P94_RECORD_NUM := v_current_year || ''-'' || v_sequence;',
'END;'))
,p_attribute_03=>'P94_RECORD_NUM'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(40133757935196210)
,p_name=>'Set Update Values'
,p_event_sequence=>80
,p_condition_element=>'P94_FROM'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'U'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40133891797196211)
,p_event_id=>wwv_flow_imp.id(40133757935196210)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_convert_id NIT020.convert_id%TYPE;',
'    v_process_date NIT020.processing_date%TYPE;',
'    v_whs_location NIT020.warehouse_id%TYPE;',
'    v_item_from_id NIT020.from_item_id%TYPE;',
'    v_from_num_of_units NIT020.from_no_of_units%TYPE;',
'    v_from_uom_id NIT020.from_uom_id%TYPE;',
'    v_item_to_id NIT020.to_item_id%TYPE;',
'    v_to_num_of_units NIT020.to_no_of_units%TYPE;',
'    v_to_uom_id NIT020.to_uom_id%TYPE;',
'    v_note NIT020.notes%TYPE;',
'    v_item_from NIT001.item_num%TYPE;',
'    v_item_to NIT001.item_num%TYPE;',
'    v_from_uom NIM026.uom_code%TYPE;',
'    v_to_uom NIM026.uom_code%TYPE;',
'    v_invoice_number NIT020.invoice_number%TYPE;',
'    v_invoice_date NIT020.invoice_date%TYPE;',
'    v_customer_name NIT020.customer_name%TYPE;',
'BEGIN',
'    SELECT processing_date, warehouse_id, from_item_id, from_no_of_units, from_uom_id, to_item_id, to_no_of_units,',
'           to_uom_id, notes, invoice_number, invoice_date, customer_name',
'    INTO v_process_date, v_whs_location, v_item_from_id, v_from_num_of_units, v_from_uom_id, v_item_to_id, v_to_num_of_units,',
'         v_to_uom_id, v_note, v_invoice_number, v_invoice_date, v_customer_name',
'    FROM NIT020',
'    WHERE convert_id = :P94_RECORD_NUM;',
'',
'    :P94_PROCESS_DATE := TO_CHAR(v_process_date, ''MM/DD/YYYY'');',
'    :P94_WHS_LOCATION := v_whs_location;',
'    :P94_ITEM_FROM_ID := v_item_from_id;',
'    :P94_FROM_NUM_UNITS := v_from_num_of_units;',
'    :P94_FROM_UOM := v_from_uom_id;',
'    :P94_ITEM_TO_ID := v_item_to_id;',
'    :P94_TO_NUM_UNITS := v_to_num_of_units;',
'    :P94_TO_UOM := v_to_uom_id;',
'    :P94_NOTE := v_note;',
'    :P94_INVOICE_NO := v_invoice_number;',
'    :P94_INVOICE_DATE := v_invoice_date;',
'    :P94_CUSTOMER_NAME := v_customer_name;',
'',
'    SELECT item_num',
'    INTO v_item_from',
'    FROM NIT001',
'    WHERE item_id = :P94_ITEM_FROM_ID;',
'',
'    :P94_ITEM_FROM := v_item_from;',
'',
'    SELECT item_num',
'    INTO v_item_to',
'    FROM NIT001',
'    WHERE item_id = :P94_ITEM_TO_ID;',
'',
'    :P94_ITEM_TO := v_item_to;',
'END;'))
,p_attribute_02=>'P94_ITEM_FROM_ID,P94_ITEM_TO_ID,P94_RECORD_NUM'
,p_attribute_03=>'P94_PROCESS_DATE,P94_WHS_LOCATION,P94_ITEM_FROM_ID,P94_ITEM_FROM,P94_FROM_NUM_UNITS,P94_FROM_UOM,P94_ITEM_TO_ID,P94_ITEM_TO,P94_TO_NUM_UNITS,P94_TO_UOM,P94_NOTE,P94_INVOICE_NO,P94_INVOICE_DATE,P94_CUSTOMER_NAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(40134766308196220)
,p_name=>'Go to Top'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(40134549348196218)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40134821653196221)
,p_event_id=>wwv_flow_imp.id(40134766308196220)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'selectFirstRow();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(40134913298196222)
,p_name=>'Go to Bottom'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(40134648035196219)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40135015215196223)
,p_event_id=>wwv_flow_imp.id(40134913298196222)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'selectLastRow();'
);
wwv_flow_imp.component_end;
end;
/
