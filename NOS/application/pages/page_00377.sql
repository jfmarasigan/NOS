prompt --application/pages/page_00377
begin
--   Manifest
--     PAGE: 00377
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
 p_id=>377
,p_name=>'Reservation Creation New'
,p_alias=>'RESERVATION-CREATION-NEW'
,p_step_title=>'Reservation Creation New'
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
'    f3 : (v) => {',
'        $("#f3").trigger("click");',
'    },',
'    f4 : (v) => {',
'        $("#f4").trigger("click");',
'    },',
'    f5 : (v) => {',
'        $("#f5").trigger("click");',
'    },',
'    f8 : (v) => {',
'        $("#f8").trigger("click");',
'    },',
'    escape : (v) => {',
'        $("#exit").trigger("click");',
'    },',
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
'setTitle("Reservation Creation")',
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
'$("#f4").trigger("click");',
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
'.t-Form-labelContainer, .t-Form-inputContainer {',
'    padding-block-end: 0;',
'    padding-block-start: 0;',
'}',
'',
'.t-Form-itemWrapper {',
'    padding-block-end: var(--ut-field-label-padding-y, .25rem);',
'}',
'',
'/* add margin to interactive grid table start */',
'.t-Body-contentInner {',
'    padding-inline-end: var(--ut-body-content-padding-x, 2.5rem);',
'    padding-inline-start: var(--ut-body-content-padding-x, 2.5rem);',
'}',
'/* end */',
'',
'/* style returned values start */',
'.apex-item-display-only {',
'    font-size: 1.125rem;',
'    font-weight: 400;',
'    color: white;',
'}',
'/* end */',
'',
'#orders table, #orders tr, #orders td, #orders th {',
'     font-size: 1.125rem;',
'}',
'',
'',
'.btns {',
'    font-size: 1.125rem;',
'    color: white;',
'    font-weight: 600 !important;',
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
'.ml-1 {',
'    margin-left: 1rem;',
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
'    width: 95vw;',
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
'    padding-block-start: var(--ut-field-label-padding-y, .15rem);',
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
'}',
'',
'',
'',
'#P377_CUSTOMER_CONTAINER > .t-Form-labelContainer,',
'#P377_POINT_PERSON_CONTAINER > .t-Form-labelContainer {',
'    max-width: 14%;',
'}',
'',
'#P377_EMAIL_CONTAINER > .t-Form-labelContainer {',
'    max-width: 10%;',
'}',
'',
'#P377_TEL_NUMBER_CONTAINER > .t-Form-inputContainer,',
'#P377_FAX_NUMBER_CONTAINER > .t-Form-inputContainer {',
'    padding-left: 2.4rem;',
'}',
'',
'#P377_RESERVE_NO_CONTAINER > .t-Form-labelContainer,',
'#P377_RESERVE_DATE_CONTAINER > .t-Form-labelContainer,',
'#P377_EXPIRY_DATE_CONTAINER > .t-Form-labelContainer,',
'#P377_ORDER_WRITER_CONTAINER > .t-Form-labelContainer {',
'    max-width: 35%;',
'}',
'',
'.col-2:has(#P377_LOC_1_LABEL),',
'.col-2:has(#P377_LOC_2_LABEL),',
'.col-2:has(#P377_LOC_3_LABEL) {',
'    max-width: 5.5rem;',
'}',
'',
'.t-Form-inputContainer:has(#P377_LOC_1),',
'.t-Form-inputContainer:has(#P377_LOC_2),',
'.t-Form-inputContainer:has(#P377_LOC_3) {',
'    text-align: center;',
'    margin: 0 auto;',
'}',
'',
'.t-Form-labelContainer:has(#P377_QOH_LABEL),',
'.t-Form-labelContainer:has(#P377_LOC_1_LABEL),',
'.t-Form-labelContainer:has(#P377_LOC_2_LABEL),',
'.t-Form-labelContainer:has(#P377_LOC_3_LABEL),',
'.t-Form-labelContainer:has(#P377_SUB_LABEL),',
'.t-Form-labelContainer:has(#P377_DISCOUNT_LABEL),',
'.t-Form-labelContainer:has(#P377_TOTAL_LABEL) {',
'    text-align: left;',
'    padding-left: 1rem;',
'}',
'',
'/* css for modal start */',
'.ui-dialog-titlebar {',
'    display: none !important;',
'}',
'',
'.ui-dialog.pr-li {',
'   left: 80% !important;',
'}',
'',
'.ui-dialog.inv-bby-w {',
'    left: 78% !important;',
'}',
'',
'.ui-dialog.ship-his {',
'    left: 50% !important;',
'}',
'',
'.ui-dialog.pur-order,',
'.ui-dialog.inc-ship {',
'    left: 45% !important;',
'}',
'',
'.ui-dialog.res {',
'    left: 32% !important;',
'}',
'',
'.ui-widget-overlay.ui-front {',
'    background-color: transparent !important;',
'    opacity: 0 !important;',
'}',
'/* modal end */'))
,p_step_template=>wwv_flow_imp.id(5671392681337017)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54600645592237043)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>170
,p_location=>null
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(82103973007964535)
,p_plug_name=>'Orders'
,p_region_name=>'orders'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>50
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(82104252952964537)
,p_name=>'ITEM_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEM_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
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
 p_id=>wwv_flow_imp.id(82104270089964538)
