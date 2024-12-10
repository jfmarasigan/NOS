prompt --application/pages/page_00092
begin
--   Manifest
--     PAGE: 00092
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
 p_id=>92
,p_name=>'POS Cashiering Main Screen - 2nd Payment'
,p_alias=>'POS-CASHIERING-MAIN-SCREEN-2ND-PAYMENT'
,p_page_mode=>'MODAL'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let lastSelected = null;',
'const p92KeyMap = {',
'    1: (v) => {',
'        $("#1").trigger("click");',
'    },',
'',
'    2: (v) => {',
'        $("#2").trigger("click");',
'    },',
'    escape: (v) => {',
'        //',
'    }',
'}',
'',
'function mapP92Keys() {',
'    $(document).off(''keydown.p92keyevents'');',
'    $(document).on(''keydown.p92keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p92KeyMap[key]) {',
'            ev.preventDefault();',
'            p92KeyMap[key]();',
'        }',
'    });',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP92Keys();',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#payment table, ',
'#payment tr,',
'#payment td,',
'#payment th {',
'    font-size: 1.125rem;',
'    font-family: Arial;',
'    color: black;',
'    background-color: white;',
'}',
'',
'/* .a-GV-hdr .a-GV-table {',
'    width: 100% !important;',
'} */',
'',
'#P41_TOTAL_CONTAINER {',
'    --a-field-input-flex-grow: 0.915;',
'}',
'',
'#P41_PAID_CONTAINER {',
'    --a-field-input-flex-grow: 0.915;',
'}',
'#P41_UNPAID_CONTAINER {',
'    --a-field-input-flex-grow: 0.915;',
'}',
'',
'.a-GV-headerLabel a, th.a-GV-header {',
'    background-color: #056AC8;',
'    color: white;',
'    text-align: center;',
'}',
'',
'.t-Dialog-body{',
'    background-color: #056AC8;',
'    padding-top: 0;',
'    padding-bottom: 0;',
'}',
'.t-Dialog-body label,',
'.t-Dialog-body input{',
'    font-size: 1.125rem;',
'    background-color: #056AC8;',
'    color: white;',
'}',
'',
'.t-Region-body{',
'   padding-bottom: 0;',
'   padding-left: 0;',
'   background-color: #056AC8;',
'   color: white;',
'}',
'.t-Form-label {',
'    line-height: 1.5rem;',
'    white-space: nowrap;',
'}',
'',
'.btns {',
'    font-size: 1.125rem;',
'    text-align: left;',
'}',
'',
'.btns2 {',
'    font-size: 1.125rem;',
'    text-align: left;',
'    color: black;',
'}',
'',
'.apex-item-display-only {',
'    font-size: 1.125rem;',
'    font-family: Arial;',
'    white-space: nowrap;',
'}',
'',
'.t-Region-title {',
'    font-size: 1.125rem;',
'    font-family: Arial;',
'    font-weight: 700;',
'    text-align: left;',
'}',
'',
'.hiddenbtn {',
'    display: none;',
'}',
'',
'.t-Region-header{',
'    background-color: #056AC8;',
'     color: white;',
'}'))
,p_step_template=>wwv_flow_imp.id(4231087530083996)
,p_page_template_options=>'#DEFAULT#:t-Dialog--noPadding:t-DeferredRendering'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(63632088891544949)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>30
,p_location=>null
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(63632172148544950)
,p_plug_name=>'Payment'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody:margin-top-none'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>10
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(57467319808753033)
,p_plug_name=>'Payment Table'
,p_region_name=>'payment'
,p_parent_plug_id=>wwv_flow_imp.id(63632172148544950)
,p_region_template_options=>'#DEFAULT#:margin-left-lg:margin-right-md'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT c001 Payment_Method, n001 Amount',
'  FROM apex_collections',
' WHERE collection_name = ''PAYMENT''',
'   AND n001 IS NOT NULL;'))
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
 p_id=>wwv_flow_imp.id(57467908345753038)
,p_name=>'PAYMENT_METHOD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PAYMENT_METHOD'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Payment Method'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>10
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(65484911471739022)
,p_name=>'AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AMOUNT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Amount'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_format_mask=>'FML999G999G999G999G990D00'
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
 p_id=>wwv_flow_imp.id(57467716730753037)
