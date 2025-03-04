prompt --application/pages/page_00041
begin
--   Manifest
--     PAGE: 00041
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
 p_id=>41
,p_name=>'POS Cashiering Main Screen - Pay'
,p_alias=>'POS-CASHIERING-MAIN-SCREEN-PAY'
,p_page_mode=>'MODAL'
,p_step_title=>'Payments'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let lastSelected = null;',
'const p41KeyMap = {',
'    1: (v) => {',
'        $("#1").trigger("click");',
'    },',
'',
'    2: (v) => {',
'        $("#2").trigger("click");',
'    },',
'',
'    3: (v) => {',
'        $("#3").trigger("click");',
'    },',
'',
'    4: (v) => {',
'        $("#4").trigger("click");',
'    },',
'',
'    5: (v) => {',
'        $("#5").trigger("click");',
'    },',
'',
'    6: (v) => {',
'        $("#6").trigger("click");',
'    },',
'    escape : (v) => {',
'        apex.navigation.dialog.close(true);',
'    }',
'}',
'',
'function mapP41Keys() {',
'    $(document).off(''keydown.p41keyevents'');',
'    $(document).on(''keydown.p41keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p41KeyMap[key]) {',
'            ev.preventDefault();',
'            p41KeyMap[key]();',
'        }',
'    });',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP41Keys();',
'',
'$(document).on("dialogopen", function() {',
'    $("body").addClass("apex-no-scroll");',
'}).on("dialogclose", function() {',
'    $("body").removeClass("apex-no-scroll");',
'});',
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
'/* ',
'#P41_TOTAL_CONTAINER {',
'    --a-field-input-flex-grow: 0.915;',
'    max-width: 95%;',
'}',
'',
'#P41_PAID_CONTAINER {',
'    --a-field-input-flex-grow: 0.915;',
'    max-width: 95%;    ',
'}',
'#P41_UNPAID_CONTAINER {',
'    --a-field-input-flex-grow: 0.915;',
'    max-width: 95%;',
'',
'} */',
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
'    margin-left: 2rem;',
'}',
'',
'.btns:focus {',
'    outline: none;',
'}',
'',
'.apex-item-display-only {',
'    font-size: 1.125rem;',
'    font-family: Arial;',
'    white-space: nowrap;',
'}',
'',
'.total-amount span {',
'    font-weight: bold;',
'    font-size: 1.5rem;',
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
'}',
'',
'/* #payment .a-IG {',
'    height: calc(20vh) !important;',
'} ',
'',
'#payment .a-IG-contentContainer {',
'    height: 20vh !important;',
'}',
'',
'#payment .a-IG-gridView.a-GV {',
'    height: 20vh !important;',
'} */',
'',
'.a-GV-footer {',
'    display: none;',
'}',
'',
'.t-Dialog-bodyWrapperIn{',
'    overflow: hidden;',
'    background-color: #056AC8;',
'}',
'',
'.t-Dialog-bodyWrapperOut {',
'    background-color: #056AC8;',
'}',
'',
'/* #P41_TOTAL {',
'    padding-left: 20rem;',
'}',
'',
'#P41_PAID {',
'    padding-left: 22rem;',
'}',
'',
'#P41_UNPAID {',
'    padding-left: 20rem;',
'} */',
'',
'.t-Form-fieldContainer.rel-col {',
'    flex-direction: row !important;',
'}',
'',
'.apex-item-wrapper--display-only .t-Form-labelContainer {',
'    padding-block-end: var(--ut-field-padding-y, .5rem) !important;',
'}',
'',
'.apex-item-wrapper--display-only .t-Form-inputContainer {',
'    padding-block-start: var(--ut-field-padding-y, .5rem) !important;',
'    justify-content: end;',
'}',
'',
'.a-GV-altMessage-icon {',
'    display: none;',
'}'))
,p_step_template=>wwv_flow_imp.id(4231087530083996)
,p_page_template_options=>'#DEFAULT#:t-DeferredRendering'
,p_dialog_width=>'450'
,p_dialog_attributes=>'closeOnEscape: false'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(23637157454246332)
,p_plug_name=>'Payment'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--textContent:t-Region--hiddenOverflow:t-Form--leftLabels:margin-top-none:margin-bottom-md'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>10
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17472305114454415)
,p_plug_name=>'Payment Table'
,p_region_name=>'payment'
,p_parent_plug_id=>wwv_flow_imp.id(23637157454246332)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders:t-Form--leftLabels:margin-left-md:margin-right-md'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>50
,p_plug_grid_column_span=>10
,p_plug_display_column=>2
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT c001 AS payment_type, SUM(n001) AS total_amount',
'FROM apex_collections',
'WHERE collection_name = ''PAYMENT''',
'AND n001 IS NOT NULL',
'GROUP BY c001;',
''))
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
 p_id=>wwv_flow_imp.id(72266055082359941)
