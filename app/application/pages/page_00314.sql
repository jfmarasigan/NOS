prompt --application/pages/page_00314
begin
--   Manifest
--     PAGE: 00314
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
 p_id=>314
,p_name=>'Gift Certificate Inquire'
,p_alias=>'GIFT-CERTIFICATE-INQUIRE'
,p_page_mode=>'MODAL'
,p_step_title=>'Gift Certificate Inquire'
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
'.t-Form-inputContainer:has(#P314_REMAINING_BALANCE) {',
'    padding-inline-start: 0;',
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
'th, td {',
'    width: 33.33%;',
'}',
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
'    height: 80px !important;',
'    overflow-y: auto;',
'    overflow-x: hidden;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'700'
,p_dialog_max_width=>'700'
,p_dialog_css_classes=>'inquire-dialog'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19638406588637475)
,p_plug_name=>'Gift Certificate Inquire'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4329702440084182)
,p_plug_display_sequence=>50
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    NULL AS "GIFT_CERTIFICATE_BATCH_ID",',
'    NULL AS "GIFT_CERTIFICATE_NAME",',
'    NULL AS "AMOUNT",',
'    NULL AS "GC_TYPE",',
'    NULL AS "DATE_ISSUED",',
'    NULL AS "EXPIRY_DATE",',
'    NULL AS "DESCRIPTION_1",',
'    NULL AS "DESCRIPTION_2",',
'    NULL AS "THIS_ENTITIES",',
'    NULL AS "REMARKS",',
'    NULL AS "BEST_WISHES"',
'FROM ',
'    DUAL'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19491523873090502)
,p_plug_name=>'Section 1'
,p_parent_plug_id=>wwv_flow_imp.id(19638406588637475)
,p_region_css_classes=>'pl-4'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--hiddenOverflow:t-Form--leftLabels:margin-left-sm:margin-right-sm'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>40
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19491634126090503)
,p_plug_name=>'Section 2'
,p_parent_plug_id=>wwv_flow_imp.id(19638406588637475)
,p_region_css_classes=>'pl-4'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--hiddenOverflow:t-Form--leftLabels:margin-left-sm:margin-right-sm'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>60
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19491782674090504)
,p_plug_name=>'Header'
,p_region_name=>'header'
,p_parent_plug_id=>wwv_flow_imp.id(19638406588637475)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--accent1:t-Region--noUI:t-Region--hiddenOverflow:t-Form--leftLabels:margin-left-sm'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>20
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26316549188216545)
,p_plug_name=>'Section 3'
,p_parent_plug_id=>wwv_flow_imp.id(19638406588637475)
,p_region_css_classes=>'section-3-padding'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--hiddenOverflow:t-Form--leftLabels:margin-left-sm:margin-right-sm'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>70
,p_plug_grid_column_span=>4
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31992565599279544)
,p_plug_name=>'Section 4'
,p_region_name=>'table'
,p_parent_plug_id=>wwv_flow_imp.id(19638406588637475)
,p_region_template_options=>'#DEFAULT#:margin-right-lg'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>110
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT npt033.CASH_INVOICE_ID AS "INVOICE_NO",',
'       npt021.DATE_CREATED AS "DATE",',
'       npt033.TOTAL_AMOUNT AS "INVOICE_AMOUNT"',
'',
'FROM NPT033 npt033',
'',
'JOIN NPT014 npt014 ON npt033.CASH_INVOICE_ID = npt014.CASH_INVOICE_ID',
'',
'JOIN NPT021 npt021 ON npt014.PAYMENT_ID = npt021.PAYMENT_ID',
'',
'JOIN NPT020 npt020 ON npt021.GIFT_CERTIFICATE_ID = npt020.GIFT_CERTIFICATE_ID',
'',
'WHERE npt020.GIFT_CERTIFICATE_ID = :P314_GET_SELECTED_GC_NO;'))
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
 p_id=>wwv_flow_imp.id(31992741927279546)
,p_name=>'INVOICE_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INVOICE_NO'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Invoice No'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(31992867653279547)
,p_name=>'DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'RIGHT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>200
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
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
 p_id=>wwv_flow_imp.id(31992929620279548)
,p_name=>'INVOICE_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INVOICE_AMOUNT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Invoice Amount'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
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
 p_id=>wwv_flow_imp.id(31992622401279545)
,p_internal_uid=>31992622401279545
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
 p_id=>wwv_flow_imp.id(32465039007927660)