,p_internal_uid=>57467716730753037
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
 p_id=>wwv_flow_imp.id(57859683009148347)
,p_interactive_grid_id=>wwv_flow_imp.id(57467716730753037)
,p_static_id=>'178647'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(57859851886148347)
,p_report_id=>wwv_flow_imp.id(57859683009148347)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(57860344785148353)
,p_view_id=>wwv_flow_imp.id(57859851886148347)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(57467908345753038)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(65555510872816864)
,p_view_id=>wwv_flow_imp.id(57859851886148347)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(65484911471739022)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(57468532657753045)
,p_plug_name=>'Payment Methods'
,p_parent_plug_id=>wwv_flow_imp.id(63632172148544950)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--noBorder:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>60
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(40001254025298695)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(57468532657753045)
,p_button_name=>'Cash'
,p_button_static_id=>'1'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'1 - CASH'
,p_button_redirect_url=>'f?p=&APP_ID.:36:&SESSION.::&DEBUG.:36::'
,p_button_css_classes=>'btns'
,p_grid_new_row=>'Y'
,p_grid_column_span=>8
,p_grid_column=>3
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(40003251481298698)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(57468532657753045)
,p_button_name=>'Credit'
,p_button_static_id=>'2'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'2 - CREDIT CARD'
,p_button_redirect_url=>'f?p=&APP_ID.:45:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'btns'
,p_grid_new_row=>'Y'
,p_grid_column_span=>8
,p_grid_column=>3
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(40002862835298698)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(57468532657753045)
,p_button_name=>'GBLUE'
,p_button_static_id=>'3'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'3 - GIFT CARD BLUE'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns2'
,p_grid_new_row=>'Y'
,p_grid_column_span=>8
,p_grid_column=>3
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(40002493186298698)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(57468532657753045)
,p_button_name=>'GYELLOW'
,p_button_static_id=>'4'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'4 - GIFT CERT YELLOW'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns2'
,p_grid_new_row=>'Y'
,p_grid_column_span=>8
,p_grid_column=>3
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(40002033243298696)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(57468532657753045)
,p_button_name=>'MEMO'
,p_button_static_id=>'5'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'5 - CREDIT MEMO'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns2'
,p_grid_new_row=>'Y'
,p_grid_column_span=>8
,p_grid_column=>3
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(40001696961298696)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(57468532657753045)
,p_button_name=>'CHECK'
,p_button_static_id=>'6'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'6 - COMPANY CHECK'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns2'
,p_grid_new_row=>'Y'
,p_grid_column_span=>8
,p_grid_column=>3
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(40003688596298698)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(57468532657753045)
,p_button_name=>'Submit'
,p_button_static_id=>'submit'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Submit'
,p_button_redirect_url=>'f?p=&APP_ID.:43:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(40004001792298700)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(57468532657753045)
,p_button_name=>'Escape'
,p_button_static_id=>'escape'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Escape'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'hiddenbtn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(40014310966298734)
,p_branch_name=>'Redirect to Payment Summary'
,p_branch_action=>'f?p=&APP_ID.:43:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(57467759937753080)
,p_name=>'P92_TOTAL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(63632172148544950)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b> Total Amount: </b>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(57469291745753095)
,p_name=>'P92_PAID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(63632172148544950)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Amount Paid: </b>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--postTextBlock:t-Form-fieldContainer--boldDisplay'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(57469399536753096)
,p_name=>'P92_UNPAID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(63632172148544950)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Unpaid Amount:</b>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--postTextBlock'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58715560519102938)
,p_name=>'P92_URL'
,p_item_sequence=>50
,p_display_as=>'NATIVE_HIDDEN'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67424464941376805)
,p_name=>'P92_ITEM_DESC'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(63632172148544950)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67424569626376806)
,p_name=>'P92_ITEM_TOTAL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(63632172148544950)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67424640930376807)
,p_name=>'P92_SUB_TOTAL'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(63632172148544950)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67424802244376808)
,p_name=>'P92_DISCOUNT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(63632172148544950)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67424857570376809)
,p_name=>'P92_OVERALL_TOTAL'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(63632172148544950)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67425173559376812)
,p_name=>'P92_CUSTOMER'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(63632172148544950)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67425622912376816)
,p_name=>'P92_ITEM_PRICE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(63632172148544950)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(40005057774298718)
,p_computation_sequence=>40
,p_computation_item=>'P92_ITEM_DESC'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT c003',
'  FROM apex_collections',
' WHERE collection_name = ''PURCHASE'''))
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(40005443448298718)
,p_computation_sequence=>50
,p_computation_item=>'P92_ITEM_TOTAL'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT n003',
'  FROM apex_collections',
' WHERE collection_name = ''PURCHASE'''))
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(40005819746298720)
,p_computation_sequence=>60
,p_computation_item=>'P92_ITEM_PRICE'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT n002',
'  FROM apex_collections',
' WHERE collection_name = ''PURCHASE'''))
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(40006267306298720)
,p_computation_sequence=>70
,p_computation_item=>'P92_SUB_TOTAL'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT n001',
'  FROM apex_collections',
' WHERE collection_name = ''ORDERS'''))
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(40006651245298720)
,p_computation_sequence=>80
,p_computation_item=>'P92_DISCOUNT'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT n002',
'  FROM apex_collections',
' WHERE collection_name = ''ORDERS'''))
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(40007073922298720)
,p_computation_sequence=>90
,p_computation_item=>'P92_OVERALL_TOTAL'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT n003',
'  FROM apex_collections',
' WHERE collection_name = ''ORDERS'''))
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(40007409718298721)
,p_computation_sequence=>100
,p_computation_item=>'P92_CUSTOMER'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT c001',
'  FROM apex_collections',
' WHERE collection_name = ''ORDERS'''))
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(40007856772298721)
,p_validation_name=>'Validate'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_unpaid NUMBER;',
'BEGIN',
'    SELECT TO_NUMBER(REPLACE(REPLACE(:P92_UNPAID, ''$'', ''''), '','', '''')) INTO v_unpaid',
'      FROM DUAL;',
'',
'    IF v_unpaid > 0 THEN ',
'        RAISE_APPLICATION_ERROR(-20001, ''Unpaid Amount not yet Paid.'');',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        RAISE_APPLICATION_ERROR(-20002, ''An unexpected error occurred: '' || SQLERRM);',
'END;'))
,p_validation_type=>'PLSQL_ERROR'
,p_error_message=>'Unpaid Amount not yet Paid.'
,p_always_execute=>'Y'
,p_when_button_pressed=>wwv_flow_imp.id(40003688596298698)
,p_associated_item=>wwv_flow_imp.id(57469399536753096)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(40012303739298729)
,p_name=>'Set Value and Refresh'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40012802337298731)
,p_event_id=>wwv_flow_imp.id(40012303739298729)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_name=>'Total'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P92_TOTAL'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TO_CHAR( NVL(n003, 0),''L999G999G990D99'' ) ',
'  FROM apex_collections',
' WHERE collection_name = ''ORDERS''',
'   AND seq_id = (SELECT MAX(seq_id)',
'                     FROM APEX_COLLECTIONS',
'                     WHERE collection_name = ''ORDERS'')'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_build_option_id=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40013823905298731)
,p_event_id=>wwv_flow_imp.id(40012303739298729)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_name=>'Paid'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P92_PAID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TO_CHAR(NVL(SUM(n001), 0), ''L999G999G990D99'' ) ',
'  FROM apex_collections',
' WHERE collection_name = ''PAYMENT'''))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40013332138298731)
,p_event_id=>wwv_flow_imp.id(40012303739298729)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_name=>'Unpaid'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P92_UNPAID'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'TO_CHAR(TO_NUMBER(REPLACE(REPLACE(NVL(:P92_TOTAL, 0), ''$'', ''''), '','', '''')) - TO_NUMBER(REPLACE(REPLACE(NVL(:P92_PAID, 0), ''$'', ''''), '','', '''')), ''L999G999G990D99'' )',
''))
,p_attribute_07=>'P92_TOTAL,P92_PAID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(40010980082298728)
,p_name=>'Refresh Items'
,p_event_sequence=>70
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40011479271298729)
,p_event_id=>wwv_flow_imp.id(40010980082298728)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P92_TOTAL,P92_PAID,P92_UNPAID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40011901068298729)
,p_event_id=>wwv_flow_imp.id(40010980082298728)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(57467319808753033)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(40008195757298721)
,p_name=>'Close Dialog'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(40004001792298700)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40008697249298725)
,p_event_id=>wwv_flow_imp.id(40008195757298721)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp.component_end;
end;
/
