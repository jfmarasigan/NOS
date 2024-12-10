prompt --application/pages/page_00004
begin
--   Manifest
--     PAGE: 00004
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
 p_id=>4
,p_name=>'Item Masterfile'
,p_alias=>'ITEM-MASTERFILE'
,p_step_title=>'Item Masterfile'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- #APP_FILES#js/itemmasterfile#MIN#.js',
'#APP_FILES#js/cmn#MIN#.js'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p4KeyMap = {',
'    a : (v) => {',
'        $("#a").click();',
'    },',
'    i : (v) => {',
'        $("#i").click();',
'    },',
'    escape : (v) => {',
'        $("#to-main-menu").click();',
'    },',
'    o : (v) => {',
'        $("#o").click();',
'    },',
'    s : (v) => {',
'        $("#s").click();',
'    },',
'    u : (v) => {',
'        $("#u").click();',
'    },',
'    d : (v) => {',
'        $("#d").click();',
'    },',
'    home: (v) => {',
'        $("#to-top").trigger("click");',
'    },',
'    end: (v) => {',
'        $("#to-bottom").trigger("click");',
'    }',
'',
'',
'}',
'',
'',
'function mapP4Keys() {',
'    $(document).off(''keydown.p4keyevents'');',
'    $(document).on(''keydown.p4keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p4KeyMap[key]) {',
'            ev.preventDefault();',
'            p4KeyMap[key]();',
'        }',
'    });',
'}',
'',
'function customEvent(event, data){',
'    mapP4Keys();',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP4Keys();',
'$("#s").trigger("click");',
'setTitle("Item Masterfile")',
''))
,p_css_file_urls=>'#APP_FILES#css/items_masterfile_css#MIN#.css'
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
'#item_list table, #item_list tr, #item_list td, #item_list th {',
'     font-size: 1.125rem;',
'}',
'',
'',
'.btns {',
'    font-size: 1.125rem;',
'    color: white;',
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
'    background-color: #226597;',
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
'#item_list .a-IG {',
'    height: calc(75vh + 2px) !important;',
'} ',
'',
'#item_list .a-IG-contentContainer {',
'    height: 75vh !important;',
'}',
'',
'#item_list .a-IG-gridView.a-GV {',
'    height: 75vh !important;',
'}',
'',
'#item_list .a-GV-bdy {',
'    height: calc(75vh - 2.5625rem) !important;',
'}'))
,p_step_template=>wwv_flow_imp.id(5671392681337017)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6013123700540001)
,p_plug_name=>'Item_list'
,p_region_name=>'item_list'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>110
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    ROWNUM AS "Primary Key",',
'    nit001.item_num AS "Item Number",',
'    nit002.upc AS "UPC",',
'    nim022.brand_name AS "Brand Name",',
'    nit001.item_desc AS "Item Description",',
'    nit006.vendor_name AS "Supplier Name"',
'FROM ',
'    -- (SELECT *',
'    --  FROM (SELECT nit001.item_id, nit001.item_desc, nit001.item_num FROM NIT001 nit001 ORDER BY nit001.item_id)',
'    --  WHERE rownum = 1)',
'    NIT001 nit001',
'JOIN ',
'    NIT002 nit002 ON nit001.item_id = nit002.item_id',
'JOIN ',
'    NIM022 nim022 ON nit001.brand_id = nim022.brand_id',
'JOIN',
'    (',
'        -- SELECT nit007.item_id, min(nit007.vendor_id) AS vendor_id',
'        -- FROM NIT007 nit007',
'        -- GROUP BY nit007.item_id',
'',
'        SELECT * FROM(',
'            SELECT ',
'              nit007.item_id, nit007.vendor_id, nit007.vendor_sequence, ',
'              ROW_NUMBER() OVER(PARTITION BY nit007.item_id ORDER BY nit007.vendor_sequence) as rank',
'            FROM NIT007 nit007',
'        ) t1',
'        WHERE rank = 1',
'        ORDER BY t1.vendor_sequence',
'',
'        -- SELECT nit007.item_id, min(nit007.create_date), nit007.vendor_id',
'        -- FROM NIT007 nit007',
'        -- GROUP BY nit007.item_id, nit007.vendor_id',
'    )',
'    nit007 ON nit001.item_id = nit007.item_id',
'    -- NIT007 nit007 ON nit001.item_id = nit007.item_id',
'/*',
'JOIN ',
'    (SELECT nit007.item_id, nit007.vendor_id',
'     FROM NIT007 nit007',
'     WHERE nit007.create_date = (SELECT MIN(nit007_inner.create_date)',
'                                 FROM NIT007 nit007_inner',
'                                 WHERE nit007_inner.item_id = nit007.item_id)',
'    ) nit007_first ON nit001.item_id = nit007_first.item_id',
'    */',
'JOIN ',
'    -- (SELECT *',
'    --  FROM (SELECT nit006.vendor_id, nit006.vendor_name FROM NIT006 nit006 ORDER BY nit006.vendor_id)',
'    --  WHERE rownum = 1)',
'    -- (SELECT * FROM NIT006 nit006 WHERE ROWNUM <= 2)   --returns 1 fin9090',
'    -- (SELECT * FROM NIT006 nit006 FETCH FIRST 2 ROWS ONLY)   --returns 1 fin9090',
'    -- (SELECT * FROM NIT006 nit006)  --returns 3 fin9090',
'    --  nit006 ON nit007.vendor_id = nit006.vendor_id',
'    NIT006 nit006 ON nit007.vendor_id = nit006.vendor_id',
'WHERE',
'    NIT002."LEVEL" = 4 ',
'    ',
'    AND (',
'',
'    (:P4_item_num IS NOT NULL AND UPPER(nit001.item_num) LIKE UPPER(''%'' || :P4_item_num || ''%''))',
'',
'    OR (:P4_item_num IS NULL AND :P4_upc IS NOT NULL AND UPPER(nit002.upc) LIKE UPPER(''%'' || :P4_UPC|| ''%''))',
'',
'    OR (:P4_item_num IS NULL AND :P4_upc IS NULL AND :P4_item_desc IS NOT NULL AND UPPER(nit001.item_desc) LIKE UPPER(''%'' || :P4_item_desc || ''%''))',
'',
'--   OR (:P4_item_num IS NULL AND :P4_upc IS NULL AND :P4_item_desc IS NULL)',
'    )',
'',
'    -- AND NIT006."VENDOR_ID" = 2'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P4_ITEM_NUM,P4_UPC,P4_ITEM_DESC'
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
 p_id=>wwv_flow_imp.id(6016532156540035)
