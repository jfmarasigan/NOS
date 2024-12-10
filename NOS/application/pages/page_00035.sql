prompt --application/pages/page_00035
begin
--   Manifest
--     PAGE: 00035
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
 p_id=>35
,p_name=>'POS Cashiering Main Screen'
,p_alias=>'POS-CASHIERING-MAIN-SCREEN'
,p_step_title=>'Cashiering'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APP_FILES#onscan.min.js',
'#APP_FILES#onscan#MIN#.js',
'#APP_FILES#js/cmn#MIN#.js'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let lastSelected = null;',
'',
'const p35KeyMap = {',
'    f2 : (v) => {',
'        $("#f2").trigger("click");',
'    },',
'',
'    f3 : (v) => {',
'        $("#f3").trigger("click");',
'    },',
'',
'    f4 : (v) => {',
'        $("#f4").trigger("click");',
'    },',
'    ',
'    f8 : (v) => {',
'        $("#f8").trigger("click");',
'    },',
'',
'    f12 : (v) => {',
'        $("#f12").trigger("click");',
'    },',
'',
'    home: (v) => {',
'        console.log("to-top");',
'        $("#to-top").trigger("click");',
'    },',
'',
'    escape: (v) => {',
'        console.log("to-top");',
'        $("#esc").trigger("click");',
'    },',
'',
'    end: (v) => {',
'        console.log("to bottom");',
'        $("#to-bottom").trigger("click");',
'    }',
'}',
'',
'function mapP35Keys() {',
'    $(document).off(''keydown.p35keyevents'');',
'    $(document).on(''keydown.p35keyevents'', (ev) => {',
'        console.log(`KeyboardEvent: key=''${ev.key}'' | code=''${ev.code}''`);',
'        var key = ev.key?.toLowerCase();',
'        if (p35KeyMap[key]) {',
'            ev.preventDefault();',
'            p35KeyMap[key]();',
'        }',
'    });',
'}',
'',
'function customEvent(event, data){',
'    mapP35Keys();',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP35Keys();',
'',
'$(document).on("keydown.posevent", function(ev) {',
'    var eventBlacklist = {',
'        ''input'': true,',
'        ''textarea'': true,',
'        ''select'': true',
'    };',
'',
'    var tagName = document.activeElement.tagName.toLowerCase();',
'    var id = document.activeElement.id;',
'    var shortcut = ev.code;',
'',
'    if (tagName === ''input'' && ev.key === ''Enter'' && id === ''quantity'') {',
'        document.activeElement.blur();',
'    }',
'',
'',
'});',
'',
'onScan.attachTo(document, {onScan: function(sScancode, iQuantity){',
'    apex.item("P35_BARCODE").setValue(JSON.parse(sScancode));',
'    console.log(JSON.parse(sScancode))',
'}});',
'',
'',
'$("#f5").trigger("click");',
'',
''))
,p_css_file_urls=>'#APP_FILES#css/menu#MIN#.css'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'body, #button-region {',
'    background-color: rgb(30, 58, 138);',
'}',
'',
'.t-Header .t-Header-branding {',
'    background-color: white !important;',
'    color: rgb(30, 58, 138) !important;',
'}',
'',
'#orders table, #orders tr, #orders td, #orders th {',
'     font-size: 1.125rem;',
'}',
'',
'',
'.btns {',
'    font-size: 1.125rem;',
'    color: white;',
'    font-weight: 600;',
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
'}',
'',
'.ui-dialog-title{',
'    font-size: 1.5rem;',
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
'    bottom: 1rem;',
'}',
'',
'#orders .a-IG {',
'    height: calc(65vh + 2px) !important;',
'} ',
'',
'#orders .a-IG-contentContainer {',
'    height: 65vh !important;',
'}',
'',
'#orders .a-IG-gridView.a-GV {',
'    height: 65vh !important;',
'}',
'',
'.t-Form-label{',
'    color: white;',
'    font-size: 1.125rem;',
'    white-space: nowrap;',
'}',
'',
'.apex-item-display-only {',
'    color: white;',
'    font-size: 1.125rem;',
'    white-space: nowrap;',
'    display: flex;',
'}',
'',
'.t-Button-label {',
'    font-size: 1.125rem;',
'    white-space: nowrap;',
'    font-family: Arial;',
'}'))
,p_step_template=>wwv_flow_imp.id(5671392681337017)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9703688063553743)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>160
,p_location=>null
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(37207015479281235)
,p_plug_name=>'Orders'
,p_region_name=>'orders'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>70
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT c001 ITEM_NO, ',
'       c002 CO, ',
'       c003 ITEM_DESCRIPTION, ',
'       n001 QTY, ',
'       n002 REG_PRICE, ',
'       c004 UOM, ',
'       n003 DISC, ',
'       c005 DT,',
'       n004 NET_PRICE,',
'       n005 EXTENDED_PRICE',
'FROM apex_collections',
'WHERE collection_name = ''PURCHASE'''))
,p_plug_source_type=>'NATIVE_IG'
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
 p_id=>wwv_flow_imp.id(37207295424281237)
