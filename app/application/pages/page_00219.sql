prompt --application/pages/page_00219
begin
--   Manifest
--     PAGE: 00219
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
 p_id=>219
,p_name=>'User Utilities Add'
,p_alias=>'USER-UTILITIES-ADD'
,p_step_title=>'User Utilities Add/Update'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#js/cmn#MIN#.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p219KeyMap = {',
'    f6 : (v) => {',
'        $("#f6").trigger("click");',
'    },',
'    space : (v) => {',
'       $("#space").trigger("click");',
'    },',
'    enter : (v) => {',
'       $("#enter").trigger("click");',
'    },',
'    escape : (v) => {',
'        $("#esc").trigger("click");',
'    },',
'    home : (v) => {',
'        $("#home").trigger("click");',
'    },',
'    end : (v) => {',
'        $("#end").trigger("click");',
'    }',
'}',
'',
'function mapP219Keys() {',
'    $(document).off(''keydown.p219keyevents'');',
'    $(document).on(''keydown.p219keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p219KeyMap[key]) {',
'            ev.preventDefault();',
'            p219KeyMap[key]();',
'        }',
'    });',
'}',
'',
'function checkValidations(){',
'    let isValid = true;',
'',
'    if($v("P219_NAME").length <= 0){',
'        $("#P219_NAME").addClass("apex-page-item-error");',
'        $("#P219_NAME_error_placeholder").removeClass("u-hidden");',
'        $("#P219_NAME_error_placeholder").html("Must have some value.");',
'        isValid = false;',
'    } else{',
'        $("#P219_NAME").removeClass("apex-page-item-error");',
'        $("#P219_NAME_error_placeholder").addClass("u-hidden");',
'    }',
'',
'    if($v("P219_USER_NAME").length <= 0){',
'        $("#P219_USER_NAME").addClass("apex-page-item-error");',
'        $("#P219_USER_NAME_error_placeholder").removeClass("u-hidden");',
'        $("#P219_USER_NAME_error_placeholder").html("Must have some value.");',
'        isValid = false;',
'    } else if( Number( $v("P219_USERNAME_EXISTS") ) == 1 ){',
'        $("#P219_USER_NAME").addClass("apex-page-item-error");',
'        $("#P219_USER_NAME_error_placeholder").removeClass("u-hidden");',
'        $("#P219_USER_NAME_error_placeholder").html("Username already exists.");',
'        isValid = false;',
'    } ',
'    else{',
'        $("#P219_USER_NAME").removeClass("apex-page-item-error");',
'        $("#P219_USER_NAME_error_placeholder").addClass("u-hidden");',
'    }',
'',
'    return isValid;',
'}',
'',
'$(''#P219_USER_NAME'').keydown(function (e) {',
'    if(',
'        e.key == " " || ''~!@#$%^&*()-_+={}[]|\<>/?''.indexOf(e.key) >= 0',
'    ){',
'        return false;',
'    } else {',
'        return true;',
'    }',
'});',
'',
'$("#P219_NAME").on("focus", function () {',
'   $(this).select();',
'});'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP219Keys();',
'$x("P219_NAME").focus();',
'apex.actions.shortcutSupport("off");'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Header .t-Header-branding {',
'    background-color: white !important;',
'    color: rgb(30, 58, 138) !important;',
'}',
'',
'body {',
'    background-color: rgb(30, 58, 138);',
'}',
'',
'.btns {',
'    font-size: 1.125rem;',
'    color: white;',
'}',
'',
'.buttons-row {',
'    position: absolute;',
'    width: 98vw;',
'    bottom: 1.75rem;',
'}',
'',
'#esc, #enter, #space {',
'    display: none;',
'}',
'',
'#user-form {',
'    background-color: rgb(30, 58, 138);',
'}',
'#user-form label,',
'#user-form input,',
'#user-form select {',
'    font-size: 1.125rem;',
'}',
'#user-form label {',
'    color: white;',
'}',
'#user-form .a-Form-error{',
'    color: #FFD700;',
'}',
'#user-form select {',
'    padding-top: 0.438rem;',
'    padding-bottom: 0.438rem;',
'}',
'',
'.required{',
'    color: red;',
'}',
'',
'.hide{',
'    display: none;',
'}',
'',
'.greyed{',
'    background-color: #d3d3d3;',
'}',
'',
'#list .a-IG {',
'    height: calc(75vh + 2px) !important;',
'} ',
'',
'#list .a-IG-contentContainer {',
'    height: 75vh !important;',
'}',
'',
'#list .a-IG-gridView.a-GV {',
'    height: 75vh !important;',
'}',
'',
'#list .a-GV-bdy {',
'    height: calc(75vh - 2.5625rem) !important;',
'}',
'',
'.t-Header .t-Header-branding {',
'    background-color: white !important;',
'    color: rgb(30, 58, 138) !important;',
'}',
'',
'.text-left {',
'    text-align: left;',
'}',
'',
'#list table,',
'#list tr,',
'#list td,',
'#list th {',
'    font-size: 1.125rem;',
'}',
'',
'#list_ig{',
'    border: 0.0625rem solid black;',
'}',
'',
'.a-GV-table .a-GV-cell, th.a-GV-header {',
'    border-color: black;',
'}',
'',
'.a-GV-header a, th.a-GV-header {',
'    background-color: #046BC8;',
'    color: white;',
'}',
'',
'.ui-dialog .ui-dialog-titlebar {',
'    background-color: #056AC8;',
'    color: white;',
'}',
'',
'.ui-dialog{',
'    border: 2px solid black;',
'    border-radius: 0.75rem;',
'    box-shadow: 0 0.625rem 0.625rem -0.25rem rgba(0,0,0,0.2);',
'}',
'',
'.ui-dialog-title{',
'    font-size: 1.5rem;',
'}',
'',
'.ui-dialog-titlebar-close {',
'    display:none;',
'}',
'',
'.a-GV-hdr .a-GV-table {',
'    width: 100% !important;',
'}',
'',
' /* Hide scrollbar for Chrome, Safari and Opera */',
'html::-webkit-scrollbar {',
'  display: none;',
'}',
'',
'/* Hide scrollbar for IE, Edge and Firefox */',
'html {',
'  -ms-overflow-style: none;  /* IE and Edge */',
'  scrollbar-width: none;  /* Firefox */',
'} ',
'',
' /* Hide scrollbar for Chrome, Safari and Opera */',
'.a-GV-w-scroll::-webkit-scrollbar {',
'  display: none;',
'}',
'',
'/* Hide scrollbar for IE, Edge and Firefox */',
'.a-GV-w-scroll {',
'  -ms-overflow-style: none;  /* IE and Edge */',
'  scrollbar-width: none;  /* Firefox */',
'}',
'',
'.t-Form-labelContainer:has(> #P219_NAME_LABEL),',
'.t-Form-labelContainer:has(> #P219_USER_NAME_LABEL),',
'.t-Form-labelContainer:has(> #P219_PASSWORD_LABEL),',
'.t-Form-labelContainer:has(> #P219_ROLE_LABEL),',
'.t-Form-labelContainer:has(> #P219_STATUS_LABEL), ',
'.t-Form-labelContainer:has(> #P219_PASSWORD_GENERATED_LABEL) {',
'    text-align: start;',
'}',
'',
'input#P219_PASSWORD_GENERATED {',
'    background-color: #d9d9d9;',
'}',
'',
'.is-selected td{',
'    background-color: #F5DC1C !important;',
'}',
'',
'.is-focused {',
'    box-shadow: 0 0 0 1px black inset !important;',
'}'))
,p_step_template=>wwv_flow_imp.id(5671392681337017)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(45031334131682449)
,p_plug_name=>'Form'
,p_region_name=>'user-form'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>90
,p_query_type=>'TABLE'
,p_query_table=>'NPM009'
,p_include_rowid_column=>false
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(45410223266383613)
,p_plug_name=>'Buttons'
,p_plug_display_sequence=>110
,p_plug_grid_row_css_classes=>'buttons-row'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(45410378734383614)
,p_plug_name=>'List'
,p_region_name=>'list'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>100
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    seq_id,',
'    n001,',
'    n002,',
'    c001,',
'    c002,',
'    c003',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''ACCESS_LIST'''))
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
 p_id=>wwv_flow_imp.id(45412483771383635)
,p_name=>'SEQ_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SEQ_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
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
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(45412514270383636)
,p_name=>'N001'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'N001'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(45412679291383637)
,p_name=>'C001'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'C001'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Module'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
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
 p_id=>wwv_flow_imp.id(45412727252383638)
,p_name=>'C002'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'C002'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Access'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
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
 p_id=>wwv_flow_imp.id(45413056698383641)
,p_name=>'N002'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'N002'
,p_data_type=>'NUMBER'
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
 p_id=>wwv_flow_imp.id(45413245424383643)
,p_name=>'C003'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'C003'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'y'
,p_attribute_03=>'n'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(45410425107383615)
,p_internal_uid=>45410425107383615
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
,p_fixed_header_max_height=>360
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
 p_id=>wwv_flow_imp.id(45427561855494876)
,p_interactive_grid_id=>wwv_flow_imp.id(45410425107383615)
,p_static_id=>'454276'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(45427797902494876)
,p_report_id=>wwv_flow_imp.id(45427561855494876)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(45691437584662162)
,p_view_id=>wwv_flow_imp.id(45427797902494876)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(45412483771383635)
,p_is_visible=>false
,p_is_frozen=>false
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(45692374957662168)
,p_view_id=>wwv_flow_imp.id(45427797902494876)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(45412514270383636)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(45693254105662176)
,p_view_id=>wwv_flow_imp.id(45427797902494876)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(45412679291383637)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(45694182758662182)
,p_view_id=>wwv_flow_imp.id(45427797902494876)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(45412727252383638)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(45695050281662189)
,p_view_id=>wwv_flow_imp.id(45427797902494876)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(45413056698383641)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(46242180934839221)
,p_view_id=>wwv_flow_imp.id(45427797902494876)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(45413245424383643)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>48.66699999999997
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(45410711214383618)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(45410223266383613)
,p_button_name=>'Navigate'
,p_button_static_id=>'f6'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>F6</u> - Navigate'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(45410817298383619)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(45410223266383613)
,p_button_name=>'Top'
,p_button_static_id=>'home'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>Home</u> - Top'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(45410934095383620)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(45410223266383613)
,p_button_name=>'Bottom'
,p_button_static_id=>'end'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>End</u> - Bottom'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(45411092354383621)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(45410223266383613)
,p_button_name=>'Escape'
,p_button_static_id=>'esc'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'-'
,p_button_redirect_url=>'f?p=&APP_ID.:217:&SESSION.::&DEBUG.:219:P217_SELECTED_VAL_PREV,P217_SEARCH_NAME,P217_SEARCH_USERNAME,P217_ORDER_BY:&P219_SELECTED_VAL_PREV.,&P219_SEARCH_NAME_PREV.,&P219_SEARCH_USERNAME_PREV.,&P219_ORDER_BY_PREV.'
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(46250185449877012)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(45410223266383613)
,p_button_name=>'Enter'
,p_button_static_id=>'enter'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'-'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P219_INQUIRE_TOGGLE'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_button_css_classes=>'btns text-left'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(46252030444877031)
,p_branch_name=>'Go To Page 217 Add'
,p_branch_action=>'f?p=&APP_ID.:217:&SESSION.::&DEBUG.:219:P217_ADD_POPUP,P217_SEARCH_NAME,P217_SEARCH_USERNAME,P217_ORDER_BY,P217_NEW_SEARCH_USERNAME:&P219_USER_NAME.,&P219_SEARCH_NAME_PREV.,&P219_SEARCH_USERNAME_PREV.,&P219_ORDER_BY_PREV.,&P219_USER_NAME.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'ITEM_IS_NULL'
,p_branch_condition=>'P219_USER_ID'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(46252383951877034)
,p_branch_name=>'Go To Page 217 Update'
,p_branch_action=>'f?p=&APP_ID.:217:&SESSION.::&DEBUG.:219:P217_UPDATE_POPUP,P217_SEARCH_NAME,P217_SEARCH_USERNAME,P217_ORDER_BY,P217_SELECTED_VAL_PREV:&P219_NAME.,&P219_SEARCH_NAME_PREV.,&P219_SEARCH_NAME_PREV.,&P219_ORDER_BY_PREV.,&P219_SELECTED_VAL_PREV.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>20
,p_branch_condition_type=>'ITEM_IS_NOT_NULL'
,p_branch_condition=>'P219_USER_ID'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45409071887383601)
,p_name=>'P219_USER_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(45031334131682449)
,p_item_source_plug_id=>wwv_flow_imp.id(45031334131682449)
,p_source=>'USER_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45409118860383602)
,p_name=>'P219_USER_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(45031334131682449)
,p_item_source_plug_id=>wwv_flow_imp.id(45031334131682449)
,p_prompt=>'User Name  <span class="required">*</span>'
,p_source=>'USER_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_colspan=>7
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45409270000383603)
,p_name=>'P219_PASSWORD_GENERATED'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(45031334131682449)
,p_prompt=>'Password <span style="color:red">*</span>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_colspan=>7
,p_grid_label_column_span=>2
,p_display_when=>'P219_USER_ID'
,p_display_when_type=>'ITEM_IS_NULL'
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45409705865383608)
,p_name=>'P219_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(45031334131682449)
,p_item_source_plug_id=>wwv_flow_imp.id(45031334131682449)
,p_prompt=>'Status <span class="required">*</span>'
,p_source=>'STATUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Active;A,Inactive;I,Locked;L,Archived;C'
,p_cHeight=>1
,p_colspan=>4
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45410077456383611)
,p_name=>'P219_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(45031334131682449)
,p_item_source_plug_id=>wwv_flow_imp.id(45031334131682449)
,p_prompt=>'Name <span class="required">*</span>'
,p_source=>'NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_colspan=>7
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45410103087383612)
,p_name=>'P219_ROLE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(45031334131682449)
,p_item_source_plug_id=>wwv_flow_imp.id(45031334131682449)
,p_prompt=>'Role'
,p_source=>'ROLE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_colspan=>7
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46249911620877010)
,p_name=>'P219_USERNAME_EXISTS'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46250092772877011)
,p_name=>'P219_USER_NAME_INITIAL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(45031334131682449)
,p_item_source_plug_id=>wwv_flow_imp.id(45031334131682449)
,p_source=>'USER_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46250887154877019)
,p_name=>'P219_ACCESSED_COMPONENTS'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47184150084422148)
,p_name=>'P219_SELECTED_VAL_PREV'
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47184277756422149)
,p_name=>'P219_SEARCH_NAME_PREV'
,p_item_sequence=>50
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47184326032422150)
,p_name=>'P219_SEARCH_USERNAME_PREV'
,p_item_sequence=>60
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48017966242143001)
,p_name=>'P219_ORDER_BY_PREV'
,p_item_sequence=>70
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48533273473075729)
,p_name=>'P219_INQUIRE_TOGGLE'
,p_item_sequence=>80
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(46250952881877020)
,p_computation_sequence=>10
,p_computation_item=>'P219_ACCESSED_COMPONENTS'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT LISTAGG(COMPONENT_ID, '','') WITHIN GROUP (ORDER BY USER_ID) AS ACCESSED_COMPONENT',
'FROM NPT010',
'WHERE USER_ID = :P219_USER_ID',
'GROUP BY USER_ID;'))
,p_compute_when=>'P219_USER_ID'
,p_compute_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(45411910968383630)
,p_name=>'Generate Password'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'ITEM_IS_NULL'
,p_display_when_cond=>'P219_USER_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45412052861383631)
,p_event_id=>wwv_flow_imp.id(45411910968383630)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var charPool = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789~!@#$%^&*()-_+={}[]|\<>/?";',
'var result = "";',
'for(var i = 0; i <= 3; i++){',
'    result += charPool.charAt(Math.floor(Math.random() * 86));',
'}',
'',
'var position = Math.floor(Math.random() * 4);',
'result = [result.slice(0, position), "ABCDEFGHIJKLMNOPQRSTUVWXYZ".charAt(Math.floor(Math.random() * 26)), result.slice(position)].join('''');',
'position = Math.floor(Math.random() * 5);',
'result = [result.slice(0, position), "abcdefghijklmnopqrstuvwxyz".charAt(Math.floor(Math.random() * 26)), result.slice(position)].join('''');',
'position = Math.floor(Math.random() * 6);',
'result = [result.slice(0, position), "0123456789".charAt(Math.floor(Math.random() * 10)), result.slice(position)].join('''');',
'position = Math.floor(Math.random() * 7);',
'result = [result.slice(0, position), "~!@#$%^&*()-_+={}[]|\<>/?".charAt(Math.floor(Math.random() * 24)), result.slice(position)].join('''');',
'',
'apex.item(''P219_PASSWORD_GENERATED'').setValue(result);',
'',
'$("#P219_PASSWORD_GENERATED").attr({',
'    readonly:"",',
'    tabindex:"-1"',
'})'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(45412844870383639)
,p_name=>'Create Collections'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45412987324383640)
,p_event_id=>wwv_flow_imp.id(45412844870383639)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_collection_name varchar2(20) := ''ACCESS_LIST'';',
'    v_first_id NUMBER;',
'    v_first_name VARCHAR2(200);',
'BEGIN',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(v_collection_name);',
'    FOR a IN (',
'        SELECT b.MODULE_ID, b.SCREEN',
'        FROM NPM011 b',
'        WHERE 0 != (',
'            SELECT COUNT(c.COMPONENT_ID)',
'            FROM NPM012 C',
'            WHERE c.MODULE_ID = b.MODULE_ID',
'        )',
'        ORDER BY MODULE_ID',
'    ) LOOP',
'        SELECT NVL(COMPONENT_ID, 1), NVL(COMPONENT_NAME, ''No Name'')',
'        INTO v_first_id, v_first_name',
'        FROM NPM012',
'        WHERE MODULE_ID = a.MODULE_ID AND ROWNUM = 1',
'        ORDER BY COMPONENT_ID;',
'',
'        apex_collection.add_member (p_collection_name => v_collection_name,',
'            p_n001 => v_first_id,',
'            p_n002 => a.MODULE_ID,',
'            p_c001 => a.SCREEN,',
'            p_c002 => v_first_name,',
'            p_c003 => ''n''',
'        );',
'',
'        FOR b IN (',
'            SELECT COMPONENT_ID, COMPONENT_NAME',
'            FROM NPM012',
'            WHERE MODULE_ID = a.MODULE_ID ',
'                AND COMPONENT_ID != v_first_id',
'            ORDER BY COMPONENT_ID',
'        ) LOOP',
'            apex_collection.add_member (p_collection_name => v_collection_name,',
'                p_n001 => b.COMPONENT_ID,',
'                p_n002 => a.MODULE_ID,',
'                p_c001 => '''',',
'                p_c002 => b.COMPONENT_NAME,',
'                p_c003 => ''n''',
'            );',
'        END LOOP;',
'    END LOOP;',
'',
'    -- EXCEPTION WHEN others THEN',
'    --     raise_application_error(-2000,DBMS_UTILITY.format_error_backtrace);',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'ITEM_IS_NULL'
,p_server_condition_expr1=>'P219_USER_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70299493134784947)
,p_event_id=>wwv_flow_imp.id(45412844870383639)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_collection_name varchar2(20) := ''ACCESS_LIST'';',
'    v_first_id NUMBER;',
'    v_user_id NUMBER := :P219_USER_ID;',
'    v_first_name VARCHAR2(200);',
'    v_check_if_checked NUMBER;',
'    v_checkbox_bool VARCHAR2(1);',
'BEGIN',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(v_collection_name);',
'    FOR a IN (',
'        SELECT b.MODULE_ID, b.SCREEN',
'        FROM NPM011 b',
'        WHERE 0 != (',
'            SELECT COUNT(c.COMPONENT_ID)',
'            FROM NPM012 C',
'            WHERE c.MODULE_ID = b.MODULE_ID',
'        )',
'        ORDER BY MODULE_ID',
'    ) LOOP',
'        SELECT NVL(COMPONENT_ID, 1), NVL(COMPONENT_NAME, ''No Name'')',
'        INTO v_first_id, v_first_name',
'        FROM NPM012',
'        WHERE MODULE_ID = a.MODULE_ID AND ROWNUM = 1',
'        ORDER BY COMPONENT_ID;',
'',
'        SELECT COUNT(1)',
'        INTO v_check_if_checked',
'        FROM NPT010',
'        WHERE USER_ID = v_user_id AND COMPONENT_ID = v_first_id;',
'',
'        IF v_check_if_checked >= 1 THEN',
'            v_checkbox_bool := ''y'';',
'        ELSE',
'            v_checkbox_bool := ''n'';',
'        END IF;',
'',
'        apex_collection.add_member (p_collection_name => v_collection_name,',
'            p_n001 => v_first_id,',
'            p_n002 => a.MODULE_ID,',
'            p_c001 => a.SCREEN,',
'            p_c002 => v_first_name,',
'            p_c003 => v_checkbox_bool',
'        );',
'',
'        FOR b IN (',
'            SELECT COMPONENT_ID, COMPONENT_NAME',
'            FROM NPM012',
'            WHERE MODULE_ID = a.MODULE_ID ',
'                AND COMPONENT_ID != v_first_id',
'            ORDER BY COMPONENT_ID',
'        ) LOOP',
'            SELECT COUNT(1)',
'            INTO v_check_if_checked',
'            FROM NPT010',
'            WHERE USER_ID = v_user_id AND COMPONENT_ID = b.COMPONENT_ID;',
'',
'            IF v_check_if_checked >= 1 THEN',
'                v_checkbox_bool := ''y'';',
'            ELSE',
'                v_checkbox_bool := ''n'';',
'            END IF;',
'',
'            apex_collection.add_member (p_collection_name => v_collection_name,',
'                p_n001 => b.COMPONENT_ID,',
'                p_n002 => a.MODULE_ID,',
'                p_c001 => '''',',
'                p_c002 => b.COMPONENT_NAME,',
'                p_c003 => v_checkbox_bool',
'            );',
'        END LOOP;',
'    END LOOP;',
'',
'    -- EXCEPTION WHEN others THEN',
'    --     raise_application_error(-2000,DBMS_UTILITY.format_error_backtrace);',
'END;'))
,p_attribute_02=>'P219_USER_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'ITEM_IS_NOT_NULL'
,p_server_condition_expr1=>'P219_USER_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45413151530383642)
,p_event_id=>wwv_flow_imp.id(45412844870383639)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(() => {',
'    $( document ).ready(function() {',
'        apex.region("list").widget().interactiveGrid("getActions").invoke("refresh");',
'    });',
'}, "1300");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(46249378211877004)
,p_name=>'Navigate To Table'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(45410711214383618)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46249491829877005)
,p_event_id=>wwv_flow_imp.id(46249378211877004)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ( $(".is-focused")[0] ) {',
'    $x("P219_NAME").focus();',
'} else $(".a-GV-cell").eq(1).trigger("click");',
'',
'// $(".a-GV-cell").eq(1).trigger("click");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(46250285047877013)
,p_name=>'Check Validations'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(46250185449877012)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46250350008877014)
,p_event_id=>wwv_flow_imp.id(46250285047877013)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P219_USERNAME_EXISTS'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT(1)',
'FROM NPM009',
'WHERE UPPER(USER_NAME) = UPPER(:P219_USER_NAME)'))
,p_attribute_07=>'P219_USER_NAME'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'ITEM_IS_NULL'
,p_server_condition_expr1=>'P219_USER_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46250741241877018)
,p_event_id=>wwv_flow_imp.id(46250285047877013)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P219_USERNAME_EXISTS'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT(1)',
'FROM NPM009',
'WHERE UPPER(USER_NAME) = UPPER(:P219_USER_NAME) AND USER_ID != UPPER(:P219_USER_ID)'))
,p_attribute_07=>'P219_USER_NAME,P219_USER_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'ITEM_IS_NOT_NULL'
,p_server_condition_expr1=>'P219_USER_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46250487808877015)
,p_event_id=>wwv_flow_imp.id(46250285047877013)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let isValid = checkValidations();',
'',
'if (isValid) {',
'    let checkedId = [];',
'    $("#list_ig_grid_vc .a-GV-bdy .a-GV-w-scroll .a-GV-table tbody").children(".a-GV-row").each( function () {',
'        if( $(this).find("input[type=checkbox]").is(":checked") ){',
'            checkedId.push( Number($(this).attr("data-id")) );',
'        }',
'    });',
'    apex.server.process(',
'        ''ADD_USER'',',
'        {   ',
'            x01: $v(''P219_NAME''),',
'            x02: $v(''P219_USER_NAME''),',
'            x03: $v(''P219_PASSWORD_GENERATED''),',
'            x04: $v(''P219_ROLE''),',
'            x05: $v(''P219_STATUS''),',
'            f01: checkedId',
'        },',
'        {',
'            dataType: ''text'', ',
'            success: function(){',
'                apex.submit(''submit'');',
'            }',
'        }',
'    );',
'}',
'else {',
'    $(".apex-page-item-error").first().focus();',
'}'))
,p_server_condition_type=>'ITEM_IS_NULL'
,p_server_condition_expr1=>'P219_USER_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46251590910877026)
,p_event_id=>wwv_flow_imp.id(46250285047877013)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let isValid = checkValidations();',
'let initialAccess = $v(''P219_ACCESSED_COMPONENTS'').split('','').map( Number );',
'',
'if (isValid) {',
'    let checkedId = [];',
'    $("#list_ig_grid_vc .a-GV-bdy .a-GV-w-scroll .a-GV-table tbody").children(".a-GV-row").each( function () {',
'        if( $(this).find("input[type=checkbox]").is(":checked") ){',
'            checkedId.push( Number($(this).attr("data-id")) );',
'        }',
'    });',
'    apex.server.process(',
'        ''UPDATE_USER'',',
'        {   ',
'            x01: $v(''P219_USER_ID''),',
'            x02: $v(''P219_NAME''),',
'            x03: $v(''P219_USER_NAME''),',
'            x04: $v(''P219_ROLE''),',
'            x05: $v(''P219_STATUS''),',
'            f01: checkedId,',
'            f02: initialAccess',
'        },',
'        {',
'            dataType: ''text'', ',
'            success: function(){',
'                apex.submit(''submit'');',
'            }',
'        }',
'    );',
'}',
'else {',
'    $(".apex-page-item-error").first().focus();',
'}'))
,p_server_condition_type=>'ITEM_IS_NOT_NULL'
,p_server_condition_expr1=>'P219_USER_ID'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(46251076654877021)
,p_name=>'Check Rows'
,p_event_sequence=>90
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'EXPRESSION'
,p_display_when_cond=>'(:P219_USER_ID IS NOT NULL AND :P219_INQUIRE_TOGGLE IS NULL)'
,p_display_when_cond2=>'PLSQL'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46251137110877022)
,p_event_id=>wwv_flow_imp.id(46251076654877021)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var toCheckArr = $v(''P219_ACCESSED_COMPONENTS'').split('','').map( Number );',
'',
'setTimeout(() => {',
'    $( document ).ready(function() {',
'        // $("#list_ig_grid_vc .a-GV-bdy .a-GV-w-scroll .a-GV-table tbody").children(".a-GV-row").each( function () {',
'        //     for (let i = 0; i < toCheckArr.length; i++){',
'        //         if( $(this).attr("data-id") ==  toCheckArr[i]){',
'        //             $(this).find("input[type=checkbox]").prop( "checked", true );',
'        //         }',
'        //     }',
'        // });',
'        $("#end").trigger("click");',
'        $("#end").trigger("click");',
'        setTimeout(() => {',
'            $("#list_ig_grid_vc .a-GV-bdy .a-GV-w-scroll .a-GV-table tbody").children(".a-GV-row").each( function () {',
'                for (let i = 0; i < toCheckArr.length; i++){',
'                    if( $(this).attr("data-id") ==  toCheckArr[i]){',
'                        $(this).find("input[type=checkbox]").trigger("click");',
'                    }',
'                }',
'            });',
'            $x("P219_NAME").focus();',
'        }, "500");',
'    });',
'}, "1000");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(46251749094877028)
,p_name=>'Set Title Add'
,p_event_sequence=>100
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'ITEM_IS_NULL'
,p_display_when_cond=>'P219_USER_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46251878082877029)
,p_event_id=>wwv_flow_imp.id(46251749094877028)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'setTitle("Add User");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(48533491103075731)
,p_name=>'Set Title Update'
,p_event_sequence=>110
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'EXPRESSION'
,p_display_when_cond=>'(:P219_USER_ID IS NOT NULL AND :P219_INQUIRE_TOGGLE IS NULL)'
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48533633868075733)
,p_event_id=>wwv_flow_imp.id(48533491103075731)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'setTitle("Update User");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(48533816659075735)
,p_name=>'Set Title Inquire'
,p_event_sequence=>120
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'EXPRESSION'
,p_display_when_cond=>'(:P219_USER_ID IS NOT NULL AND :P219_INQUIRE_TOGGLE IS NOT NULL)'
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48534166669075738)
,p_event_id=>wwv_flow_imp.id(48533816659075735)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'setTitle("Inquire User");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(47181740901422124)
,p_name=>'Go to Top'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(45410817298383619)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47181804314422125)
,p_event_id=>wwv_flow_imp.id(47181740901422124)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'focusOnIGFirstRecordFirstCell("list", "ADD");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(47181964135422126)
,p_name=>'Go to Bottom'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(45410934095383620)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47182070608422127)
,p_event_id=>wwv_flow_imp.id(47181964135422126)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'focusOnIGLastRecordFirstCell("list");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(48532761490075724)
,p_name=>'Disable Fields'
,p_event_sequence=>150
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'EXPRESSION'
,p_display_when_cond=>'(:P219_INQUIRE_TOGGLE IS NOT NULL AND :P219_USER_ID IS NOT NULL)'
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48532871322075725)
,p_event_id=>wwv_flow_imp.id(48532761490075724)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("input, select").attr({',
'    readonly:"",',
'    tabindex:"-1"',
'})',
'$(".required").addClass("hide");',
'',
'$("input, select").addClass("greyed");'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48533157071075728)
,p_event_id=>wwv_flow_imp.id(48532761490075724)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var toCheckArr = $v(''P219_ACCESSED_COMPONENTS'').split('','').map( Number );',
'',
'setTimeout(() => {',
'    $( document ).ready(function() {',
'        $("input[type=checkbox]").attr("disabled", true);',
'        // $("#end").trigger("click");',
'        // $("#end").trigger("click");',
'        // setTimeout(() => {',
'        //     $("#list_ig_grid_vc .a-GV-bdy .a-GV-w-scroll .a-GV-table tbody").children(".a-GV-row").each( function () {',
'        //         for (let i = 0; i < toCheckArr.length; i++){',
'        //             if( $(this).attr("data-id") ==  toCheckArr[i]){',
'        //                 $(this).find("input[type=checkbox]").trigger("click");',
'        //             }',
'        //         }',
'        //     });',
'        //     $x("P219_NAME").focus();',
'        //     $("input[type=checkbox]").attr("disabled", true);',
'        // }, "1000");',
'    });',
'}, "2000");'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(70298326066784936)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(45410378734383614)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'List - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
,p_internal_uid=>70298326066784936
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(45031482769682450)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(45031334131682449)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form User Utilities Add'
,p_internal_uid=>45031482769682450
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(46250568388877016)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ADD_USER'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_user_id NUMBER;',
'    v_component_id NUMBER;',
'BEGIN',
'    INSERT INTO NPM009(',
'        NAME,',
'        USER_NAME,',
'        PASSWORD,',
'        ROLE,',
'        STATUS,',
'        IS_PASSWORD_TEMPORARY,',
'        DATE_CREATED,',
'        USER_UPDATE,',
'        DATE_UPDATED',
'    )',
'    VALUES(',
'        APEX_APPLICATION.g_x01,',
'        APEX_APPLICATION.g_x02,',
'        APEX_APPLICATION.g_x03,',
'        APEX_APPLICATION.g_x04,',
'        APEX_APPLICATION.g_x05,',
'        ''Y'',',
'        SYSDATE,',
'        v(''APP_USER''),',
'        SYSDATE',
'    )',
'    RETURNING USER_ID INTO v_user_id;',
'',
'    FOR i in 1..APEX_APPLICATION.G_F01.COUNT LOOP',
'        INSERT INTO NPT010 (USER_ID, COMPONENT_ID, USER_CREATED, DATE_CREATED, USER_UPDATE, DATE_UPDATED)',
'        VALUES (v_user_id, TO_NUMBER( APEX_APPLICATION.G_F01(i) ), v(''APP_USER''), SYSDATE, v(''APP_USER''), SYSDATE);',
'    END LOOP;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>46250568388877016
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(46251677906877027)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UPDATE_USER'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    temp NUMBER;',
'    v_user_id NUMBER := TO_NUMBER(APEX_APPLICATION.g_x01);',
'BEGIN',
'    UPDATE NPM009 SET',
'        NAME = APEX_APPLICATION.g_x02,',
'        USER_NAME = APEX_APPLICATION.g_x03,',
'        ROLE = APEX_APPLICATION.g_x04,',
'        STATUS = APEX_APPLICATION.g_x05,',
'        USER_UPDATE = v(''APP_USER''),',
'        DATE_UPDATED = SYSDATE',
'    WHERE USER_ID = TO_NUMBER(APEX_APPLICATION.g_x01);',
'',
'    FOR i in 1..APEX_APPLICATION.G_F01.COUNT LOOP',
'        SELECT COUNT(1)',
'        INTO temp',
'        FROM NPT010',
'        WHERE USER_ID = v_user_id AND COMPONENT_ID = TO_NUMBER(APEX_APPLICATION.G_F01(i));',
'',
'        IF (temp <= 0) THEN',
'            INSERT INTO NPT010 (USER_ID, COMPONENT_ID, USER_CREATED, DATE_CREATED, USER_UPDATE, DATE_UPDATED)',
'            VALUES (v_user_id, TO_NUMBER( APEX_APPLICATION.G_F01(i) ), v(''APP_USER''), SYSDATE, v(''APP_USER''), SYSDATE);',
'        ELSE',
'            UPDATE NPT010 SET',
'                USER_UPDATE = v(''APP_USER''),',
'                DATE_UPDATED = SYSDATE',
'            WHERE USER_ID = v_user_id AND COMPONENT_ID = TO_NUMBER(APEX_APPLICATION.G_F01(i));',
'        END IF;',
'    END LOOP;',
'',
'    FOR i in 1..APEX_APPLICATION.G_F02.COUNT LOOP',
'        temp := 0;',
'',
'        FOR j in 1..APEX_APPLICATION.G_F01.COUNT LOOP',
'            IF TO_NUMBER( APEX_APPLICATION.G_F02(i) ) = TO_NUMBER( APEX_APPLICATION.G_F01(j) ) THEN',
'            temp := temp + 1;',
'            END IF;',
'        END LOOP;',
'',
'        IF (temp <= 0) THEN',
'            DELETE FROM NPT010',
'            WHERE USER_ID = v_user_id AND COMPONENT_ID = TO_NUMBER(APEX_APPLICATION.G_F02(i));',
'        END IF;',
'    END LOOP;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>46251677906877027
);
wwv_flow_imp.component_end;
end;
/
