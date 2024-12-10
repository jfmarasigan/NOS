prompt --application/pages/page_00201
begin
--   Manifest
--     PAGE: 00201
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
 p_id=>201
,p_name=>'Invoice History'
,p_alias=>'INVOICE-HISTORY'
,p_step_title=>'Invoice History'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APP_FILES#js/cmn#MIN#.js',
'#APP_FILES#js/inv-hist#MIN#.js'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP201Keys();',
'setTitle("Invoice History");',
'initialize();'))
,p_css_file_urls=>'#APP_FILES#css/inv-hist#MIN#.css'
,p_step_template=>wwv_flow_imp.id(5671392681337017)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21860005938134150)
,p_plug_name=>'Delivery Details'
,p_region_name=>'delivery-details'
,p_region_css_classes=>'js-dialog-size600x530'
,p_region_template_options=>'js-dialog-autoheight:js-modal:js-draggable:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_04'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(24802977041448001)
,p_plug_name=>'Checkout Details'
,p_region_name=>'checkout-details'
,p_parent_plug_id=>wwv_flow_imp.id(21860005938134150)
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(24803001357448002)
,p_plug_name=>'Post Delivery Details'
,p_region_name=>'post-delivery-details'
,p_parent_plug_id=>wwv_flow_imp.id(21860005938134150)
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(58715331733665448)
,p_plug_name=>'Search Bar'
,p_title=>'Search:'
,p_region_name=>'search-bar'
,p_region_css_classes=>'is-active-modal'
,p_region_template_options=>'js-dialog-autoheight:js-modal:js-draggable:js-dialog-size600x400:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_04'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(58716453846665459)
,p_plug_name=>'Search Field'
,p_region_name=>'search-field'
,p_parent_plug_id=>wwv_flow_imp.id(58715331733665448)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody:margin-bottom-none'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(58715670971665451)
,p_plug_name=>'Buttons'
,p_region_css_classes=>'menu-buttons'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody:margin-bottom-none:margin-left-md:margin-right-md'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>50
,p_plug_grid_row_css_classes=>'buttons-row'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="shipment-buttons1"></div>',
'<div class="shipment-buttons2"></div>'))
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(61607750190714926)
,p_plug_name=>'Invoice History'
,p_region_name=>'inv-hist-ig'
,p_region_template_options=>'#DEFAULT#:margin-left-md:margin-right-md'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT rownum row_id,',
'       null invoice_number,',
'       null legal_name,',
'       null "DBA",',
'       null amount,',
'       null invoice_date',
'  FROM dual'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P201_SEARCH_INVOICE,P201_SEARCH_LEGAL_NAME,P201_SEARCH_DBA'
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
 p_id=>wwv_flow_imp.id(21859469345134144)
,p_name=>'INVOICE_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INVOICE_NUMBER'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Invoice Number'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
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
,p_duplicate_value=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(21859522447134145)
,p_name=>'LEGAL_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LEGAL_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Legal Name'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
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
,p_duplicate_value=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(21859609704134146)
,p_name=>'DBA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DBA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'DBA'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
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
,p_duplicate_value=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(21859731313134147)
,p_name=>'AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AMOUNT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Amount'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
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
,p_duplicate_value=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(21859835343134148)
,p_name=>'INVOICE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INVOICE_DATE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Invoice Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
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
,p_duplicate_value=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(46595084461142119)
,p_name=>'ROW_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROW_ID'
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(61607799796714927)
,p_internal_uid=>61607799796714927
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
,p_fixed_header_max_height=>600
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
 p_id=>wwv_flow_imp.id(61630736075779050)