,p_name=>'CO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
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
 p_id=>wwv_flow_imp.id(82104363644964539)
,p_name=>'ITEM_DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEM_DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
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
 p_id=>wwv_flow_imp.id(82104520980964540)
,p_name=>'QTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QTY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
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
 p_id=>wwv_flow_imp.id(82104640709964541)
,p_name=>'REG_PRICE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REG_PRICE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
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
 p_id=>wwv_flow_imp.id(82104741599964542)
,p_name=>'UOM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UOM'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
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
 p_id=>wwv_flow_imp.id(82104836502964543)
,p_name=>'DISC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
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
 p_id=>wwv_flow_imp.id(82104952051964544)
,p_name=>'DT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
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
 p_id=>wwv_flow_imp.id(82104962839964545)
,p_name=>'NET_PRICE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NET_PRICE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Net Price'
,p_heading_alignment=>'CENTER'
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
 p_id=>wwv_flow_imp.id(82105091881964546)
,p_name=>'EXTENDED_PRICE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXTENDED_PRICE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
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
 p_id=>wwv_flow_imp.id(82104117318964536)
,p_internal_uid=>82104117318964536
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
 p_id=>wwv_flow_imp.id(83562503846580131)
,p_interactive_grid_id=>wwv_flow_imp.id(82104117318964536)
,p_static_id=>'386656'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(83562717304580131)
,p_report_id=>wwv_flow_imp.id(83562503846580131)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(83563155098580135)
,p_view_id=>wwv_flow_imp.id(83562717304580131)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(82104252952964537)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(83564048477580143)
,p_view_id=>wwv_flow_imp.id(83562717304580131)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(82104270089964538)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>130
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(83564923355580151)
,p_view_id=>wwv_flow_imp.id(83562717304580131)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(82104363644964539)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>350
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(83565841738580157)
,p_view_id=>wwv_flow_imp.id(83562717304580131)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(82104520980964540)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(83566671566580164)
,p_view_id=>wwv_flow_imp.id(83562717304580131)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(82104640709964541)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>130
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(83567627952580170)
,p_view_id=>wwv_flow_imp.id(83562717304580131)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(82104741599964542)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>90
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(83568504207580176)
,p_view_id=>wwv_flow_imp.id(83562717304580131)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(82104836502964543)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(83569416136580182)
,p_view_id=>wwv_flow_imp.id(83562717304580131)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(82104952051964544)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>80
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(83570352112580189)
,p_view_id=>wwv_flow_imp.id(83562717304580131)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(82104962839964545)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(83571233770580195)
,p_view_id=>wwv_flow_imp.id(83562717304580131)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(82105091881964546)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(83613584252937847)
,p_plug_name=>'Header 2'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody:t-Form--stretchInputs:t-Form--leftLabels'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>60
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(112771655521961596)
,p_plug_name=>'Search Input'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--hiddenOverflow:t-Form--leftLabels:margin-top-sm:margin-left-sm'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>30
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(44899815455683326)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(54600645592237043)
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
 p_id=>wwv_flow_imp.id(44900299375683326)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(54600645592237043)
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
 p_id=>wwv_flow_imp.id(44944582815746004)