,p_name=>'Payment Method'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PAYMENT_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Payment Method'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_imp.id(72266176222359942)
,p_name=>'Amount'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOTAL_AMOUNT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Amount'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
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
 p_id=>wwv_flow_imp.id(17472702036454419)
,p_internal_uid=>17472702036454419
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
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
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
'}',
''))
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(17864668314849729)
,p_interactive_grid_id=>wwv_flow_imp.id(17472702036454419)
,p_static_id=>'178647'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(17864837191849729)
,p_report_id=>wwv_flow_imp.id(17864668314849729)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(76809401194287775)
,p_view_id=>wwv_flow_imp.id(17864837191849729)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(72266055082359941)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(76810373962287787)
,p_view_id=>wwv_flow_imp.id(17864837191849729)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(72266176222359942)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17473517963454427)
,p_plug_name=>'Separator Line'
,p_parent_plug_id=>wwv_flow_imp.id(23637157454246332)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--textContent:t-Region--hiddenOverflow:margin-bottom-none'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>80
,p_plug_item_display_point=>'BELOW'
,p_location=>null
,p_plug_source=>'<hr/>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79665872413867504)
,p_plug_name=>'Payment Methods'
,p_parent_plug_id=>wwv_flow_imp.id(23637157454246332)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--textContent:t-Region--hiddenOverflow:margin-bottom-none'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>90
,p_plug_item_display_point=>'BELOW'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(17473614559454428)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(23637157454246332)
,p_button_name=>'Cash'
,p_button_static_id=>'1'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'1 - CASH'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(17474138450454433)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(23637157454246332)
,p_button_name=>'Credit'
,p_button_static_id=>'2'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'2 - CREDIT CARD'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(17474017350454432)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(23637157454246332)
,p_button_name=>'GBLUE'
,p_button_static_id=>'3'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'3 - GIFT CERT BLUE'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(17473904124454431)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_imp.id(23637157454246332)
,p_button_name=>'GYELLOW'
,p_button_static_id=>'4'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'4 - GIFT CERT YELLOW'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(17473897163454430)
,p_button_sequence=>140
,p_button_plug_id=>wwv_flow_imp.id(23637157454246332)
,p_button_name=>'MEMO'
,p_button_static_id=>'5'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'5 - CREDIT MEMO'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(17473794572454429)
,p_button_sequence=>150
,p_button_plug_id=>wwv_flow_imp.id(23637157454246332)
,p_button_name=>'CHECK'
,p_button_static_id=>'6'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'6 - COMPANY CHECK'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17471828612454410)
,p_name=>'P41_TOTAL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(23637157454246332)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<span>TOTAL AMOUNT: </span>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>10
,p_grid_column=>2
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_css_classes=>'total-amount'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--postTextBlock:margin-left-md:margin-right-md'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17473360420454425)
,p_name=>'P41_PAID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(23637157454246332)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<span>Amount Paid: </span>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>10
,p_grid_column=>2
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:margin-top-none:margin-bottom-none:margin-left-md:margin-right-md:t-Form-fieldContainer--boldDisplay'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17473468211454426)
,p_name=>'P41_UNPAID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(23637157454246332)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<span>Unpaid Amount: </span>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>10
,p_grid_column=>2
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:margin-top-none:margin-bottom-none:margin-left-md:margin-right-md'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27429242234078142)
,p_name=>'P41_CUSTOMER'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(23637157454246332)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38715003202254531)
,p_name=>'P41_PREPARED_URL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(23637157454246332)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70340037650069519)
,p_name=>'P41_INVOICE_NO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(23637157454246332)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(28594746304578201)
,p_computation_sequence=>100
,p_computation_item=>'P41_CUSTOMER'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT c001',
'  FROM apex_collections',
' WHERE collection_name = ''ORDERS'''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25489990566440405)
,p_name=>'Set Value and Refresh'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25491168815440417)
,p_event_id=>wwv_flow_imp.id(25489990566440405)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_name=>'Paid'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P41_PAID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT TO_CHAR(NVL(SUM(n001), 0), ''FM999G999G999G990D00'') ',
'  FROM apex_collections',
' WHERE collection_name = ''PAYMENT'''))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28595423585578208)
,p_event_id=>wwv_flow_imp.id(25489990566440405)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_name=>'Unpaid'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P41_UNPAID'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'TO_CHAR(ROUND(TO_NUMBER(REPLACE(REPLACE(:P41_TOTAL, ''$'', ''''), '','', '''')), 2) - ',
'    ROUND(TO_NUMBER(REPLACE(REPLACE(:P41_PAID, ''$'', ''''), '','', '''')), 2), ''FM999999990.00'')'))
,p_attribute_07=>'P41_TOTAL,P41_PAID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28595766628578211)
,p_event_id=>wwv_flow_imp.id(25489990566440405)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P41_TOTAL,P41_PAID,P41_UNPAID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28595849072578212)
,p_event_id=>wwv_flow_imp.id(25489990566440405)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(17472305114454415)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(38714759258254528)
,p_name=>'Open Cash'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(17473614559454428)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38714863871254529)
,p_event_id=>wwv_flow_imp.id(38714759258254528)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P41_PREPARED_URL := apex_page.get_url(',
'        p_page        => 36,',
'        p_items       => ''P36_UNPAID'',',
'        p_values      => TO_CHAR(ROUND(TO_NUMBER(REPLACE(REPLACE(:P41_UNPAID, ''$'', ''''), '','', '''')), 2), ''FM999999990.00''),',
'        p_clear_cache => ''36''',
'    );',
'END;',
''))
,p_attribute_02=>'P41_UNPAID'
,p_attribute_03=>'P41_PREPARED_URL'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38714956862254530)
,p_event_id=>wwv_flow_imp.id(38714759258254528)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P41_PREPARED_URL");',
'apex.navigation.redirect(url);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(40389665834268801)
,p_name=>'Credit'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(17474138450454433)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40389739877268802)
,p_event_id=>wwv_flow_imp.id(40389665834268801)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P41_PREPARED_URL := apex_page.get_url(',
'        p_page        => 45,',
'        p_items       => ''P45_UNPAID_AMOUNT'',',
'        p_values      => TO_CHAR(:P41_UNPAID, ''FM999999990.00''),',
'        p_clear_cache => ''45''',
'    );',
'END;',
''))
,p_attribute_02=>'P41_UNPAID'
,p_attribute_03=>'P41_PREPARED_URL'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40389852817268803)
,p_event_id=>wwv_flow_imp.id(40389665834268801)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P41_PREPARED_URL");',
'apex.navigation.redirect(url);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(40394081796268845)
,p_name=>'Blue GCert'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(17474017350454432)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40394188712268846)
,p_event_id=>wwv_flow_imp.id(40394081796268845)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P41_PREPARED_URL := apex_page.get_url(',
'        p_page        => 47,',
'        p_items       => ''P47_AMOUNT'',',
'        p_values      => TO_CHAR(:P41_UNPAID, ''FM999999999990.00''),',
'        p_clear_cache => ''47''',
'    );',
'END;',
''))
,p_attribute_02=>'P41_UNPAID'
,p_attribute_03=>'P41_PREPARED_URL'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40394238526268847)
,p_event_id=>wwv_flow_imp.id(40394081796268845)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P41_PREPARED_URL");',
'apex.navigation.redirect(url);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44272554758177709)
,p_name=>'Yellow GCert'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(17473904124454431)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44272696967177710)
,p_event_id=>wwv_flow_imp.id(44272554758177709)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P41_PREPARED_URL := apex_page.get_url(',
'        p_page        => 49,',
'        p_items       => ''P49_AMOUNT'',',
'        p_values      => TO_CHAR(:P41_UNPAID, ''FM999999999990.00''),',
'        p_clear_cache => ''49''',
'    );',
'END;',
''))
,p_attribute_02=>'P41_UNPAID'
,p_attribute_03=>'P41_PREPARED_URL'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44272748698177711)
,p_event_id=>wwv_flow_imp.id(44272554758177709)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P41_PREPARED_URL");',
'apex.navigation.redirect(url);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44273552947177719)
,p_name=>'Dialog Closed'
,p_event_sequence=>130
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44273822796177722)
,p_event_id=>wwv_flow_imp.id(44273552947177719)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(17472305114454415)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72265653580359937)
,p_event_id=>wwv_flow_imp.id(44273552947177719)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(17473614559454428)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42941901486705407)
,p_name=>'Set Paid '
,p_event_sequence=>140
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(17472305114454415)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42942062325705408)
,p_event_id=>wwv_flow_imp.id(42941901486705407)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P41_PAID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TO_CHAR(NVL(SUM(n001), 0), ''FM9990.00'') ',
'  FROM apex_collections',
' WHERE collection_name = ''PAYMENT'''))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42942179533705409)
,p_event_id=>wwv_flow_imp.id(42941901486705407)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P41_UNPAID'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'TO_CHAR(TO_NUMBER(REPLACE(REPLACE(:P41_TOTAL, ''$'', ''''), '','', '''')) - TO_NUMBER(REPLACE(REPLACE(:P41_PAID, ''$'', ''''), '','', '''')), ''FM999999990.00'' )',
''))
,p_attribute_07=>'P41_TOTAL,P41_PAID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44522886198129215)
,p_name=>'Credit Memo'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(17473897163454430)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44522932330129216)
,p_event_id=>wwv_flow_imp.id(44522886198129215)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P41_PREPARED_URL := apex_page.get_url(',
'        p_page        => 61,',
'        p_items       => ''P61_AMOUNT'',',
'        p_values      => TO_CHAR(:P41_UNPAID, ''FM999999999990.00''),',
'        p_clear_cache => ''61''',
'    );',
'END;',
''))
,p_attribute_02=>'P41_UNPAID'
,p_attribute_03=>'P41_PREPARED_URL'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44523094397129217)
,p_event_id=>wwv_flow_imp.id(44522886198129215)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P41_PREPARED_URL");',
'apex.navigation.redirect(url);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44523432214129221)
,p_name=>'Company Check'
,p_event_sequence=>160
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(17473794572454429)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44523558093129222)
,p_event_id=>wwv_flow_imp.id(44523432214129221)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P41_PREPARED_URL := apex_page.get_url(',
'        p_page        => 62,',
'        p_clear_cache => ''62''',
'    );',
'END;',
''))
,p_attribute_03=>'P41_PREPARED_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44523615446129223)
,p_event_id=>wwv_flow_imp.id(44523432214129221)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P41_PREPARED_URL");',
'apex.navigation.redirect(url);'))
);
wwv_flow_imp.component_end;
end;
/
