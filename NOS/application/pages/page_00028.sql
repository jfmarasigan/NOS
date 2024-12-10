prompt --application/pages/page_00028
begin
--   Manifest
--     PAGE: 00028
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
 p_id=>28
,p_name=>'Delivery Log'
,p_alias=>'DELIVERY-LOG'
,p_step_title=>'Delivery Log'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#js/cmn#MIN#.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p28KeyMap = {',
'    a : (v) => {',
'        $("#a").trigger("click");',
'    },',
'    u : (v) => {',
'        $("#u").trigger("click");',
'    },',
'    p : (v) => {',
'        $("#p").trigger("click");',
'    },',
'    escape : (v) => {',
'        apex.navigation.redirect($(''#P28_EXIT_URL'').val());',
'    },',
'    s : (v) => {',
'        $("#s").trigger("click");',
'    },',
'    i : (v) => {',
'        $("#i").trigger("click");',
'    }',
'}',
'',
'function mapP28Keys() {',
'    $(document).off(''keydown.p28keyevents'');',
'    $(document).on(''keydown.p28keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p28KeyMap[key]) {',
'            ev.preventDefault();',
'            p28KeyMap[key]();',
'        }',
'    });',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTitle(''Delivery Log'');',
'mapP28Keys();'))
,p_css_file_urls=>'#APP_FILES#css/cmn#MIN#.css'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.buttons-row {',
'    position: absolute;',
'    width: 98vw;',
'    bottom: 1.75rem;',
'}',
'',
'#delivery-log .a-IG {',
'    height: calc(75vh + 2px) !important;',
'} ',
'',
'#delivery-log .a-IG-contentContainer {',
'    height: 75vh !important;',
'}',
'',
'#delivery-log .a-IG-gridView.a-GV {',
'    height: 75vh !important;',
'}',
'',
'#delivery-log .a-GV-bdy {',
'    height: calc(75vh - 2.5625rem) !important;',
'}',
'',
'.t-Header .t-Header-branding {',
'    background-color: white !important;',
'    color: rgb(30, 58, 138) !important;',
'}',
' ',
'.title-header {',
'    display: flex;',
'    justify-content: center;',
'    margin-top: 1.5rem;',
'    color: white;',
'    font-size: 2rem;',
'    font-weight: 700;',
'    line-height: normal;',
'}',
' ',
'body{',
'    background-color: rgb(30, 58, 138);',
'}',
'',
'#delivery-log table,',
'#delivery-log tr,',
'#delivery-log td{',
'    font-size: 1.125rem;',
'    border: 0.0625rem solid black;',
'}',
'',
'#delivery-log th{',
'        font-size: 1rem;',
'}',
'',
'.a-GV-table .a-GV-cell, th.a-GV-header{',
'    border-color: black;',
'}',
'',
'.a-GV-hdr .a-GV-table {',
'    width: 100% !important;',
'}',
'',
'.btns{',
'    font-size: 1.125rem;',
'    color: white;',
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
'    background-color: #046BC8;',
'    color: white;',
'}',
'',
'.ui-dialog.inv-qby-w {',
'   left: 50% !important; ',
'}',
'.ui-dialog-titlebar-close{',
'    display: none;',
'}',
'.ui-dialog-title{',
'    font-size : 1.25rem;',
'}',
'.text-white{',
'    color:white;',
'}',
'.text-black{',
'    color: black;',
'}',
'.t-Form-labelContainer.col.col-1{',
'        text-align: start;',
'}',
'.t-Form-label{',
'    font-size:1.125rem;',
'    color:white;',
'}',
'#P28_INVOICE_NUMBER_LABEL{',
'    font-size:1.125rem;',
'    color:black;',
'}',
'',
'.ui-dialog.delivery-inquire{',
'    left: 50% !important;',
'}'))
,p_step_template=>wwv_flow_imp.id(5671392681337017)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16111681940770144)
,p_plug_name=>'Delivery Log'
,p_region_name=>'delivery-log'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DELIVERY_ID,',
'       DELIVERY_DATE,',
'       BATCH,',
'       CHECKER,',
'       DELIVERY_MAN,',
'       DEP_TIME,',
'       ARV_TIME,',
'       VAN_NO,',
'       RECEIVED_BY',
'  from NPT012',
'  WHERE (DELIVERY_DATE BETWEEN :P28_DATE_FROM AND :P28_DATE_TO',
'         OR DELIVERY_DATE = :P28_DATE_FROM)'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P28_DATE_FROM,P28_DATE_TO'
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
 p_id=>wwv_flow_imp.id(44656591445346350)