,p_button_sequence=>70
,p_button_name=>'Customer_Details'
,p_button_static_id=>'f4'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>F4 </u>- Customer Details'
,p_button_redirect_url=>'f?p=&APP_ID.:375:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'btns text-left'
,p_grid_column_css_classes=>'ml-1'
,p_grid_new_row=>'Y'
,p_grid_column_span=>2
,p_grid_column=>3
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(44900657443683326)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(54600645592237043)
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
 p_id=>wwv_flow_imp.id(44957151751810773)
,p_button_sequence=>80
,p_button_name=>'Change_Expiry'
,p_button_static_id=>'f5'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>F5 </u>- Change Expiry'
,p_button_redirect_url=>'f?p=&APP_ID.:376:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'btns text-left'
,p_grid_column_css_classes=>'ml-1'
,p_grid_new_row=>'N'
,p_grid_column_span=>2
,p_grid_column=>5
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(44899109124683323)
,p_button_sequence=>100
,p_button_name=>'Search-Item'
,p_button_static_id=>'f2'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u> F2 </u>  - Search Item'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns'
,p_grid_column_css_classes=>'ml-1'
,p_grid_new_row=>'N'
,p_grid_column_span=>1
,p_grid_column=>7
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(44898752576683321)
,p_button_sequence=>110
,p_button_name=>'Change-Quantity'
,p_button_static_id=>'f3'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>F3 </u> - Change Qty'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns'
,p_grid_column_css_classes=>'ml-1'
,p_grid_new_row=>'N'
,p_grid_column_span=>1
,p_grid_column=>9
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(44953063020776359)
,p_button_sequence=>120
,p_button_name=>'Reserve'
,p_button_static_id=>'f8'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>F8 </u> - Reserve'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_column_css_classes=>'ml-1'
,p_grid_new_row=>'N'
,p_grid_column_span=>1
,p_grid_column=>11
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(44898368105683321)
,p_button_sequence=>130
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
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(44897249435683318)
,p_button_sequence=>140
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
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(44897568487683320)
,p_button_sequence=>150
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
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(44897965790683321)
,p_button_sequence=>160
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
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44959294070829342)
,p_name=>'P377_PREPARED_URL'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45006461061342728)
,p_name=>'P377_LOC_1'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(83613584252937847)
,p_prompt=>'<span class="btns">LOC #1</span>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(4382138690084278)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45006733809348610)
,p_name=>'P377_LOC_2'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(83613584252937847)
,p_prompt=>'<span class="btns">LOC #2</span>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(4382138690084278)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45007047064350835)
,p_name=>'P377_LOC_3'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(83613584252937847)
,p_prompt=>'<span class="btns">LOC #3</span>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(4382138690084278)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56358637564208698)
,p_name=>'P377_SUB'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(83613584252937847)
,p_prompt=>'<span class="btns">Sub-Total:</span>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_column=>4
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--postTextBlock'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56358780801208699)
,p_name=>'P377_DISCOUNT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(83613584252937847)
,p_prompt=>'<span class="btns">Total Discount:</span>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56358818575208700)
,p_name=>'P377_TOTAL'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(83613584252937847)
,p_prompt=>'<span class="btns">Total Amount:</span>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63168278430691906)
,p_name=>'P377_URL'
,p_item_sequence=>180
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(82116077328964617)
,p_name=>'P377_BARCODE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(82103973007964535)
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
 p_id=>wwv_flow_imp.id(83183341066490775)
,p_name=>'P377_FAX_NUMBER'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(112771655521961596)
,p_prompt=>'<span class="btns">Fax Number:</span>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>4
,p_grid_column=>1
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(83183508978490777)
,p_name=>'P377_EMAIL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(112771655521961596)
,p_prompt=>'<span class="btns">Email:</span>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(83183785381490779)
,p_name=>'P377_RESERVE_NO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(112771655521961596)
,p_prompt=>'<span class="btns">Reserve No:</span>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(83624981007937914)
,p_name=>'P377_QOH'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(83613584252937847)
,p_prompt=>'<span class="btns">QOH</span>'
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
 p_id=>wwv_flow_imp.id(85064717273908531)
