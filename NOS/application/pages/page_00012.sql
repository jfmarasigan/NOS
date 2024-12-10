prompt --application/pages/page_00012
begin
--   Manifest
--     PAGE: 00012
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
 p_id=>12
,p_name=>'Item Update History'
,p_alias=>'ITEM-UPDATE-HISTORY'
,p_page_mode=>'MODAL'
,p_step_title=>'Item Details Update History'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function mapP12Keys(){',
'    $(document).on(''keydown.p12keyevents'', (ev) => {',
'',
'        const excludedKeys = [',
'            "PageUp", ',
'            "PageDown",  ',
'            "ArrowUp", ',
'            "ArrowDown"',
'        ];',
'',
'        if (!excludedKeys.includes(ev.key)) {',
'            apex.navigation.dialog.close(true);',
'            $(document).off(''keydown.p12keyevents'');',
'            $("#P12_ITEM_NUM").val("");',
'        }',
'    });',
'}',
''))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP12Keys();',
'/*',
'  $( document ).ready(function() {',
'    $(".a-GV-cell").first().trigger("click");',
' });',
' */'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Dialog-body{',
'    label, input, .apex-item-display-only {',
'        font-size: 1.125rem;',
'    }',
'    background-color: #226597;',
'    padding-top: 0;',
'}',
'',
'#update-table {',
'    table, tr, td, th {',
'        font-size: 1.125rem;',
'    }',
'}',
'',
'.t-Region-body{',
'    padding: 0.4;',
'    background-color: white;',
'}',
'',
'.t-Form-label{',
'    white-space: nowrap;',
'}',
'',
'',
'.white-text {',
'    color: white;',
'    font-size: 1.125rem;',
'}',
'',
'.icon-irr-sort-asc, .icon-irr-sort-desc, .icon-down-chevron, .icon-up-chevron {',
'    display: none !important;',
'}',
'',
''))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'60rem'
,p_dialog_attributes=>'close: function() { customEvent(''customDialogClose'', {modalPageId: ''MODAL_CLOSE_FIXED''});} '
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12916290120686816)
,p_plug_name=>'Details History'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>10
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12916308553686817)
,p_plug_name=>'Item Number'
,p_parent_plug_id=>wwv_flow_imp.id(12916290120686816)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody:margin-bottom-none'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12916498355686818)
,p_plug_name=>'Table'
,p_region_name=>'update-table'
,p_parent_plug_id=>wwv_flow_imp.id(12916290120686816)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody:margin-top-sm'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7169919201804137)
,p_plug_name=>'Item Details  Update History'
,p_parent_plug_id=>wwv_flow_imp.id(12916498355686818)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    ITEM_HISTORY_ID,',
'    ITEM_ID,',
'    TO_CHAR(CREATE_DATE, ''MM/DD/YYYY HH24:MI:SS'') AS CREATE_DATE,',
'    CHANGED_COLUMN_NAME || '': '' || OLD_VALUE AS COLUMN_OLD_VALUE,',
'    CHANGED_COLUMN_NAME || '': '' || NEW_VALUE AS COLUMN_NEW_VALUE,',
'    CREATE_USER',
'FROM ',
'    NIT003',
'WHERE ',
'    ITEM_ID = :P12_ITEM_ID',
'',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P12_ITEM_ID'
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
 p_id=>wwv_flow_imp.id(8867765006734907)
,p_name=>'ITEM_HISTORY_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEM_HISTORY_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8867899490734908)
,p_name=>'ITEM_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEM_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8868280713734912)
,p_name=>'CREATE_USER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATE_USER'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'User'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>40
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
 p_id=>wwv_flow_imp.id(8868344324734913)
,p_name=>'CREATE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATE_DATE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Date and Time'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
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
,p_enable_sort_group=>true
,p_enable_control_break=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(16703062182522912)
,p_name=>'COLUMN_OLD_VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COLUMN_OLD_VALUE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Old Value'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'CENTER'
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
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(16703118686522913)
,p_name=>'COLUMN_NEW_VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COLUMN_NEW_VALUE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'New Value'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
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
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(8867604246734906)
,p_internal_uid=>8867604246734906
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
 p_id=>wwv_flow_imp.id(8880980887787679)
,p_interactive_grid_id=>wwv_flow_imp.id(8867604246734906)
,p_static_id=>'88810'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(8881172515787679)
,p_report_id=>wwv_flow_imp.id(8880980887787679)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8881574952787684)
,p_view_id=>wwv_flow_imp.id(8881172515787679)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(8867765006734907)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8882495515787690)
,p_view_id=>wwv_flow_imp.id(8881172515787679)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(8867899490734908)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8886072578787721)
,p_view_id=>wwv_flow_imp.id(8881172515787679)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(8868280713734912)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8886996666787728)
,p_view_id=>wwv_flow_imp.id(8881172515787679)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(8868344324734913)
,p_is_visible=>true
,p_is_frozen=>false
,p_sort_order=>1
,p_sort_direction=>'DESC'
,p_sort_nulls=>'FIRST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(17942570440413307)
,p_view_id=>wwv_flow_imp.id(8881172515787679)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(16703062182522912)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(17943356154413314)
,p_view_id=>wwv_flow_imp.id(8881172515787679)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(16703118686522913)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12915384578686807)
,p_button_sequence=>40
,p_button_name=>'Exit'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'press any key to exit'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'white-text'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8189016136675929)
,p_name=>'P12_ITEM_NUM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(12916308553686817)
,p_prompt=>'Item Number:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_column=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:margin-left-sm:t-Form-fieldContainer--boldDisplay'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13876981368703644)
,p_name=>'P12_ITEM_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(12916308553686817)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12915446780686808)
,p_name=>'Exit'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(12915384578686807)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12915508563686809)
,p_event_id=>wwv_flow_imp.id(12915446780686808)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp.component_end;
end;
/
