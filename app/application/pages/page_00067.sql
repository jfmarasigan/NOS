prompt --application/pages/page_00067
begin
--   Manifest
--     PAGE: 00067
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
 p_id=>67
,p_name=>'Add/Edit Discount'
,p_alias=>'ADD-EDIT-DISCOUNT'
,p_step_title=>'Add/Edit Discount'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#js/cmn#MIN#.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p67KeyMapCrud = {',
'    escape : (v) => {',
'        $("#esc").trigger("click");',
'    },',
'    enter : (v) => {',
'        $x(''P67_DISCOUNT_DESC'').focus();',
'        if( checkItemCategories() ){',
'            $.event.trigger("itemCategoriesValidation");',
'        } else {',
'            showGPopup({',
'                icon: "fa fa-exclamation-circle",',
'                message: "Sub Categories are empty.",',
'                width: "10rem",',
'                timeoutActive: true,',
'                timeout: 2000,',
'                top: "80%"',
'            });',
'        }',
'    },',
'    f8 : (v) => {',
'        $("#f8").trigger("click");',
'    },',
'    f6 : (v) => {',
'        $("#f6").trigger("click");',
'    }',
'}',
'function mapP67KeysCrud() {',
'    $(document).off(''keydown.p67keyevents'');',
'    $(document).on(''keydown.p67keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p67KeyMapCrud[key]) {',
'            ev.preventDefault();',
'            p67KeyMapCrud[key]();',
'        }',
'    });',
'}',
'',
'const p67KeyMapError = {',
'    escape : (v) => {',
'        mapP67KeysCrud();',
'    }',
'}',
'function mapP67KeysError() {',
'    $(document).off(''keydown.p67keyevents'');',
'    $(document).on(''keydown.p67keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p67KeyMapError[key]) {',
'            ev.preventDefault();',
'            p67KeyMapError[key]();',
'        }',
'    });',
'}',
'',
'const p67KeyMapIC = {',
'    d : (v) => {',
'        $("#d").trigger("click");',
'    },',
'    s : (v) => {',
'        $("#s").trigger("click");',
'    },',
'    c : (v) => {',
'        $("#c").trigger("click");',
'    },',
'    escape : (v) => {',
'        mapP67KeysCrud();',
'    }',
'}',
'function mapP67KeysIC() {',
'    $(document).off(''keydown.p67keyevents'');',
'    $(document).on(''keydown.p67keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p67KeyMapIC[key]) {',
'            ev.preventDefault();',
'            p67KeyMapIC[key]();',
'        }',
'    });',
'}',
'',
'const p67KeyMapIDL = {',
'    space : (v) => {',
'        $("#IDLm").trigger("click");',
'    },',
'    a : (v) => {',
'        $("#IDLa").trigger("click");',
'    },',
'    s : (v) => {',
'        $("#IDLs").trigger("click");',
'    },',
'    u : (v) => {',
'        $("#IDLu").trigger("click");',
'    },',
'    escape : (v) => {',
'        $.event.trigger("departmentCloseDialog");',
'        mapP67KeysCrud();',
'    },',
'    enter : (v) => {',
'        $.event.trigger("departmentEnter");',
'        mapP67KeysCrud();',
'    }',
'}',
'function mapP67KeysIDL() {',
'    $(document).off(''keydown.p67keyevents'');',
'    $(document).on(''keydown.p67keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p67KeyMapIDL[key]) {',
'            ev.preventDefault();',
'            p67KeyMapIDL[key]();',
'        }',
'    });',
'}',
'',
'const p67KeyMapIDS = {',
'    escape : (v) => {',
'        mapP67KeysIDL();',
'    },',
'    enter : (v) => {',
'        if($v("P67_DEPARTMENT_SEARCH").length <= 0){',
'            $("#P67_DEPARTMENT_SEARCH").addClass("apex-page-item-error");',
'            $("#P67_DEPARTMENT_SEARCH_error_placeholder").removeClass("u-hidden");',
'            $("#P67_DEPARTMENT_SEARCH_error_placeholder").html("Must have some value.");',
'        } else {',
'            mapP67KeysIDL();',
'            $.event.trigger("deptSearch");',
'        }',
'    }',
'}',
'function mapP67KeysIDS() {',
'    $(document).off(''keydown.p67keyevents'');',
'    $(document).on(''keydown.p67keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p67KeyMapIDS[key]) {',
'            ev.preventDefault();',
'            p67KeyMapIDS[key]();',
'        }',
'    });',
'}',
'',
'const p67KeyMapISL = {',
'    space : (v) => {',
'        $("#ISLm").trigger("click");',
'    },',
'    a : (v) => {',
'        $("#ISLa").trigger("click");',
'    },',
'    s : (v) => {',
'        $("#ISLs").trigger("click");',
'    },',
'    u : (v) => {',
'        $("#ISLu").trigger("click");',
'    },',
'    escape : (v) => {',
'        $.event.trigger("sicCloseDialog");',
'        mapP67KeysCrud();',
'    },',
'    enter : (v) => {',
'        $.event.trigger("sicEnter");',
'        mapP67KeysCrud();',
'    }',
'}',
'function mapP67KeysISL() {',
'    $(document).off(''keydown.p67keyevents'');',
'    $(document).on(''keydown.p67keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p67KeyMapISL[key]) {',
'            ev.preventDefault();',
'            p67KeyMapISL[key]();',
'        }',
'    });',
'}',
'',
'const p67KeyMapISS = {',
'    escape : (v) => {',
'        mapP67KeysISL();',
'    },',
'    enter : (v) => {',
'        if($v("P67_SIC_SEARCH").length <= 0){',
'            $("#P67_SIC_SEARCH").addClass("apex-page-item-error");',
'            $("#P67_SIC_SEARCH_error_placeholder").removeClass("u-hidden");',
'            $("#P67_SIC_SEARCH_error_placeholder").html("Must have some value.");',
'        } else {',
'            mapP67KeysISL();',
'            $.event.trigger("sicSearch");',
'        }',
'    }',
'}',
'function mapP67KeysISS() {',
'    $(document).off(''keydown.p67keyevents'');',
'    $(document).on(''keydown.p67keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p67KeyMapISS[key]) {',
'            ev.preventDefault();',
'            p67KeyMapISS[key]();',
'        }',
'    });',
'}',
'',
'const p67KeyMapICL = {',
'    space : (v) => {',
'        $("#ICLm").trigger("click");',
'    },',
'    a : (v) => {',
'        $("#ICLa").trigger("click");',
'    },',
'    s : (v) => {',
'        $("#ICLs").trigger("click");',
'    },',
'    u : (v) => {',
'        $("#ICLu").trigger("click");',
'    },',
'    escape : (v) => {',
'        $.event.trigger("classCloseDialog");',
'        mapP67KeysCrud();',
'    },',
'    enter : (v) => {',
'        $.event.trigger("classEnter");',
'        mapP67KeysCrud();',
'    }',
'}',
'function mapP67KeysICL() {',
'    $(document).off(''keydown.p67keyevents'');',
'    $(document).on(''keydown.p67keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p67KeyMapICL[key]) {',
'            ev.preventDefault();',
'            p67KeyMapICL[key]();',
'        }',
'    });',
'}',
'',
'const p67KeyMapICS = {',
'    escape : (v) => {',
'        mapP67KeysICL();',
'    },',
'    enter : (v) => {',
'        if($v("P67_CLASS_SEARCH").length <= 0){',
'            $("#P67_CLASS_SEARCH").addClass("apex-page-item-error");',
'            $("#P67_CLASS_SEARCH_error_placeholder").removeClass("u-hidden");',
'            $("#P67_CLASS_SEARCH_error_placeholder").html("Must have some value.");',
'        } else {',
'            mapP67KeysICL();',
'            $.event.trigger("classSearch");',
'        }',
'    }',
'}',
'function mapP67KeysICS() {',
'    $(document).off(''keydown.p67keyevents'');',
'    $(document).on(''keydown.p67keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p67KeyMapICS[key]) {',
'            ev.preventDefault();',
'            p67KeyMapICS[key]();',
'        }',
'    });',
'}',
'',
'function mapP67KeysExit(){',
'    $(document).off(''keydown.p67keyevents'');',
'    $(document).on(''keydown.p67keyevents'', (ev) => {',
'        $.event.trigger("itemCategoriesValidationClose");',
'        mapP67KeysCrud();',
'    });',
'}',
'',
'const p67KeyMapReachedMax = {',
'    y : (v) => {',
'        $("#DLRMy").trigger("click");',
'    },',
'    n : (v) => {',
'        $("#DLRMn").trigger("click");',
'    },',
'    escape : (v) => {',
'        mapP67KeysView();',
'    }',
'}',
'function mapP67KeysReachedMax(){',
'    $(document).off(''keydown.p67keyevents'');',
'    $(document).on(''keydown.p67keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p67KeyMapReachedMax[key]) {',
'            ev.preventDefault();',
'            p67KeyMapReachedMax[key]();',
'        }',
'    });',
'}',
'',
'function checkItemCategories(){',
'    var subcatCount = apex.region("sub-categories-table").widget()',
'        .interactiveGrid("getViews", "grid")',
'        .model.getTotalRecords()',
'    if( subcatCount == 0 ){',
'        return false;',
'    } else {',
'        return true;',
'    }',
'}',
'',
'$(''.a-GV-columnItem input'').keypress(function (e) {',
'    if($(''#P67_TYPE'').val() == "Percent"){',
'        if(Number( $(this).val() + e.key ) <= 99.99){',
'            if(',
'                e.key == "1" || e.key == "2" || e.key == "3" || e.key == "4" ||',
'                e.key == "5" || e.key == "6" || e.key == "7" || e.key == "8" ||',
'                e.key == "9" || e.key == "0"',
'            ){',
'                return true;',
'            } else if(e.key == "." && $(this).val().indexOf(''.'') == -1){',
'                return true;',
'            } else {',
'                return false;',
'            }',
'        } else {',
'            return false;',
'        }',
'    } else if($(''#P67_TYPE'').val() == "Fixed") {',
'        if(',
'            e.key == "1" || e.key == "2" || e.key == "3" || e.key == "4" ||',
'            e.key == "5" || e.key == "6" || e.key == "7" || e.key == "8" ||',
'            e.key == "9" || e.key == "0"',
'        ){',
'            return true;',
'        } else if(e.key == "." && $(this).val().indexOf(''.'') == -1){',
'            return true;',
'        } else {',
'            return false;',
'        }',
'    } else{',
'        $("#P67_TYPE").addClass("apex-page-item-error");',
'        $("#P67_TYPE_error_placeholder").removeClass("u-hidden");',
'        $("#P67_TYPE_error_placeholder").html("Must have some value.");',
'',
'        $x(''P67_TYPE'').focus();',
'        return false;',
'    }',
'});',
'',
'$("#P67_DISCOUNT_CODE, #P67_DISCOUNT_DESC, .a-GV-columnItem input").on("focus", function () {',
'   $(this).select();',
'});',
'',
'$("#P67_DATE_FROM, #P67_DATE_TO")',
'    .keypress(function(e){',
'        if(',
'            e.key == "1" || e.key == "2" ||',
'            e.key == "3" || e.key == "4" ||',
'            e.key == "5" || e.key == "6" ||',
'            e.key == "7" || e.key == "8" ||',
'            e.key == "9" || e.key == "0" || e.key == "/"',
'        ){',
'            if( $(this).val().length == 2 ){',
'                $(this).val( $(this).val() + "/" )',
'            } else if( $(this).val().length == 5 ){',
'                $(this).val( $(this).val() + "/" )',
'            }',
'            return true;',
'        } else {',
'            return false;',
'        }',
'});'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP67KeysCrud();',
'$x(''P67_DISCOUNT_CODE'').focus();',
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
'.reached-max-btns {',
'    font-size: 1.125rem;',
'    color: black;',
'}',
'.dialog-btns {',
'    font-size: 1.125rem;',
'    color: white;',
'    background-color: #056AC8;',
'    border: none;',
'    margin-bottom: 0.4rem !important;',
'}',
'',
'#sub-categories-table .a-IG {',
'    height: calc(70vh + 2px) !important;',
'} ',
'',
'#sub-categories-table .a-IG-contentContainer {',
'    height: 70vh !important;',
'}',
'',
'#sub-categories-table .a-IG-gridView.a-GV {',
'    height: 70vh !important;',
'}',
'',
'#sub-categories-table .a-GV-bdy {',
'    height: calc(70vh - 2.5625rem) !important;',
'}',
'',
'#sub-categories-table_ig{',
'    border: 0.0625rem solid black;',
'}',
'',
'#IDL-dialog .t-DialogRegion-body, #ICL-dialog .t-DialogRegion-body, #ISL-dialog .t-DialogRegion-body {',
'    background-color: #056AC8;',
'}',
'.ui-resizable-s {',
'    background-color: #056AC8;',
'}',
'',
'#esc, #enter {',
'    display: none;',
'}',
'',
'#readonly-form {',
'    margin-bottom: 0;',
'    background-color: rgb(30, 58, 138);',
'}',
'#readonly-form label{',
'    font-size: 1.125rem;',
'    color: white;',
'}',
'#readonly-form .readonly-field{',
'    font-size: 1.125rem;',
'    color: white;',
'}',
'',
'#sub-categories-table table,',
'#sub-categories-table tr,',
'#sub-categories-table td,',
'#sub-categories-table th {',
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
'}',
'#discount-list table,',
'#discount-list tr,',
'#discount-list td,',
'#discount-list th {',
'    font-size: 1.125rem;',
'}',
'',
'#discount-list_ig, #IDL-grid_ig, #sicGrid_ig, #ISL-grid_ig, #classGrid_ig, #ICL-grid_ig {',
'    border: 0.0625rem solid rgb(30, 58, 138);',
'}',
'',
'.a-GV-table .a-GV-cell, th.a-GV-header {',
'    border-color: rgb(30, 58, 138);',
'}',
'',
'.a-GV-header a, th.a-GV-header {',
'    background-color: #046BC8;',
'    color: white;',
'}',
'',
'.a-GV-hdr .a-GV-table {',
'    width: 100% !important;',
'}',
'',
'#discount-form {',
'    background-color: rgb(30, 58, 138);',
'}',
'#discount-form label,',
'#discount-form input,',
'#discount-form select {',
'    font-size: 1.125rem;',
'}',
'#discount-form label {',
'    color: white;',
'}',
'#discount-form .t-Form-error{',
'    color: #FFD700;',
'}',
'',
'#P67_TYPE, #P67_CATEGORY{',
'    font-size: 1.125rem;',
'    padding-top: 0.438rem;',
'    padding-bottom: 0.438rem;',
'}',
'',
'.t-Form-labelContainer:has(> #P67_TYPE_LABEL),',
'.t-Form-labelContainer:has(> #P67_DATE_FROM_LABEL),',
'.t-Form-labelContainer:has(> #P67_DEPARTMENT_SEARCH_LABEL),',
'.t-Form-labelContainer:has(> #P67_SIC_SEARCH_LABEL),',
'.t-Form-labelContainer:has(> #P67_CLASS_SEARCH_LABEL),',
'.t-Form-labelContainer:has(> #P67_CATEGORY_LABEL) {',
'    text-align: start;',
'}',
'',
'.t-Form-labelContainer:has(> #P67_DATE_TO_LABEL){',
'    text-align: center;',
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
'.blueCorner{',
'    background-color: #046BC8;',
'    padding-top: 0;',
'    padding-bottom: 0;',
'}',
'#DSform label, #SSform label, #CSform label,',
'#DSform input, #SSform input, #CSform input {',
'    font-size: 1.125rem;',
'}',
'',
'.ui-draggable {',
'    top: 45% !important;',
'}',
'',
'#add-sub-dept label, #add-sub-dept input{',
'    font-size: 1.125rem;',
'}',
'',
'.a-GV-columnItem input{',
'    text-align: right;',
'}',
'',
'.t-Form-error, .a-Form-error{',
'    font-weight: bold;',
'}',
'',
'#P67_DISCOUNT_CODE:disabled {',
'    color: black;',
'    background-color: #d9d9d9;',
'    opacity: unset;',
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
 p_id=>wwv_flow_imp.id(37712170599853351)
