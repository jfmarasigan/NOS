prompt --application/pages/page_00378
begin
--   Manifest
--     PAGE: 00378
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
 p_id=>378
,p_name=>'Reservation History Updates'
,p_alias=>'RESERVATION-HISTORY-UPDATES'
,p_page_mode=>'MODAL'
,p_step_title=>'Reservation History Updates'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Dialog-body {',
'    background-color: #056AC8;',
'    padding-block-end: var(--ut-dialog-padding-y, .1rem);',
'    padding-block-start: var(--ut-dialog-padding-y, .1rem);',
'    padding-inline-end: var(--ut-dialog-padding-x, .5rem);',
'    padding-inline-start: var(--ut-dialog-padding-x, .5rem);',
'    font-weight: 600;',
'}',
'',
'.t-Form-labelContainer {',
'    padding-block-end: var(--ut-field-padding-y, .1rem);',
'    padding-block-start: var(--ut-field-padding-y, .1rem);',
'    padding-inline-end: var(--ut-field-padding-x, .1rem);',
'    padding-inline-start: var(--ut-field-padding-x, .5rem);',
'    font-weight: 700 !important;',
'}',
'',
'.apex-item-display-only {',
'    font-size: var(--ut-field-label-font-size, .75rem);',
'    font-weight: 700 !important;',
'}',
'',
'.t-Form-inputContainer {',
'    padding-block-end: var(--ut-field-padding-y, .1rem);',
'    padding-block-start: var(--ut-field-padding-y, .1rem);',
'}',
'',
'.t-Form-inputContainer:has(#P314_AMOUNT) {',
'    max-width: 33.33% !important;',
'}',
'',
'.t-Form-labelContainer:has(#P314_AMOUNT_LABEL) {',
'    max-width: fit-content !important;',
'}',
'',
'.t-Form-fieldContainer.rel-col {',
'    flex-direction: row;',
'}',
'',
'.t-Form-labelContainer:has(#P314_GC_NO_LABEL),',
'.t-Form-labelContainer:has(#P314_GC_TYPE_LABEL),',
'.t-Form-labelContainer:has(#P314_STATUS_LABEL) {',
'    max-width: 3.5rem !important;',
'}',
'',
'.t-Form-labelContainer:has(#P314_RELEASE_LABEL),',
'.t-Form-labelContainer:has(#P314_INVOICE_DATE_LABEL){',
'    max-width: 7rem !important;',
'}',
'',
'.t-Form-labelContainer:has(#P314_ISSUED_DATE_LABEL),',
'.t-Form-labelContainer:has(#P314_EXPIRATION_LABEL) {',
'    max-width: 5rem !important;',
'}',
'',
'#header, #header2 {',
'    margin-block-end: .1rem;',
'}',
'',
'.text-white {',
'    color: white;',
'}',
'',
'.text-center {',
'    text-align: center;',
'}',
'',
'.text-right {',
'    text-align: right;',
'}',
'',
'.header-fs {',
'    font-size: 1.125rem;',
'}',
'',
'.fw-600 {',
'    font-weight: 600;',
'}',
'',
'.fw-500 {',
'    font-weight: 500;',
'}',
'',
'.pl-4 {',
'    padding-left: .4rem;',
'}',
'',
'.section-3-padding {',
'    padding-left: .8rem;',
'    padding-right: .8rem;',
'    padding-top: .4rem;',
'    padding-bottom: .4rem;',
'}',
'',
'/* section 4 start */',
'table, th, td {',
'    border-collapse: collapse;',
'    border: 1px solid #046BC8;',
'    table-layout: fixed;',
'}',
'',
'/* th, td {',
'    width: 33.33%;',
'} */',
'/* section 4 end */',
'',
'.hide {',
'    display: none;',
'}',
'',
'.width-5rem {',
'    width: 5rem;',
'}',
'',
'.width-3rem {',
'    width: 3rem;',
'}',
'',
'#table .a-GV-table {',
'    width: 100% !important;',
'}',
'',
'#table_ig {',
'    height: fit-content !important;',
'    overflow-y: auto;',
'    overflow-x: hidden;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'460'
,p_dialog_max_width=>'460'
,p_dialog_css_classes=>'inquire-dialog'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(65181453050736893)
,p_plug_name=>'History Updates'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4329702440084182)
,p_plug_display_sequence=>40
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    NULL AS "HISTORY"',
'FROM ',
'    DUAL'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(65034829136189922)
,p_plug_name=>'Header'
,p_region_name=>'header'
,p_parent_plug_id=>wwv_flow_imp.id(65181453050736893)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--accent1:t-Region--noUI:t-Region--hiddenOverflow:t-Form--leftLabels:margin-left-sm'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>20
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77535612061378962)
,p_plug_name=>'History'
,p_region_name=>'table'
,p_parent_plug_id=>wwv_flow_imp.id(65181453050736893)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT * ',
'',
'FROM ',
'    (SELECT npt036.RESERVATION_UPDATE_ID AS "RESERVATION_UPDATE_ID",',
'           npt036.DATE_CREATED AS "DATE",',
'           npt036.USER_CREATED AS "USER_NAME",',
'           npt036.UPDATED AS "UPDATED"',
'    FROM NPT036 npt036',
'    WHERE npt036.RESERVE_ID = :P378_RESERVE_NO',
'    ORDER BY npt036.RESERVATION_UPDATE_ID DESC) tbl',
'',
'WHERE rownum <= 3;'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P378_RESERVE_NO'
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
 p_id=>wwv_flow_imp.id(45464854209718716)