,p_interactive_grid_id=>wwv_flow_imp.id(61607799796714927)
,p_static_id=>'150828'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(61630968471779050)
,p_report_id=>wwv_flow_imp.id(61630736075779050)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(24760686697035954)
,p_view_id=>wwv_flow_imp.id(61630968471779050)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(21859469345134144)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(24761533173035965)
,p_view_id=>wwv_flow_imp.id(61630968471779050)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(21859522447134145)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(24762405326035971)
,p_view_id=>wwv_flow_imp.id(61630968471779050)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(21859609704134146)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(24763309583035978)
,p_view_id=>wwv_flow_imp.id(61630968471779050)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(21859731313134147)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(24764278778035984)
,p_view_id=>wwv_flow_imp.id(61630968471779050)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(21859835343134148)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(46727248815981564)
,p_view_id=>wwv_flow_imp.id(61630968471779050)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(46595084461142119)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(24746067768008015)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(58715670971665451)
,p_button_name=>'SEARCH'
,p_button_static_id=>'btn-search'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>S</u> - Search'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'s-button'
,p_button_cattributes=>'tabindex="-1"'
,p_grid_new_row=>'Y'
,p_grid_column_span=>3
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(24745616323008015)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(58715670971665451)
,p_button_name=>'INQUIRE_INVOICE'
,p_button_static_id=>'btn-inquire'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>I</u> - Inquire Invoice'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'s-button'
,p_button_cattributes=>'tabindex="-1"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>3
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(21859924478134149)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(58715670971665451)
,p_button_name=>'DELIVERY_DETAILS'
,p_button_static_id=>'btn-delivery'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>D</u> - Delivery Details'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'s-button'
,p_button_cattributes=>'tabindex="-1"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>3
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(24746492830008015)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(58715670971665451)
,p_button_name=>'TOP'
,p_button_static_id=>'btn-top'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>Home</u> - Top'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'s-button'
,p_button_cattributes=>'tabindex="-1"'
,p_grid_new_row=>'Y'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(24746805966008017)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(58715670971665451)
,p_button_name=>'BOTTOM'
,p_button_static_id=>'btn-end'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>End</u> - Bottom'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'s-button'
,p_button_cattributes=>'tabindex="-1"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21859391213134143)
,p_name=>'P201_SEARCH_DBA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(58716453846665459)
,p_prompt=>'DBA:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>10
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24803132199448003)
,p_name=>'P201_DDELIVERY_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(24802977041448001)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Delivery Date:'
,p_format_mask=>'MM/DD/YYYY'
,p_source=>'P201_ID'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24803200735448004)
,p_name=>'P201_DCHECKER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(24802977041448001)
,p_prompt=>'Checker:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24803326693448005)
,p_name=>'P201_DDELIVERY_MAN'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(24802977041448001)
,p_prompt=>'Delivery Man:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24803488166448006)
,p_name=>'P201_DDEPARTURE_TIME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(24802977041448001)
,p_prompt=>'Departure Time:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24803553001448007)
,p_name=>'P201_DVAN_NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(24802977041448001)
,p_prompt=>'Van Number:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24804012155448012)
,p_name=>'P201_DARRIVAL_TIME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(24803001357448002)
,p_prompt=>'Arrival Time:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24804131095448013)
,p_name=>'P201_DRECEIVED_BY'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(24803001357448002)
,p_prompt=>'Received By:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46600242594142118)
,p_name=>'P201_SEARCH_LEGAL_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(58716453846665459)
,p_prompt=>'Legal Name:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>10
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58734992550665590)
,p_name=>'P201_SEARCH_INVOICE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(58716453846665459)
,p_prompt=>'Search by Invoice No:'
,p_format_mask=>'9990'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(62229548133648103)
,p_name=>'P201_SURL'
,p_item_sequence=>60
,p_item_default=>'APEX_PAGE.GET_URL(p_page => 200)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(62230126161648109)
,p_name=>'P201_ID'
,p_item_sequence=>70
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(62842545502486332)
,p_name=>'P201_REPORT_DATA'
,p_item_sequence=>90
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24749477504008020)
,p_name=>'Search keydown events'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P201_SEARCH_INVOICE,P201_SEARCH_LEGAL_NAME'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.key === "Enter" || this.browserEvent.key === "Escape"'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24750424808008021)
,p_event_id=>wwv_flow_imp.id(24749477504008020)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(58716453846665459)
,p_attribute_01=>'setSearchBarKeyEvents(this.browserEvent);'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24749946838008021)
,p_event_id=>wwv_flow_imp.id(24749477504008020)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'Close modal dialog'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(58715331733665448)
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'isSearchValid'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24750807876008021)
,p_name=>'On record select'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(61607750190714926)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24751321201008023)
,p_event_id=>wwv_flow_imp.id(24750807876008021)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'onInvHistoryIGRecordSelect(this.data);'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24753595291008025)
,p_name=>'Open Search modal'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(24746067768008015)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24754584620008026)
,p_event_id=>wwv_flow_imp.id(24753595291008025)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(58715331733665448)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24754058892008025)
,p_event_id=>wwv_flow_imp.id(24753595291008025)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P201_SEARCH_INVOICE,P201_SEARCH_LEGAL_NAME'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24803651381448008)
,p_name=>'Open Delivery Details modal'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(21859924478134149)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24805105637448023)
,p_event_id=>wwv_flow_imp.id(24803651381448008)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process("GET_DELIVERY_DETAILS", {',
'    pageItems: ["P201_ID"]',
'})',
'.done(data => {',
'    $("#P201_DDELIVERY_DATE").text(data.deliveryDate);',
'    $("#P201_DCHECKER").text(data.checker);',
'    $("#P201_DDELIVERY_MAN").text(data.deliveryMan);',
'    $("#P201_DDEPARTURE_TIME").text(data.departureTime);',
'    $("#P201_DVAN_NUMBER").text(data.vanNumber);',
'    $("#P201_DARRIVAL_TIME").text(data.arrivalTime);',
'    $("#P201_DRECEIVED_BY").text(data.P201_DRECEIVED_BY);',
'})',
'.fail((jqXHR, textStatus, errorThrown) => {',
'    // error on rtrieving delivery details',
'});'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24805345460448025)
,p_event_id=>wwv_flow_imp.id(24803651381448008)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P201_DDELIVERY_DATE'
,p_build_option_id=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24803727680448009)
,p_event_id=>wwv_flow_imp.id(24803651381448008)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(21860005938134150)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24751753533008023)
,p_name=>'To top'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(24746492830008015)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24752289328008023)
,p_event_id=>wwv_flow_imp.id(24751753533008023)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'focusOnIGFirstRecordFirstCell("shipment-expenses", ''CHECK_DATE'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24752684597008023)
,p_name=>'To bottom'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(24746805966008017)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24753183638008025)
,p_event_id=>wwv_flow_imp.id(24752684597008023)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'focusOnIGLastRecordFirstCell(''shipment-expenses'');'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(24748674938008020)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Session'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_internal_uid=>24748674938008020
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(24749083732008020)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SET_SEARCH'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    apex_json.open_object;',
'    apex_json.write(''message'', ''Success'');',
'    apex_json.write(''o'', :P201_SEARCH_DBA);',
'    apex_json.write(''c'', :P201_SEARCH_INVOICE);',
'    apex_json.write(''a'', :P201_SEARCH_LEGAL_NAME);',
'    apex_json.close_object;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>24749083732008020
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(24806266847448034)
,p_process_sequence=>30
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_DELIVERY_DETAILS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    apex_json.open_object;',
'    apex_json.write(''message'', ''Success'');',
'    apex_json.write(''deliveryDate'', :P201_ID);',
'    apex_json.close_object;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>24806266847448034
);
wwv_flow_imp.component_end;
end;
/
