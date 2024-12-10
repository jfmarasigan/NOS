prompt --application/pages/page_00069
begin
--   Manifest
--     PAGE: 00069
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
 p_id=>69
,p_name=>'Discount List Inquire'
,p_alias=>'DISCOUNT-LIST-INQUIRE'
,p_page_mode=>'MODAL'
,p_step_title=>'Discount Details'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function mapP69Keys(){',
'    $(document).on(''keydown.p69keyevents'', (ev) => {',
'        apex.navigation.dialog.close(true);',
'        $(document).off(''keydown.p769keyevents'');',
'    });',
'}'))
,p_javascript_code_onload=>'mapP69Keys();'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Dialog-body, #categories{',
'    background-color: #056AC8;',
'}',
'#details .t-Region-body {',
'    padding-top: 0.2rem;',
'    padding-bottom: 0.2rem;',
'}',
'',
'#details .display_only {',
'    font-size: 1.125rem;',
'}',
'#details label {',
'    font-size: 1.125rem;',
'}',
'',
'.t-Form-labelContainer:has(> #P69_DISCOUNT_CODE_LABEL),',
'.t-Form-labelContainer:has(> #P69_DISCOUNT_DESC_LABEL),',
'.t-Form-labelContainer:has(> #P69_TYPE_LABEL),',
'.t-Form-labelContainer:has(> #P69_CATEGORY_LABEL),',
'.t-Form-labelContainer:has(> #P69_EFFECTIVE_DATE_RANGE_LABEL) {',
'    text-align: start;',
'}',
'',
'/* #discountGrid table,',
'#discountGrid tr,',
'#discountGrid td,',
'#discountGrid th {',
'    font-size: 1.125rem;',
'}',
'#departmentGrid table,',
'#departmentGrid tr,',
'#departmentGrid td,',
'#departmentGrid th {',
'    font-size: 1.125rem;',
'}',
'#sicGrid table,',
'#sicGrid tr,',
'#sicGrid td,',
'#sicGrid th {',
'    font-size: 1.125rem;',
'}',
'#classGrid table,',
'#classGrid tr,',
'#classGrid td,',
'#classGrid th {',
'    font-size: 1.125rem;',
'}',
'#ICL-grid table,',
'#ICL-grid tr,',
'#ICL-grid td,',
'#ICL-grid th {',
'    font-size: 1.125rem;',
'}',
'#ISL-grid table,',
'#ISL-grid tr,',
'#ISL-grid td,',
'#ISL-grid th {',
'    font-size: 1.125rem;',
'}',
'#IDL-grid table,',
'#IDL-grid tr,',
'#IDL-grid td,',
'#IDL-grid th {',
'    font-size: 1.125rem;',
'} */',
'#discount-list table,',
'#discount-list tr,',
'#discount-list td,',
'#discount-list th {',
'    font-size: 1.125rem;',
'}',
'',
'/* #departmentGrid_ig, #sicGrid_ig, #classGrid_ig {',
'    border: 0.0625rem solid #046BC8;',
'} */',
'',
'.a-GV-table .a-GV-cell, th.a-GV-header {',
'    border-color: #046BC8;',
'}',
'',
'/* #departmentGrid .a-GV-header a, #departmentGrid th.a-GV-header,',
'#sicGrid .a-GV-header a, #sicGrid th.a-GV-header,',
'#classGrid .a-GV-header a, #classGrid th.a-GV-header {',
'    background-color: #046BC8;',
'    color: white;',
'} */',
'.a-GV-header a, th.a-GV-header {',
'    background-color: #046BC8;',
'    color: white;',
'}',
'',
'.a-GV-hdr .a-GV-table {',
'    width: 100% !important;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'750'
,p_dialog_attributes=>'close: function() { customEvent(''customDialogClose'', {modalPageId: ''MODAL_CLOSE_FIXED''});} '
,p_dialog_css_classes=>'inquire-modal'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22268626665028345)
,p_plug_name=>'Details'
,p_region_name=>'details'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  ',
'    DISCOUNT_ID,',
'    DISCOUNT_CODE,',
'    DISCOUNT_DESC,',
'    TYPE,',
'    CATEGORY,',
'    -- CASE',
'    --     WHEN TYPE = ''Percent'' THEN',
'    --     ''Percent - '' ||  DISCOUNT_VALUE || ''%''',
'    --     ELSE ',
'    --     ''Fixed - '' || DISCOUNT_VALUE',
'    -- END AS DISCOUNT_VALUE,',
'    DATE_FROM || '' - '' || DATE_TO AS EFFECTIVE_DATE_RANGE',
'FROM NPT008'))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22491344658163601)
,p_plug_name=>'Categories Header'
,p_plug_display_sequence=>20
,p_location=>null
,p_plug_source=>'<h3 style="font-size:1.125rem;color:white;margin-top:0;text-align:center">Discount List</h3>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22491479403163602)
,p_plug_name=>'Categories'
,p_region_name=>'categories'
,p_plug_display_sequence=>30
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22491680117163604)
,p_plug_name=>'Discount List'
,p_region_name=>'discount-list'
,p_parent_plug_id=>wwv_flow_imp.id(22491479403163602)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>6
,p_plug_display_column=>4
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P69_CATEGORY = ''Class'' THEN',
'        return q''~',
'            SELECT',
'                CLASS_ID AS ID, CLASS_NAME AS SUBCATEGORY, DISCOUNT_VALUE AS VALUE ',
'            FROM NPT030',
'            WHERE DISCOUNT_ID = :P69_DISCOUNT_ID',
'        ~'';',
'    ELSIF :P69_CATEGORY = ''Department'' THEN',
'        return q''~',
'            SELECT',
'                DEPT_ID AS ID, DEPT_NAME AS SUBCATEGORY, DISCOUNT_VALUE AS VALUE ',
'            FROM NPT029',
'            WHERE DISCOUNT_ID = :P69_DISCOUNT_ID',
'        ~'';',
'    ELSE',
'        return q''~',
'            SELECT',
'                SIC_ID AS ID, SIC_NAME AS SUBCATEGORY, DISCOUNT_VALUE AS VALUE ',
'            FROM NPT028',
'            WHERE DISCOUNT_ID = :P69_DISCOUNT_ID',
'        ~'';',
'    END IF;',
'END; '))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P69_DISCOUNT_ID'
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
 p_id=>wwv_flow_imp.id(38737565356412648)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(38737662926412649)