,p_plug_name=>'Discount Form'
,p_region_name=>'discount-form'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>80
,p_plug_grid_column_span=>6
,p_query_type=>'TABLE'
,p_query_table=>'NPT008'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(37724744150892459)
,p_plug_name=>'Sub Categories Discount'
,p_plug_display_sequence=>90
,p_plug_new_grid_row=>false
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36262271625538816)
,p_plug_name=>'Sub Category Header'
,p_parent_plug_id=>wwv_flow_imp.id(37724744150892459)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>6
,p_plug_display_column=>3
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source=>'<h3 style="color:white;font-size:1.5rem;text-align:start">Sub-Categories Discount</h3>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(37724854744892460)
,p_plug_name=>'Sub Categories Table'
,p_region_name=>'sub-categories-table'
,p_parent_plug_id=>wwv_flow_imp.id(37724744150892459)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>6
,p_plug_display_column=>3
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    seq_id,',
'    n001,',
'    c001,',
'    c002',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''SUBCATEGORIES'''))
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
 p_id=>wwv_flow_imp.id(36262887568538822)
,p_name=>'N001'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'N001'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>20
,p_attribute_01=>'Y'
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(36262988011538823)
,p_name=>'C001'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'C001'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Sub-Category'
,p_heading_alignment=>'CENTER'
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
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(36263093967538824)
,p_name=>'C002'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'C002'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Discount Value'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'RIGHT'
,p_attribute_05=>'BOTH'
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
 p_id=>wwv_flow_imp.id(37621000777039506)
,p_name=>'SEQ_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SEQ_ID'
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(38091360524625854)
,p_internal_uid=>38091360524625854
,p_is_editable=>true
,p_edit_operations=>'u'
,p_lost_update_check_type=>'VALUES'
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
,p_fixed_header_max_height=>400
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
 p_id=>wwv_flow_imp.id(38202416074230696)
,p_interactive_grid_id=>wwv_flow_imp.id(38091360524625854)
,p_static_id=>'158932'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(38202679543230698)
,p_report_id=>wwv_flow_imp.id(38202416074230696)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(36826906938314957)
,p_view_id=>wwv_flow_imp.id(38202679543230698)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(36262887568538822)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(36827706661314973)
,p_view_id=>wwv_flow_imp.id(38202679543230698)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(36262988011538823)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(36833224113394726)
,p_view_id=>wwv_flow_imp.id(38202679543230698)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(36263093967538824)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(37878374551997450)
,p_view_id=>wwv_flow_imp.id(38202679543230698)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(37621000777039506)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(39441635958727946)
,p_plug_name=>'Buttons'
,p_plug_display_sequence=>100
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(40001089739390964)
,p_plug_name=>'Item Categories'
,p_region_css_classes=>'blueCorner'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>110
,p_location=>null
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(40003814826394445)
,p_plug_name=>'Item Department List'
,p_region_name=>'IDL-dialog'
,p_region_template_options=>'js-dialog-autoheight:js-modal:js-resizable:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>120
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(40003879459394446)
,p_plug_name=>'Item Dept Grid'
,p_region_name=>'IDL-grid'
,p_parent_plug_id=>wwv_flow_imp.id(40003814826394445)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    n001,',
'    c001',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''ITEMDEPTLIST'''))
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
 p_id=>wwv_flow_imp.id(40004247853394449)
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
 p_id=>wwv_flow_imp.id(40004321507394450)
,p_name=>'C001'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'C001'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Item Department'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
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
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(40004376542394451)
,p_name=>'ADD'
,p_source_type=>'NONE'
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'Add'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    };',
'    return options;',
'}'))
,p_enable_hide=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(40003988089394447)
,p_internal_uid=>40003988089394447
,p_is_editable=>true
,p_edit_operations=>'u'
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>false
,p_fixed_row_height=>false
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
,p_fixed_header_max_height=>260
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
 p_id=>wwv_flow_imp.id(40106197732886596)
,p_interactive_grid_id=>wwv_flow_imp.id(40003988089394447)
,p_static_id=>'160747'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(40106359963886597)
,p_report_id=>wwv_flow_imp.id(40106197732886596)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(40106880755886608)
,p_view_id=>wwv_flow_imp.id(40106359963886597)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(40004247853394449)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(40107719256886619)
,p_view_id=>wwv_flow_imp.id(40106359963886597)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(40004321507394450)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(40108630684886630)
,p_view_id=>wwv_flow_imp.id(40106359963886597)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(40004376542394451)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(40004834735394455)
,p_plug_name=>'IDL Buttons'
,p_parent_plug_id=>wwv_flow_imp.id(40003814826394445)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(40018421230401436)
,p_plug_name=>'Department Search'
,p_region_name=>'DSform'
,p_region_template_options=>'js-dialog-autoheight:js-modal:js-draggable:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>150
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(40842233525701274)
,p_plug_name=>'Item SIC List'
,p_region_name=>'ISL-dialog'
,p_region_template_options=>'js-dialog-autoheight:js-modal:js-resizable:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>130
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(40842405470701275)
,p_plug_name=>'Item SIC Grid'
,p_region_name=>'ISL-grid'
,p_parent_plug_id=>wwv_flow_imp.id(40842233525701274)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    n001,',
'    c001',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''ITEMSICLIST'''))
,p_plug_source_type=>'NATIVE_IG'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(40842584668701277)
,p_name=>'ADD'
,p_source_type=>'NONE'
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'Add'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    };',
'    return options;',
'}'))
,p_enable_hide=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(40842634605701278)
,p_name=>'N001'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'N001'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>20
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(40842796566701279)
,p_name=>'C001'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'C001'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Item SIC'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
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
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(40842506178701276)
,p_internal_uid=>40842506178701276
,p_is_editable=>true
,p_edit_operations=>'u'
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>false
,p_fixed_row_height=>false
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
,p_fixed_header_max_height=>260
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
 p_id=>wwv_flow_imp.id(40856992703754328)
,p_interactive_grid_id=>wwv_flow_imp.id(40842506178701276)
,p_static_id=>'168211'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(40857176832754328)
,p_report_id=>wwv_flow_imp.id(40856992703754328)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(40859843454754367)
,p_view_id=>wwv_flow_imp.id(40857176832754328)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(40842584668701277)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(40860812387754374)
,p_view_id=>wwv_flow_imp.id(40857176832754328)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(40842634605701278)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(40861639033754381)
,p_view_id=>wwv_flow_imp.id(40857176832754328)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(40842796566701279)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(40842900438701280)
,p_plug_name=>'ISL Buttons'
,p_parent_plug_id=>wwv_flow_imp.id(40842233525701274)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(40854776661707657)
,p_plug_name=>'SIC Search'
,p_region_name=>'SSform'
,p_region_template_options=>'js-dialog-autoheight:js-modal:js-draggable:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>160
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(40870048400770059)
,p_plug_name=>'Item Class List'
,p_region_name=>'ICL-dialog'
,p_region_template_options=>'js-dialog-autoheight:js-modal:js-resizable:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>140
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(40870182068770060)
,p_plug_name=>'Item Class Grid'
,p_region_name=>'ICL-grid'
,p_parent_plug_id=>wwv_flow_imp.id(40870048400770059)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    n001,',
'    c001',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''ITEMCLASSLIST'''))
,p_plug_source_type=>'NATIVE_IG'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(40870388820770062)
,p_name=>'ADD'
,p_source_type=>'NONE'
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'Add'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    };',
'    return options;',
'}'))
,p_enable_hide=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(40870412703770063)
,p_name=>'N001'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'N001'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>20
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(40870553790770064)
,p_name=>'C001'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'C001'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Item Class'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
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
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(40870281671770061)
,p_internal_uid=>40870281671770061
,p_is_editable=>true
,p_edit_operations=>'u'
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>false
,p_fixed_row_height=>false
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
,p_fixed_header_max_height=>260
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
 p_id=>wwv_flow_imp.id(40918909188221037)