,p_name=>'DELIVERY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DELIVERY_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Delivery Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(44755860457706101)
,p_name=>'BATCH'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BATCH'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Batch'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
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
'        noHeaderActivate: true,',
'        noStretch : true,',
'        width: 90',
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
 p_id=>wwv_flow_imp.id(44755952528706102)
,p_name=>'CHECKER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CHECKER'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Checker'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>80
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
 p_id=>wwv_flow_imp.id(44756097609706103)
,p_name=>'DELIVERY_MAN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DELIVERY_MAN'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Delivery Man'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>200
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true,',
'        noStretch : true,',
'        width: 300',
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
 p_id=>wwv_flow_imp.id(44756131846706104)
,p_name=>'DEP_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEP_TIME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Dep Time'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>28
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true,',
'        noStretch : true,',
'        width: 110',
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
 p_id=>wwv_flow_imp.id(44756282506706105)
,p_name=>'ARV_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ARV_TIME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Arv Time'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>28
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true,',
'        noStretch : true,',
'        width: 110',
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
 p_id=>wwv_flow_imp.id(44756312307706106)
,p_name=>'VAN_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VAN_NO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Van No'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>28
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true,',
'        noStretch : true,',
'        width: 130',
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
 p_id=>wwv_flow_imp.id(44756470455706107)
,p_name=>'RECEIVED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RECEIVED_BY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Received By'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(16111790833770145)
,p_internal_uid=>16111790833770145
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
,p_fixed_header_max_height=>460
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
 p_id=>wwv_flow_imp.id(19003529860169085)