,p_name=>'ITEM_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEM_NO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Item No'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(37207312561281238)
,p_name=>'CO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'CO'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(37207406116281239)
,p_name=>'ITEM_DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEM_DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Item Description'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(37207563452281240)
,p_name=>'QTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Qty'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'CENTER'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>false
,p_enable_filter=>false
,p_filter_is_required=>false
,p_static_id=>'quantity'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(37207683181281241)
,p_name=>'REG_PRICE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REG_PRICE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Reg Price'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>false
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(37207784071281242)
,p_name=>'UOM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UOM'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'UOM'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(37207878974281243)
,p_name=>'DISC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISC'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Disc'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>false
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(37207994523281244)
,p_name=>'DT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'DT'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(37208005311281245)
,p_name=>'NET_PRICE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NET_PRICE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Net Price'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>110
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>false
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(37208134353281246)
,p_name=>'EXTENDED_PRICE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXTENDED_PRICE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Extended Price'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>false
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(37207159790281236)
,p_internal_uid=>37207159790281236
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>false
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
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(38665546317896831)
,p_interactive_grid_id=>wwv_flow_imp.id(37207159790281236)
,p_static_id=>'386656'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(38665759775896831)
,p_report_id=>wwv_flow_imp.id(38665546317896831)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(38666197569896835)
,p_view_id=>wwv_flow_imp.id(38665759775896831)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(37207295424281237)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(38667090948896843)
,p_view_id=>wwv_flow_imp.id(38665759775896831)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(37207312561281238)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(38667965826896851)
,p_view_id=>wwv_flow_imp.id(38665759775896831)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(37207406116281239)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(38668884209896857)
,p_view_id=>wwv_flow_imp.id(38665759775896831)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(37207563452281240)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(38669714037896864)
,p_view_id=>wwv_flow_imp.id(38665759775896831)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(37207683181281241)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(38670670423896870)
,p_view_id=>wwv_flow_imp.id(38665759775896831)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(37207784071281242)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(38671546678896876)
,p_view_id=>wwv_flow_imp.id(38665759775896831)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(37207878974281243)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(38672458607896882)
,p_view_id=>wwv_flow_imp.id(38665759775896831)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(37207994523281244)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(38673394583896889)
,p_view_id=>wwv_flow_imp.id(38665759775896831)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(37208005311281245)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(38674276241896895)
,p_view_id=>wwv_flow_imp.id(38665759775896831)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(37208134353281246)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38713132331254512)
,p_plug_name=>'Header'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody:t-Form--slimPadding:t-Form--stretchInputs:t-Form--leftLabels:margin-top-none'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>20
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38716626724254547)
,p_plug_name=>'Header 2'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody:t-Form--stretchInputs:t-Form--leftLabels'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>80
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9703839824553745)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(9703688063553743)
,p_button_name=>'Search'
,p_button_static_id=>'f6'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'F6 - SEARCH ITEM'
,p_button_redirect_url=>'f?p=&APP_ID.:38:&SESSION.::&DEBUG.:38::'
,p_grid_new_row=>'N'
,p_grid_column_span=>2
,p_grid_column=>6
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9704020371553747)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(9703688063553743)
,p_button_name=>'Scan'
,p_button_static_id=>'f7'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'F7 - SCAN PRICE'
,p_button_redirect_url=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'N'
,p_grid_column_span=>2
,p_grid_column=>8
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33263342546129947)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(9703688063553743)
,p_button_name=>'Escape'
,p_button_static_id=>'esc'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Escape'
,p_button_redirect_url=>'f?p=&APP_ID.:305:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'hiddenbtn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(43697024407573546)
,p_button_sequence=>90
,p_button_name=>'Closing-Balance'
,p_button_static_id=>'f12'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u> F12 </u>  - Closing Balance'
,p_button_redirect_url=>'f?p=&APP_ID.:65:&SESSION.::&DEBUG.:65::'
,p_button_css_classes=>'btns'
,p_grid_new_row=>'Y'
,p_grid_column_span=>1
,p_grid_column=>6
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(35547921164882710)
,p_button_sequence=>110
,p_button_name=>'Search-Item'
,p_button_static_id=>'f2'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u> F2 </u>  - Search Item'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns'
,p_grid_new_row=>'N'
,p_grid_column_span=>1
,p_grid_column=>8
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27426872438078118)
,p_button_sequence=>120
,p_button_name=>'Change-Quantity'
,p_button_static_id=>'f3'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>F3 </u> - Change Qty'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns'
,p_grid_new_row=>'N'
,p_grid_column_span=>1
,p_grid_column=>10
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11450069922525328)
,p_button_sequence=>130
,p_button_name=>'Pay'
,p_button_static_id=>'f8'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u> F8 </u>  - Pay '
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns'
,p_grid_new_row=>'N'
,p_grid_column_span=>1
,p_grid_column=>12
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9703759774553744)
,p_button_sequence=>140
,p_button_name=>'Customer'
,p_button_static_id=>'f5'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'F5 - SELECT CUSTOMER'
,p_button_redirect_url=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'hiddenbtn'
,p_grid_new_row=>'Y'
,p_grid_column_span=>2
,p_grid_column=>4
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19652157200695404)
,p_button_sequence=>150
,p_button_name=>'Opening-Balance'
,p_button_static_id=>'f4'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Opening Balance'
,p_button_redirect_url=>'f?p=&APP_ID.:64:&SESSION.::&DEBUG.:64::'
,p_button_css_classes=>'hiddenbtn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11449756222525325)
,p_name=>'P35_SUB'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(38716626724254547)
,p_prompt=>'<b>Sub-Total:</b>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_column=>7
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--postTextBlock'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11449899459525326)
,p_name=>'P35_DISCOUNT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(38716626724254547)
,p_prompt=>'<b>Total Discount:</b>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_column=>9
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11449937233525327)
,p_name=>'P35_TOTAL'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(38716626724254547)
,p_prompt=>'<b>Total Amount:</b>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_column=>11
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16917291056497018)
,p_name=>'P35_CUSTOMER_FIELD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(38713132331254512)
,p_prompt=>'<b>Customer (DBA): </b>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>3
,p_grid_column=>1
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--preTextBlock:t-Form-fieldContainer--postTextBlock:margin-left-none:t-Form-fieldContainer--boldDisplay'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18257830548008506)
,p_name=>'P35_URL'
,p_item_sequence=>170
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35547641814882707)
,p_name=>'P35_INVOICE_NO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(38713132331254512)
,p_prompt=>'<b>Invoice No: </b>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_column=>10
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--postTextBlock:margin-bottom-sm:margin-right-lg'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35547716446882708)
,p_name=>'P35_INVOICE_DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(38713132331254512)
,p_prompt=>'<b>Invoice Date: </b>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_column=>10
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--postTextBlock:margin-bottom-sm'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35547832677882709)
,p_name=>'P35_ORDER_WRITER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(38713132331254512)
,p_prompt=>'<b>Order Writer: </b>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_column=>10
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--postTextBlock'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37208286778281247)
,p_name=>'P35_BARCODE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(37207015479281235)
,p_prompt=>'Barcode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38716099666254541)
,p_name=>'P35_QOH'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(38716626724254547)
,p_prompt=>'<b>QOH</b>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>2
,p_grid_column=>1
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--postTextBlock'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42944764576705435)
,p_name=>'P35_QTY'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(38716626724254547)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>1
,p_grid_column=>2
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--postTextBlock'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(35548047946882711)
,p_computation_sequence=>10
,p_computation_item=>'P35_INVOICE_DATE'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>'SELECT SYSDATE FROM DUAL'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(40390947660268814)
,p_computation_sequence=>20
,p_computation_item=>'P35_ORDER_WRITER'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>'SELECT :APP_USER FROM DUAL'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(42944943128705437)
,p_computation_sequence=>30
,p_computation_item=>'P35_QOH'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY_COLON'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    ''LOC'' + nim027.warehouse_location',
'FROM ',
'    NIM027 nim027,',
'    NIT004 nit004,',
'    NIT002 nit002',
'WHERE',
'    NIM027.warehouse_id = NIT004.warehouse_id',
' AND',
'    NIT002.uom_id = NIT004.uom_id',
' AND ',
'    NIT002.item_id = NIT004.item_id',
' AND ',
'    NIT002.upc = :P35_BARCODE',
'ORDER BY ',
'    nit004.qty DESC',
'FETCH FIRST 3 ROWS ONLY;',
''))
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(42945073841705438)
,p_computation_sequence=>40
,p_computation_item=>'P35_QTY'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY_COLON'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    ''LOC'' + nim027.warehouse_location',
'FROM ',
'    NIM027 nim027,',
'    NIT004 nit004,',
'    NIT002 nit002',
'WHERE',
'    NIM027.warehouse_id = NIT004.warehouse_id',
' AND',
'    NIT002.uom_id = NIT004.uom_id',
' AND ',
'    NIT002.item_id = NIT004.item_id',
' AND ',
'    NIT002.upc = :P35_BARCODE',
'ORDER BY ',
'    nit004.qty DESC',
'FETCH FIRST 3 ROWS ONLY;',
''))
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37208399296281248)
,p_name=>'Scan Barcode'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P35_BARCODE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37208482667281249)
,p_event_id=>wwv_flow_imp.id(37208399296281248)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_seq_id number;',
'    v_item_id number;',
'    v_product_name varchar(35);    ',
'    v_price number;',
'    v_qty number;',
'    v_total number;',
'    v_brand varchar(10);',
'    v_uom varchar(10);',
'',
'BEGIN',
'    BEGIN',
'        SELECT a.item_id, a.item_desc, b.price, b.price total, UPPER(c.uom_code), d.brand_code INTO v_item_id, v_product_name, v_price, v_total, v_uom, v_brand',
'          FROM NIT001 a, NIT002 b, NIM026 c, NIM022 d',
'         WHERE a.item_id = b.item_id',
'           AND b.uom_id = c.uom_id',
'           AND a.brand_id = d.brand_id',
'           AND b.upc = :P35_BARCODE;',
'     ',
'    SELECT seq_id, n001 INTO v_seq_id, v_qty ',
'    FROM apex_collections',
'    WHERE collection_name = ''PURCHASE''',
'    AND c001 = :P35_BARCODE;',
'    EXCEPTION WHEN NO_DATA_FOUND THEN v_seq_id := 0; END;',
'    ',
'    IF v_seq_id != 0 THEN',
'        v_qty := v_qty + 1;',
'        v_total := v_price * v_qty;',
'    ',
'            apex_collection.update_member_attribute (',
'                p_collection_name => ''PURCHASE'',',
'                p_seq => v_seq_id,',
'                p_attr_number => 1,',
'                p_number_value => v_qty',
'                );',
'',
'            apex_collection.update_member_attribute (',
'                p_collection_name => ''PURCHASE'',',
'                p_seq => v_seq_id,',
'                p_attr_number => 5,',
'                p_number_value => v_total',
'                );',
'',
'    ELSIF v_seq_id = 0 AND v_item_id IS NOT NULL THEN',
'        apex_collection.add_member(',
'            p_collection_name => ''PURCHASE'',',
'            p_c001 => :P35_BARCODE,',
'            p_c002 => v_brand,',
'            p_c003 => v_product_name,',
'            p_n001 => 1,',
'            p_n002 => v_price,',
'            p_c004 => v_uom,',
'            p_n003 => 123,',
'            p_c005 => ''DT'',',
'            p_n004 => 321,',
'            p_n005 => v_total);',
'END IF;',
'END;'))
,p_attribute_02=>'P35_BARCODE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37208592431281250)
,p_event_id=>wwv_flow_imp.id(37208399296281248)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(37207015479281235)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14725854215463432)
,p_name=>'Update Quantity (Table)'
,p_event_sequence=>40
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(37207015479281235)
,p_triggering_element=>'QTY'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14725930549463433)
,p_event_id=>wwv_flow_imp.id(14725854215463432)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_seq_id    NUMBER;',
'    v_price     NUMBER;',
'    v_qty       NUMBER;',
'begin',
'    select seq_id, n002',
'      into v_seq_id, v_price',
'      from apex_collections ',
'     where collection_name = ''PURCHASE''',
'       and c001 = :P35_BARCODE;',
'       ',
'        APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'            p_collection_name => ''PURCHASE'',',
'            p_seq => v_seq_id,',
'            p_attr_number => 1,',
'            p_number_value => :QTY);',
'',
'        APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'            p_collection_name => ''PURCHASE'',',
'            p_seq => v_seq_id,',
'            p_attr_number => 5,',
'            p_number_value => :QTY * v_price);',
'',
'    select seq_id, n001',
'      into v_seq_id, v_qty',
'      from apex_collections ',
'     where collection_name = ''PURCHASE''',
'       and c001 = :P35_BARCODE;',
'',
'        IF v_qty = 0 THEN',
'            APEX_COLLECTION.DELETE_MEMBER(',
'            p_collection_name => ''PURCHASE'',',
'            p_seq => v_seq_id );',
'        END IF;',
'end;'))
,p_attribute_02=>'ITEM_ID,QTY'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14726074882463434)
,p_event_id=>wwv_flow_imp.id(14725854215463432)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'QTY'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// Remove "changed" status of the Interactive Grid',
'setTimeout(function () {',
'    var ig = apex.region("orders"); // Specify your region name or Static ID',
'    var view = ig.widget().interactiveGrid("getViews", "grid");',
'    var model = view.model;',
'',
'    // Clear the changes',
'    model.clearChanges();',
'',
'    // Optionally, refresh the grid to apply changes',
'    ig.refresh();  // Uncomment if you want the grid to refresh',
'}, 100);',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38713040867254511)
,p_event_id=>wwv_flow_imp.id(14725854215463432)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'QTY'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(23638421332246345)
,p_name=>'Add Payment Collection'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11450069922525328)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23638551484246346)
,p_event_id=>wwv_flow_imp.id(23638421332246345)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Add Collection'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    apex_collection.add_member(',
'                p_collection_name => ''ORDERS'',',
'                p_c002 => '''',',
'                p_n001 => TO_CHAR(:P35_SUB, ''FM9990.00'' ),',
'                p_n002 => TO_CHAR(:P35_DISCOUNT, ''FM9990.00'' ),',
'                p_n003 => TO_CHAR(:P35_TOTAL, ''FM9990.00'' )',
'                );',
'END;'))
,p_attribute_02=>'P35_TOTAL'
,p_attribute_03=>'P35_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29425211050978933)
,p_event_id=>wwv_flow_imp.id(23638421332246345)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'Send Total Value'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P35_URL := apex_page.get_url(',
'       p_page   => 41,',
'       p_items  => ''P41_TOTAL'',',
'       p_values => TO_CHAR(ROUND(TO_NUMBER(REPLACE(REPLACE(:P35_TOTAL, ''$'', ''''), '','', '''')), 2), ''FM999999999.00'')',
'     );',
'END;'))
,p_attribute_02=>'P35_TOTAL'
,p_attribute_03=>'P35_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29425303935978934)
,p_event_id=>wwv_flow_imp.id(23638421332246345)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P35_URL");',
'apex.navigation.redirect(url);'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(35547306039882704)
,p_event_id=>wwv_flow_imp.id(23638421332246345)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>'Disable Key'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(document).off(''keydown.p35keyevents'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18259655158008524)
,p_name=>'Set Customer Value'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(9703759774553744)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18259726504008525)
,p_event_id=>wwv_flow_imp.id(18259655158008524)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P35_CUSTOMER_FIELD'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT c001 ',
'  FROM apex_collections ',
' WHERE collection_name = ''ORDERS''',
'   AND seq_id = (SELECT MAX(seq_id) ',
'                   FROM apex_collections',
'                  WHERE collection_name = ''ORDERS'')'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18259823679008526)
,p_event_id=>wwv_flow_imp.id(18259655158008524)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P35_CUSTOMER_FIELD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18712245828804235)
,p_name=>'Set Total Value'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P35_DISCOUNT,P35_SUB'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18712336857804236)
,p_event_id=>wwv_flow_imp.id(18712245828804235)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_name=>'Total'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P35_TOTAL'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'TO_CHAR(TO_NUMBER(REPLACE(REPLACE(NVL(:P35_SUB, 0), ''$'', ''''), '','', '''')) - TO_NUMBER(REPLACE(REPLACE(NVL(:P35_DISCOUNT, 0), ''$'', ''''), '','', '''')), ''FM9990.00'' ) '
,p_attribute_07=>'P35_SUB,P35_DISCOUNT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42945192730705439)
,p_event_id=>wwv_flow_imp.id(18712245828804235)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_name=>'QOH'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P35_QOH'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    ''LOC'' || nim027.warehouse_location',
'FROM ',
'    NIM027 nim027,',
'    NIT004 nit004,',
'    NIT002 nit002',
'WHERE',
'    NIM027.warehouse_id = NIT004.warehouse_id',
' AND',
'    NIT002.uom_id = NIT004.uom_id',
' AND ',
'    NIT002.item_id = NIT004.item_id',
' AND ',
'    NIT002.upc = :P35_BARCODE',
'ORDER BY ',
'    nit004.qty DESC',
'FETCH FIRST 3 ROWS ONLY;',
''))
,p_attribute_07=>'P35_BARCODE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42945256975705440)
,p_event_id=>wwv_flow_imp.id(18712245828804235)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_name=>'QTY'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P35_QTY'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    nit004.qty',
'FROM ',
'    NIM027 nim027,',
'    NIT004 nit004,',
'    NIT002 nit002',
'WHERE',
'    NIM027.warehouse_id = NIT004.warehouse_id',
' AND',
'    NIT002.uom_id = NIT004.uom_id',
' AND ',
'    NIT002.item_id = NIT004.item_id',
' AND ',
'    NIT002.upc = :P35_BARCODE',
'ORDER BY ',
'    nit004.qty DESC',
'FETCH FIRST 3 ROWS ONLY;',
''))
,p_attribute_07=>'P35_BARCODE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27426637851078116)
,p_name=>'Focus Quantity'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27426872438078118)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38716439812254545)
,p_event_id=>wwv_flow_imp.id(27426637851078116)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(37207015479281235)
,p_build_option_id=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38716535752254546)
,p_event_id=>wwv_flow_imp.id(27426637851078116)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P35_TOTAL,P35_SUB'
,p_build_option_id=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27426757229078117)
,p_event_id=>wwv_flow_imp.id(27426637851078116)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(() => {',
'  $(document).ready(function() {',
'    // Select the last cell in the fourth column',
'    const lastCellInFifthColumn = $("tr").find("td:nth-child(4)").last();',
'    // Trigger click event',
'    lastCellInFifthColumn.trigger("click");',
'    // Trigger double click event',
'    lastCellInFifthColumn.trigger("dblclick");',
'  });',
'}, 300);',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33262352750129937)
,p_name=>'Close Search Dialog'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(9703839824553745)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33262471627129938)
,p_event_id=>wwv_flow_imp.id(33262352750129937)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P35_BARCODE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT c001',
'FROM apex_collections',
'WHERE collection_name = ''SEARCH''',
'  AND seq_id = (SELECT MAX(seq_id)',
'                  FROM apex_collections',
'                 WHERE collection_name = ''SEARCH'') '))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33262782251129941)
,p_event_id=>wwv_flow_imp.id(33262352750129937)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P35_BARCODE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33262978656129943)
,p_event_id=>wwv_flow_imp.id(33262352750129937)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P35_BARCODE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(34404402717626239)
,p_name=>'Disable Key 1'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(9703759774553744)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34404558437626240)
,p_event_id=>wwv_flow_imp.id(34404402717626239)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(document).off(''keydown.p35keyevents'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(34404660525626241)
,p_name=>'Enable Key 1'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(9703759774553744)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34404717774626242)
,p_event_id=>wwv_flow_imp.id(34404660525626241)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mapP35Keys();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(34404889288626243)
,p_name=>'Disable Key 2'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(9703839824553745)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34404977409626244)
,p_event_id=>wwv_flow_imp.id(34404889288626243)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(document).off(''keydown.p35keyevents'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(34405250935626247)
,p_name=>'Enable Key 2'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(9703839824553745)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34405384987626248)
,p_event_id=>wwv_flow_imp.id(34405250935626247)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mapP35Keys();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(34405010837626245)
,p_name=>'Disable Key 3'
,p_event_sequence=>160
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(9704020371553747)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34405153251626246)
,p_event_id=>wwv_flow_imp.id(34405010837626245)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(document).off(''keydown.p35keyevents'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(35547413009882705)
,p_name=>'Enable Key 5'
,p_event_sequence=>180
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11450069922525328)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(35547593684882706)
,p_event_id=>wwv_flow_imp.id(35547413009882705)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mapP35Keys();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(34405466626626249)
,p_name=>'Enable Key 3'
,p_event_sequence=>190
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(9704020371553747)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34405507121626250)
,p_event_id=>wwv_flow_imp.id(34405466626626249)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mapP35Keys();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37205753444281222)
,p_name=>'Search Item'
,p_event_sequence=>200
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(35547921164882710)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37205844635281223)
,p_event_id=>wwv_flow_imp.id(37205753444281222)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'focusOnIGLastRecordFirstCell("orders");',
'apex.region("orders").widget().interactiveGrid("getActions").invoke("selection-add-row");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(38712018438254501)
,p_name=>'Set Sub-Total'
,p_event_sequence=>210
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(37207015479281235)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38712128304254502)
,p_event_id=>wwv_flow_imp.id(38712018438254501)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P35_SUB'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TO_CHAR(SUM(n005), ''FM9990.00'' ) ',
'FROM apex_collections',
'WHERE collection_name = ''PURCHASE'''))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38712264099254503)
,p_event_id=>wwv_flow_imp.id(38712018438254501)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P35_SUB'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44271996135177703)
,p_name=>'Enable Key'
,p_event_sequence=>220
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(43697024407573546)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44272053357177704)
,p_event_id=>wwv_flow_imp.id(44271996135177703)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mapP35Keys();'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(44271767147177701)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(37207015479281235)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Orders - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>44271767147177701
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11448055231525308)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create Purchase Collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(',
'        p_collection_name => ''PURCHASE'');'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>11448055231525308
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(25490792808440413)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create Orders Collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(',
'        p_collection_name => ''ORDERS'');'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>25490792808440413
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(25492303482440429)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create Payment Collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(',
'        p_collection_name => ''PAYMENT'');'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>25492303482440429
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27427380071078123)
,p_process_sequence=>40
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create Search Collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(',
'        p_collection_name => ''SEARCH'');'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>27427380071078123
);
wwv_flow_imp.component_end;
end;
/