,p_interactive_grid_id=>wwv_flow_imp.id(40870281671770061)
,p_static_id=>'168787'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(40919142928221037)
,p_report_id=>wwv_flow_imp.id(40918909188221037)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(40920359907221043)
,p_view_id=>wwv_flow_imp.id(40919142928221037)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(40870388820770062)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(40921225279221048)
,p_view_id=>wwv_flow_imp.id(40919142928221037)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(40870412703770063)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(40922140517221054)
,p_view_id=>wwv_flow_imp.id(40919142928221037)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(40870553790770064)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(40870663228770065)
,p_plug_name=>'ISL Buttons'
,p_parent_plug_id=>wwv_flow_imp.id(40870048400770059)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(40897776769122452)
,p_plug_name=>'Class Search'
,p_region_name=>'CSform'
,p_region_template_options=>'js-dialog-autoheight:js-modal:js-draggable:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>170
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(24027863052343735)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(39441635958727946)
,p_button_name=>'Add_Item_Categories'
,p_button_static_id=>'f8'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>F8</u> - Add/Remove Sub-categories'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(24030309723353467)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(40001089739390964)
,p_button_name=>'Add_Item_Department'
,p_button_static_id=>'d'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>D</u> - Add Item Department'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'dialog-btns'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(24034383594356940)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(40004834735394455)
,p_button_name=>'IDL_Mark'
,p_button_static_id=>'IDLm'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>Space</u> - Mark/Unmark'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'dialog-btns'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(24038640593358962)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(40842900438701280)
,p_button_name=>'ISL_Mark'
,p_button_static_id=>'ISLm'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>Space</u> - Mark/Unmark'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'dialog-btns'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(24043019371360234)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(40870663228770065)
,p_button_name=>'ICL_Mark'
,p_button_static_id=>'ICLm'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>Space</u> - Mark/Unmark'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'dialog-btns'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(24030733881353468)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(40001089739390964)
,p_button_name=>'Add_Item_SIC'
,p_button_static_id=>'s'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>S</u> - Add Item SIC'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'dialog-btns'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(24034785796356940)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(40004834735394455)
,p_button_name=>'IDL_Mark_All'
,p_button_static_id=>'IDLa'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>A</u> - Mark All'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'dialog-btns'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(24039402993358962)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(40842900438701280)
,p_button_name=>'ISL_Mark_All'
,p_button_static_id=>'ISLa'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>A</u> - Mark All'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'dialog-btns'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(24043818485360235)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(40870663228770065)
,p_button_name=>'ICL_Mark_All'
,p_button_static_id=>'ICLa'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>A</u> - Mark All'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'dialog-btns'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(24031180572353468)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(40001089739390964)
,p_button_name=>'Add_Item_Class'
,p_button_static_id=>'c'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>C</u> - Add Item Class'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'dialog-btns'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(24035105209356942)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(40004834735394455)
,p_button_name=>'IDL_Search'
,p_button_static_id=>'IDLs'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>S</u> - Search'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'dialog-btns'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(24039037542358962)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(40842900438701280)
,p_button_name=>'ISL_Search'
,p_button_static_id=>'ISLs'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>S</u> - Search'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'dialog-btns'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(24043496206360234)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(40870663228770065)
,p_button_name=>'ICL_Search'
,p_button_static_id=>'ICLs'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>S</u> - Search'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'dialog-btns'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(38733019067412603)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(39441635958727946)
,p_button_name=>'Navigate'
,p_button_static_id=>'f6'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>F6</u> - Navigate'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(24035504342356942)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(40004834735394455)
,p_button_name=>'IDL_Unmark_All'
,p_button_static_id=>'IDLu'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>U</u> - Unmark All'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'dialog-btns'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(24039831231358964)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(40842900438701280)
,p_button_name=>'ISL_Unmark_All'
,p_button_static_id=>'ISLu'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>U</u> - Unmark All'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'dialog-btns'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(24044266190360235)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(40870663228770065)
,p_button_name=>'ICL_Unmark_All'
,p_button_static_id=>'ICLu'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>U</u> - Unmark All'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'dialog-btns'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(24028259325343737)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(39441635958727946)
,p_button_name=>'Escape'
,p_button_static_id=>'esc'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'-'
,p_button_redirect_url=>'f?p=&APP_ID.:66:&SESSION.::&DEBUG.::P66_SELECTED_VAL_PREV,P66_SEARCH_NAME,P66_SEARCH_DATE_TO,P66_DISPLAY_ALL:&P67_SELECTED_VAL_PREV.,&P67_SEARCH_NAME_PREV.,&P67_SEARCH_DATE_TO_PREV.,&P67_DISPLAY_ALL_PREV.'
,p_button_css_classes=>'invisible-btn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(38734471911412617)
,p_branch_name=>'Go To Page 66 Add'
,p_branch_action=>'f?p=&APP_ID.:66:&SESSION.::&DEBUG.::P66_ADD_POPUP,P66_SEARCH_NAME,P66_SEARCH_DATE_TO,P66_DISPLAY_ALL:&P67_DISCOUNT_CODE.,&P67_SEARCH_NAME_PREV.,&P67_SEARCH_DATE_TO_PREV.,&P67_DISPLAY_ALL_PREV.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'ITEM_IS_NULL'
,p_branch_condition=>'P67_DISCOUNT_ID'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(48531781286075714)
,p_branch_name=>'Go To Page 66 Update'
,p_branch_action=>'f?p=&APP_ID.:66:&SESSION.::&DEBUG.::P66_UPDATE_POPUP,P66_SEARCH_NAME,P66_SEARCH_DATE_TO,P66_DISPLAY_ALL,P66_SELECTED_VAL_PREV:&P67_DISCOUNT_CODE_HIDDEN.,&P67_SEARCH_NAME_PREV.,&P67_SEARCH_DATE_TO_PREV.,&P67_DISPLAY_ALL_PREV.,&P67_SELECTED_VAL_PREV.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>20
,p_branch_condition_type=>'ITEM_IS_NOT_NULL'
,p_branch_condition=>'P67_DISCOUNT_ID'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36262139105538815)
,p_name=>'P67_DISCOUNT_DESC'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(37712170599853351)
,p_item_source_plug_id=>wwv_flow_imp.id(37712170599853351)
,p_prompt=>'Discount Description <span style="color:red">*</span>'
,p_source=>'DISCOUNT_DESC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_colspan=>10
,p_field_template=>wwv_flow_imp.id(4382138690084278)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37621401372039510)
,p_name=>'P67_SELECTED_SUBCATEGORY'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37712739189853358)
,p_name=>'P67_DISCOUNT_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(37712170599853351)
,p_item_source_plug_id=>wwv_flow_imp.id(37712170599853351)
,p_source=>'DISCOUNT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37712956390853360)
,p_name=>'P67_DISCOUNT_CODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(37712170599853351)
,p_item_source_plug_id=>wwv_flow_imp.id(37712170599853351)
,p_prompt=>'Discount Code <span style="color:red">*</span>'
,p_source=>'DISCOUNT_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>8
,p_colspan=>5
,p_field_template=>wwv_flow_imp.id(4382138690084278)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
,p_attribute_06=>'UPPER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37716226744853375)
,p_name=>'P67_CATEGORY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(37712170599853351)
,p_item_source_plug_id=>wwv_flow_imp.id(37712170599853351)
,p_prompt=>'Category <span style="color:red">*</span>'
,p_source=>'CATEGORY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Department;Department,SIC;SIC,Class;Class'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>5
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37716461492853377)
,p_name=>'P67_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(37712170599853351)
,p_item_source_plug_id=>wwv_flow_imp.id(37712170599853351)
,p_prompt=>'Type <span style="color:red">*</span>'
,p_source=>'TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Percent;Percent,Fixed;Fixed'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>5
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37716533236853378)
,p_name=>'P67_DATE_FROM'
,p_source_data_type=>'DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(37712170599853351)
,p_item_source_plug_id=>wwv_flow_imp.id(37712170599853351)
,p_prompt=>'Eff Date Range <span style="color:red">*</span>'
,p_placeholder=>'MM/DD/YYYY'
,p_format_mask=>'MM/DD/YYYY'
,p_source=>'DATE_FROM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>4
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37716652689853379)
,p_name=>'P67_DATE_TO'
,p_source_data_type=>'DATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(37712170599853351)
,p_item_source_plug_id=>wwv_flow_imp.id(37712170599853351)
,p_prompt=>'To'
,p_placeholder=>'MM/DD/YYYY'
,p_format_mask=>'MM/DD/YYYY'
,p_source=>'DATE_TO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38733789453412610)
,p_name=>'P67_SUBCATEGORY_VALIDATION'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38734687505412619)
,p_name=>'P67_CATEGORY_INITIAL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(37712170599853351)
,p_item_source_plug_id=>wwv_flow_imp.id(37712170599853351)
,p_source=>'CATEGORY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39154610482225075)
,p_name=>'P67_DATE_FROM_INITIAL'
,p_source_data_type=>'DATE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(37712170599853351)
,p_item_source_plug_id=>wwv_flow_imp.id(37712170599853351)
,p_source=>'DATE_FROM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39490778426286254)
,p_name=>'P67_DATE_TO_INITIAL_1'
,p_source_data_type=>'DATE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(37712170599853351)
,p_item_source_plug_id=>wwv_flow_imp.id(37712170599853351)
,p_source=>'DATE_TO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40018881927401439)
,p_name=>'P67_DEPARTMENT_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(40018421230401436)
,p_prompt=>'Item Department:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40872611777775110)
,p_name=>'P67_SIC_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(40854776661707657)
,p_prompt=>'Item SIC:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40898215965122455)
,p_name=>'P67_CLASS_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(40897776769122452)
,p_prompt=>'Item Class:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48531003483075707)
,p_name=>'P67_SELECTED_VAL_PREV'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48531139389075708)
,p_name=>'P67_SEARCH_NAME_PREV'
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48531208228075709)
,p_name=>'P67_SEARCH_DATE_TO_PREV'
,p_item_sequence=>50
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48531322657075710)
,p_name=>'P67_DISPLAY_ALL_PREV'
,p_item_sequence=>60
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48532623329075723)
,p_name=>'P67_DISCOUNT_CODE_HIDDEN'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(37712170599853351)
,p_item_source_plug_id=>wwv_flow_imp.id(37712170599853351)
,p_source=>'DISCOUNT_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51457686677420323)
,p_name=>'P67_NAVIGATE_MODE'
,p_item_sequence=>70
,p_item_default=>'details'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(37989151702570440)
,p_validation_name=>'Empty Discount Code'
,p_validation_sequence=>10
,p_validation=>'P67_DISCOUNT_CODE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Must have some value.'
,p_always_execute=>'Y'
,p_validation_condition=>'P67_DISCOUNT_ID'
,p_validation_condition_type=>'ITEM_IS_NULL'
,p_associated_item=>wwv_flow_imp.id(37712956390853360)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(37989269981570441)
,p_validation_name=>'Empty Description'
,p_validation_sequence=>20
,p_validation=>'P67_DISCOUNT_DESC'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Must have some value.'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_imp.id(36262139105538815)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(37989384844570442)
,p_validation_name=>'Empty Type'
,p_validation_sequence=>30
,p_validation=>'P67_TYPE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Must have some value.'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_imp.id(37716461492853377)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(37989454616570443)
,p_validation_name=>'Empty Category'
,p_validation_sequence=>40
,p_validation=>'P67_CATEGORY'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Must have some value.'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_imp.id(37716226744853375)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(37989598156570444)
,p_validation_name=>'Empty Start Date'
,p_validation_sequence=>50
,p_validation=>'P67_DATE_FROM'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Must have some value.'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_imp.id(37716533236853378)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(37989623902570445)
,p_validation_name=>'Empty End Date'
,p_validation_sequence=>60
,p_validation=>'P67_DATE_TO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Must have some value.'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_imp.id(37716652689853379)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(39841350012908909)
,p_validation_name=>'Unique Discount Code'
,p_validation_sequence=>70
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM NPT008',
'WHERE UPPER(DISCOUNT_CODE) = UPPER(:P67_DISCOUNT_CODE)'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'Discount Code already exists.'
,p_always_execute=>'Y'
,p_validation_condition=>'P67_DISCOUNT_ID'
,p_validation_condition_type=>'ITEM_IS_NULL'
,p_associated_item=>wwv_flow_imp.id(37712956390853360)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(49743579530243328)
,p_validation_name=>'Valid Date From'
,p_validation_sequence=>80
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_date DATE;',
'BEGIN',
'    v_date := TO_DATE( :P67_DATE_FROM, ''MM/DD/YYYY'' );',
'    IF(TO_DATE(:P67_DATE_FROM, ''MM/DD/YYYY'') <= TO_DATE(:P67_DATE_TO, ''MM/DD/YYYY'')) THEN',
'        RETURN TRUE;',
'    ELSE',
'        RETURN FALSE;',
'    END IF;',
'    EXCEPTION',
'    WHEN OTHERS THEN',
'        RETURN FALSE;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Must be valid Date.'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_imp.id(37716533236853378)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(49743653272243329)
,p_validation_name=>'Valid Date To'
,p_validation_sequence=>90
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_date DATE;',
'BEGIN',
'    v_date := TO_DATE( :P67_DATE_TO, ''MM/DD/YYYY'' );',
'    IF(TO_DATE(:P67_DATE_FROM, ''MM/DD/YYYY'') <= TO_DATE(:P67_DATE_TO, ''MM/DD/YYYY'')) THEN',
'        RETURN TRUE;',
'    ELSE',
'        RETURN FALSE;',
'    END IF;',
'    EXCEPTION',
'    WHEN OTHERS THEN',
'        RETURN FALSE;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Must be valid Date.'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_imp.id(37716652689853379)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22494347211163631)
,p_name=>'Open Item Department List'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(24030309723353467)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22494498312163632)
,p_event_id=>wwv_flow_imp.id(22494347211163631)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_selected_ids NUMBER;',
'    CURSOR c_dept IS ',
'    SELECT n001, c001',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''ITEMDEPT'';',
'BEGIN',
'    APEX_COLLECTION.TRUNCATE_COLLECTION (''ITEMDEPTLIST'');',
'    SELECT',
'        COUNT(n001)',
'    INTO l_selected_ids',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''ITEMDEPT'';',
'',
'    IF',
'        l_selected_ids > 0 THEN',
'        FOR c IN c_dept LOOP',
'            apex_collection.add_member (p_collection_name => ''ITEMDEPTLIST'',',
'                p_n001 => c.n001,',
'                p_c001 => c.c001',
'            );',
'        END LOOP;',
'    END IF;',
'    ',
'    APEX_COLLECTION.RESEQUENCE_COLLECTION (''ITEMDEPTLIST'');',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22494510680163633)
,p_event_id=>wwv_flow_imp.id(22494347211163631)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(40001089739390964)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22494658786163634)
,p_event_id=>wwv_flow_imp.id(22494347211163631)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(40003814826394445)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22494719854163635)
,p_event_id=>wwv_flow_imp.id(22494347211163631)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var grid = apex.region(''IDL-grid'').widget().interactiveGrid(''getViews'').grid;',
'apex.region(''IDL-grid'').refresh();',
'',
'setTimeout(() => {',
'    $( document ).ready(function() {',
'        $(".js-confirmBtn").trigger("click");',
'    });',
'    mapP67KeysIDL();',
'    setTimeout(() => {',
'        $( document ).ready(function() {',
'            $("#IDL-grid_ig_grid_vc .a-GV-bdy .a-GV-w-scroll .a-GV-table tbody .a-GV-cell").first().trigger("click");',
'        });',
'    }, "500");',
'}, "500");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24113909390650479)
,p_name=>'Create Collections'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24116879588650484)
,p_event_id=>wwv_flow_imp.id(24113909390650479)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'SUB_CATEGORIES_DISCOUNT'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_collection_name varchar2(20) := ''SUBCATEGORIES'';',
'BEGIN',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(v_collection_name);',
'',
'    EXCEPTION WHEN others THEN',
'        raise_application_error(-2000,DBMS_UTILITY.format_error_backtrace);',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24114393675650481)
,p_event_id=>wwv_flow_imp.id(24113909390650479)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'ITEMDEPTLIST'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_collection_name varchar2(20) := ''ITEMDEPTLIST'';',
'BEGIN',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(v_collection_name);',
'    FOR c IN (',
'        SELECT DEPT_ID, DEPT_NAME',
'        FROM NIM024',
'    ) LOOP',
'        apex_collection.add_member (p_collection_name => v_collection_name,',
'            p_n001 => c.DEPT_ID,',
'            p_c001 => c.DEPT_NAME',
'        );',
'    END LOOP;',
'',
'    APEX_COLLECTION.RESEQUENCE_COLLECTION(v_collection_name);',
'',
'    EXCEPTION WHEN others THEN',
'        raise_application_error(-2000,DBMS_UTILITY.format_error_backtrace);',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24115350703650482)
,p_event_id=>wwv_flow_imp.id(24113909390650479)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>'ITEMSICLIST'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_collection_name varchar2(20) := ''ITEMSICLIST'';',
'BEGIN',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(v_collection_name);',
'',
'    FOR c IN (',
'        SELECT SIC_ID, SIC_NAME',
'        FROM NIM023',
'    ) LOOP',
'        apex_collection.add_member (p_collection_name => v_collection_name,',
'            p_n001 => c.SIC_ID,',
'            p_c001 => c.SIC_NAME',
'        );',
'    END LOOP;',
'',
'    APEX_COLLECTION.RESEQUENCE_COLLECTION(v_collection_name);',
'',
'    EXCEPTION WHEN others THEN',
'        raise_application_error(-2000,DBMS_UTILITY.format_error_backtrace);',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24116372966650484)
,p_event_id=>wwv_flow_imp.id(24113909390650479)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_name=>'ITEMCLASSLIST'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_collection_name varchar2(20) := ''ITEMCLASSLIST'';',
'BEGIN',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(v_collection_name);',
'',
'    FOR c IN (',
'        SELECT CLASS_ID, CLASS_NAME',
'        FROM NIM025',
'    ) LOOP',
'        apex_collection.add_member (p_collection_name => v_collection_name,',
'            p_n001 => c.CLASS_ID,',
'            p_c001 => c.CLASS_NAME',
'        );',
'    END LOOP;',
'',
'    APEX_COLLECTION.RESEQUENCE_COLLECTION(v_collection_name);',
'',
'    EXCEPTION WHEN others THEN',
'        raise_application_error(-2000,DBMS_UTILITY.format_error_backtrace);',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24118305444650485)
,p_event_id=>wwv_flow_imp.id(24113909390650479)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_name=>'ITEMCLASS POPULATE'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    CURSOR c_class IS ',
'    SELECT',
'        CLASS_ID, CLASS_NAME, DISCOUNT_VALUE',
'    FROM NPT030',
'    WHERE DISCOUNT_ID = :P67_DISCOUNT_ID;',
'BEGIN',
'    FOR c IN c_class LOOP',
'        apex_collection.add_member (p_collection_name => ''SUBCATEGORIES'',',
'            p_n001 => c.CLASS_ID,',
'            p_c001 => c.CLASS_NAME,',
'            p_c002 => c.DISCOUNT_VALUE',
'        );',
'    END LOOP;',
'END;'))
,p_attribute_02=>'P67_DISCOUNT_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_server_condition_expr1=>'P67_CATEGORY'
,p_server_condition_expr2=>'Class'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24117386575650484)
,p_event_id=>wwv_flow_imp.id(24113909390650479)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_name=>'ITEMDEPT POPULATE'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    CURSOR c_dept IS ',
'    SELECT',
'        DEPT_ID, DEPT_NAME, DISCOUNT_VALUE',
'    FROM NPT029',
'    WHERE DISCOUNT_ID = :P67_DISCOUNT_ID;',
'BEGIN',
'    FOR c IN c_dept LOOP',
'        apex_collection.add_member (p_collection_name => ''SUBCATEGORIES'',',
'            p_n001 => c.DEPT_ID,',
'            p_c001 => c.DEPT_NAME,',
'            p_c002 => c.DISCOUNT_VALUE',
'        );',
'    END LOOP;',
'END;'))
,p_attribute_02=>'P67_DISCOUNT_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_server_condition_expr1=>'P67_CATEGORY'
,p_server_condition_expr2=>'Department'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24117828507650485)
,p_event_id=>wwv_flow_imp.id(24113909390650479)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_name=>'ITEMSIC POPULATE'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    CURSOR c_sic IS ',
'    SELECT',
'        SIC_ID, SIC_NAME, DISCOUNT_VALUE',
'    FROM NPT028',
'    WHERE DISCOUNT_ID = :P67_DISCOUNT_ID;',
'BEGIN',
'    FOR c IN c_sic LOOP',
'        apex_collection.add_member (p_collection_name => ''SUBCATEGORIES'',',
'            p_n001 => c.SIC_ID,',
'            p_c001 => c.SIC_NAME,',
'            p_c002 => c.DISCOUNT_VALUE',
'        );',
'    END LOOP;',
'END;'))
,p_attribute_02=>'P67_DISCOUNT_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_server_condition_expr1=>'P67_CATEGORY'
,p_server_condition_expr2=>'SIC'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37987282031570421)
,p_event_id=>wwv_flow_imp.id(24113909390650479)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(37724854744892460)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(36263347515538827)
,p_name=>'Open Add Dept'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(24027863052343735)
,p_condition_element=>'P67_CATEGORY'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(36263451891538828)
,p_event_id=>wwv_flow_imp.id(36263347515538827)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Open Class List'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(40870048400770059)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P67_CATEGORY'
,p_client_condition_expression=>'Class'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37622175496039517)
,p_event_id=>wwv_flow_imp.id(36263347515538827)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'Open Department List'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(40003814826394445)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P67_CATEGORY'
,p_client_condition_expression=>'Department'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37622232319039518)
,p_event_id=>wwv_flow_imp.id(36263347515538827)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'Open SIC List'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(40842233525701274)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P67_CATEGORY'
,p_client_condition_expression=>'SIC'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37987087795570419)
,p_event_id=>wwv_flow_imp.id(36263347515538827)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_name=>'Refresh ICL IG'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var region = apex.region(''ICL-grid'');',
'var views = region.widget().interactiveGrid(''getViews'');',
'views.grid.model.clearChanges();',
'region.refresh();',
'region.widget().interactiveGrid(''getActions'').set("edit", false);',
'',
'var toCheckArr = [];',
'let model = apex.region("sub-categories-table").widget().interactiveGrid(''getViews'').grid.model;',
'let totalRecords = model.getTotalRecords(true);',
'for (let i = 0; i < totalRecords; i++) ',
'{',
'    let record = model.recordAt(i);',
'    if (record)',
'    {',
'        toCheckArr[i] = Number(model.getValue(record, "N001"));',
'    }',
'}',
'',
'setTimeout(() => {',
'    $( document ).ready(function() {',
'        $("#ICL-grid_ig_grid_vc .a-GV-bdy .a-GV-w-scroll .a-GV-table tbody").children(".a-GV-row").each( function () {',
'            for (let i = 0; i < toCheckArr.length; i++){',
'                if( $(this).attr("data-id") ==  toCheckArr[i]){',
'                    $(this).find("input[type=checkbox]").trigger("click");',
'                }',
'            }',
'        });',
'    });',
'}, "500");',
'',
'setTimeout(() => {',
'    $( document ).ready(function() {',
'        $("#ICL-grid_ig_grid_vc .a-GV-bdy .a-GV-w-scroll .a-GV-table tbody .a-GV-cell").first().trigger("click");',
'    });',
'}, "500");',
'',
''))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P67_CATEGORY'
,p_client_condition_expression=>'Class'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37986968633570418)
,p_event_id=>wwv_flow_imp.id(36263347515538827)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_name=>'Refresh IDL IG'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var region = apex.region(''IDL-grid'');',
'var views = region.widget().interactiveGrid(''getViews'');',
'views.grid.model.clearChanges();',
'region.refresh();',
'region.widget().interactiveGrid(''getActions'').set("edit", false);',
'',
'var toCheckArr = [];',
'let model = apex.region("sub-categories-table").widget().interactiveGrid(''getViews'').grid.model;',
'let totalRecords = model.getTotalRecords(true);',
'for (let i = 0; i < totalRecords; i++) ',
'{',
'    let record = model.recordAt(i);',
'    if (record)',
'    {',
'        toCheckArr[i] = Number(model.getValue(record, "N001"));',
'    }',
'}',
'',
'setTimeout(() => {',
'    $( document ).ready(function() {',
'        $("#IDL-grid_ig_grid_vc .a-GV-bdy .a-GV-w-scroll .a-GV-table tbody").children(".a-GV-row").each( function () {',
'            for (let i = 0; i < toCheckArr.length; i++){',
'                if( $(this).attr("data-id") ==  toCheckArr[i]){',
'                    $(this).find("input[type=checkbox]").trigger("click");',
'                }',
'            }',
'        });',
'    });',
'}, "500");',
'',
'setTimeout(() => {',
'    $( document ).ready(function() {',
'        $("#IDL-grid_ig_grid_vc .a-GV-bdy .a-GV-w-scroll .a-GV-table tbody .a-GV-cell").first().trigger("click");',
'    });',
'}, "500");'))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P67_CATEGORY'
,p_client_condition_expression=>'Department'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37987198705570420)
,p_event_id=>wwv_flow_imp.id(36263347515538827)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_name=>'Refresh ISL IG'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var region = apex.region(''ISL-grid'');',
'var views = region.widget().interactiveGrid(''getViews'');',
'views.grid.model.clearChanges();',
'region.refresh();',
'region.widget().interactiveGrid(''getActions'').set("edit", false);',
'',
'var toCheckArr = [];',
'let model = apex.region("sub-categories-table").widget().interactiveGrid(''getViews'').grid.model;',
'let totalRecords = model.getTotalRecords(true);',
'for (let i = 0; i < totalRecords; i++) ',
'{',
'    let record = model.recordAt(i);',
'    if (record)',
'    {',
'        toCheckArr[i] = Number(model.getValue(record, "N001"));',
'    }',
'}',
'',
'setTimeout(() => {',
'    $( document ).ready(function() {',
'        $("#ISL-grid_ig_grid_vc .a-GV-bdy .a-GV-w-scroll .a-GV-table tbody").children(".a-GV-row").each( function () {',
'            for (let i = 0; i < toCheckArr.length; i++){',
'                if( $(this).attr("data-id") ==  toCheckArr[i]){',
'                    $(this).find("input[type=checkbox]").trigger("click");',
'                }',
'            }',
'        });',
'    });',
'}, "500");',
'',
'setTimeout(() => {',
'    $( document ).ready(function() {',
'        $("#ISL-grid_ig_grid_vc .a-GV-bdy .a-GV-w-scroll .a-GV-table tbody .a-GV-cell").first().trigger("click");',
'    });',
'}, "500");',
'',
''))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P67_CATEGORY'
,p_client_condition_expression=>'SIC'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37622318529039519)
,p_event_id=>wwv_flow_imp.id(36263347515538827)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_name=>'Class List Key Bind'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mapP67KeysICL();'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P67_CATEGORY'
,p_client_condition_expression=>'Class'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37622461680039520)
,p_event_id=>wwv_flow_imp.id(36263347515538827)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_name=>'Department List Key Bind'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mapP67KeysIDL();'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P67_CATEGORY'
,p_client_condition_expression=>'Department'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37622563928039521)
,p_event_id=>wwv_flow_imp.id(36263347515538827)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_name=>'SIC List Key Bind'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mapP67KeysISL();'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P67_CATEGORY'
,p_client_condition_expression=>'SIC'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(36263630123538830)
,p_name=>'Set Name'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P67_ADD_DEPT_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(36263758258538831)
,p_event_id=>wwv_flow_imp.id(36263630123538830)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P67_DEPT_NAME'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$(''#P67_ADD_DEPT_ID'').val();'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37621646314039512)
,p_name=>'Save Value Changes'
,p_event_sequence=>80
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(37724854744892460)
,p_triggering_element=>'C002'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37621916890039515)
,p_event_id=>wwv_flow_imp.id(37621646314039512)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    APEX_COLLECTION.UPDATE_MEMBER (',
'        p_collection_name => ''SUBCATEGORIES'',',
'        p_seq => :SEQ_ID,',
'        p_n001 => :N001,',
'        p_c001 => :C001,',
'        p_c002 => :C002);',
'END;'))
,p_attribute_02=>'SEQ_ID,C002,C001,N001'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38733420421412607)
,p_event_id=>wwv_flow_imp.id(37621646314039512)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var ig$ = apex.region("sub-categories-table").widget().interactiveGrid("getViews").grid.view$;',
'',
'setTimeout(function () {',
'    ig$.grid("gotoCell", ig$.grid("getActiveRecordId"), "C002").trigger("click");',
'}, 200);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37622646178039522)
,p_name=>'Open Department Search'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(24035105209356942)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37622750414039523)
,p_event_id=>wwv_flow_imp.id(37622646178039522)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(40018421230401436)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37623137577039527)
,p_event_id=>wwv_flow_imp.id(37622646178039522)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mapP67KeysIDS();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37622905888039525)
,p_name=>'Open SIC Search'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(24039037542358962)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37623087187039526)
,p_event_id=>wwv_flow_imp.id(37622905888039525)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(40854776661707657)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37623207786039528)
,p_event_id=>wwv_flow_imp.id(37622905888039525)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mapP67KeysISS();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37623328552039529)
,p_name=>'Open Class Search'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(24043496206360234)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37623405285039530)
,p_event_id=>wwv_flow_imp.id(37623328552039529)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(40897776769122452)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37623593023039531)
,p_event_id=>wwv_flow_imp.id(37623328552039529)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mapP67KeysICS();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37623674170039532)
,p_name=>'Class Search'
,p_event_sequence=>120
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'classSearch'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37623714558039533)
,p_event_id=>wwv_flow_imp.id(37623674170039532)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let checkedArr = [];',
'let uncheckedRowNum = [];',
'$("#ICL-grid_ig_grid_vc .a-GV-bdy .a-GV-w-scroll .a-GV-table tbody").children(".a-GV-row").each( function () {',
'    if( $(this).find("input[type=checkbox]").attr( "checked" ) ){',
'        checkedArr.push( Number($(this).attr("data-id")) );',
'    } else {',
'        uncheckedRowNum.push( Number($(this).attr("data-rownum")) );',
'    }',
'});',
'',
'apex.server.process(',
'    ''ICL_SEARCH'',',
'    {   ',
'        x01: $("#P67_CLASS_SEARCH").val(),',
'        f02: uncheckedRowNum',
'    },',
'    {',
'        dataType: ''text'', ',
'        success: function(data){',
'            if(data == ''Error in closing cases !''){',
'                apex.message.showErrors({',
'                    type: ''error'',',
'                    location: ''page'',',
'                    message: data',
'                });  ',
'            }',
'        }',
'    }',
');',
'',
'setTimeout(() => {',
'    $( document ).ready(function() {',
'        $("#ICL-grid_ig_grid_vc .a-GV-bdy .a-GV-w-scroll .a-GV-table tbody").children(".a-GV-row").each( function () {',
'            for (let i = 0; i < checkedArr.length; i++){',
'                if( $(this).attr("data-id") ==  checkedArr[i]){',
'                    $(this).find("input[type=checkbox]").trigger("click");',
'                }',
'            }',
'        });',
'    });',
'}, "500");',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37624164810039537)
,p_event_id=>wwv_flow_imp.id(37623674170039532)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(40897776769122452)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37624293446039538)
,p_event_id=>wwv_flow_imp.id(37623674170039532)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var grid = apex.region(''ICL-grid'').widget().interactiveGrid(''getViews'').grid;',
'grid.model.clearChanges();',
'apex.region(''ICL-grid'').refresh();',
'',
'setTimeout(() => {',
'    $( document ).ready(function() {',
'        apex.region(''ICL-grid'').refresh();',
'    });',
'}, "100");',
'',
'setTimeout(() => {',
'    $( document ).ready(function() {',
'        $("#ICL-grid_ig_grid_vc .a-GV-bdy .a-GV-w-scroll .a-GV-table tbody .a-GV-cell").first().trigger("click");',
'    });',
'}, "600");'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38733855047412611)
,p_event_id=>wwv_flow_imp.id(37623674170039532)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P67_CLASS_SEARCH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37624396970039539)
,p_name=>'Department Search'
,p_event_sequence=>130
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'deptSearch'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37624413079039540)
,p_event_id=>wwv_flow_imp.id(37624396970039539)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let checkedArr = [];',
'let uncheckedRowNum = [];',
'$("#IDL-grid_ig_grid_vc .a-GV-bdy .a-GV-w-scroll .a-GV-table tbody").children(".a-GV-row").each( function () {',
'    if( $(this).find("input[type=checkbox]").attr( "checked" ) ){',
'        checkedArr.push( Number($(this).attr("data-id")) );',
'    } else {',
'        uncheckedRowNum.push( Number($(this).attr("data-rownum")) );',
'    }',
'});',
'',
'apex.server.process(',
'    ''IDL_SEARCH'',',
'    {   ',
'        x01: $("#P67_DEPARTMENT_SEARCH").val(),',
'        f02: uncheckedRowNum',
'    },',
'    {',
'        dataType: ''text'', ',
'        success: function(data){',
'            if(data == ''Error in closing cases !''){',
'                apex.message.showErrors({',
'                    type: ''error'',',
'                    location: ''page'',',
'                    message: data',
'                });  ',
'            }',
'        }',
'    }',
');',
'',
'setTimeout(() => {',
'    $( document ).ready(function() {',
'        $("#IDL-grid_ig_grid_vc .a-GV-bdy .a-GV-w-scroll .a-GV-table tbody").children(".a-GV-row").each( function () {',
'            for (let i = 0; i < checkedArr.length; i++){',
'                if( $(this).attr("data-id") ==  checkedArr[i]){',
'                    $(this).find("input[type=checkbox]").trigger("click");',
'                }',
'            }',
'        });',
'    });',
'}, "500");',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37624524670039541)
,p_event_id=>wwv_flow_imp.id(37624396970039539)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(40018421230401436)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37624615467039542)
,p_event_id=>wwv_flow_imp.id(37624396970039539)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var grid = apex.region(''IDL-grid'').widget().interactiveGrid(''getViews'').grid;',
'grid.model.clearChanges();',
'apex.region(''IDL-grid'').refresh();',
'',
'setTimeout(() => {',
'    $( document ).ready(function() {',
'        apex.region(''IDL-grid'').refresh();',
'    });',
'}, "100");',
'',
'setTimeout(() => {',
'    $( document ).ready(function() {',
'        $("#IDL-grid_ig_grid_vc .a-GV-bdy .a-GV-w-scroll .a-GV-table tbody .a-GV-cell").first().trigger("click");',
'    });',
'}, "600");'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38733935404412612)
,p_event_id=>wwv_flow_imp.id(37624396970039539)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P67_DEPARTMENT_SEARCH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37624716927039543)
,p_name=>'SIC Search'
,p_event_sequence=>140
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'sicSearch'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37624827029039544)
,p_event_id=>wwv_flow_imp.id(37624716927039543)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let checkedArr = [];',
'let uncheckedRowNum = [];',
'$("#ISL-grid_ig_grid_vc .a-GV-bdy .a-GV-w-scroll .a-GV-table tbody").children(".a-GV-row").each( function () {',
'    if( $(this).find("input[type=checkbox]").attr( "checked" ) ){',
'        checkedArr.push( Number($(this).attr("data-id")) );',
'    } else {',
'        uncheckedRowNum.push( Number($(this).attr("data-rownum")) );',
'    }',
'});',
'',
'apex.server.process(',
'    ''ISL_SEARCH'',',
'    {   ',
'        x01: $("#P67_SIC_SEARCH").val(),',
'        f02: uncheckedRowNum',
'    },',
'    {',
'        dataType: ''text'', ',
'        success: function(data){',
'            if(data == ''Error in closing cases !''){',
'                apex.message.showErrors({',
'                    type: ''error'',',
'                    location: ''page'',',
'                    message: data',
'                });  ',
'            }',
'        }',
'    }',
');',
'',
'setTimeout(() => {',
'    $( document ).ready(function() {',
'        $("#ISL-grid_ig_grid_vc .a-GV-bdy .a-GV-w-scroll .a-GV-table tbody").children(".a-GV-row").each( function () {',
'            for (let i = 0; i < checkedArr.length; i++){',
'                if( $(this).attr("data-id") ==  checkedArr[i]){',
'                    $(this).find("input[type=checkbox]").trigger("click");',
'                }',
'            }',
'        });',
'    });',
'}, "500");',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37624993256039545)
,p_event_id=>wwv_flow_imp.id(37624716927039543)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(40854776661707657)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37625030848039546)
,p_event_id=>wwv_flow_imp.id(37624716927039543)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var grid = apex.region(''ISL-grid'').widget().interactiveGrid(''getViews'').grid;',
'grid.model.clearChanges();',
'',
'',
'setTimeout(() => {',
'    $( document ).ready(function() {',
'        apex.region(''ISL-grid'').refresh();',
'    });',
'}, "100");',
'',
'setTimeout(() => {',
'    $( document ).ready(function() {',
'        $("#ISL-grid_ig_grid_vc .a-GV-bdy .a-GV-w-scroll .a-GV-table tbody .a-GV-cell").first().trigger("click");',
'    });',
'}, "600");'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38734064248412613)
,p_event_id=>wwv_flow_imp.id(37624716927039543)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P67_SIC_SEARCH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37625157626039547)
,p_name=>'Class Close Dialog'
,p_event_sequence=>150
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'classCloseDialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37625257595039548)
,p_event_id=>wwv_flow_imp.id(37625157626039547)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    APEX_COLLECTION.TRUNCATE_COLLECTION (''ITEMCLASSLIST'');',
'    FOR c IN (',
'        SELECT CLASS_ID, CLASS_NAME',
'        FROM NIM025     ',
'    ) LOOP',
'        apex_collection.add_member (p_collection_name => ''ITEMCLASSLIST'',',
'            p_n001 => c.CLASS_ID,',
'            p_c001 => c.CLASS_NAME',
'        );',
'    END LOOP;',
'    APEX_COLLECTION.RESEQUENCE_COLLECTION (''ITEMCLASSLIST'');',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37625343521039549)
,p_name=>'Department Close Dialog'
,p_event_sequence=>160
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'departmentCloseDialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37625457866039550)
,p_event_id=>wwv_flow_imp.id(37625343521039549)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    APEX_COLLECTION.TRUNCATE_COLLECTION (''ITEMDEPTLIST'');',
'    FOR c IN (',
'        SELECT DEPT_ID, DEPT_NAME',
'        FROM NIM024',
'    ) LOOP',
'        apex_collection.add_member (p_collection_name => ''ITEMDEPTLIST'',',
'            p_n001 => c.DEPT_ID,',
'            p_c001 => c.DEPT_NAME',
'        );',
'    END LOOP;',
'    APEX_COLLECTION.RESEQUENCE_COLLECTION (''ITEMDEPTLIST'');',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37985268263570401)
,p_name=>'SIC Close Dialog'
,p_event_sequence=>170
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'sicCloseDialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37985328753570402)
,p_event_id=>wwv_flow_imp.id(37985268263570401)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    APEX_COLLECTION.TRUNCATE_COLLECTION (''ITEMSICLIST'');',
'    FOR c IN (',
'        SELECT SIC_ID, SIC_NAME',
'        FROM NIM023',
'    ) LOOP',
'        apex_collection.add_member (p_collection_name => ''ITEMSICLIST'',',
'            p_n001 => c.SIC_ID,',
'            p_c001 => c.SIC_NAME',
'        );',
'    END LOOP;',
'    APEX_COLLECTION.RESEQUENCE_COLLECTION (''ITEMSICLIST'');',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37985424992570403)
,p_name=>'Class Enter'
,p_event_sequence=>180
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'classEnter'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37985517250570404)
,p_event_id=>wwv_flow_imp.id(37985424992570403)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let uncheckedRowNum = [];',
'$("#ICL-grid_ig_grid_vc .a-GV-bdy .a-GV-w-scroll .a-GV-table tbody").children(".a-GV-row").each( function () {',
'    if( !$(this).find("input[type=checkbox]").is(":checked") ){',
'        uncheckedRowNum.push( Number($(this).attr("data-rownum")) );',
'    }',
'});',
'apex.server.process(',
'    ''ICL_REMOVE_UNCHECKED'',',
'    {   ',
'        f01: uncheckedRowNum',
'    },',
'    {',
'        dataType: ''text'', ',
'        success: function(data){',
'            if(data == ''Error in closing cases !''){',
'                apex.message.showErrors({',
'                    type: ''error'',',
'                    location: ''page'',',
'                    message: data',
'                });  ',
'            }',
'        }',
'    }',
');'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37985621625570405)
,p_event_id=>wwv_flow_imp.id(37985424992570403)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var region = apex.region(''sub-categories-table'');',
'var views = region.widget().interactiveGrid(''getViews'');',
'views.grid.model.clearChanges();',
'',
'setTimeout(() => {',
'    $( document ).ready(function() {',
'        region.refresh();',
'    });',
'}, "500");'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37985767066570406)
,p_event_id=>wwv_flow_imp.id(37985424992570403)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(40870048400770059)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51458402096420331)
,p_event_id=>wwv_flow_imp.id(37985424992570403)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(() => {',
'    $( document ).ready(function() {',
'        $(".a-GV-cell").eq(1).trigger("dblclick");',
'        $(".a-GV-cell").eq(1).trigger("click");',
'    });',
'}, "1000");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37985811947570407)
,p_name=>'Department Enter'
,p_event_sequence=>190
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'departmentEnter'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37985942877570408)
,p_event_id=>wwv_flow_imp.id(37985811947570407)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let uncheckedRowNum = [];',
'$("#IDL-grid_ig_grid_vc .a-GV-bdy .a-GV-w-scroll .a-GV-table tbody").children(".a-GV-row").each( function () {',
'    if( !$(this).find("input[type=checkbox]").is(":checked") ){',
'        uncheckedRowNum.push( Number($(this).attr("data-rownum")) );',
'    }',
'});',
'apex.server.process(',
'    ''IDL_REMOVE_UNCHECKED'',',
'    {   ',
'        f01: uncheckedRowNum',
'    },',
'    {',
'        dataType: ''text'', ',
'        success: function(data){',
'            if(data == ''Error in closing cases !''){',
'                apex.message.showErrors({',
'                    type: ''error'',',
'                    location: ''page'',',
'                    message: data',
'                });  ',
'            }',
'        }',
'    }',
');'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37986051405570409)
,p_event_id=>wwv_flow_imp.id(37985811947570407)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var region = apex.region(''sub-categories-table'');',
'var views = region.widget().interactiveGrid(''getViews'');',
'views.grid.model.clearChanges();',
'',
'setTimeout(() => {',
'    $( document ).ready(function() {',
'        region.refresh();',
'    });',
'}, "500");'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37986100210570410)
,p_event_id=>wwv_flow_imp.id(37985811947570407)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(40003814826394445)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51458716049420334)
,p_event_id=>wwv_flow_imp.id(37985811947570407)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(() => {',
'    $( document ).ready(function() {',
'        $(".a-GV-cell").eq(1).trigger("dblclick");',
'        $(".a-GV-cell").eq(1).trigger("click");',
'    });',
'}, "1000");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37986277687570411)
,p_name=>'SIC Enter'
,p_event_sequence=>200
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'sicEnter'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37986384633570412)
,p_event_id=>wwv_flow_imp.id(37986277687570411)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let uncheckedRowNum = [];',
'$("#ISL-grid_ig_grid_vc .a-GV-bdy .a-GV-w-scroll .a-GV-table tbody").children(".a-GV-row").each( function () {',
'    if( !$(this).find("input[type=checkbox]").is(":checked") ){',
'        uncheckedRowNum.push( Number($(this).attr("data-rownum")) );',
'    }',
'});',
'apex.server.process(',
'    ''ISL_REMOVE_UNCHECKED'',',
'    {   ',
'        f01: uncheckedRowNum',
'    },',
'    {',
'        dataType: ''text'', ',
'        success: function(data){',
'            if(data == ''Error in closing cases !''){',
'                apex.message.showErrors({',
'                    type: ''error'',',
'                    location: ''page'',',
'                    message: data',
'                });  ',
'            }',
'        }',
'    }',
');'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37986474363570413)
,p_event_id=>wwv_flow_imp.id(37986277687570411)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var region = apex.region(''sub-categories-table'');',
'var views = region.widget().interactiveGrid(''getViews'');',
'views.grid.model.clearChanges();',
'',
'setTimeout(() => {',
'    $( document ).ready(function() {',
'        region.refresh();',
'    });',
'}, "500");'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37986548906570414)
,p_event_id=>wwv_flow_imp.id(37986277687570411)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(40842233525701274)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51458853916420335)
,p_event_id=>wwv_flow_imp.id(37986277687570411)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(() => {',
'    $( document ).ready(function() {',
'        $(".a-GV-cell").eq(1).trigger("dblclick");',
'        $(".a-GV-cell").eq(1).trigger("click");',
'    });',
'}, "1000");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37987364059570422)
,p_name=>'Mark/Unmark ISL'
,p_event_sequence=>210
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(24038640593358962)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37987452100570423)
,p_event_id=>wwv_flow_imp.id(37987364059570422)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(".is-selected").find("input[type=checkbox]").trigger( "click" );'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37987501367570424)
,p_name=>'Mark All ISL'
,p_event_sequence=>220
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(24039402993358962)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37987673307570425)
,p_event_id=>wwv_flow_imp.id(37987501367570424)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'JAVASCRIPT_EXPRESSION'
,p_affected_elements=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#ISL-grid_ig_grid_vc .a-GV-bdy .a-GV-w-scroll .a-GV-table tbody").children(".a-GV-row").each( function () {',
'    if( !$(this).find("input[type=checkbox]").is('':checked'') ){',
'        $(this).find("input[type=checkbox]").trigger("click");',
'    }',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37987721819570426)
,p_name=>'Unmark All ISL'
,p_event_sequence=>230
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(24039831231358964)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37987890091570427)
,p_event_id=>wwv_flow_imp.id(37987721819570426)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#ISL-grid_ig_grid_vc .a-GV-bdy .a-GV-w-scroll .a-GV-table tbody").children(".a-GV-row").each( function () {',
'    if( $(this).find("input[type=checkbox]").is('':checked'') ){',
'        $(this).find("input[type=checkbox]").trigger("click");',
'    }',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37987982205570428)
,p_name=>'Mark/Unmark IDL'
,p_event_sequence=>240
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(24034383594356940)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37988070805570429)
,p_event_id=>wwv_flow_imp.id(37987982205570428)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(".is-selected").find("input[type=checkbox]").trigger( "click" );'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37988136854570430)
,p_name=>'Mark All IDL'
,p_event_sequence=>250
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(24034785796356940)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37988257880570431)
,p_event_id=>wwv_flow_imp.id(37988136854570430)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#IDL-grid_ig_grid_vc .a-GV-bdy .a-GV-w-scroll .a-GV-table tbody").children(".a-GV-row").each( function () {',
'    if( !$(this).find("input[type=checkbox]").is('':checked'') ){',
'        $(this).find("input[type=checkbox]").trigger("click");',
'    }',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37988360914570432)
,p_name=>'Unmark All IDL'
,p_event_sequence=>260
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(24035504342356942)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37988453698570433)
,p_event_id=>wwv_flow_imp.id(37988360914570432)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#IDL-grid_ig_grid_vc .a-GV-bdy .a-GV-w-scroll .a-GV-table tbody").children(".a-GV-row").each( function () {',
'    if( $(this).find("input[type=checkbox]").is('':checked'') ){',
'        $(this).find("input[type=checkbox]").trigger("click");',
'    }',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37988511499570434)
,p_name=>'Mark/Unmark ICL'
,p_event_sequence=>270
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(24043019371360234)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37988639579570435)
,p_event_id=>wwv_flow_imp.id(37988511499570434)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'$(".is-selected").find("input[type=checkbox]").trigger( "click" );'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37988728854570436)
,p_name=>'Mark All ICL'
,p_event_sequence=>280
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(24043818485360235)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37988862128570437)
,p_event_id=>wwv_flow_imp.id(37988728854570436)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#ICL-grid_ig_grid_vc .a-GV-bdy .a-GV-w-scroll .a-GV-table tbody").children(".a-GV-row").each( function () {',
'    if( !$(this).find("input[type=checkbox]").is('':checked'') ){',
'        $(this).find("input[type=checkbox]").trigger("click");',
'    }',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37988916759570438)
,p_name=>'Unmark All ICL'
,p_event_sequence=>290
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(24044266190360235)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37989025232570439)
,p_event_id=>wwv_flow_imp.id(37988916759570438)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#ICL-grid_ig_grid_vc .a-GV-bdy .a-GV-w-scroll .a-GV-table tbody").children(".a-GV-row").each( function () {',
'    if( $(this).find("input[type=checkbox]").is('':checked'') ){',
'        $(this).find("input[type=checkbox]").trigger("click");',
'    }',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37989764626570446)
,p_name=>'Reset Discount Values'
,p_event_sequence=>300
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P67_TYPE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37989814083570447)
,p_event_id=>wwv_flow_imp.id(37989764626570446)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    CURSOR subc IS ',
'    SELECT seq_id, n001, c001',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''SUBCATEGORIES'';',
'BEGIN',
'    FOR c IN subc LOOP',
'        APEX_COLLECTION.UPDATE_MEMBER (',
'            p_collection_name => ''SUBCATEGORIES'',',
'            p_seq => c.SEQ_ID,',
'            p_n001 => c.N001,',
'            p_c001 => c.C001',
'        );',
'    END LOOP;',
'',
'    APEX_COLLECTION.RESEQUENCE_COLLECTION (''SUBCATEGORIES'');',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37989970185570448)
,p_event_id=>wwv_flow_imp.id(37989764626570446)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#P67_TYPE").removeClass("apex-page-item-error");',
'$("#P67_TYPE_error_placeholder").addClass("u-hidden");',
'',
'var region = apex.region(''sub-categories-table'');',
'var views = region.widget().interactiveGrid(''getViews'');',
'views.grid.model.clearChanges();',
'',
'setTimeout(() => {',
'    $( document ).ready(function() {',
'        region.refresh();',
'    });',
'}, "500");',
'',
'if( $v("P67_TYPE") == "Percent" ) {',
'    $("#sub-categories-table_ig_grid_vc .a-GV-header").eq(1).html("Percent Discount")',
'} else {',
'    $("#sub-categories-table_ig_grid_vc .a-GV-header").eq(1).html("Fixed Discount")',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37990095655570449)
,p_name=>'Reset Sub Category Table'
,p_event_sequence=>310
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P67_CATEGORY'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37990134784570450)
,p_event_id=>wwv_flow_imp.id(37990095655570449)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'APEX_COLLECTION.TRUNCATE_COLLECTION (''SUBCATEGORIES'');'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38732872655412601)
,p_event_id=>wwv_flow_imp.id(37990095655570449)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var region = apex.region(''sub-categories-table'');',
'var views = region.widget().interactiveGrid(''getViews'');',
'views.grid.model.clearChanges();',
'',
'setTimeout(() => {',
'    $( document ).ready(function() {',
'        region.refresh();',
'    });',
'}, "500");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(38733159941412604)
,p_name=>'Navigate to Table'
,p_event_sequence=>320
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(38733019067412603)
,p_condition_element=>'P67_NAVIGATE_MODE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'details'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38733237466412605)
,p_event_id=>wwv_flow_imp.id(38733159941412604)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(".a-GV-cell").eq(1).trigger("dblclick");',
'$(".a-GV-cell").eq(1).trigger("click");',
'',
'setTimeout(() => {',
'    $(":focus").select();',
'}, "100");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(38733588696412608)
,p_name=>'Validation on Subcategories'
,p_event_sequence=>330
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'itemCategoriesValidation'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38733671961412609)
,p_event_id=>wwv_flow_imp.id(38733588696412608)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT',
'        COUNT(seq_id)',
'    INTO :P67_SUBCATEGORY_VALIDATION',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''SUBCATEGORIES'' AND C002 IS NULL;',
'    ',
'    APEX_COLLECTION.RESEQUENCE_COLLECTION (''SUBCATEGORIES'');',
'    APEX_COLLECTION.TRUNCATE_COLLECTION (''ITEMCLASSLIST'');',
'END;'))
,p_attribute_03=>'P67_SUBCATEGORY_VALIDATION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38734104989412614)
,p_event_id=>wwv_flow_imp.id(38733588696412608)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if($("#P67_SUBCATEGORY_VALIDATION").val() > 0){',
'    showGPopup({',
'        icon: "fa fa-exclamation-circle",',
'        message: "There are empty Sub-Category Discount Values.",',
'        width: "10rem",',
'        timeoutActive: true,',
'        timeout: 2000,',
'        top: "80%"',
'    });',
'} else {',
'    var region = apex.region(''sub-categories-table'');',
'    var views = region.widget().interactiveGrid(''getViews'');',
'    views.grid.model.clearChanges();',
'    apex.page.submit( "SUBMIT" );',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(38734870947412621)
,p_name=>'Title Add'
,p_event_sequence=>340
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'ITEM_IS_NULL'
,p_display_when_cond=>'P67_DISCOUNT_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38734920273412622)
,p_event_id=>wwv_flow_imp.id(38734870947412621)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'setTitle("Discount Creation");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(38736716822412640)
,p_name=>'Title Update'
,p_event_sequence=>350
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P67_DISCOUNT_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38736805695412641)
,p_event_id=>wwv_flow_imp.id(38736716822412640)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTitle("Discount Update");',
'if( $v("P67_TYPE") == "Percent" ) {',
'    $("#sub-categories-table_ig_grid_vc .a-GV-header").eq(1).html("Percent Discount")',
'} else {',
'    $("#sub-categories-table_ig_grid_vc .a-GV-header").eq(1).html("Fixed Discount")',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39841139220908907)
,p_name=>'Delete Collections'
,p_event_sequence=>370
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(24028259325343737)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39841287646908908)
,p_event_id=>wwv_flow_imp.id(39841139220908907)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.DELETE_COLLECTION(''SUBCATEGORIES'');',
'APEX_COLLECTION.DELETE_COLLECTION(''ITEMCLASSLIST'');',
'APEX_COLLECTION.DELETE_COLLECTION(''ITEMDEPTLIST'');',
'APEX_COLLECTION.DELETE_COLLECTION(''ITEMSICLIST'');'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39841467172908910)
,p_name=>'Discount Code not Editable'
,p_event_sequence=>380
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P67_DISCOUNT_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39841574494908911)
,p_event_id=>wwv_flow_imp.id(39841467172908910)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P67_DISCOUNT_CODE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39841649367908912)
,p_name=>'Focus Field'
,p_event_sequence=>390
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39841742284908913)
,p_event_id=>wwv_flow_imp.id(39841649367908912)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P67_DISCOUNT_CODE'
,p_server_condition_type=>'ITEM_IS_NULL'
,p_server_condition_expr1=>'P67_DISCOUNT_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39841872965908914)
,p_event_id=>wwv_flow_imp.id(39841649367908912)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P67_DISCOUNT_DESC'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P67_DISCOUNT_ID'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(51457831299420325)
,p_name=>'Navigate to Details Add'
,p_event_sequence=>400
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(38733019067412603)
,p_condition_element=>'P67_NAVIGATE_MODE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'table'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'ITEM_IS_NULL'
,p_display_when_cond=>'P67_DISCOUNT_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51457926029420326)
,p_event_id=>wwv_flow_imp.id(51457831299420325)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P67_DISCOUNT_CODE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51458068765420327)
,p_event_id=>wwv_flow_imp.id(51457831299420325)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P67_NAVIGATE_MODE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'details'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(51458143044420328)
,p_name=>'Navigate to Details Update'
,p_event_sequence=>410
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(38733019067412603)
,p_condition_element=>'P67_NAVIGATE_MODE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'table'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P67_DISCOUNT_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51458230715420329)
,p_event_id=>wwv_flow_imp.id(51458143044420328)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P67_DISCOUNT_DESC'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51458361131420330)
,p_event_id=>wwv_flow_imp.id(51458143044420328)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P67_NAVIGATE_MODE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'details'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(51458532022420332)
,p_name=>'Get Focus'
,p_event_sequence=>420
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(37724854744892460)
,p_triggering_element=>'C002'
,p_condition_element_type=>'ITEM'
,p_condition_element=>'P67_NAVIGATE_MODE'
,p_triggering_condition_type=>'NOT_EQUALS'
,p_triggering_expression=>'table'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusin'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51458693205420333)
,p_event_id=>wwv_flow_imp.id(51458532022420332)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P67_NAVIGATE_MODE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'table'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(52043578835047050)
,p_name=>'Date To Lose Focus'
,p_event_sequence=>430
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P67_DATE_TO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(57584616456995801)
,p_event_id=>wwv_flow_imp.id(52043578835047050)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(() => {',
'    if( $( ".a-GV-cell" ).first().hasClass( "is-focused" ) ){',
'        $("#f6").trigger("click");',
'    }',
'}, "100");'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(38734297627412615)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add Discount'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_discount_id NPT008.DISCOUNT_ID%type;',
'BEGIN',
'    INSERT INTO NPT008(',
'        DISCOUNT_CODE,',
'        DISCOUNT_DESC,',
'        TYPE,',
'        CATEGORY,',
'        DATE_FROM,',
'        DATE_TO,',
'        USER_CREATED,',
'        DATE_CREATED',
'    )',
'    VALUES(',
'        :P67_DISCOUNT_CODE,',
'        :P67_DISCOUNT_DESC,',
'        :P67_TYPE,',
'        :P67_CATEGORY,',
'        :P67_DATE_FROM,',
'        :P67_DATE_TO,',
'        v(''APP_USER''),',
'        SYSDATE',
'    )',
'    RETURNING DISCOUNT_ID INTO l_discount_id;',
'',
'    IF ( :P67_CATEGORY = ''Class'' ) THEN ',
'        FOR d IN (',
'            SELECT N001, C001, C002',
'                FROM APEX_COLLECTIONS',
'            WHERE COLLECTION_NAME=''SUBCATEGORIES''',
'        ) LOOP',
'            INSERT INTO NPT030 ( DISCOUNT_ID, CLASS_ID, CLASS_NAME, DISCOUNT_VALUE )',
'            VALUES ( l_discount_id, d.N001, d.C001, d.C002 );',
'        END LOOP;',
'    ELSIF ( :P67_CATEGORY = ''Department'' ) THEN ',
'        FOR d IN (',
'            SELECT N001, C001, C002',
'                FROM APEX_COLLECTIONS',
'            WHERE COLLECTION_NAME=''SUBCATEGORIES''',
'        ) LOOP',
'            INSERT INTO NPT029 ( DISCOUNT_ID, DEPT_ID, DEPT_NAME, DISCOUNT_VALUE )',
'            VALUES ( l_discount_id, d.N001, d.C001, d.C002 );',
'        END LOOP;',
'    ELSE ',
'       FOR d IN (',
'            SELECT N001, C001, C002',
'                FROM APEX_COLLECTIONS',
'            WHERE COLLECTION_NAME=''SUBCATEGORIES''',
'        ) LOOP',
'            INSERT INTO NPT028 ( DISCOUNT_ID, SIC_ID, SIC_NAME, DISCOUNT_VALUE )',
'            VALUES ( l_discount_id, d.N001, d.C001, d.C002 );',
'        END LOOP;',
'    END IF;',
'    ',
'    APEX_COLLECTION.DELETE_COLLECTION(''SUBCATEGORIES'');',
'    APEX_COLLECTION.DELETE_COLLECTION(''ITEMCLASSLIST'');',
'    APEX_COLLECTION.DELETE_COLLECTION(''ITEMDEPTLIST'');',
'    APEX_COLLECTION.DELETE_COLLECTION(''ITEMSICLIST'');',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Something went wrong, please try again.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P67_DISCOUNT_ID'
,p_process_when_type=>'ITEM_IS_NULL'
,p_process_success_message=>'Discount Successfully Added.'
,p_internal_uid=>38734297627412615
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(38734718570412620)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update Discount Incomplete'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    temp NUMBER;',
'BEGIN',
'    UPDATE NPT008 SET',
'        DISCOUNT_DESC = :P67_DISCOUNT_DESC,',
'        TYPE = :P67_TYPE,',
'        CATEGORY = :P67_CATEGORY,',
'        DATE_FROM = :P67_DATE_FROM,',
'        DATE_TO = :P67_DATE_TO,',
'        USER_UPDATE = v(''APP_USER''),',
'        DATE_UPDATED = SYSDATE',
'    WHERE DISCOUNT_ID = :P67_DISCOUNT_ID;',
'',
'    IF ( :P67_CATEGORY != :P67_CATEGORY_INITIAL ) THEN ',
'        IF (:P67_CATEGORY_INITIAL = ''Class'') THEN    ',
'            DELETE FROM NPT030 ',
'            WHERE DISCOUNT_ID = :P67_DISCOUNT_ID;',
'        ELSIF (:P67_CATEGORY_INITIAL = ''Department'') THEN',
'            DELETE FROM NPT029 ',
'            WHERE DISCOUNT_ID = :P67_DISCOUNT_ID;',
'        ELSE',
'            DELETE FROM NPT028 ',
'            WHERE DISCOUNT_ID = :P67_DISCOUNT_ID;',
'        END IF;',
'',
'        IF ( :P67_CATEGORY = ''Class'' ) THEN ',
'            FOR d IN (',
'                SELECT N001, C001, C002',
'                    FROM APEX_COLLECTIONS',
'                WHERE COLLECTION_NAME=''SUBCATEGORIES''',
'            ) LOOP',
'                INSERT INTO NPT030 ( DISCOUNT_ID, CLASS_ID, CLASS_NAME, DISCOUNT_VALUE )',
'                VALUES ( :P67_DISCOUNT_ID, d.N001, d.C001, d.C002 );',
'            END LOOP;',
'        ELSIF ( :P67_CATEGORY = ''Department'' ) THEN ',
'            FOR d IN (',
'                SELECT N001, C001, C002',
'                    FROM APEX_COLLECTIONS',
'                WHERE COLLECTION_NAME=''SUBCATEGORIES''',
'            ) LOOP',
'                INSERT INTO NPT029 ( DISCOUNT_ID, DEPT_ID, DEPT_NAME, DISCOUNT_VALUE )',
'                VALUES ( :P67_DISCOUNT_ID, d.N001, d.C001, d.C002 );',
'            END LOOP;',
'        ELSE',
'           FOR d IN (',
'                SELECT N001, C001, C002',
'                    FROM APEX_COLLECTIONS',
'                WHERE COLLECTION_NAME=''SUBCATEGORIES''',
'            ) LOOP',
'                INSERT INTO NPT028 ( DISCOUNT_ID, SIC_ID, SIC_NAME, DISCOUNT_VALUE )',
'                VALUES ( :P67_DISCOUNT_ID, d.N001, d.C001, d.C002 );',
'            END LOOP;',
'        END IF;',
'        ',
'    ELSE ',
'       IF (:P67_CATEGORY = ''Class'') THEN    ',
'            DELETE FROM NPT030 ',
'            WHERE DISCOUNT_ID = :P67_DISCOUNT_ID AND CLASS_ID NOT IN (',
'                SELECT N001',
'                    FROM APEX_COLLECTIONS',
'                WHERE COLLECTION_NAME=''SUBCATEGORIES''',
'            );',
'',
'            FOR d IN (',
'                SELECT N001, C001, C002',
'                    FROM APEX_COLLECTIONS',
'                WHERE COLLECTION_NAME=''SUBCATEGORIES''',
'            ) LOOP',
'                UPDATE NPT030',
'                SET DISCOUNT_VALUE = d.C002',
'                WHERE DISCOUNT_ID = :P67_DISCOUNT_ID AND CLASS_ID = d.N001;',
'                SELECT COUNT(1)',
'                INTO temp',
'                FROM NPT030',
'                WHERE DISCOUNT_ID = :P67_DISCOUNT_ID AND CLASS_ID = d.N001;',
'                IF (temp <= 0) THEN',
'                    INSERT INTO NPT030 ( DISCOUNT_ID, CLASS_ID, CLASS_NAME, DISCOUNT_VALUE )',
'                    VALUES ( :P67_DISCOUNT_ID, d.N001, d.C001, d.C002 );',
'                END IF;',
'            END LOOP;',
'',
'        ELSIF (:P67_CATEGORY = ''Department'') THEN',
'            DELETE FROM NPT029 ',
'            WHERE DISCOUNT_ID = :P67_DISCOUNT_ID AND DEPT_ID NOT IN (',
'                SELECT N001',
'                    FROM APEX_COLLECTIONS',
'                WHERE COLLECTION_NAME=''SUBCATEGORIES''',
'            );',
'',
'            FOR d IN (',
'                SELECT N001, C001, C002',
'                    FROM APEX_COLLECTIONS',
'                WHERE COLLECTION_NAME=''SUBCATEGORIES''',
'            ) LOOP',
'                UPDATE NPT029',
'                SET DISCOUNT_VALUE = d.C002',
'                WHERE DISCOUNT_ID = :P67_DISCOUNT_ID AND DEPT_ID = d.N001;',
'                SELECT COUNT(1)',
'                INTO temp',
'                FROM NPT029',
'                WHERE DISCOUNT_ID = :P67_DISCOUNT_ID AND DEPT_ID = d.N001;',
'                IF (temp <= 0) THEN',
'                    INSERT INTO NPT029 ( DISCOUNT_ID, DEPT_ID, DEPT_NAME, DISCOUNT_VALUE )',
'                    VALUES ( :P67_DISCOUNT_ID, d.N001, d.C001, d.C002 );',
'                END IF;',
'            END LOOP;',
'',
'        ELSE',
'            DELETE FROM NPT028 ',
'            WHERE DISCOUNT_ID = :P67_DISCOUNT_ID AND SIC_ID NOT IN (',
'                SELECT N001',
'                    FROM APEX_COLLECTIONS',
'                WHERE COLLECTION_NAME=''SUBCATEGORIES''',
'            );',
'',
'            FOR d IN (',
'                SELECT N001, C001, C002',
'                    FROM APEX_COLLECTIONS',
'                WHERE COLLECTION_NAME=''SUBCATEGORIES''',
'            ) LOOP',
'                UPDATE NPT028',
'                SET DISCOUNT_VALUE = d.C002',
'                WHERE DISCOUNT_ID = :P67_DISCOUNT_ID AND SIC_ID = d.N001;',
'                SELECT COUNT(1)',
'                INTO temp',
'                FROM NPT028',
'                WHERE DISCOUNT_ID = :P67_DISCOUNT_ID AND SIC_ID = d.N001;',
'                IF (temp <= 0) THEN',
'                    INSERT INTO NPT028 ( DISCOUNT_ID, SIC_ID, SIC_NAME, DISCOUNT_VALUE )',
'                    VALUES ( :P67_DISCOUNT_ID, d.N001, d.C001, d.C002 );',
'                END IF;',
'            END LOOP;',
'        END IF;',
'    END IF;',
'',
'    APEX_COLLECTION.DELETE_COLLECTION(''SUBCATEGORIES'');',
'    APEX_COLLECTION.DELETE_COLLECTION(''ITEMCLASSLIST'');',
'    APEX_COLLECTION.DELETE_COLLECTION(''ITEMDEPTLIST'');',
'    APEX_COLLECTION.DELETE_COLLECTION(''ITEMSICLIST'');',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Something went wrong, please try again.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P67_DISCOUNT_ID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_process_success_message=>'Discount Successfully Updated.'
,p_internal_uid=>38734718570412620
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(38736637512412639)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(37712170599853351)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Discount'
,p_internal_uid=>38736637512412639
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(37623898179039534)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ICL_SEARCH'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    CURSOR c_class IS ',
'    SELECT CLASS_ID, CLASS_NAME',
'    FROM NIM025',
'    WHERE ( UPPER(CLASS_NAME) LIKE ''%'' || UPPER(APEX_APPLICATION.g_x01) || ''%'' );',
'BEGIN',
'',
'    FOR i in 1..APEX_APPLICATION.G_F02.COUNT LOOP',
'        APEX_COLLECTION.DELETE_MEMBER(',
'            p_collection_name => ''ITEMCLASSLIST'',',
'            p_seq => TO_NUMBER(APEX_APPLICATION.g_f02(i))',
'        );',
'    END LOOP;',
'',
'    FOR c IN c_class LOOP',
'        apex_collection.add_member (p_collection_name => ''ITEMCLASSLIST'',',
'            p_n001 => c.CLASS_ID,',
'            p_c001 => c.CLASS_NAME',
'        );',
'    END LOOP;',
'',
'    for r_rec in (',
'    select seq_id, rn from',
'        (select seq_id, row_number() over (partition by c001 order by d001 desc) rn',
'            from apex_collections',
'            where collection_name = ''ITEMCLASSLIST''',
'        ) where rn != 1',
'        ) loop',
'        APEX_COLLECTION.DELETE_MEMBER',
'            (p_collection_name =>  ''ITEMCLASSLIST''',
'            ,p_seq             => r_rec.seq_id);',
'      end loop;',
'',
'    APEX_COLLECTION.RESEQUENCE_COLLECTION (''ITEMCLASSLIST'');',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>37623898179039534
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(37623963606039535)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'IDL_SEARCH'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    CURSOR c_dept IS ',
'    SELECT DEPT_ID, DEPT_NAME',
'    FROM NIM024',
'    WHERE ( UPPER(DEPT_NAME) LIKE ''%'' || UPPER(APEX_APPLICATION.g_x01) || ''%'' );',
'BEGIN',
'',
'    FOR i in 1..APEX_APPLICATION.G_F02.COUNT LOOP',
'        APEX_COLLECTION.DELETE_MEMBER(',
'            p_collection_name => ''ITEMDEPTLIST'',',
'            p_seq => TO_NUMBER(APEX_APPLICATION.g_f02(i))',
'        );',
'    END LOOP;',
'',
'    FOR c IN c_dept LOOP',
'        apex_collection.add_member (p_collection_name => ''ITEMDEPTLIST'',',
'            p_n001 => c.DEPT_ID,',
'            p_c001 => c.DEPT_NAME',
'        );',
'    END LOOP;',
'',
'    for r_rec in (',
'    select seq_id, rn from',
'        (select seq_id, row_number() over (partition by c001 order by d001 desc) rn',
'            from apex_collections',
'            where collection_name = ''ITEMDEPTLIST''',
'        ) where rn != 1',
'        ) loop',
'        APEX_COLLECTION.DELETE_MEMBER',
'            (p_collection_name =>  ''ITEMDEPTLIST''',
'            ,p_seq             => r_rec.seq_id);',
'      end loop;',
'',
'    APEX_COLLECTION.RESEQUENCE_COLLECTION (''ITEMDEPTLIST'');',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>37623963606039535
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(37624055053039536)
,p_process_sequence=>30
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ISL_SEARCH'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    CURSOR c_sic IS ',
'    SELECT SIC_ID, SIC_NAME',
'    FROM NIM023',
'    WHERE ( UPPER(SIC_NAME) LIKE ''%'' || UPPER(APEX_APPLICATION.g_x01) || ''%'' ); ',
'BEGIN',
'',
'    FOR i in 1..APEX_APPLICATION.G_F02.COUNT LOOP',
'        APEX_COLLECTION.DELETE_MEMBER(',
'            p_collection_name => ''ITEMSICLIST'',',
'            p_seq => TO_NUMBER(APEX_APPLICATION.g_f02(i))',
'        );',
'    END LOOP;',
'',
'    FOR c IN c_sic LOOP',
'        apex_collection.add_member (p_collection_name => ''ITEMSICLIST'',',
'            p_n001 => c.SIC_ID,',
'            p_c001 => c.SIC_NAME',
'        );',
'    END LOOP;',
'',
'    for r_rec in (',
'    select seq_id, rn from',
'        (select seq_id, row_number() over (partition by c001 order by d001 desc) rn',
'            from apex_collections',
'            where collection_name = ''ITEMSICLIST''',
'        ) where rn != 1',
'        ) loop',
'        APEX_COLLECTION.DELETE_MEMBER',
'            (p_collection_name =>  ''ITEMSICLIST''',
'            ,p_seq             => r_rec.seq_id);',
'      end loop;',
'',
'    APEX_COLLECTION.RESEQUENCE_COLLECTION (''ITEMSICLIST'');',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>37624055053039536
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(37986645589570415)
,p_process_sequence=>40
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ICL_REMOVE_UNCHECKED'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    CURSOR c_class IS ',
'    SELECT n001, c001',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''ITEMCLASSLIST'';',
'    temp NUMBER;',
'BEGIN',
'    ',
'    FOR i in 1..APEX_APPLICATION.g_f01.COUNT LOOP',
'        APEX_COLLECTION.DELETE_MEMBER(',
'            p_collection_name => ''ITEMCLASSLIST'',',
'            p_seq => TO_NUMBER(APEX_APPLICATION.g_f01(i))',
'        );',
'    END LOOP;',
'',
'    FOR d IN (',
'        SELECT SEQ_ID, N001, C001, C002',
'            FROM APEX_COLLECTIONS',
'        WHERE COLLECTION_NAME=''SUBCATEGORIES''',
'    ) LOOP',
'        SELECT COUNT(1)',
'        INTO temp',
'        FROM APEX_COLLECTIONS',
'        WHERE ',
'            COLLECTION_NAME = ''ITEMCLASSLIST'' AND N001 = d.N001;',
'        IF (temp <= 0) THEN',
'            APEX_COLLECTION.DELETE_MEMBER(',
'                p_collection_name => ''SUBCATEGORIES'',',
'                p_seq => d.SEQ_ID',
'            );',
'        END IF;',
'    END LOOP;',
'',
'    FOR c IN c_class LOOP',
'        SELECT COUNT(1)',
'            INTO temp',
'            FROM APEX_COLLECTIONS',
'            WHERE ',
'                COLLECTION_NAME = ''SUBCATEGORIES'' AND N001 = c.N001;',
'            IF (temp <= 0) THEN',
'                apex_collection.add_member (p_collection_name => ''SUBCATEGORIES'',',
'                    p_n001 => c.n001,',
'                    p_c001 => c.c001',
'                );',
'            END IF;',
'    END LOOP;',
'    APEX_COLLECTION.RESEQUENCE_COLLECTION (''SUBCATEGORIES'');',
'    APEX_COLLECTION.TRUNCATE_COLLECTION (''ITEMCLASSLIST'');',
'',
'    FOR c IN (',
'        SELECT CLASS_ID, CLASS_NAME',
'        FROM NIM025     ',
'    ) LOOP',
'        apex_collection.add_member (p_collection_name => ''ITEMCLASSLIST'',',
'            p_n001 => c.CLASS_ID,',
'            p_c001 => c.CLASS_NAME',
'        );',
'    END LOOP;',
'    APEX_COLLECTION.RESEQUENCE_COLLECTION (''ITEMCLASSLIST'');',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>37986645589570415
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(37986782497570416)
,p_process_sequence=>50
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'IDL_REMOVE_UNCHECKED'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    CURSOR c_dept IS ',
'    SELECT n001, c001',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''ITEMDEPTLIST'';',
'    temp NUMBER;',
'BEGIN',
'    FOR i in 1..APEX_APPLICATION.g_f01.COUNT LOOP',
'        APEX_COLLECTION.DELETE_MEMBER(',
'            p_collection_name => ''ITEMDEPTLIST'',',
'            p_seq => TO_NUMBER(APEX_APPLICATION.g_f01(i))',
'        );',
'    END LOOP;',
'',
'    FOR d IN (',
'        SELECT SEQ_ID, N001, C001, C002',
'            FROM APEX_COLLECTIONS',
'        WHERE COLLECTION_NAME=''SUBCATEGORIES''',
'    ) LOOP',
'        SELECT COUNT(1)',
'        INTO temp',
'        FROM APEX_COLLECTIONS',
'        WHERE ',
'            COLLECTION_NAME = ''ITEMDEPTLIST'' AND N001 = d.N001;',
'        IF (temp <= 0) THEN',
'            APEX_COLLECTION.DELETE_MEMBER(',
'                p_collection_name => ''SUBCATEGORIES'',',
'                p_seq => d.SEQ_ID',
'            );',
'        END IF;',
'    END LOOP;',
'',
'    FOR c IN c_dept LOOP',
'        SELECT COUNT(1)',
'        INTO temp',
'        FROM APEX_COLLECTIONS',
'        WHERE ',
'            COLLECTION_NAME = ''SUBCATEGORIES'' AND N001 = c.N001;',
'        IF (temp <= 0) THEN',
'            apex_collection.add_member (p_collection_name => ''SUBCATEGORIES'',',
'                p_n001 => c.n001,',
'                p_c001 => c.c001',
'            );',
'        END IF;',
'    END LOOP;',
'    APEX_COLLECTION.RESEQUENCE_COLLECTION (''SUBCATEGORIES'');',
'    APEX_COLLECTION.TRUNCATE_COLLECTION (''ITEMDEPTLIST'');',
'    ',
'    FOR c IN (',
'        SELECT DEPT_ID, DEPT_NAME',
'        FROM NIM024',
'    ) LOOP',
'        apex_collection.add_member (p_collection_name => ''ITEMDEPTLIST'',',
'            p_n001 => c.DEPT_ID,',
'            p_c001 => c.DEPT_NAME',
'        );',
'    END LOOP;',
'    APEX_COLLECTION.RESEQUENCE_COLLECTION (''ITEMDEPTLIST'');',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>37986782497570416
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(37986864975570417)
,p_process_sequence=>60
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ISL_REMOVE_UNCHECKED'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    CURSOR c_sic IS ',
'    SELECT n001, c001',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''ITEMSICLIST'';',
'    temp NUMBER;',
'BEGIN',
'    FOR i in 1..APEX_APPLICATION.g_f01.COUNT LOOP',
'        APEX_COLLECTION.DELETE_MEMBER(',
'            p_collection_name => ''ITEMSICLIST'',',
'            p_seq => TO_NUMBER(APEX_APPLICATION.g_f01(i))',
'        );',
'    END LOOP;',
'',
'    FOR d IN (',
'        SELECT SEQ_ID, N001, C001, C002',
'            FROM APEX_COLLECTIONS',
'        WHERE COLLECTION_NAME=''SUBCATEGORIES''',
'    ) LOOP',
'        SELECT COUNT(1)',
'        INTO temp',
'        FROM APEX_COLLECTIONS',
'        WHERE ',
'            COLLECTION_NAME = ''ITEMSICLIST'' AND N001 = d.N001;',
'        IF (temp <= 0) THEN',
'            APEX_COLLECTION.DELETE_MEMBER(',
'                p_collection_name => ''SUBCATEGORIES'',',
'                p_seq => d.SEQ_ID',
'            );',
'        END IF;',
'    END LOOP;',
'',
'    FOR c IN c_sic LOOP',
'        SELECT COUNT(1)',
'            INTO temp',
'            FROM APEX_COLLECTIONS',
'            WHERE ',
'                COLLECTION_NAME = ''SUBCATEGORIES'' AND N001 = c.N001;',
'            IF (temp <= 0) THEN',
'                apex_collection.add_member (p_collection_name => ''SUBCATEGORIES'',',
'                    p_n001 => c.n001,',
'                    p_c001 => c.c001',
'                );',
'            END IF;',
'    END LOOP;',
'    APEX_COLLECTION.RESEQUENCE_COLLECTION (''SUBCATEGORIES'');',
'    APEX_COLLECTION.TRUNCATE_COLLECTION (''ITEMSICLIST'');',
'',
'    FOR c IN (',
'        SELECT SIC_ID, SIC_NAME',
'        FROM NIM023',
'    ) LOOP',
'        apex_collection.add_member (p_collection_name => ''ITEMSICLIST'',',
'            p_n001 => c.SIC_ID,',
'            p_c001 => c.SIC_NAME',
'        );',
'    END LOOP;',
'    APEX_COLLECTION.RESEQUENCE_COLLECTION (''ITEMSICLIST'');',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>37986864975570417
);
wwv_flow_imp.component_end;
end;
/