,p_name=>'P377_RESERVE_DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(112771655521961596)
,p_prompt=>'<span class="btns">Reserve Date:</span>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(85065006496908533)
,p_name=>'P377_EXPIRY_DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(112771655521961596)
,p_prompt=>'<span class="btns">Expiry Date:</span>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_column=>10
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(85065120884908535)
,p_name=>'P377_ORDER_WRITER'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(112771655521961596)
,p_prompt=>'<span class="btns">Order Writer:</span>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_column=>10
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(87853645918388808)
,p_name=>'P377_QTY'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(83613584252937847)
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112772578222961631)
,p_name=>'P377_CUSTOMER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(112771655521961596)
,p_prompt=>'<span class="btns">Customer (DBA):</span>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>9
,p_grid_column=>1
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112772701356961632)
,p_name=>'P377_TEL_NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(112771655521961596)
,p_prompt=>'<span class="btns">Tel. Number:</span>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>4
,p_grid_column=>1
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112772774086961633)
,p_name=>'P377_POINT_PERSON'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(112771655521961596)
,p_prompt=>'<span class="btns">Point Person:</span>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>9
,p_grid_column=>1
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(44911766239683406)
,p_computation_sequence=>30
,p_computation_item=>'P377_QOH'
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
'    NIT002.upc = :P377_BARCODE',
'ORDER BY ',
'    nit004.qty DESC',
'FETCH FIRST 3 ROWS ONLY;',
''))
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(44912125910683406)
,p_computation_sequence=>40
,p_computation_item=>'P377_QTY'
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
'    NIT002.upc = :P377_BARCODE',
'ORDER BY ',
'    nit004.qty DESC',
'FETCH FIRST 3 ROWS ONLY;',
''))
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(44821484997626624)
,p_computation_sequence=>50
,p_computation_item=>'P377_CUSTOMER'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(44821517562626625)
,p_computation_sequence=>60
,p_computation_item=>'P377_RESERVE_NO'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(44821618094626626)
,p_computation_sequence=>70
,p_computation_item=>'P377_POINT_PERSON'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(44821771941626627)
,p_computation_sequence=>80
,p_computation_item=>'P377_RESERVE_DATE'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(44821873483626628)
,p_computation_sequence=>90
,p_computation_item=>'P377_TEL_NUMBER'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(44821908350626629)
,p_computation_sequence=>100
,p_computation_item=>'P377_EMAIL'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(44822040804626630)
,p_computation_sequence=>110
,p_computation_item=>'P377_EXPIRY_DATE'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(44822143792626631)
,p_computation_sequence=>120
,p_computation_item=>'P377_FAX_NUMBER'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(44822468579626634)
,p_computation_sequence=>130
,p_computation_item=>'P377_LOC_1'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'0'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(44822550354626635)
,p_computation_sequence=>140
,p_computation_item=>'P377_LOC_2'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'0'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(44822687456626636)
,p_computation_sequence=>150
,p_computation_item=>'P377_LOC_3'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'0'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(44822724974626637)
,p_computation_sequence=>160
,p_computation_item=>'P377_ORDER_WRITER'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44928371225683431)
,p_name=>'Scan Barcode'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P377_BARCODE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44928843182683432)
,p_event_id=>wwv_flow_imp.id(44928371225683431)
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
'           AND b.upc = :P377_BARCODE;',
'     ',
'    SELECT seq_id, n001 INTO v_seq_id, v_qty ',
'    FROM apex_collections',
'    WHERE collection_name = ''PURCHASE''',
'    AND c001 = :P377_BARCODE;',
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
'            p_c001 => :P377_BARCODE,',
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
,p_attribute_02=>'P377_BARCODE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44929329875683432)
,p_event_id=>wwv_flow_imp.id(44928371225683431)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(82103973007964535)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44917640749683415)
,p_name=>'Update Quantity (Table)'
,p_event_sequence=>40
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(82103973007964535)
,p_triggering_element=>'QTY'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44918103639683417)
,p_event_id=>wwv_flow_imp.id(44917640749683415)
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
'       and c001 = :P377_BARCODE;',
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
'       and c001 = :P377_BARCODE;',
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
 p_id=>wwv_flow_imp.id(44918630135683418)
,p_event_id=>wwv_flow_imp.id(44917640749683415)
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
 p_id=>wwv_flow_imp.id(44919120112683418)