,p_name=>'Item_Number'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'Item Number'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Item No'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
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
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6016629343540036)
,p_name=>'UPC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPC'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'UPC'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>56
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
 p_id=>wwv_flow_imp.id(6016724013540037)
,p_name=>'Brand Name'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'Brand Name'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Brand Name'
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
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6016894276540038)
,p_name=>'Item Description'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'Item Description'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Item Description'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>120
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
 p_id=>wwv_flow_imp.id(6016910616540039)
,p_name=>'Supplier Name'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'Supplier Name'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Supplier Name'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
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
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8189754106675936)
,p_name=>'Primary Key'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'Primary Key'
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
 p_id=>wwv_flow_imp.id(6016439179540034)
,p_internal_uid=>6016439179540034
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
,p_fixed_header_max_height=>460
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
 p_id=>wwv_flow_imp.id(6214209099708723)
,p_interactive_grid_id=>wwv_flow_imp.id(6016439179540034)
,p_static_id=>'62143'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(6214493078708723)
,p_report_id=>wwv_flow_imp.id(6214209099708723)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6214928812708726)
,p_view_id=>wwv_flow_imp.id(6214493078708723)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(6016532156540035)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6215858856708732)
,p_view_id=>wwv_flow_imp.id(6214493078708723)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(6016629343540036)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6216757096708739)
,p_view_id=>wwv_flow_imp.id(6214493078708723)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(6016724013540037)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6217643647708745)
,p_view_id=>wwv_flow_imp.id(6214493078708723)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(6016894276540038)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6218581943708751)
,p_view_id=>wwv_flow_imp.id(6214493078708723)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(6016910616540039)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8747531427080632)
,p_view_id=>wwv_flow_imp.id(6214493078708723)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(8189754106675936)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6014952119540019)
,p_plug_name=>'Buttons'
,p_region_name=>'button-region'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>120
,p_plug_grid_row_css_classes=>'buttons-row'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6015009487540020)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(6014952119540019)
,p_button_name=>'Add'
,p_button_static_id=>'a'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>A</u> - Add'
,p_button_redirect_url=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:::'
,p_button_condition=>'has_access(:APP_USER, 1, 1) = ''Y'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'Y'
,p_grid_column=>1
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6015183520540021)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(6014952119540019)
,p_button_name=>'Update'
,p_button_static_id=>'u'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>U</u> - Update Item'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'has_access(:APP_USER, 1, 3) = ''Y'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_column=>3
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6015249095540022)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(6014952119540019)
,p_button_name=>'Inquire'
,p_button_static_id=>'i'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>I</u> - Inquire'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_column=>5
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6015371205540023)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(6014952119540019)
,p_button_name=>'Update_Price_Only'
,p_button_static_id=>'o'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>O</u> - Update Price Only'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'has_access(:APP_USER, 1, 4) = ''Y'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_column=>7
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6015479855540024)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(6014952119540019)
,p_button_name=>'Item_Details_History'
,p_button_static_id=>'d'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>D</u> - Item Details History'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'has_access(:APP_USER, 1, 5) = ''Y'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>3
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6015563537540025)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(6014952119540019)
,p_button_name=>'Top'
,p_button_static_id=>'to-top'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>Home</u> - Top'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'Y'
,p_grid_column=>1
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6015691179540026)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(6014952119540019)
,p_button_name=>'Bottom'
,p_button_static_id=>'to-bottom'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>End</u> - Bottom'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_column=>3
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6015853476540028)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(6014952119540019)
,p_button_name=>'Search'
,p_button_static_id=>'s'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>S</u> - Search'
,p_button_redirect_url=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:4::'
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_column=>5
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6015743341540027)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(6014952119540019)
,p_button_name=>'To_Exit'
,p_button_static_id=>'to-main-menu'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>Esc</u> - To Exit'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'hiddenbtn'
,p_grid_new_row=>'N'
,p_grid_column=>7
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8187775180675916)
,p_name=>'P4_ITEM_NUM'
,p_item_sequence=>20
,p_item_default=>'NULL'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8187815829675917)
,p_name=>'P4_UPC'
,p_item_sequence=>30
,p_item_default=>'NULL'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8187962821675918)
,p_name=>'P4_ITEM_DESC'
,p_item_sequence=>50
,p_item_default=>'NULL'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8189853949675937)
,p_name=>'P4_SELECTED_ITEM_NUM'
,p_item_sequence=>60
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9117258906604110)
,p_name=>'P4_SELECTED_ITEM_ID'
,p_item_sequence=>70
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9117650467604114)
,p_name=>'P4_PREPARED_URL'
,p_item_sequence=>90
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13873069293703605)
,p_name=>'P4_SUCCESS_MSG'
,p_item_sequence=>100
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13876825898703643)
,p_name=>'P4_SELECTED_ITEM_DESC'
,p_item_sequence=>80
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8189175645675930)
,p_name=>'Selection Change'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(6013123700540001)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8189217892675931)
,p_event_id=>wwv_flow_imp.id(8189175645675930)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let selectedRecords = this.data.selectedRecords;',
'',
'',
'if (selectedRecords.length > 0) {',
'',
'    let itemDescSelected = selectedRecords[0][4];',
'    let itemNumSelected = selectedRecords[0][1];',
'',
'    $("#P4_SELECTED_ITEM_NUM").val(itemNumSelected);',
'    $("#P4_SELECTED_ITEM_DESC").val(itemDescSelected);',
'',
'    console.log("Selected item: " + itemNumSelected + " & " + itemDescSelected) ',
'} ',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13876096625703635)
,p_event_id=>wwv_flow_imp.id(8189175645675930)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4_SELECTED_ITEM_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ITEM_ID FROM NIT001',
'WHERE ITEM_NUM = :P4_SELECTED_ITEM_NUM',
'AND ITEM_DESC = :P4_SELECTED_ITEM_DESC'))
,p_attribute_07=>'P4_SELECTED_ITEM_NUM,P4_SELECTED_ITEM_DESC'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16704475003522926)
,p_name=>'Click'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(6015853476540028)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16704596126522927)
,p_event_id=>wwv_flow_imp.id(16704475003522926)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4_SELECTED_ITEM_NUM,P4_SELECTED_ITEM_ID,P4_SELECTED_ITEM_DESC'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'NULL',
''))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16704602594522928)
,p_event_id=>wwv_flow_imp.id(16704475003522926)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'Reset Keys'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(document).off(''keydown.p4keyevents'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8871962967734949)
,p_name=>'Search_Modal'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(6015853476540028)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8872056365734950)
,p_event_id=>wwv_flow_imp.id(8871962967734949)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4_ITEM_NUM'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P11_ITEM_NUM'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9117025312604108)
,p_event_id=>wwv_flow_imp.id(8871962967734949)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4_UPC'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P11_UPC'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9117177890604109)
,p_event_id=>wwv_flow_imp.id(8871962967734949)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4_ITEM_DESC'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P11_ITEM_DESC'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9118131003604119)
,p_event_id=>wwv_flow_imp.id(8871962967734949)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(6013123700540001)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10832163682640011)
,p_event_id=>wwv_flow_imp.id(8871962967734949)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(6013123700540001)
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(() => {',
'  $( document ).ready(function() {',
'    $(".a-GV-cell").first().trigger("click");',
' });',
'',
'',
'}, "400");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9117481115604112)
,p_name=>'Update Item'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(6015183520540021)
,p_condition_element=>'P4_SELECTED_ITEM_NUM'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9117571142604113)
,p_event_id=>wwv_flow_imp.id(9117481115604112)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P4_PREPARED_URL := apex_page.get_url(',
'       p_page   => 21,',
'       p_items  => ''P21_ITEM_ID,P21_ITEM_NUM'',',
'       p_values => :P4_SELECTED_ITEM_ID ||'',''|| :P4_SELECTED_ITEM_NUM,',
'       p_clear_cache => ''21''',
'     );',
'END;'))
,p_attribute_02=>'P4_SELECTED_ITEM_ID,P4_SELECTED_ITEM_NUM'
,p_attribute_03=>'P4_PREPARED_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9117760242604115)
,p_event_id=>wwv_flow_imp.id(9117481115604112)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P4_PREPARED_URL");',
'apex.navigation.redirect(url);'))
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P4_PREPARED_URL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12914930754686803)
,p_name=>'Reset Keys Inquire'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(6015249095540022)
,p_condition_element=>'P4_SELECTED_ITEM_NUM'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12915012922686804)
,p_event_id=>wwv_flow_imp.id(12914930754686803)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).off(''keydown.p4keyevents'');',
'',
'$(document).on(''keydown.p4keyevents'', (ev) => {',
'    console.log(`KeyboardEvent: key=''${ev.key}'' | code=''${ev.code}''`);',
'',
'        const excludedKeys = [',
'            "PageUp", ',
'            "PageDown",  ',
'            "ArrowUp", ',
'            "ArrowDown"',
'        ];',
'        if (!excludedKeys.includes(ev.key)) {',
'            apex.navigation.dialog.close(true);',
'        }',
'        ',
'}); ',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12915601695686810)
,p_name=>'Reset Keys Details'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(6015479855540024)
,p_condition_element=>'P4_SELECTED_ITEM_NUM'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12915737492686811)
,p_event_id=>wwv_flow_imp.id(12915601695686810)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).off(''keydown.p4keyevents'');',
'',
'$(document).on(''keydown.p4keyevents'', (ev) => {',
'/*',
'        const excludedKeys = [',
'            "PageUp", ',
'            "PageDown",  ',
'            "ArrowUp", ',
'            "ArrowDown"',
'        ];',
'        if (!excludedKeys.includes(ev.key)) {',
'*/            ',
'            apex.navigation.dialog.close(true);',
'//        }',
'        ',
'});',
' '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9908467854576914)
,p_name=>'Inquire Item'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(6015249095540022)
,p_condition_element=>'P4_SELECTED_ITEM_NUM'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9908585295576915)
,p_event_id=>wwv_flow_imp.id(9908467854576914)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P4_PREPARED_URL := apex_page.get_url(',
'       p_page   => 20,',
'       p_items  => ''P20_ITEM_ID'',',
'       p_values => :P4_SELECTED_ITEM_ID',
'     );',
'END;'))
,p_attribute_02=>'P4_SELECTED_ITEM_ID,P4_SELECTED_ITEM_NUM'
,p_attribute_03=>'P4_PREPARED_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9908679876576916)
,p_event_id=>wwv_flow_imp.id(9908467854576914)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P4_PREPARED_URL");',
'apex.navigation.redirect(url);'))
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P4_PREPARED_URL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9119996910604137)
,p_name=>'Update_Price'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(6015371205540023)
,p_condition_element=>'P4_SELECTED_ITEM_NUM'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9120087310604138)
,p_event_id=>wwv_flow_imp.id(9119996910604137)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P4_PREPARED_URL := apex_page.get_url(',
'       p_page   => 22,',
'       p_items  => ''P22_ITEM_ID,P22_ITEM_NUM'',',
'       p_values => :P4_SELECTED_ITEM_ID || '','' || :P4_SELECTED_ITEM_NUM',
'     );',
'',
'--    :P4_PREPARED_URL := ''f?p='' || :APP_ID || '':22:'' || :APP_SESSION || ''::'' || ''P22_ITEM_ID,P22_ITEM_NUM:'' || :P4_SELECTED_ITEM_ID || '','' || :P4_SELECTED_ITEM_NUM;',
'',
'END;',
'',
''))
,p_attribute_02=>'P4_SELECTED_ITEM_ID,P4_SELECTED_ITEM_NUM'
,p_attribute_03=>'P4_PREPARED_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9120131028604139)
,p_event_id=>wwv_flow_imp.id(9119996910604137)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P4_PREPARED_URL");',
'apex.navigation.redirect(url);',
'',
'',
'//apex.navigation.dialog(url, {});',
''))
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P4_PREPARED_URL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9118519191604123)
,p_name=>'Item Details History'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(6015479855540024)
,p_condition_element=>'P4_SELECTED_ITEM_NUM'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9118670161604124)
,p_event_id=>wwv_flow_imp.id(9118519191604123)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P4_PREPARED_URL := apex_page.get_url(',
'       p_page   => 12,',
'       p_items  => ''P12_ITEM_ID,P12_ITEM_NUM'',',
'       p_values => :P4_SELECTED_ITEM_ID ||'',''|| :P4_SELECTED_ITEM_NUM',
'     );',
'END;'))
,p_attribute_02=>'P4_SELECTED_ITEM_NUM,P4_SELECTED_ITEM_ID'
,p_attribute_03=>'P4_PREPARED_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9118781409604125)
,p_event_id=>wwv_flow_imp.id(9118519191604123)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P4_PREPARED_URL");',
'apex.navigation.redirect(url);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9910509301576935)
,p_name=>'End click'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(6015691179540026)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9910677572576936)
,p_event_id=>wwv_flow_imp.id(9910509301576935)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'focusOnIGLastRecordFirstCell("item_list");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9910717823576937)
,p_name=>'Home click'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(6015563537540025)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9910888324576938)
,p_event_id=>wwv_flow_imp.id(9910717823576937)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'focusOnIGFirstRecordFirstCell("item_list", "Item_Number");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13872816962703603)
,p_name=>'If Add Success'
,p_event_sequence=>150
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13872933464703604)
,p_event_id=>wwv_flow_imp.id(13872816962703603)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).ready(function() {',
'',
'    apex.server.process(''GET_SUCCESS_MSG'', {}, {',
'        success: function(data) {',
'            if (data.success_msg) {',
'',
'                apex.message.showPageSuccess(data.success_msg);',
'',
'                setTimeout(function() {',
'                    $(".apex-page-success").fadeOut(400);',
'                }, 3000);',
'',
'            }',
'        }',
'    });',
'});',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13875734451703632)
,p_name=>'Dialog Closed or Canceled'
,p_event_sequence=>160
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(6015853476540028)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13875814933703633)
,p_event_id=>wwv_flow_imp.id(13875734451703632)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP4Keys();',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19846204192977026)
,p_name=>'Update Price Only Close'
,p_event_sequence=>180
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19845255378977016)
,p_event_id=>wwv_flow_imp.id(19846204192977026)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process(''GET_SUCCESS_MSG'', {}, {',
'        success: function(data) {',
'            if (data.success_msg) {',
'',
'                apex.message.showPageSuccess(data.success_msg);',
'',
'                setTimeout(function() {',
'                    $(".apex-page-success").fadeOut(400);',
'                }, 3000);',
'',
'            }',
'        }',
'    });'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8871264314734942)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Session'
,p_attribute_01=>'CLEAR_CACHE_FOR_ITEMS'
,p_attribute_03=>'P4_ITEM_NUM,P4_UPC,P4_ITEM_DESC'
,p_internal_uid=>8871264314734942
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13874429504703619)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CLEAR_SUCCESS_MSG'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'	apex_util.set_session_state(''SUCCESS_MSG'', null);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>13874429504703619
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13874690189703621)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_SUCCESS_MSG'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   l_msg VARCHAR2(200);',
'BEGIN',
'   -- Get the value of the SUCCESS_MSG application item',
'   l_msg := apex_util.get_session_state(''SUCCESS_MSG'');',
'   ',
'   -- Return it as a JSON object',
'   apex_json.open_object;',
'   apex_json.write(''success_msg'', l_msg);',
'   apex_json.close_object;',
'',
'   -- Clear the SUCCESS_MSG after displaying it',
'   apex_util.set_session_state(''SUCCESS_MSG'', NULL);',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>13874690189703621
);
wwv_flow_imp.component_end;
end;
/
