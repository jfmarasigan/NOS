prompt --application/pages/page_00320
begin
--   Manifest
--     PAGE: 00320
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
 p_id=>320
,p_name=>'Statement Of Account'
,p_alias=>'STATEMENT-OF-ACCOUNT'
,p_step_title=>'Statement Of Account'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#js/cmn#MIN#.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p320KeyMap = {',
'    d : (v) => {',
'        $("#d").trigger("click");',
'    },',
'    p : (v) => {',
'        $("#p").trigger("click");',
'    },',
'    e : (v) => {',
'        $("#e").trigger("click");',
'    },',
'    escape : (v) => {',
'        if(!($("#printingOptions").is('':visible'') || $("#exportOptions").is('':visible''))){',
'            $.event.trigger("exit");',
'        }',
'    },',
'    home : (v) => {',
'        $("#home").trigger("click");',
'    },',
'    ',
'    end : (v) => {',
'        $("#end").trigger("click");',
'    },',
'',
'    a : (v) => {',
'        if($("#printingOptions").is('':visible'')){',
'            $("#a").trigger("click");',
'        } else if($("#exportOptions").is('':visible'')){',
'            $("#a2").trigger("click");',
'        }',
'    },',
'',
'    b : (v) => {',
'        if($("#printingOptions").is('':visible'')){',
'            $("#b").trigger("click");',
'        } else if($("#exportOptions").is('':visible'')){',
'            $("#b2").trigger("click");',
'        }',
'    },',
'    ',
'}',
'',
'function mapP320Keys() {',
'    $(document).off(''keydown.p320keyevents'');',
'    $(document).on(''keydown.p320keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p320KeyMap[key]) {',
'            ev.preventDefault();',
'            p320KeyMap[key]();',
'        }',
'    });',
'}',
'',
'function selectFirstRow() {',
'    let region = apex.region("soa")',
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
'    let region = apex.region("soa")',
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
'setTitle("Statement of Account")',
'',
'// to pop search modal upon loading page',
'$("#s").trigger("click");'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#home, #end{',
'    display: none;',
'}',
'',
'.ui-dialog-titlebar-close{',
'    display: none;',
'}',
'',
'#printingOptions, #exportOptions, #a, #b , #a2, #b2{',
'    padding-top: 0;',
'    background-color: #056AC8;',
'    color: white;',
'}',
'',
'#a, #b, #a2, #b2{',
'    outline: none;',
'}',
'',
'.ui-dialog-titlebar{',
'    padding-bottom: 0;',
'    background-color: #056AC8;',
'    color: white;',
'    border-bottom: 0;',
'}',
'',
'.ui-dialog-title{',
'    font-size: 1.5rem;',
'    padding-bottom: 0.2rem;',
'}',
'',
'.t-Header .t-Header-branding {',
'    background-color: white !important;',
'    color: rgb(30, 58, 138) !important;',
'}',
'',
'.apex-item-display-only{',
'    text-align: right!important;',
'}',
'',
'.format-size{',
'    color: white;',
'    font-size: 1.125rem;',
'}',
'',
'.input-size{',
'    color: black;',
'    font-size: 1.125rem;',
'}',
'',
'.breakdown{',
'    text-align: end!important;',
'}',
'table{',
'    width: 100%!important;',
'}',
'',
'body {',
'    background-color: rgb(30, 58, 138);',
'}',
'',
'#table > table, tr, th {',
'    font-size: 1.125rem;',
'}',
'',
'#table > td {',
'    font-size: 1.125rem;',
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
'.buttons-row {',
'    position: absolute;',
'    width: 95vw;',
'    bottom: 1.75rem;',
'}',
'',
'#table .a-IG {',
'    height: calc(60vh + 2px) !important;',
'} ',
'',
'#table .a-IG-contentContainer {',
'    height: 60vh !important;',
'}',
'',
'#table .a-IG-gridView.a-GV {',
'    height: 60vh !important;',
'}',
'',
'#table .a-GV-bdy {',
'    height: calc(60vh - 2.5625rem) !important;',
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
'.mt-3 {',
'    margin-top: 3rem;',
'}',
'',
'.ms-1 {',
'    margin-left: .5rem;',
'}',
'',
'.ml-25 {',
'    margin-left: 2.5rem;',
'}',
'',
'.ml-3 {',
'    margin-left: 3rem;',
'}',
'',
'.pl-05 {',
'    padding-left: 0.5rem;',
'}',
'',
'.pl-2 {',
'    padding-left: 2rem;',
'}',
'',
'.text-white {',
'    color: white;',
'}',
'',
'.label-font-size {',
'    font-size: 1.125rem;',
'}',
'',
'.border-top {',
'    border-top: solid 1px white;',
'}',
'',
'.t-Form-inputContainer {',
'    padding-block-end: var(--ut-field-padding-y, .3rem);',
'    padding-block-start: var(--ut-field-padding-y, .3rem);',
'}',
'',
'#s {',
'    display: none;',
'}'))
,p_step_template=>wwv_flow_imp.id(5671392681337017)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19492908990090516)
,p_plug_name=>'Details'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--hiddenOverflow:t-Form--leftLabels:margin-top-sm:margin-left-lg'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>10
,p_plug_display_column=>2
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19493352760090520)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>70
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(24891495021707357)
,p_plug_name=>'Statement Of Account'
,p_region_name=>'soa'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>40
,p_plug_grid_column_span=>7
,p_plug_display_column=>2
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    DATE_CREATED,',
'    INVOICE_ID,',
'    TOTAL_AMOUNT,',
'    OUTSTANDING_BALANCE',
'FROM',
'    NPT001',
'WHERE',
'    CUSTOMER_ID = (SELECT CUSTOMER_ID FROM NPT009 WHERE LOWER(DBA) = LOWER(:P320_DBA)) AND',
'    OUTSTANDING_BALANCE > 0'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P320_DBA'
,p_prn_page_header=>'Statement Of Account'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28549076433120010)
,p_name=>'INVOICE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INVOICE_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Invoice Number'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28550077937120020)
,p_name=>'DATE_CREATED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DATE_CREATED'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Invoice Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>150
,p_value_alignment=>'LEFT'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
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
 p_id=>wwv_flow_imp.id(35459720911234029)