,p_event_id=>wwv_flow_imp.id(44917640749683415)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'QTY'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44931664495683437)
,p_name=>'Add Payment Collection'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(44897249435683318)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44932695519683439)
,p_event_id=>wwv_flow_imp.id(44931664495683437)
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
'                p_n001 => TO_CHAR(:P377_SUB, ''FM9990.00'' ),',
'                p_n002 => TO_CHAR(:P377_DISCOUNT, ''FM9990.00'' ),',
'                p_n003 => TO_CHAR(:P377_TOTAL, ''FM9990.00'' )',
'                );',
'END;'))
,p_attribute_02=>'P377_TOTAL'
,p_attribute_03=>'P377_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44933649266683440)
,p_event_id=>wwv_flow_imp.id(44931664495683437)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'Send Total Value'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P377_URL := apex_page.get_url(',
'       p_page   => 41,',
'       p_items  => ''P41_TOTAL'',',
'       p_values => TO_CHAR(ROUND(TO_NUMBER(REPLACE(REPLACE(:P377_TOTAL, ''$'', ''''), '','', '''')), 2), ''FM999999999.00'')',
'     );',
'END;'))
,p_attribute_02=>'P377_TOTAL'
,p_attribute_03=>'P377_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44932112090683439)
,p_event_id=>wwv_flow_imp.id(44931664495683437)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P377_URL");',
'apex.navigation.redirect(url);'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44933166136683439)
,p_event_id=>wwv_flow_imp.id(44931664495683437)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>'Disable Key'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(document).off(''keydown.p377keyevents'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44934084174683440)
,p_name=>'Set Customer Value'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(44897568487683320)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44934581938683442)
,p_event_id=>wwv_flow_imp.id(44934084174683440)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P377_CUSTOMER_FIELD'
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
 p_id=>wwv_flow_imp.id(44935076539683442)
,p_event_id=>wwv_flow_imp.id(44934084174683440)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P377_CUSTOMER_FIELD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44929739490683434)
,p_name=>'Set Total Value'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P377_DISCOUNT,P377_SUB'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44931291766683437)
,p_event_id=>wwv_flow_imp.id(44929739490683434)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_name=>'Total'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P377_TOTAL'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'TO_CHAR(TO_NUMBER(REPLACE(REPLACE(NVL(:P377_SUB, 0), ''$'', ''''), '','', '''')) - TO_NUMBER(REPLACE(REPLACE(NVL(:P377_DISCOUNT, 0), ''$'', ''''), '','', '''')), ''FM9990.00'' ) '
,p_attribute_07=>'P377_SUB,P377_DISCOUNT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44930248802683434)
,p_event_id=>wwv_flow_imp.id(44929739490683434)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_name=>'QOH'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P377_QOH'
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
'    NIT002.upc = :P377_BARCODE',
'ORDER BY ',
'    nit004.qty DESC',
'FETCH FIRST 3 ROWS ONLY;',
''))
,p_attribute_07=>'P377_BARCODE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44930727199683435)
,p_event_id=>wwv_flow_imp.id(44929739490683434)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_name=>'QTY'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P377_QTY'
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
'    NIT002.upc = :P377_BARCODE',
'ORDER BY ',
'    nit004.qty DESC',
'FETCH FIRST 3 ROWS ONLY;',
''))
,p_attribute_07=>'P377_BARCODE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44919520278683420)
,p_name=>'Focus Quantity'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(44898752576683321)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44920549336683421)
,p_event_id=>wwv_flow_imp.id(44919520278683420)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(82103973007964535)
,p_build_option_id=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44921018290683423)
,p_event_id=>wwv_flow_imp.id(44919520278683420)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P377_TOTAL,P377_SUB'
,p_build_option_id=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44920054393683420)
,p_event_id=>wwv_flow_imp.id(44919520278683420)
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
 p_id=>wwv_flow_imp.id(44926477057683428)
,p_name=>'Close Search Dialog'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(44899815455683326)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44926949048683429)
,p_event_id=>wwv_flow_imp.id(44926477057683428)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P377_BARCODE'
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
 p_id=>wwv_flow_imp.id(44927429620683429)