,p_interactive_grid_id=>wwv_flow_imp.id(31992622401279545)
,p_static_id=>'324651'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(32465249737927662)
,p_report_id=>wwv_flow_imp.id(32465039007927660)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(32465745696927667)
,p_view_id=>wwv_flow_imp.id(32465249737927662)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(31992741927279546)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(32466670252927675)
,p_view_id=>wwv_flow_imp.id(32465249737927662)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(31992867653279547)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(32467592537927679)
,p_view_id=>wwv_flow_imp.id(32465249737927662)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(31992929620279548)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19646921399637496)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(19638406588637475)
,p_button_name=>'Close'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Close'
,p_warn_on_unsaved_changes=>null
,p_grid_column_css_classes=>'hide'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19491980225090506)
,p_name=>'P314_GIFT_CERTIFICATE_INQUIRE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(19491782674090504)
,p_prompt=>'<text class="text-white header-fs fw-500">Gift Certificate Inquire</text>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--preTextBlock:t-Form-fieldContainer--postTextBlock'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19639226616637482)
,p_name=>'P314_GC_NO'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(19491523873090502)
,p_item_source_plug_id=>wwv_flow_imp.id(19638406588637475)
,p_prompt=>'Gc No:'
,p_source=>'GIFT_CERTIFICATE_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19639693393637485)
,p_name=>'P314_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(19491523873090502)
,p_item_source_plug_id=>wwv_flow_imp.id(19638406588637475)
,p_prompt=>'Status:'
,p_source=>'AMOUNT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19640012699637485)
,p_name=>'P314_GC_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(19491523873090502)
,p_item_source_plug_id=>wwv_flow_imp.id(19638406588637475)
,p_prompt=>'Type:'
,p_source=>'GC_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19640438116637487)
,p_name=>'P314_ISSUED_DATE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(19491523873090502)
,p_item_source_plug_id=>wwv_flow_imp.id(19638406588637475)
,p_prompt=>'Issue Date:'
,p_source=>'DATE_ISSUED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19640892038637487)
,p_name=>'P314_EXPIRATION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(19491523873090502)
,p_item_source_plug_id=>wwv_flow_imp.id(19638406588637475)
,p_prompt=>'Expiration:'
,p_source=>'EXPIRY_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19641290105637487)
,p_name=>'P314_DESCRIPTION_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(19491634126090503)
,p_item_source_plug_id=>wwv_flow_imp.id(19638406588637475)
,p_prompt=>'Description 1:'
,p_source=>'DESCRIPTION_1'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19641696701637489)
,p_name=>'P314_DESCRIPTION_2'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(19491634126090503)
,p_item_source_plug_id=>wwv_flow_imp.id(19638406588637475)
,p_prompt=>'Description 2:'
,p_source=>'DESCRIPTION_2'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19642012000637489)
,p_name=>'P314_THIS_ENTITLES'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(19491634126090503)
,p_item_source_plug_id=>wwv_flow_imp.id(19638406588637475)
,p_prompt=>'This Entities:'
,p_source=>'THIS_ENTITIES'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19642473900637489)
,p_name=>'P314_REMARKS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(19491634126090503)
,p_item_source_plug_id=>wwv_flow_imp.id(19638406588637475)
,p_prompt=>'Remarks:'
,p_source=>'REMARKS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19642887314637490)
,p_name=>'P314_BEST_WISHES'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(19491634126090503)
,p_item_source_plug_id=>wwv_flow_imp.id(19638406588637475)
,p_prompt=>'Best Wishes:'
,p_source=>'BEST_WISHES'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26315716817216537)
,p_name=>'P314_RECIPIENT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(19491634126090503)
,p_item_source_plug_id=>wwv_flow_imp.id(19638406588637475)
,p_prompt=>'Recipient:'
,p_source=>'BEST_WISHES'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26315837106216538)
,p_name=>'P314_EVENT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(19491634126090503)
,p_item_source_plug_id=>wwv_flow_imp.id(19638406588637475)
,p_prompt=>'Event:'
,p_source=>'BEST_WISHES'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26315927708216539)
,p_name=>'P314_RELEASE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(19491523873090502)
,p_item_source_plug_id=>wwv_flow_imp.id(19638406588637475)
,p_prompt=>'Release w/ Inv:'
,p_source=>'DATE_ISSUED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26316065590216540)
,p_name=>'P314_INVOICE_DATE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(19491523873090502)
,p_item_source_plug_id=>wwv_flow_imp.id(19638406588637475)
,p_prompt=>'Invoice Date:'
,p_source=>'DATE_ISSUED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26316470053216544)
,p_name=>'P314_AMOUNT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(26316549188216545)
,p_item_source_plug_id=>wwv_flow_imp.id(19638406588637475)
,p_prompt=>'Amount:'
,p_source=>'BEST_WISHES'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26316626113216546)
,p_name=>'P314_REMAINING_BALANCE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(26316549188216545)
,p_item_source_plug_id=>wwv_flow_imp.id(19638406588637475)
,p_prompt=>'Remaining Balance:'
,p_source=>'BEST_WISHES'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>8
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31990610374279525)
,p_name=>'P314_GET_SELECTED_GC_NO'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31991064113279529)
,p_name=>'P314_GC_TYPE_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(19491523873090502)
,p_item_source_plug_id=>wwv_flow_imp.id(19638406588637475)
,p_source=>'GC_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74198151708493907)
,p_name=>'P314_SET_DETAILS'
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77935366614036537)
,p_name=>'P314_IS_DONATION'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19647045166637496)
,p_name=>'Close Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(19646921399637496)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19647808574637501)
,p_event_id=>wwv_flow_imp.id(19647045166637496)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(31990799541279526)
,p_name=>'Get GC No'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74198026806493906)
,p_event_id=>wwv_flow_imp.id(31990799541279526)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P314_SET_DETAILS'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT ',
'        (CASE ',
'            WHEN :P314_IS_DONATION = ''Y'' THEN npt020.DONATION_GC_NO',
'            ELSE npt020.REGULAR_GC_NO',
'         END',
'        ) || '',,,'' || ',
'        npm013.GC_TYPE_CODE || '' - '' || npm013.TYPE_NAME || '',,,'' ||',
'',
'        ( CASE npt020.GC_STATUS_ID',
'            -- 1 for printed status',
'            WHEN 1 THEN npm014.GC_STATUS_NAME || '' - '' || TO_CHAR(npt020.PRINT_DATE, ''MM/DD/YYYY'')',
'',
'            -- 2 for released status',
'            WHEN 2 THEN npm014.GC_STATUS_NAME || '' - '' || TO_CHAR(npt020.RELEASE_DATE, ''MM/DD/YYYY'')',
'',
'            -- 3 for redeemed status',
'            WHEN 3 THEN npm014.GC_STATUS_NAME || '' - '' || TO_CHAR(npt020.REDEEMED_DATE, ''MM/DD/YYYY'')',
'',
'            -- 4 for expired status',
'            WHEN 4 THEN npm014.GC_STATUS_NAME || '' - '' || TO_CHAR(npt020.EXPIRY_DATE, ''MM/DD/YYYY'')',
'',
'            -- 5 for voided status',
'            WHEN 5 THEN npm014.GC_STATUS_NAME || '' - '' || TO_CHAR(npt020.DATE_UPDATED, ''MM/DD/YYYY'')',
'',
'            -- 6 for created status',
'            WHEN 6 THEN npm014.GC_STATUS_NAME || '' - '' || TO_CHAR(npt020.DATE_CREATED, ''MM/DD/YYYY'')',
'        END) || '',,,'' ||',
'',
'        TO_CHAR(npt020.ISSUE_DATE, ''MM/DD/YYYY'') || '',,,'' || ',
'        TO_CHAR(npt020.EXPIRY_DATE, ''MM/DD/YYYY'') || '',,,'' ||',
'        npt020.DESCRIPTION_1 || '',,,'' || npt020.DESCRIPTION_2 || '',,,'' || ',
'        npt020.THIS_ENTITLES || '',,,'' || npt020.REMARKS       || '',,,'' || ',
'        npt020.BEST_WISHES   || '',,,'' || npt020.RECIPIENT     || '',,,'' || ',
'        npt020.EVENT         || '',,,'' || ',
'        ',
'        TO_CHAR(npt020.AMOUNT, ''999,999,999.00'')       || '',,,'' || ',
'        TO_CHAR(npt020.BALANCE, ''999,999,999.00'')',
'',
'    INTO ',
'        :P314_SET_DETAILS',
'',
'    FROM NPT020 npt020',
'',
'    JOIN NPM013 npm013 ON npm013.GC_TYPE_ID = npt020.GC_TYPE_ID',
'    ',
'    JOIN NPM014 npm014 ON npt020.GC_STATUS_ID = npm014.GC_STATUS_ID',
'',
'    WHERE ',
'        ',
'        (:P314_IS_DONATION = ''Y'' AND npt020.DONATION_GC_NO = :P314_GET_SELECTED_GC_NO)',
'',
'        OR',
'        ',
'        (:P314_IS_DONATION != ''Y'' AND npt020.REGULAR_GC_NO = :P314_GET_SELECTED_GC_NO);',
'    ',
'    RETURN :P314_SET_DETAILS;',
'END;'))
,p_attribute_07=>'P314_GET_SELECTED_GC_NO,P314_IS_DONATION'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74198239063493908)
,p_event_id=>wwv_flow_imp.id(31990799541279526)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// SET DETAILS',
'let details = apex.item("P314_SET_DETAILS").getValue();',
'detailsArray = details.split(",,,");',
'',
'// SET DETAILS',
'',
'apex.item("P314_GC_NO").setValue(detailsArray[0]);',
'apex.item("P314_GC_TYPE").setValue(detailsArray[1]);',
'apex.item("P314_STATUS").setValue(detailsArray[2]);',
'apex.item("P314_ISSUED_DATE").setValue(detailsArray[3]);',
'apex.item("P314_EXPIRATION").setValue(detailsArray[4]);',
'',
'apex.item("P314_DESCRIPTION_1").setValue(detailsArray[5]);',
'apex.item("P314_DESCRIPTION_2").setValue(detailsArray[6]);',
'apex.item("P314_THIS_ENTITLES").setValue(detailsArray[7]);',
'apex.item("P314_REMARKS").setValue(detailsArray[8]);',
'apex.item("P314_BEST_WISHES").setValue(detailsArray[9]);',
'apex.item("P314_RECIPIENT").setValue(detailsArray[10]);',
'apex.item("P314_EVENT").setValue(detailsArray[11]);',
'',
'apex.item("P314_AMOUNT").setValue(detailsArray[12]);',
'apex.item("P314_REMAINING_BALANCE").setValue(detailsArray[13]);'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31992332618279542)
,p_event_id=>wwv_flow_imp.id(31990799541279526)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_name=>'Set Invoice ID'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P314_RELEASE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'type_cash VARCHAR(20);',
'type_cod VARCHAR(20);',
'',
'BEGIN',
'    SELECT INVOICE_ID INTO type_cash',
'    FROM NPT020',
'    WHERE ',
'        (:P314_IS_DONATION = ''Y'' AND npt020.DONATION_GC_NO = :P314_GET_SELECTED_GC_NO)',
'        OR',
'        (:P314_IS_DONATION != ''Y'' AND npt020.REGULAR_GC_NO = :P314_GET_SELECTED_GC_NO);',
'',
'',
'    SELECT CASH_INVOICE_ID INTO type_cod',
'    FROM NPT020',
'    WHERE ',
'        (:P314_IS_DONATION = ''Y'' AND npt020.DONATION_GC_NO = :P314_GET_SELECTED_GC_NO)',
'        OR',
'        (:P314_IS_DONATION != ''Y'' AND npt020.REGULAR_GC_NO = :P314_GET_SELECTED_GC_NO);',
'',
'    IF type_cash > 0 AND (type_cod IS NULL OR type_cod = 0) THEN',
'        RETURN type_cash;',
'    ELSIF type_cod > 0 THEN',
'        RETURN type_cod;',
'    ELSE',
'        RETURN NULL;',
'    END IF;',
'END;'))
,p_attribute_07=>'P314_GET_SELECTED_GC_NO,P314_IS_DONATION'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31992494194279543)
,p_event_id=>wwv_flow_imp.id(31990799541279526)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_name=>'Set Invoice Date'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P314_INVOICE_DATE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'type_cash VARCHAR(20);',
'type_cod VARCHAR(20);',
'',
'BEGIN',
'',
'    ',
'    SELECT INVOICE_ID INTO type_cod',
'    FROM NPT020',
'    WHERE GIFT_CERTIFICATE_ID = :P314_GET_SELECTED_GC_NO;',
'    ',
'    SELECT CASH_INVOICE_ID INTO type_cash',
'    FROM NPT020',
'    WHERE ',
'        (:P314_IS_DONATION = ''Y'' AND npt020.DONATION_GC_NO = :P314_GET_SELECTED_GC_NO)',
'        OR',
'        (:P314_IS_DONATION != ''Y'' AND npt020.REGULAR_GC_NO = :P314_GET_SELECTED_GC_NO);',
'',
'',
'    IF type_cash > 0 AND (type_cod IS NULL OR type_cod = 0) THEN',
'',
'        SELECT TO_CHAR(DATE_CREATED, ''MM/DD/YYYY'') INTO :P314_INVOICE_DATE',
'        FROM NPT033 npt033',
'        WHERE npt033.CASH_INVOICE_ID = type_cash;',
'',
'        RETURN :P314_INVOICE_DATE;',
'',
'    ELSIF type_cod > 0 THEN',
'',
'        SELECT TO_CHAR(DATE_CREATED, ''MM/DD/YYYY'') INTO :P314_INVOICE_DATE',
'        FROM NPT001 npt001',
'        WHERE npt001.INVOICE_ID = type_cod;',
'',
'        RETURN :P314_INVOICE_DATE;',
'',
'    ELSE',
'        RETURN NULL;',
'    END IF;',
'END;'))
,p_attribute_07=>'P314_GET_SELECTED_GC_NO,P314_IS_DONATION'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19649939131637507)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(19638406588637475)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Gift Certificate Inquire'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>19649939131637507
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19650330823637509)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>19650330823637509
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19649548228637507)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(19638406588637475)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Gift Certificate Inquire'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>19649548228637507
);
wwv_flow_imp.component_end;
end;
/