,p_name=>'TOTAL_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOTAL_AMOUNT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Total Amount'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>170
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43923903726603242)
,p_name=>'OUTSTANDING_BALANCE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OUTSTANDING_BALANCE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Outstanding Balance'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>180
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(24891945032707360)
,p_internal_uid=>24891945032707360
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
,p_fixed_header_max_height=>525
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
'        resizeColumns: true,',
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
 p_id=>wwv_flow_imp.id(24892363332707360)
,p_interactive_grid_id=>wwv_flow_imp.id(24891945032707360)
,p_static_id=>'248924'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(24892563716707360)
,p_report_id=>wwv_flow_imp.id(24892363332707360)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(28874798188960089)
,p_view_id=>wwv_flow_imp.id(24892563716707360)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(28549076433120010)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(28876588001960101)
,p_view_id=>wwv_flow_imp.id(24892563716707360)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(28550077937120020)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(38238484306747789)
,p_view_id=>wwv_flow_imp.id(24892563716707360)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(35459720911234029)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(45268578608764437)
,p_view_id=>wwv_flow_imp.id(24892563716707360)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(43923903726603242)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26312156911216501)
,p_plug_name=>'Payment Terms'
,p_region_name=>'terms'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody:t-Form--leftLabels'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>3
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(45275724771848207)
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
 p_id=>wwv_flow_imp.id(28550475531120024)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(19493352760090520)
,p_button_name=>'Change'
,p_button_static_id=>'d'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>D</u> - Change DBA'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_column_css_classes=>'pl-2'
,p_grid_new_row=>'Y'
,p_grid_column_span=>2
,p_grid_column=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(45275898700848208)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(45275724771848207)
,p_button_name=>'Dotmatrix'
,p_button_static_id=>'a'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>A</u> - Dotmatrix'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(28550597091120025)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(19493352760090520)
,p_button_name=>'Export'
,p_button_static_id=>'e'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>E</u> - Export as Excel'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_column_css_classes=>'ms-1 '
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19493596311090522)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(19493352760090520)
,p_button_name=>'Print'
,p_button_static_id=>'p'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>P</u> - Print SOA'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_column_span=>2
,p_grid_column=>10
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(45275948760848209)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(45275724771848207)
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
 p_id=>wwv_flow_imp.id(45275154964848201)