,p_interactive_grid_id=>wwv_flow_imp.id(16111790833770145)
,p_static_id=>'190036'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(19003787797169085)
,p_report_id=>wwv_flow_imp.id(19003529860169085)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(44762661386706407)
,p_view_id=>wwv_flow_imp.id(19003787797169085)
,p_display_seq=>73
,p_column_id=>wwv_flow_imp.id(44656591445346350)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(44763532141706417)
,p_view_id=>wwv_flow_imp.id(19003787797169085)
,p_display_seq=>74
,p_column_id=>wwv_flow_imp.id(44755860457706101)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(44764429857706423)
,p_view_id=>wwv_flow_imp.id(19003787797169085)
,p_display_seq=>75
,p_column_id=>wwv_flow_imp.id(44755952528706102)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(44765316888706432)
,p_view_id=>wwv_flow_imp.id(19003787797169085)
,p_display_seq=>76
,p_column_id=>wwv_flow_imp.id(44756097609706103)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(44766215738706439)
,p_view_id=>wwv_flow_imp.id(19003787797169085)
,p_display_seq=>77
,p_column_id=>wwv_flow_imp.id(44756131846706104)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(44767121483706448)
,p_view_id=>wwv_flow_imp.id(19003787797169085)
,p_display_seq=>78
,p_column_id=>wwv_flow_imp.id(44756282506706105)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(44768004634706454)
,p_view_id=>wwv_flow_imp.id(19003787797169085)
,p_display_seq=>79
,p_column_id=>wwv_flow_imp.id(44756312307706106)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(44768977533706459)
,p_view_id=>wwv_flow_imp.id(19003787797169085)
,p_display_seq=>80
,p_column_id=>wwv_flow_imp.id(44756470455706107)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18998405182168306)
,p_plug_name=>'Page Controls'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>40
,p_plug_grid_row_css_classes=>'buttons-row'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19000099641168322)
,p_plug_name=>'Search/Add Modal'
,p_region_name=>'inline-dialog'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400:t-Form--stretchInputs:t-Form--leftLabels'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_04'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18999681047168318)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(18998405182168306)
,p_button_name=>'SEARCH'
,p_button_static_id=>'s'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>S</u> - Search'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'Y'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18998637280168308)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(18998405182168306)
,p_button_name=>'UPDATE'
,p_button_static_id=>'u'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>U</u>  - Update'
,p_button_redirect_url=>'f?p=&APP_ID.:63:&SESSION.::&DEBUG.:63:P63_MODE:UPDATE'
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(34231121246738350)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(18998405182168306)
,p_button_name=>'DATE'
,p_button_static_id=>'d'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u> F1 </u> - Date'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18998585153168307)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(18998405182168306)
,p_button_name=>'ADD'
,p_button_static_id=>'a'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>F2</u> - Add'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18999703026168319)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(18998405182168306)
,p_button_name=>'INQUIRE'
,p_button_static_id=>'i'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>F3</u> - Inquire'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18999876603168320)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(18998405182168306)
,p_button_name=>'PRINT'
,p_button_static_id=>'p'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>F8</u> - Print'
,p_button_redirect_url=>'f?p=&APP_ID.:107:&SESSION.::&DEBUG.:107::'
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18999955653168321)
,p_name=>'P28_EXIT_URL'
,p_item_sequence=>50
,p_source=>'apex_page.get_url(p_page => 300)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19000162860168323)
,p_name=>'P28_INVOICE_NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(19000099641168322)
,p_prompt=>'Search By Invoice Number:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'fs-1125 text-black'
,p_grid_label_column_span=>5
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:margin-top-sm:margin-bottom-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20117371602473938)
,p_name=>'P28_SELECTED_ITEM'
,p_item_sequence=>60
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20118559138473950)
,p_name=>'P28_PREPARED_URL'
,p_item_sequence=>70
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21253048862923115)
,p_name=>'P28_MODAL_MODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(19000099641168322)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34230874403738347)
,p_name=>'P28_DATE_FROM'
,p_item_sequence=>10
,p_prompt=>'Date:'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_tag_css_classes=>'fs-1125'
,p_colspan=>2
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34230993760738348)
,p_name=>'P28_DATE_TO'
,p_item_sequence=>20
,p_prompt=>'To:'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_tag_css_classes=>'fs-1125'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19000211489168324)
,p_name=>'On S click'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(18999681047168318)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19000450873168326)
,p_event_id=>wwv_flow_imp.id(19000211489168324)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).off(''keydown.p28keyevents'');',
'$(''#P28_INVOICE_NUMBER_LABEL'').parent().removeClass(''col-4'');',
'$(''#P28_INVOICE_NUMBER_LABEL'').parent().addClass(''col-5'');',
'$(''#P28_INVOICE_NUMBER_LABEL'').html(''Search by Invoice Number:'');',
'$(''#inline-dialog'').parent().find(''.ui-dialog-titlebar'').find(''.ui-dialog-title'').html(''Search'');',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21253159403923116)
,p_event_id=>wwv_flow_imp.id(19000211489168324)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P28_MODAL_MODE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'SEARCH'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19000324745168325)
,p_event_id=>wwv_flow_imp.id(19000211489168324)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(19000099641168322)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19000535711168327)
,p_name=>'On Search/Add Close'
,p_event_sequence=>20
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'#inline-dialog'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'dialogclose'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19001202322168334)
,p_event_id=>wwv_flow_imp.id(19000535711168327)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P28_INVOICE_NUMBER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19000616686168328)
,p_event_id=>wwv_flow_imp.id(19000535711168327)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mapP28Keys();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19000756567168329)
,p_name=>'Search/Add Modal close event'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P28_INVOICE_NUMBER'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.key?.toLowerCase() === ''escape'';'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keyup'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19000830588168330)
,p_event_id=>wwv_flow_imp.id(19000756567168329)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(19000099641168322)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19001550955168337)
,p_name=>'On A click'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(18998585153168307)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19001637768168338)
,p_event_id=>wwv_flow_imp.id(19001550955168337)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).off(''keydown.p28keyevents'');',
'$(''#P28_INVOICE_NUMBER_LABEL'').parent().removeClass(''col-5'');',
'$(''#P28_INVOICE_NUMBER_LABEL'').parent().addClass(''col-4'');',
'$(''#P28_INVOICE_NUMBER_LABEL'').html(''Invoice Number:'');',
'$(''#inline-dialog'').parent().find(''.ui-dialog-titlebar'').find(''.ui-dialog-title'').html(''Add Delivery'');',
''))
,p_build_option_id=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21253234904923117)
,p_event_id=>wwv_flow_imp.id(19001550955168337)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P28_MODAL_MODE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'ADD'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_build_option_id=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19001886616168340)
,p_event_id=>wwv_flow_imp.id(19001550955168337)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(19000099641168322)
,p_build_option_id=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(21251769505923102)
,p_name=>'New'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(18999703026168319)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21251898380923103)
,p_event_id=>wwv_flow_imp.id(21251769505923102)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
':P28_PREPARED_URL := apex_page.get_url(',
'    p_clear_cache => 42,',
'    p_page => 42,',
'    p_items => ''P42_BATCH'',',
'    p_values => 3',
');',
'END;'))
,p_attribute_02=>'P28_SELECTED_ITEM'
,p_attribute_03=>'P28_PREPARED_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21252778854923112)
,p_event_id=>wwv_flow_imp.id(21251769505923102)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).off(''keydown.p28keyevents'');',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21251956587923104)
,p_event_id=>wwv_flow_imp.id(21251769505923102)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect($v(''P28_PREPARED_URL''));'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(21252361292923108)
,p_name=>'On press Enter'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P28_INVOICE_NUMBER'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.key?.toLowerCase() === ''enter'';'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21252464995923109)
,p_event_id=>wwv_flow_imp.id(21252361292923108)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
':P28_PREPARED_URL := apex_page.get_url(',
'    p_page => ''63'',',
'    p_clear_cache => ''63'',',
'    p_items => ''P63_MODE'',',
'    p_values => ''ADD''',
');',
'END;'))
,p_attribute_03=>'P28_PREPARED_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P28_MODAL_MODE'
,p_client_condition_expression=>'ADD'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21252626642923111)
,p_event_id=>wwv_flow_imp.id(21252361292923108)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(19000099641168322)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P28_MODAL_MODE'
,p_client_condition_expression=>'ADD'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21252551583923110)
,p_event_id=>wwv_flow_imp.id(21252361292923108)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect($v(''P28_PREPARED_URL''));'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P28_MODAL_MODE'
,p_client_condition_expression=>'ADD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(21252844114923113)
,p_name=>'On Inquire close'
,p_event_sequence=>70
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21252999361923114)
,p_event_id=>wwv_flow_imp.id(21252844114923113)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mapP28Keys();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(35233527112472401)
,p_name=>'On D Press'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(34231121246738350)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(35233600650472402)
,p_event_id=>wwv_flow_imp.id(35233527112472401)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P28_DATE_FROM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44050821771431028)
,p_name=>'New_3'
,p_event_sequence=>110
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44050917576431029)
,p_event_id=>wwv_flow_imp.id(44050821771431028)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(16111681940770144)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44756587762706108)
,p_name=>'On Date Confirm'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P28_DATE_TO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44756638227706109)
,p_event_id=>wwv_flow_imp.id(44756587762706108)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(16111681940770144)
);
wwv_flow_imp.component_end;
end;
/