,p_event_id=>wwv_flow_imp.id(44926477057683428)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P377_BARCODE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44927943155683429)
,p_event_id=>wwv_flow_imp.id(44926477057683428)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P377_BARCODE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44914081777683409)
,p_name=>'Disable Key 1'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(44897568487683320)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44914596902683410)
,p_event_id=>wwv_flow_imp.id(44914081777683409)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(document).off(''keydown.p377keyevents'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44914998897683412)
,p_name=>'Enable Key 1'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(44897568487683320)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44915489889683412)
,p_event_id=>wwv_flow_imp.id(44914998897683412)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mapP377Keys();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44915881686683414)
,p_name=>'Disable Key 2'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(44899815455683326)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44916337026683414)
,p_event_id=>wwv_flow_imp.id(44915881686683414)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(document).off(''keydown.p377keyevents'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44922380377683425)
,p_name=>'Enable Key 2'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(44899815455683326)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44922813609683425)
,p_event_id=>wwv_flow_imp.id(44922380377683425)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mapP377Keys();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44921481265683423)
,p_name=>'Disable Key 3'
,p_event_sequence=>160
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(44900299375683326)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44921987896683423)
,p_event_id=>wwv_flow_imp.id(44921481265683423)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(document).off(''keydown.p377keyevents'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44935499645683443)
,p_name=>'Enable Key 5'
,p_event_sequence=>180
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(44897249435683318)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44935959469683443)
,p_event_id=>wwv_flow_imp.id(44935499645683443)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mapP377Keys();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44916768587683415)
,p_name=>'Enable Key 3'
,p_event_sequence=>190
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(44900299375683326)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44917216633683415)
,p_event_id=>wwv_flow_imp.id(44916768587683415)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mapP377Keys();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44923229127683425)
,p_name=>'Search Item'
,p_event_sequence=>200
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(44899109124683323)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44923711410683425)
,p_event_id=>wwv_flow_imp.id(44923229127683425)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'focusOnIGLastRecordFirstCell("orders");',
'apex.region("orders").widget().interactiveGrid("getActions").invoke("selection-add-row");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44924138825683426)
,p_name=>'Set Sub-Total'
,p_event_sequence=>210
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(82103973007964535)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44925133214683426)
,p_event_id=>wwv_flow_imp.id(44924138825683426)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P377_SUB'
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
 p_id=>wwv_flow_imp.id(44924607439683426)