,p_name=>'USER_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USER_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'User Name'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(45464943889718717)
,p_name=>'UPDATED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Updated'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(45466003268718728)
,p_name=>'RESERVATION_UPDATE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RESERVATION_UPDATE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(77535914115378965)
,p_name=>'DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'CENTER'
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
 p_id=>wwv_flow_imp.id(77535668863378963)
,p_internal_uid=>77535668863378963
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>false
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
,p_fixed_header=>'PAGE'
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
 p_id=>wwv_flow_imp.id(78008085470027078)
,p_interactive_grid_id=>wwv_flow_imp.id(77535668863378963)
,p_static_id=>'324651'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(78008296200027080)
,p_report_id=>wwv_flow_imp.id(78008085470027078)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(45614614547277881)
,p_view_id=>wwv_flow_imp.id(78008296200027080)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(45464854209718716)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>160
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(45615503557277889)
,p_view_id=>wwv_flow_imp.id(78008296200027080)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(45464943889718717)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>130
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(46211356019542670)
,p_view_id=>wwv_flow_imp.id(78008296200027080)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(45466003268718728)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(78009716715027093)
,p_view_id=>wwv_flow_imp.id(78008296200027080)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(77535914115378965)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>110
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(45543617859099421)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(65181453050736893)
,p_button_name=>'Close'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Close'
,p_warn_on_unsaved_changes=>null
,p_grid_column_css_classes=>'hide'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45464631711718714)
,p_name=>'P378_RESERVE_NO'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45465590571718723)
,p_name=>'P378_HISTORY'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(65181453050736893)
,p_item_source_plug_id=>wwv_flow_imp.id(65181453050736893)
,p_source=>'HISTORY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65050857926189970)
,p_name=>'P378_HISTORY_UPDATES'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(65034829136189922)
,p_prompt=>'<text class="text-white header-fs fw-500">History Updates</text>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--preTextBlock:t-Form-fieldContainer--postTextBlock'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(45568483117099495)
,p_name=>'Close Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(45543617859099421)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45568986285099521)
,p_event_id=>wwv_flow_imp.id(45568483117099495)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(45544519183099423)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(65181453050736893)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Gift Certificate Inquire'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>45544519183099423
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(45559667599099467)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>45559667599099467
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(45544118479099421)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(65181453050736893)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Gift Certificate Inquire'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>45544118479099421
);
wwv_flow_imp.component_end;
end;
/
