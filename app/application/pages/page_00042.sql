prompt --application/pages/page_00042
begin
--   Manifest
--     PAGE: 00042
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
 p_id=>42
,p_name=>'Delivery Log Inquire Page'
,p_alias=>'DELIVERY-LOG-INQUIRE-PAGE'
,p_page_mode=>'MODAL'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p42KeyMap = {',
'    escape : (v) => {',
'        if(!withError){',
'            apex.region("delivery-log-invoice").widget().interactiveGrid(''getActions'').invoke(''save'');',
'        }',
'    }',
'}',
'',
'function mapP42Keys() {',
'    $(document).off(''keydown.p42keyevents'');',
'    $(document).on(''keydown.p42eyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p42KeyMap[key]) {',
'            ev.preventDefault();',
'            p42KeyMap[key]();',
'        }',
'    });',
'}',
'',
'function TimeError(message, cell, ig, rec){',
'    withError = true;',
'    setTimeout(() => {',
'            $( document ).ready(function() {',
'                ig.view$.grid("gotoCell", rec[0], cell);',
'            });',
'            $s(''error-msg'', message);',
'    },"100");',
'}',
'',
'var withError = false;'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'parent.$(''.ui-dialog-title'').html(''Delivery Log Batch ''+$v(''P42_BATCH'') + '' - Invoice'');',
'',
'mapP42Keys();',
'',
'const timeFields = [''dep-time'', ''arv-time''];',
'timeFields.forEach((fieldId) => {',
'  const timeField = document.getElementById(fieldId);',
'',
'  timeField.addEventListener(''keyup'', function(e){',
'    this.value = this.value',
'    .replace(/[^\d]/g, '''')',
'    .replace(/^([\d]{4})\d+$/g, ''$1'')',
'    .replace(/\B(?=(\d{2})+(?!\d{1}))/g, ":");',
'',
'});',
'});'))
,p_css_file_urls=>'#APP_FILES#css/cmn#MIN#.css'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Dialog{',
'    background-color: #056BC9;',
'}',
'.text-white{',
'    color:white;',
'}',
'.t-Dialog-body{',
'    padding-top: 0;',
'}',
'.t-Form-label{',
'    font-size: 1.125rem;',
'}',
'#save{',
'    text-align: center;',
'}',
'#error-msg{',
'    text-align: center;',
'    color: #FFD700;',
'}',
'#delivery-log-invoice_ig{',
'    height:32.75rem !important;',
'}',
'#delivery-log-invoice table,',
'#delivery-log-invoice tr,',
'#delivery-log-invoice td{',
'    font-size: 1.125rem;',
'    border: 0.0625rem solid black;',
'}',
'',
'#delivery-log-invoice th{',
'        font-size: 1rem;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_css_classes=>'delivery-inquire'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(52716275498504927)
,p_plug_name=>'Delivery Log Invoice'
,p_region_name=>'delivery-log-invoice'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>40
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select npt031.DELIVERY_INVOICE_ID,',
'       npt031.DELIVERY_ID,',
'       npt031.INVOICE_ID,',
'       npt031.INVOICE_DELIVERY,',
'       npt031.DBA_DELIVERY,',
'       npt031.ARV_TIME,',
'       npt031.DEP_TIME,',
'       npt031.USER_CREATED,',
'       npt031.DATE_CREATED,',
'       npt031.USER_UPDATED,',
'       npt031.DATE_UPDATED,',
'       npt031.LINE_ITEMS,',
'       npt031.TOTAL_AMOUNT',
'    --    count(npt002.item_id) as LINE_ITEMS,',
'    --    npt001.total_amount',
'  from NPT031 npt031',
' where npt031.delivery_id = :P42_DELIVERY_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P42_DELIVERY_ID'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(71676452461631249)
,p_name=>'DELIVERY_INVOICE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DELIVERY_INVOICE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(71676531112631250)
,p_name=>'DELIVERY_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DELIVERY_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>20
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(74545572674481801)
,p_name=>'INVOICE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INVOICE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(74545664214481802)
,p_name=>'INVOICE_DELIVERY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INVOICE_DELIVERY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_AUTO_COMPLETE'
,p_heading=>'Invoice Delivery'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'Y'
,p_attribute_05=>'7'
,p_attribute_09=>'1'
,p_attribute_10=>'Y'
,p_is_required=>false
,p_max_length=>400
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>'SELECT INVOICE_ID FROM NPT001'
,p_lov_display_extra=>true
,p_enable_filter=>false
,p_filter_is_required=>false
,p_static_id=>'invoice-delivery'
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true,',
'        width:140,',
'        noStretch: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(74545730033481803)
,p_name=>'DBA_DELIVERY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DBA_DELIVERY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'DBA Delivery'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>400
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(74545853218481804)
,p_name=>'ARV_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ARV_TIME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Arv Time'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>28
,p_enable_filter=>false
,p_filter_is_required=>false
,p_static_id=>'arv-time'
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true,',
'        width: 100,',
'        noStretch: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(74545979915481805)
,p_name=>'DEP_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEP_TIME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Dep Time'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>28
,p_enable_filter=>false
,p_filter_is_required=>false
,p_static_id=>'dep-time'
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true,',
'        width: 100,',
'        noStretch: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(74546093832481806)
,p_name=>'USER_CREATED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USER_CREATED'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>80
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(74546123611481807)
,p_name=>'DATE_CREATED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DATE_CREATED'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(74546204245481808)
,p_name=>'USER_UPDATED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USER_UPDATED'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(74546356855481809)
,p_name=>'DATE_UPDATED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DATE_UPDATED'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>110
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(74549830879481844)
,p_name=>'LINE_ITEMS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LINE_ITEMS'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Line Items'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>false
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true,',
'        width:110,',
'        noStretch:true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(74549930866481845)
,p_name=>'TOTAL_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOTAL_AMOUNT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Total Amount'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>130
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_format_mask=>'999G999G999G999G990D00'
,p_is_required=>false
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true,',
'        width:130,',
'        noStretch:true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(52716327297504928)
,p_internal_uid=>52716327297504928
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
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
,p_enable_flashback=>false
,p_define_chart_view=>false
,p_enable_download=>false
,p_download_formats=>null
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>200
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
 p_id=>wwv_flow_imp.id(55363560079003121)
,p_interactive_grid_id=>wwv_flow_imp.id(52716327297504928)
,p_static_id=>'553636'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(55363782932003121)
,p_report_id=>wwv_flow_imp.id(55363560079003121)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(74551471061482239)
,p_view_id=>wwv_flow_imp.id(55363782932003121)
,p_display_seq=>29
,p_column_id=>wwv_flow_imp.id(71676452461631249)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(74552361311482278)
,p_view_id=>wwv_flow_imp.id(55363782932003121)
,p_display_seq=>30
,p_column_id=>wwv_flow_imp.id(71676531112631250)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(74553293376482287)
,p_view_id=>wwv_flow_imp.id(55363782932003121)
,p_display_seq=>31
,p_column_id=>wwv_flow_imp.id(74545572674481801)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(74554144553482298)
,p_view_id=>wwv_flow_imp.id(55363782932003121)
,p_display_seq=>32
,p_column_id=>wwv_flow_imp.id(74545664214481802)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(74555026745482304)
,p_view_id=>wwv_flow_imp.id(55363782932003121)
,p_display_seq=>33
,p_column_id=>wwv_flow_imp.id(74545730033481803)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(74555906357482312)
,p_view_id=>wwv_flow_imp.id(55363782932003121)
,p_display_seq=>34
,p_column_id=>wwv_flow_imp.id(74545853218481804)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(74556817315482320)
,p_view_id=>wwv_flow_imp.id(55363782932003121)
,p_display_seq=>35
,p_column_id=>wwv_flow_imp.id(74545979915481805)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(74557747827482328)
,p_view_id=>wwv_flow_imp.id(55363782932003121)
,p_display_seq=>36
,p_column_id=>wwv_flow_imp.id(74546093832481806)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(74558684254482337)
,p_view_id=>wwv_flow_imp.id(55363782932003121)
,p_display_seq=>37
,p_column_id=>wwv_flow_imp.id(74546123611481807)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(74559447677482343)
,p_view_id=>wwv_flow_imp.id(55363782932003121)
,p_display_seq=>38
,p_column_id=>wwv_flow_imp.id(74546204245481808)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(74560327885482351)
,p_view_id=>wwv_flow_imp.id(55363782932003121)
,p_display_seq=>39
,p_column_id=>wwv_flow_imp.id(74546356855481809)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(81708094293775637)
,p_view_id=>wwv_flow_imp.id(55363782932003121)
,p_display_seq=>54
,p_column_id=>wwv_flow_imp.id(74549830879481844)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(81708979293775645)
,p_view_id=>wwv_flow_imp.id(55363782932003121)
,p_display_seq=>55
,p_column_id=>wwv_flow_imp.id(74549930866481845)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(67461565305426332)
,p_plug_name=>'Save Prompt'
,p_region_name=>'save'
,p_region_css_classes=>'fs-1125 text-white'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--hiddenOverflow:t-Form--stretchInputs:t-Region-orderBy--center'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>60
,p_location=>null
,p_plug_source=>'<u>Esc</u> - Save'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(74547187483481817)
,p_plug_name=>'Error Msg'
,p_region_name=>'error-msg'
,p_region_css_classes=>'fs-1125 text-white'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--hiddenOverflow:t-Form--stretchInputs:t-Region-orderBy--center'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>50
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20116803716473933)
,p_name=>'P42_BATCH'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52714491656504909)
,p_name=>'P42_DELIVERY_ID'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75084681453648131)
,p_name=>'P42_INVOICE_ID'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(55359450868980730)
,p_tabular_form_region_id=>wwv_flow_imp.id(52716275498504927)
,p_validation_name=>'Invoice Delivery Not Null'
,p_validation_sequence=>10
,p_validation=>'INVOICE_DELIVERY'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_associated_column=>'INVOICE_DELIVERY'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(52713818934504903)
,p_name=>'Append AM/PM'
,p_event_sequence=>10
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(52716275498504927)
,p_triggering_element=>'DEP_TIME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52713980457504904)
,p_event_id=>wwv_flow_imp.id(52713818934504903)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const selectedRecord = getSelectedIGRecord(''delivery-log-invoice'');',
'var grid = apex.region("delivery-log-invoice").widget().interactiveGrid(''getViews'').grid;',
'var model = grid.model;',
'var rowId = selectedRecord[0][0];',
'var ig = apex.region(''delivery-log-invoice'').widget().interactiveGrid("getViews","grid");',
'var rec = ig.model.getRecord(rowId);',
'var time = $(''#dep-time'').val();',
'var arvTime = new Date();',
'var depTime = new Date();',
'var arvTimeVal =  getSelectedIGRecord(''delivery-log-invoice'')[0][5];',
'var arvTimeHrs;',
'var arvTimeMins;',
'if(arvTimeVal.length==7){',
'    arvTimeHrs = arvTimeVal.substr(0,2);',
'    arvTimeMins = arvTimeVal.substr(3,2);',
'    if(arvTimeHrs<8||arvTimeHrs>11&&arvTimeHrs!=12){',
'        arvTimeHrs = parseInt(arvTimeHrs) + 12;',
'    }',
'    arvTime.setHours(arvTimeHrs,arvTimeMins,0);',
'}',
'else if(arvTimeVal.length==6){',
'    arvTimeHrs = arvTimeVal.substr(0,1);',
'    arvTimeMins = arvTimeVal.substr(2,2);',
'    if(arvTimeHrs<8||arvTimeHrs>11){',
'        arvTimeHrs = parseInt(arvTimeHrs) + 12;',
'    }',
'    arvTime.setHours(arvTimeHrs,arvTimeMins,0);',
'}',
'if(time!=''''){',
'    if(time.length==5){',
'        if(time.substr(0,2)<1||time.substr(0,2)>12||time.substr(3,2)>59){',
'            TimeError(''Dep Time must be valid'', ''DEP_TIME'', ig, rec);',
'        }',
'        else{',
'            if(time.substr(0,2)>=8&&time.substr(0,2)<=11){',
'                depTime.setHours(time.substr(0,2),time.substr(3,2),0);',
'                $(''#dep-time'').val($(''#dep-time'').val() + ''AM''); ',
'            }',
'            else{',
'                if(time.substr(0,2)!=12){',
'                    time = '''' + (parseInt(time.substr(0,2)) + 12) + time.substr(2,3);',
'                }',
'                depTime.setHours(time.substr(0,2),time.substr(3,2),0);',
'                if(arvTime>depTime){',
'                    TimeError(''Arv Time must not be greater than Dep Time'', ''ARV_TIME'', ig, rec)',
'                }',
'                $(''#dep-time'').val($(''#dep-time'').val() + ''PM'');',
'            }',
'        }',
'    }',
'    else if(time.length==4){',
'        if(time.substr(0,1)<1||time.substr(2,2)>59){',
'            TimeError(''Dep Time must be valid'', ''DEP_TIME'', ig, rec);',
'        }',
'        else{',
'            if(time.substr(0,1)>=8&&time.substr(0,1)<=11){',
'                depTime.setHours(time.substr(0,1),time.substr(2,2),0);',
'                if(arvTime>depTime){',
'                    TimeError(''Arv Time must not be greater than DEP Time'', ''ARV_TIME'', ig, rec);',
'                }',
'                $(''#dep-time'').val($(''#dep-time'').val() + ''AM'');',
'            }',
'            else{',
'                time = '''' + (parseInt(time.substr(0,1)) + 12) + time.substr(1,3);',
'                depTime.setHours(time.substr(0,2),time.substr(3,2),0);',
'                if(arvTime>depTime){',
'                    TimeError(''Arv Time must not be greater than Dep Time'', ''ARV_TIME'', ig, rec)',
'                }',
'                $(''#dep-time'').val($(''#dep-time'').val() + ''PM'');',
'            }',
'        }',
'    ',
'    }',
'    else{',
'        TimeError(''Dep Time must be valid'', ''DEP_TIME'', ig, rec);',
'    }',
'}',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(52714054528504905)
,p_name=>'Append AM/PM 2'
,p_event_sequence=>20
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(52716275498504927)
,p_triggering_element=>'ARV_TIME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52714100804504906)
,p_event_id=>wwv_flow_imp.id(52714054528504905)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'withError = false;',
'var time = $(''#arv-time'').val();',
'const ICON_ERROR_LARGE = ''fa fa-times-circle fa-lg'';',
'const selectedRecord = getSelectedIGRecord(''delivery-log-invoice'');',
'var grid = apex.region("delivery-log-invoice").widget().interactiveGrid(''getViews'').grid;',
'var model = grid.model;',
'var rowId = selectedRecord[0][0];',
'var ig = apex.region(''delivery-log-invoice'').widget().interactiveGrid("getViews","grid");',
'var rec = ig.model.getRecord(rowId);',
'if(time!=''''){',
'    if(time.length==5){',
'        if(time.substr(0,2)<1||time.substr(0,2)>12||time.substr(3,2)>59){',
'            TimeError(''Arv Time must be valid'',''ARV_TIME'',ig,rec);',
'        }',
'        else{',
'            if(time.substr(0,2)>=8&&time.substr(0,2)<=11){',
'                $(''#arv-time'').val($(''#arv-time'').val() + ''AM''); ',
'            }',
'            else{',
'                $(''#arv-time'').val($(''#arv-time'').val() + ''PM'');',
'            }',
'        }',
'    }',
'    else if(time.length==4){',
'        if(time.substr(0,1)<1||time.substr(2,2)>59){',
'            TimeError(''Arv Time must be valid'',''ARV_TIME'',ig,rec);',
'        }',
'        else{',
'            if(time.substr(0,1)>=8&&time.substr(0,1)<=11){',
'                $(''#arv-time'').val($(''#arv-time'').val() + ''AM'');',
'            }',
'            else{',
'                $(''#arv-time'').val($(''#arv-time'').val() + ''PM'');',
'            }',
'        }',
'    }',
'    else{',
'        TimeError(''Arv Time must be valid'',''ARV_TIME'',ig,rec);',
'    }',
'}',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(52714280238504907)
,p_name=>'Autofill Column Values'
,p_event_sequence=>30
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(52716275498504927)
,p_triggering_element=>'INVOICE_DELIVERY'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75084708270648132)
,p_event_id=>wwv_flow_imp.id(52714280238504907)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P42_INVOICE_ID'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':INVOICE_DELIVERY'
,p_attribute_07=>'INVOICE_DELIVERY'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75084842674648133)
,p_event_id=>wwv_flow_imp.id(52714280238504907)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
':P42_INVOICE_ID := :P42_INVOICE_ID;',
'END;'))
,p_attribute_02=>'P42_INVOICE_ID'
,p_attribute_03=>'P42_INVOICE_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75085214182648137)
,p_event_id=>wwv_flow_imp.id(52714280238504907)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'console.log($v(''P42_INVOICE_ID''));',
'console.log(typeof $v(''P42_INVOICE_ID''));'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52714374622504908)
,p_event_id=>wwv_flow_imp.id(52714280238504907)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'DBA_DELIVERY'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT npt009.DBA FROM NPT009 npt009, NPT001 npt001',
'WHERE npt009.customer_id = npt001.customer_id AND npt001.invoice_id = :INVOICE_DELIVERY;'))
,p_attribute_07=>'INVOICE_DELIVERY'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'ITEM_IS_NUMERIC'
,p_server_condition_expr1=>'P42_INVOICE_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74546672669481812)
,p_event_id=>wwv_flow_imp.id(52714280238504907)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'LINE_ITEMS'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COUNT(item_id)',
'FROM NPT002',
'WHERE INVOICE_ID = :INVOICE_DELIVERY;'))
,p_attribute_07=>'INVOICE_DELIVERY'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'ITEM_IS_NUMERIC'
,p_server_condition_expr1=>'P42_INVOICE_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74546712546481813)
,p_event_id=>wwv_flow_imp.id(52714280238504907)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'TOTAL_AMOUNT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT total_amount',
'FROM NPT001',
'WHERE INVOICE_ID = :INVOICE_DELIVERY;'))
,p_attribute_07=>'INVOICE_DELIVERY'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'ITEM_IS_NUMERIC'
,p_server_condition_expr1=>'P42_INVOICE_ID'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(52715917514504924)
,p_name=>'On Press Tab'
,p_event_sequence=>40
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(52716275498504927)
,p_triggering_element=>'TOTAL_AMOUNT'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.key?.toLowerCase() === ''tab'';'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52716132848504926)
,p_event_id=>wwv_flow_imp.id(52715917514504924)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region("delivery-log-invoice").widget().interactiveGrid("getActions").invoke("selection-add-row");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(74547217316481818)
,p_name=>'Clear ArvTime Errors'
,p_event_sequence=>60
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(52716275498504927)
,p_triggering_element=>'ARV_TIME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74547302726481819)
,p_event_id=>wwv_flow_imp.id(74547217316481818)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$s(''error-msg'', '''');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(74547409379481820)
,p_name=>'Clear DepTime Errors'
,p_event_sequence=>70
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(52716275498504927)
,p_triggering_element=>'DEP_TIME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74547634129481822)
,p_event_id=>wwv_flow_imp.id(74547409379481820)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$s(''error-msg'', '''');'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(55358678555980722)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(52716275498504927)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Save Interactive Grid'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
,p_internal_uid=>55358678555980722
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(55359324258980729)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(52716275498504927)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Save Interactive Grid_1'
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CASE :APEX$ROW_STATUS',
'    WHEN ''C'' THEN',
'        INSERT INTO NPT031(DELIVERY_ID, INVOICE_ID, INVOICE_DELIVERY, DBA_DELIVERY, DEP_TIME, ARV_TIME,',
'            USER_CREATED, DATE_CREATED, USER_UPDATED, DATE_UPDATED, LINE_ITEMS, TOTAL_AMOUNT)',
'        VALUES(:P42_DELIVERY_ID, :INVOICE_ID, :INVOICE_DELIVERY, :DBA_DELIVERY, :DEP_TIME, :ARV_TIME,',
'            :APP_USER, SYSDATE, :APP_USER, SYSDATE, :LINE_ITEMS, :TOTAL_AMOUNT)',
'            RETURNING DELIVERY_INVOICE_ID INTO :DELIVERY_INVOICE_ID;',
'    WHEN ''U'' THEN',
'        UPDATE NPT031 SET DELIVERY_ID = :DELIVERY_ID, INVOICE_ID = :INVOICE_ID, INVOICE_DELIVERY = :INVOICE_DELIVERY,',
'            DBA_DELIVERY = :DBA_DELIVERY, DEP_TIME = :DEP_TIME, ARV_TIME = :ARV_TIME, USER_UPDATED = :APP_USER,',
'            DATE_UPDATED = SYSDATE, LINE_ITEMS = :LINE_ITEMS, TOTAL_AMOUNT = :TOTAL_AMOUNT',
'            WHERE DELIVERY_INVOICE_ID = :DELIVERY_INVOICE_ID;',
'    END CASE;',
'END;'))
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>55359324258980729
);
wwv_flow_imp.component_end;
end;
/