,p_name=>'SUBCATEGORY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUBCATEGORY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Sub-Category'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>200
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
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
 p_id=>wwv_flow_imp.id(38737790258412650)
,p_name=>'VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VALUE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Value'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(22491702411163605)
,p_internal_uid=>22491702411163605
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>false
,p_show_toolbar=>false
,p_toolbar_buttons=>null
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>false
,p_define_chart_view=>false
,p_enable_download=>false
,p_download_formats=>null
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>300
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
 p_id=>wwv_flow_imp.id(22503992086305193)
,p_interactive_grid_id=>wwv_flow_imp.id(22491702411163605)
,p_static_id=>'225040'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(22504114127305195)
,p_report_id=>wwv_flow_imp.id(22503992086305193)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(39534647579440112)
,p_view_id=>wwv_flow_imp.id(22504114127305195)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(38737565356412648)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(39535570517440118)
,p_view_id=>wwv_flow_imp.id(22504114127305195)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(38737662926412649)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(39536353543440125)
,p_view_id=>wwv_flow_imp.id(22504114127305195)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(38737790258412650)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22268855582028347)
,p_name=>'P69_DISCOUNT_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(22268626665028345)
,p_item_source_plug_id=>wwv_flow_imp.id(22268626665028345)
,p_source=>'DISCOUNT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38737030675412643)
,p_name=>'P69_DISCOUNT_CODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(22268626665028345)
,p_item_source_plug_id=>wwv_flow_imp.id(22268626665028345)
,p_prompt=>'Discount Code:'
,p_source=>'DISCOUNT_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38737107470412644)
,p_name=>'P69_DISCOUNT_DESC'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(22268626665028345)
,p_item_source_plug_id=>wwv_flow_imp.id(22268626665028345)
,p_prompt=>'Discount Desc:'
,p_source=>'DISCOUNT_DESC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38737251463412645)
,p_name=>'P69_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(22268626665028345)
,p_item_source_plug_id=>wwv_flow_imp.id(22268626665028345)
,p_prompt=>'Discount Type:'
,p_source=>'TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38737345702412646)
,p_name=>'P69_CATEGORY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(22268626665028345)
,p_item_source_plug_id=>wwv_flow_imp.id(22268626665028345)
,p_prompt=>'Category:'
,p_source=>'CATEGORY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38737416502412647)
,p_name=>'P69_EFFECTIVE_DATE_RANGE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(22268626665028345)
,p_item_source_plug_id=>wwv_flow_imp.id(22268626665028345)
,p_prompt=>'Eff Date Range'
,p_source=>'EFFECTIVE_DATE_RANGE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(22268736414028346)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(22268626665028345)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Discount List Inquire'
,p_internal_uid=>22268736414028346
);
wwv_flow_imp.component_end;
end;
/