,p_button_sequence=>80
,p_button_name=>'End'
,p_button_static_id=>'end'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'end'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(43924764531603250)
,p_button_sequence=>90
,p_button_name=>'Home'
,p_button_static_id=>'home'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'home'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19493019652090517)
,p_name=>'P320_LEGAL_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(19492908990090516)
,p_use_cache_before_default=>'NO'
,p_source=>'SELECT LEGAL_NAME FROM NPT009 WHERE lower(DBA) = lower(:P320_DBA)'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19493144007090518)
,p_name=>'P320_PAYMENT_TERMS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(26312156911216501)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<span class="label-font-size text-white">Payment Terms: </span>'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    PAYMENT_TERMS_NAME',
'FROM ',
'    NPM006',
'WHERE',
'    PAYMENT_TERMS_ID = (SELECT PAYMENT_TERMS_ID FROM NPT009 WHERE LOWER(DBA) = LOWER(:P320_DBA))'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'format-size'
,p_grid_label_column_span=>6
,p_grid_column_css_classes=>'ml-25'
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_css_classes=>'right'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--preTextBlock:t-Form-fieldContainer--postTextBlock:t-Form-fieldContainer--normalDisplay'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19493297809090519)
,p_name=>'P320_DBA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(19492908990090516)
,p_item_default=>'NULL'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'<span class="label-font-size text-white">DBA: </span>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'input-size'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26312284291216502)
,p_name=>'P320_TOTAL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(26312156911216501)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0.00'
,p_prompt=>'<span class="label-font-size text-white"> TOTAL: </span>'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P320_CURRENT + :P320_FIRST_LINE + :P320_SECOND_LINE + :P320_THIRD_LINE = 0 THEN',
'        RETURN 0;',
'    ELSE',
'        RETURN TO_CHAR(:P320_CURRENT + :P320_FIRST_LINE + :P320_SECOND_LINE + :P320_THIRD_LINE, ''999999.99'');',
'    END IF;',
'END;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'format-size'
,p_grid_label_column_span=>6
,p_grid_column_css_classes=>'border-top ml-3 pl-05'
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_css_classes=>'right'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--preTextBlock:t-Form-fieldContainer--postTextBlock:t-Form-fieldContainer--normalDisplay'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26312307441216503)
,p_name=>'P320_THIRD_LINE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(26312156911216501)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0.00'
,p_prompt=>'<span class="label-font-size text-white"> 61 & over: </span>'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_term_id NUMBER;',
'    v_additional NUMBER;',
'    v_sum NUMBER;',
'BEGIN',
'    SELECT payment_terms_id INTO v_term_id FROM NPT009 WHERE LOWER(dba) = LOWER(:P320_DBA);',
'    SELECT AMOUNT INTO v_additional FROM NPM006 WHERE PAYMENT_TERMS_ID = v_term_id;',
'    SELECT',
'        SUM(npt1.OUTSTANDING_BALANCE)',
'    INTO',
'        v_sum',
'    FROM',
'        NPT001 npt1,',
'        NPM006 npm6',
'    WHERE',
'        npt1.CUSTOMER_ID = :P320_CUSTOMER_ID AND',
'        npm6.PAYMENT_TERMS_ID = v_term_id AND',
'        npt1.DATE_CREATED + npm6.DAYS < TO_DATE(:P320_AS_OF_DATE) AND',
'        TO_DATE(:P320_AS_OF_DATE) - (npt1.DATE_CREATED + npm6.DAYS) >= 61;',
'    RETURN TO_CHAR(-v_sum, ''999999.99'');',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        RETURN ''0.00'';',
'END;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'format-size'
,p_grid_label_column_span=>6
,p_grid_column_css_classes=>'ml-3 pl-05'
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_css_classes=>'right'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--preTextBlock:t-Form-fieldContainer--postTextBlock:t-Form-fieldContainer--normalDisplay'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26312481831216504)
,p_name=>'P320_SECOND_LINE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(26312156911216501)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0.00'
,p_prompt=>'<span class="label-font-size text-white"> 31 - 60: </span>'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_term_id NUMBER;',
'    v_additional NUMBER;',
'    v_sum NUMBER;',
'BEGIN',
'    SELECT payment_terms_id INTO v_term_id FROM NPT009 WHERE LOWER(dba) = LOWER(:P320_DBA);',
'    SELECT AMOUNT INTO v_additional FROM NPM006 WHERE PAYMENT_TERMS_ID = v_term_id;',
'    SELECT',
'        SUM(npt1.OUTSTANDING_BALANCE)',
'    INTO',
'        v_sum',
'    FROM',
'        NPT001 npt1,',
'        NPM006 npm6',
'    WHERE',
'        npt1.CUSTOMER_ID = :P320_CUSTOMER_ID AND',
'        npm6.PAYMENT_TERMS_ID = v_term_id AND',
'        npt1.DATE_CREATED + npm6.DAYS < TO_DATE(:P320_AS_OF_DATE) AND',
'        TO_DATE(:P320_AS_OF_DATE) - (npt1.DATE_CREATED + npm6.DAYS) > 30 AND',
'        TO_DATE(:P320_AS_OF_DATE) - (npt1.DATE_CREATED + npm6.DAYS) < 61;',
'    RETURN TO_CHAR(-v_sum, ''999999.99'');',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        RETURN ''0.00'';',
'END;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'format-size'
,p_grid_label_column_span=>6
,p_grid_column_css_classes=>'ml-3 pl-05'
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_css_classes=>'right'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--preTextBlock:t-Form-fieldContainer--postTextBlock:t-Form-fieldContainer--normalDisplay'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26312570766216505)
,p_name=>'P320_FIRST_LINE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(26312156911216501)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0.00'
,p_prompt=>'<span class="label-font-size text-white"> 01 - 30: </span>'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_term_id NUMBER;',
'    v_additional NUMBER;',
'    v_sum NUMBER;',
'BEGIN',
'    SELECT payment_terms_id INTO v_term_id FROM NPT009 WHERE LOWER(dba) = LOWER(:P320_DBA);',
'    SELECT AMOUNT INTO v_additional FROM NPM006 WHERE PAYMENT_TERMS_ID = v_term_id;',
'    SELECT',
'        SUM(npt1.OUTSTANDING_BALANCE)',
'    INTO',
'        v_sum',
'    FROM',
'        NPT001 npt1,',
'        NPM006 npm6',
'    WHERE',
'        npt1.CUSTOMER_ID = :P320_CUSTOMER_ID AND',
'        npm6.PAYMENT_TERMS_ID = v_term_id AND',
'        npt1.DATE_CREATED + npm6.DAYS < TO_DATE(:P320_AS_OF_DATE) AND',
'        TO_DATE(:P320_AS_OF_DATE) - (npt1.DATE_CREATED + npm6.DAYS) < 31;',
'    RETURN TO_CHAR(-v_sum, ''999999.99'');',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        RETURN ''0.00'';',
'END;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'format-size'
,p_grid_label_column_span=>6
,p_grid_column_css_classes=>'ml-3 pl-05 '
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--preTextBlock:t-Form-fieldContainer--postTextBlock:t-Form-fieldContainer--normalDisplay'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26312645458216506)
,p_name=>'P320_CURRENT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(26312156911216501)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0.00'
,p_prompt=>'<span class="label-font-size text-white"> Current: </span>'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_term_id NUMBER;',
'    v_additional NUMBER;',
'    v_sum NUMBER;',
'BEGIN',
'    SELECT payment_terms_id INTO v_term_id FROM NPT009 WHERE LOWER(dba) = LOWER(:P320_DBA);',
'    SELECT AMOUNT INTO v_additional FROM NPM006 WHERE PAYMENT_TERMS_ID = v_term_id;',
'    SELECT',
'        SUM(npt1.OUTSTANDING_BALANCE)',
'    INTO',
'        v_sum',
'    FROM',
'        NPT001 npt1,',
'        NPM006 npm6',
'    WHERE',
'        npt1.CUSTOMER_ID = :P320_CUSTOMER_ID AND',
'        npm6.PAYMENT_TERMS_ID = v_term_id AND',
'        npt1.DATE_CREATED + npm6.DAYS >= TO_DATE(:P320_AS_OF_DATE);',
'    RETURN TO_CHAR(-v_sum, ''999999.99'');',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        RETURN ''0.00'';',
'END;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'format-size'
,p_grid_label_column_span=>6
,p_grid_column_css_classes=>'ml-3 pl-05'
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--preTextBlock:t-Form-fieldContainer--postTextBlock:t-Form-fieldContainer--normalDisplay'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26312719704216507)
,p_name=>'P320_AS_OF_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(26312156911216501)
,p_pre_element_text=>'<span class="label-font-size text-white">as of </span>'
,p_source=>'SELECT SYSDATE FROM DUAL'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'label-font-size text-white '
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--preTextBlock:t-Form-fieldContainer--postTextBlock:t-Form-fieldContainer--normalDisplay'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30681230475189150)
,p_name=>'P320_CUSTOMER_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(19492908990090516)
,p_source=>'SELECT CUSTOMER_ID FROM NPT009 WHERE lower(DBA) = lower(:P320_DBA)'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33211802671998140)
,p_name=>'P320_PREPARED_URL'
,p_item_sequence=>100
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45280028970848250)
,p_name=>'P320_PRINT_TYPE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(19492908990090516)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28550659691120026)
,p_name=>'Focus'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(28550475531120024)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28550719686120027)
,p_event_id=>wwv_flow_imp.id(28550659691120026)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P320_DBA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(35456988739234001)
,p_event_id=>wwv_flow_imp.id(28550659691120026)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(document).off(''keydown.p320keyevents'')'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30680831492189146)
,p_name=>'Export'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(28550597091120025)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'EXISTS'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    npt1.DATE_CREATED,',
'    npt1.INVOICE_ID,',
'    npt1.TOTAL_AMOUNT',
'FROM',
'    NPT001 npt1',
'WHERE',
'    npt1.CUSTOMER_ID = (SELECT CUSTOMER_ID FROM NPT009 WHERE LOWER(DBA) = LOWER(:P320_DBA))'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45597540232188001)
,p_event_id=>wwv_flow_imp.id(30680831492189146)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P320_PRINT_TYPE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'1'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45597791903188003)
,p_event_id=>wwv_flow_imp.id(30680831492189146)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(45275724771848207)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30681031377189148)
,p_name=>'Print'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(19493596311090522)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'EXISTS'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    npt1.DATE_CREATED,',
'    npt1.INVOICE_ID,',
'    npt1.TOTAL_AMOUNT',
'FROM',
'    NPT001 npt1',
'WHERE',
'    npt1.CUSTOMER_ID = (SELECT CUSTOMER_ID FROM NPT009 WHERE LOWER(DBA) = LOWER(:P320_DBA))'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45597670272188002)
,p_event_id=>wwv_flow_imp.id(30681031377189148)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P320_PRINT_TYPE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'2'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45276068562848210)
,p_event_id=>wwv_flow_imp.id(30681031377189148)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(45275724771848207)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33211695599998138)
,p_name=>'Exit'
,p_event_sequence=>40
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'exit'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33211781708998139)
,p_event_id=>wwv_flow_imp.id(33211695599998138)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P320_PREPARED_URL := apex_page.get_url(',
'       p_page   => 306',
'    );',
'END;'))
,p_attribute_03=>'P320_PREPARED_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33211963048998141)
,p_event_id=>wwv_flow_imp.id(33211695599998138)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P320_PREPARED_URL");',
'apex.navigation.redirect(url);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33212740670998149)
,p_name=>'Unfocus on Search'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P320_DBA'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33212881500998150)
,p_event_id=>wwv_flow_imp.id(33212740670998149)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mapP320Keys();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(35458795181234019)
,p_name=>'Focus on table'
,p_event_sequence=>70
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(35458426434234016)
,p_event_id=>wwv_flow_imp.id(35458795181234019)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(() => {',
'  $( document ).ready(function() {',
'    $(".a-GV-cell").first().trigger("click");',
' });',
'',
'',
'}, "500");'))
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P320_DBA'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(45275250434848202)
,p_name=>'top'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(43924764531603250)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45275306025848203)
,p_event_id=>wwv_flow_imp.id(45275250434848202)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'selectFirstRow();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(45275434970848204)
,p_name=>'last'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(45275154964848201)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45275510307848205)
,p_event_id=>wwv_flow_imp.id(45275434970848204)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'selectLastRow();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(45276170283848211)
,p_name=>'Print Dotmatrix'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(45275898700848208)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45276943903848219)
,p_event_id=>wwv_flow_imp.id(45276170283848211)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var d = new Date();',
'var datestamp = d.getFullYear() + "-";',
'if( (d.getMonth() + 1) >= 10){',
'    datestamp = datestamp + (d.getMonth() + 1) + "-";',
'}',
'else{',
'    datestamp = datestamp + "-0" + (d.getMonth() + 1);',
'}',
'if( (d.getDate() + 1) >= 10){',
'    datestamp = datestamp + d.getDate() + "";',
'}',
'else{',
'    datestamp = datestamp + "-0" + d.getDate();',
'}',
'generateReport("SOA_XLS", "xlsx", { ',
'    fileName: "SOA " + $v("P320_LEGAL_NAME") + " as of " + datestamp + ".xlsx",',
'    mode : "export",',
'    parameters : {',
'        dba : $v("P320_DBA"),',
'        P_PRINT_TYPE: "dotmatrix"',
'    }',
'});'))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P320_PRINT_TYPE'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45277710424848227)
,p_event_id=>wwv_flow_imp.id(45276170283848211)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var d = new Date();',
'var datestamp = d.getFullYear() + "-";',
'if( (d.getMonth() + 1) >= 10){',
'    datestamp = datestamp + (d.getMonth() + 1) + "-";',
'}',
'else{',
'    datestamp = datestamp + "-0" + (d.getMonth() + 1);',
'}',
'if( (d.getDate() + 1) >= 10){',
'    datestamp = datestamp + d.getDate() + "";',
'}',
'else{',
'    datestamp = datestamp + "-0" + d.getDate();',
'}',
'generateReport("SOA_MAIN", "pdf", { ',
'    fileName: "SOA " + $v("P320_LEGAL_NAME") + " as of " + datestamp + ".pdf",',
'    mode : "export",',
'    parameters : {',
'        P_DBA : $v("P320_DBA"),',
'        P_PRINT_TYPE: "dotmatrix"',
'    }',
'});'))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P320_PRINT_TYPE'
,p_client_condition_expression=>'2'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(45276321163848213)
,p_name=>'Print Graphic'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(45275948760848209)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45277252302848222)
,p_event_id=>wwv_flow_imp.id(45276321163848213)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var d = new Date();',
'var datestamp = d.getFullYear() + "-";',
'if( (d.getMonth() + 1) >= 10){',
'    datestamp = datestamp + (d.getMonth() + 1) + "-";',
'}',
'else{',
'    datestamp = datestamp + "-0" + (d.getMonth() + 1);',
'}',
'if( (d.getDate() + 1) >= 10){',
'    datestamp = datestamp + d.getDate() + "";',
'}',
'else{',
'    datestamp = datestamp + "-0" + d.getDate();',
'}',
'generateReport("SOA_XLS", "xlsx", { ',
'    fileName: "SOA " + $v("P320_LEGAL_NAME") + " as of " + datestamp + ".xlsx",',
'    mode : "export",',
'    parameters : {',
'        dba : $v("P320_DBA"),',
'        P_PRINT_TYPE: "graphic"',
'    }',
'});'))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P320_PRINT_TYPE'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45277669183848226)
,p_event_id=>wwv_flow_imp.id(45276321163848213)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var d = new Date();',
'var datestamp = d.getFullYear() + "-";',
'if( (d.getMonth() + 1) >= 10){',
'    datestamp = datestamp + (d.getMonth() + 1) + "-";',
'}',
'else{',
'    datestamp = datestamp + "-0" + (d.getMonth() + 1);',
'}',
'if( (d.getDate() + 1) >= 10){',
'    datestamp = datestamp + d.getDate() + "";',
'}',
'else{',
'    datestamp = datestamp + "-0" + d.getDate();',
'}',
'generateReport("SOA_MAIN", "pdf", { ',
'    fileName: "SOA " + $v("P320_LEGAL_NAME") + " as of " + datestamp + ".pdf",',
'    mode : "export",',
'    parameters : {',
'        P_DBA : $v("P320_DBA"),',
'        P_PRINT_TYPE: "graphic"',
'    }',
'});'))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P320_PRINT_TYPE'
,p_client_condition_expression=>'2'
);
wwv_flow_imp.component_end;
end;
/