,p_event_id=>wwv_flow_imp.id(44924138825683426)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P377_SUB'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44925508556683428)
,p_name=>'Enable Key'
,p_event_sequence=>220
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(44898368105683321)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44926080451683428)
,p_event_id=>wwv_flow_imp.id(44925508556683428)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mapP377Keys();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44947611808767339)
,p_name=>'On Search Dialog Close'
,p_event_sequence=>230
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(44944582815746004)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44951554269767343)
,p_event_id=>wwv_flow_imp.id(44947611808767339)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Set Customer DBA'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P377_CUSTOMER'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P375_CUSTOMER_DBA'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44952064510767345)
,p_event_id=>wwv_flow_imp.id(44947611808767339)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'Set Point Person'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P377_POINT_PERSON'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P375_POINT_PERSON'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44952502476767345)
,p_event_id=>wwv_flow_imp.id(44947611808767339)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>'Set Telephone Number'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P377_TEL_NUMBER'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P375_TELEPHONE_NUMBER'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44949524353767342)
,p_event_id=>wwv_flow_imp.id(44947611808767339)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_name=>'Set Fax Number'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P377_FAX_NUMBER'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P375_FAX_NUMBER'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44950052562767342)
,p_event_id=>wwv_flow_imp.id(44947611808767339)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_name=>'Set Email'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P377_EMAIL'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P375_EMAIL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44948006245767340)
,p_event_id=>wwv_flow_imp.id(44947611808767339)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_name=>'Set Reserve Date'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P377_RESERVE_DATE'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'SYSDATE'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44948590759767340)
,p_event_id=>wwv_flow_imp.id(44947611808767339)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_name=>'Set Expiry Date'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P377_EXPIRY_DATE'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- SYSDATE + 90',
'ADD_MONTHS( SYSDATE, 3 )'))
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44822397705626633)
,p_event_id=>wwv_flow_imp.id(44947611808767339)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_name=>'Set Order Writer'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P377_ORDER_WRITER'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':app_user'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44823745330626647)
,p_event_id=>wwv_flow_imp.id(44947611808767339)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_name=>'Reset Reserve No'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P377_RESERVE_NO'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'Null'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44951095565767343)
,p_event_id=>wwv_flow_imp.id(44947611808767339)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(112771655521961596)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44950568077767342)
,p_event_id=>wwv_flow_imp.id(44947611808767339)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'N'
,p_name=>'To select 1st cell of the table'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(() => {',
'  $( document ).ready(function() {',
'    $(".a-GV-cell").first().trigger("click");',
' });',
'}, "1000");'))
,p_build_option_id=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44953293368783167)
,p_name=>'Add Reservation'
,p_event_sequence=>240
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(44953063020776359)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44954119387783168)
,p_event_id=>wwv_flow_imp.id(44953293368783167)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'BEGIN',
'    INSERT INTO NPT018 (',
'        RESERVE_ID, CUSTOMER_ID, ',
'        EXPIRY_DATE, DESCRIPTION, USER_CREATED, DATE_CREATED, POINT_PERSON,',
'        TEL_NUMBER, FAX, EMAIL, RESERVE_STATUS_ID ',
'    )',
'    VALUES (',
'        (SELECT NVL(MAX(RESERVE_ID), 0) + 1 FROM NPT018), (SELECT CUSTOMER_ID FROM NPT009 WHERE UPPER(DBA) = UPPER(:P377_CUSTOMER)), ',
'        :P377_EXPIRY_DATE, ''test description'', :P377_ORDER_WRITER, :P377_RESERVE_DATE, :P377_POINT_PERSON,',
'        :P377_TEL_NUMBER, :P377_FAX_NUMBER, :P377_EMAIL, 1',
'    )',
'',
'    RETURNING RESERVE_ID INTO :P377_RESERVE_NO;',
'',
'END;',
''))
,p_attribute_02=>'P377_CUSTOMER,P377_POINT_PERSON,P377_TEL_NUMBER,P377_FAX_NUMBER,P377_EMAIL,P377_RESERVE_DATE,P377_EXPIRY_DATE,P377_ORDER_WRITER'
,p_attribute_03=>'P377_RESERVE_NO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44953607699783167)
,p_event_id=>wwv_flow_imp.id(44953293368783167)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.message.showPageSuccess( "Successfully added reservation" );',
'setTimeout(function() {',
'    $(''.t-Button--closeAlert'').click();',
'}, 3000);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44822920001626639)
,p_name=>'On Dialog Closed'
,p_event_sequence=>260
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(44957151751810773)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44823154878626641)
,p_event_id=>wwv_flow_imp.id(44822920001626639)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Set New Expiry Date'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P377_EXPIRY_DATE'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P376_NEW_EXPIRY_DATE'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44824077521626650)
,p_event_id=>wwv_flow_imp.id(44822920001626639)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'BEGIN',
'    UPDATE NPT018',
'        SET EXPIRY_DATE = :P377_EXPIRY_DATE,',
'            USER_UPDATE = :app_user,',
'            DATE_UPDATED = SYSDATE',
'        WHERE RESERVE_ID = :P377_RESERVE_NO;',
'END;'))
,p_attribute_02=>'P377_RESERVE_NO,P377_EXPIRY_DATE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45463367385718701)
,p_event_id=>wwv_flow_imp.id(44822920001626639)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.message.showPageSuccess( "Successfully updated expiry date" );',
'setTimeout(function() {',
'    $(''.t-Button--closeAlert'').click();',
'}, 3000);'))
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P377_RESERVE_NO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44823095458626640)
,p_event_id=>wwv_flow_imp.id(44822920001626639)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P377_EXPIRY_DATE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(44908183077683371)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(82103973007964535)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Orders - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>44908183077683371
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(44912499577683406)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create Purchase Collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(',
'        p_collection_name => ''PURCHASE'');'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>44912499577683406
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(44912843941683406)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create Orders Collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(',
'        p_collection_name => ''ORDERS'');'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>44912843941683406
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(44913219611683407)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create Payment Collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(',
'        p_collection_name => ''PAYMENT'');'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>44913219611683407
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(44913699060683407)
,p_process_sequence=>40
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create Search Collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(',
'        p_collection_name => ''SEARCH'');'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>44913699060683407
);
wwv_flow_imp.component_end;
end;
/
