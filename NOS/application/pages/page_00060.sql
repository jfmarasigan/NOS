prompt --application/pages/page_00060
begin
--   Manifest
--     PAGE: 00060
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
 p_id=>60
,p_name=>'Customer Discount Creation'
,p_alias=>'CUSTOMER-DISCOUNT-CREATION'
,p_step_title=>'Customer Discount Creation'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#js/cmn#MIN#.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// Main menu keys Add/Update',
'const p60KeyMapCrud = {',
'    escape : (v) => {',
'        $("#esc").trigger("click");',
'    },',
'    enter : (v) => {',
'        if( checkItemCategories() ){',
'            $("#enter").trigger("click");',
'        } else {',
'            $.event.trigger("itemCategoriesValidation");',
'        }',
'    },',
'    f8 : (v) => {',
'        $("#f8").trigger("click");',
'    }',
'}',
'function mapP60KeysCrud() {',
'    $(document).off(''keydown.p60keyevents'');',
'    $(document).on(''keydown.p60keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p60KeyMapCrud[key]) {',
'            ev.preventDefault();',
'            p60KeyMapCrud[key]();',
'        }',
'    });',
'}',
'',
'// Main menu keys View',
'const p60KeyMapView = {',
'    escape : (v) => {',
'        $("#esc").trigger("click");',
'    },',
'    f9 : (v) => {',
'        $("#f9").trigger("click");',
'    },',
'}',
'function mapP60KeysView() {',
'    $(document).off(''keydown.p60keyevents'');',
'    $(document).on(''keydown.p60keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p60KeyMapView[key]) {',
'            ev.preventDefault();',
'            p60KeyMapView[key]();',
'        }',
'    });',
'}',
'',
'// Discount List keys',
'const p60KeyMapDL = {',
'    r : (v) => {',
'        $("#remove").trigger("click");',
'    },',
'    a : (v) => {',
'        $("#add").trigger("click");',
'    },',
'    u : (v) => {',
'        $("#update").trigger("click");',
'    },',
'    escape : (v) => {',
'        mapP60KeysView();',
'    }',
'}',
'function mapP60KeysDL() {',
'    $(document).off(''keydown.p60keyevents'');',
'    $(document).on(''keydown.p60keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p60KeyMapDL[key]) {',
'            ev.preventDefault();',
'            p60KeyMapDL[key]();',
'        }',
'    });',
'}',
'',
'// Item Categories Modal',
'const p60KeyMapIC = {',
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
'        mapP60KeysCrud();',
'    }',
'}',
'function mapP60KeysIC() {',
'    $(document).off(''keydown.p60keyevents'');',
'    $(document).on(''keydown.p60keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p60KeyMapIC[key]) {',
'            ev.preventDefault();',
'            p60KeyMapIC[key]();',
'        }',
'    });',
'}',
'',
'// Item Department List',
'const p60KeyMapIDL = {',
'    m : (v) => {',
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
'        mapP60KeysCrud();',
'    },',
'    enter : (v) => {',
'        $.event.trigger("departmentEnter");',
'        mapP60KeysCrud();',
'    }',
'}',
'function mapP60KeysIDL() {',
'    $(document).off(''keydown.p60keyevents'');',
'    $(document).on(''keydown.p60keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p60KeyMapIDL[key]) {',
'            ev.preventDefault();',
'            p60KeyMapIDL[key]();',
'        }',
'    });',
'}',
'',
'const p60KeyMapIDS = {',
'    escape : (v) => {',
'        mapP60KeysIDL();',
'    },',
'    enter : (v) => {',
'        if($v("P60_DEPARTMENT_SEARCH").length <= 0){',
'            $("#P60_DEPARTMENT_SEARCH").addClass("apex-page-item-error");',
'            $("#P60_DEPARTMENT_SEARCH_error_placeholder").removeClass("u-hidden");',
'            $("#P60_DEPARTMENT_SEARCH_error_placeholder").html("Must have some value.");',
'        } else {',
'            mapP60KeysIDL();',
'            $.event.trigger("deptSearch");',
'        }',
'    }',
'}',
'function mapP60KeysIDS() {',
'    $(document).off(''keydown.p60keyevents'');',
'    $(document).on(''keydown.p60keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p60KeyMapIDS[key]) {',
'            ev.preventDefault();',
'            p60KeyMapIDS[key]();',
'        }',
'    });',
'}',
'',
'// Item SIC List',
'const p60KeyMapISL = {',
'    m : (v) => {',
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
'        mapP60KeysCrud();',
'    },',
'    enter : (v) => {',
'        $.event.trigger("sicEnter");',
'        mapP60KeysCrud();',
'    }',
'}',
'function mapP60KeysISL() {',
'    $(document).off(''keydown.p60keyevents'');',
'    $(document).on(''keydown.p60keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p60KeyMapISL[key]) {',
'            ev.preventDefault();',
'            p60KeyMapISL[key]();',
'        }',
'    });',
'}',
'',
'const p60KeyMapISS = {',
'    escape : (v) => {',
'        mapP60KeysISL();',
'    },',
'    enter : (v) => {',
'        if($v("P60_SIC_SEARCH").length <= 0){',
'            $("#P60_SIC_SEARCH").addClass("apex-page-item-error");',
'            $("#P60_SIC_SEARCH_error_placeholder").removeClass("u-hidden");',
'            $("#P60_SIC_SEARCH_error_placeholder").html("Must have some value.");',
'        } else {',
'            mapP60KeysISL();',
'            $.event.trigger("sicSearch");',
'        }',
'    }',
'}',
'function mapP60KeysISS() {',
'    $(document).off(''keydown.p60keyevents'');',
'    $(document).on(''keydown.p60keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p60KeyMapISS[key]) {',
'            ev.preventDefault();',
'            p60KeyMapISS[key]();',
'        }',
'    });',
'}',
'',
'// Item Class List',
'const p60KeyMapICL = {',
'    m : (v) => {',
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
'        mapP60KeysCrud();',
'    },',
'    enter : (v) => {',
'        $.event.trigger("classEnter");',
'        mapP60KeysCrud();',
'    }',
'}',
'function mapP60KeysICL() {',
'    $(document).off(''keydown.p60keyevents'');',
'    $(document).on(''keydown.p60keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p60KeyMapICL[key]) {',
'            ev.preventDefault();',
'            p60KeyMapICL[key]();',
'        }',
'    });',
'}',
'',
'const p60KeyMapICS = {',
'    escape : (v) => {',
'        mapP60KeysICL();',
'    },',
'    enter : (v) => {',
'        if($v("P60_CLASS_SEARCH").length <= 0){',
'            $("#P60_CLASS_SEARCH").addClass("apex-page-item-error");',
'            $("#P60_CLASS_SEARCH_error_placeholder").removeClass("u-hidden");',
'            $("#P60_CLASS_SEARCH_error_placeholder").html("Must have some value.");',
'        } else {',
'            mapP60KeysICL();',
'            $.event.trigger("classSearch");',
'        }',
'    }',
'}',
'function mapP60KeysICS() {',
'    $(document).off(''keydown.p60keyevents'');',
'    $(document).on(''keydown.p60keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p60KeyMapICS[key]) {',
'            ev.preventDefault();',
'            p60KeyMapICS[key]();',
'        }',
'    });',
'}',
'',
'// Any key Exit Categories Validation',
'function mapP60KeysExit(){',
'    $(document).off(''keydown.p60keyevents'');',
'    $(document).on(''keydown.p60keyevents'', (ev) => {',
'        $.event.trigger("itemCategoriesValidationClose");',
'        mapP60KeysCrud();',
'    });',
'}',
'',
'// Discount List Reached Max',
'const p60KeyMapReachedMax = {',
'    y : (v) => {',
'        $("#DLRMy").trigger("click");',
'    },',
'    n : (v) => {',
'        $("#DLRMn").trigger("click");',
'    },',
'    escape : (v) => {',
'        mapP60KeysView();',
'    }',
'}',
'function mapP60KeysReachedMax(){',
'    $(document).off(''keydown.p60keyevents'');',
'    $(document).on(''keydown.p60keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p60KeyMapReachedMax[key]) {',
'            ev.preventDefault();',
'            p60KeyMapReachedMax[key]();',
'        }',
'    });',
'}',
'',
'function checkItemCategories(){',
'    var deptRowCount = apex.region("departmentGrid").widget()',
'        .interactiveGrid("getViews", "grid")',
'        .model.getTotalRecords()',
'    var sicRowCount = apex.region("sicGrid").widget()',
'        .interactiveGrid("getViews", "grid")',
'        .model.getTotalRecords()',
'    var classRowCount = apex.region("classGrid").widget()',
'        .interactiveGrid("getViews", "grid")',
'        .model.getTotalRecords()',
'    console.log(deptRowCount + " " + sicRowCount +  " " + classRowCount);',
'    if( deptRowCount == 0 && sicRowCount == 0 && classRowCount == 0 ){',
'        return false;',
'    } else {',
'        return true;',
'    }',
'}',
'',
'// Restrict Fields to numbers only.',
'$(''#P60_DISCOUNT_VALUE'').keypress(function (e) { ',
'    if(',
'        e.key == "1" || e.key == "2" || e.key == "3" || e.key == "4" ||',
'        e.key == "5" || e.key == "6" || e.key == "7" || e.key == "8" ||',
'        e.key == "9" || e.key == "0"',
'    ){',
'        return true;',
'    } else if(e.key == "." && $(this).val().indexOf(''.'') == -1){',
'        return true;',
'    } else {',
'        return false;',
'    }',
'});'))
,p_javascript_code_onload=>'setTitle("Customer Discount Creation");'
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
'    background-color: #226597;',
'    border: none;',
'    margin-bottom: 0.4rem !important;',
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
'#discountGrid table,',
'#discountGrid tr,',
'#discountGrid td,',
'#discountGrid th {',
'    font-size: 1.125rem;',
'    /* font-family: Arial; */',
'}',
'#departmentGrid table,',
'#departmentGrid tr,',
'#departmentGrid td,',
'#departmentGrid th {',
'    font-size: 1.125rem;',
'    /* font-family: Arial; */',
'}',
'#sicGrid table,',
'#sicGrid tr,',
'#sicGrid td,',
'#sicGrid th {',
'    font-size: 1.125rem;',
'    /* font-family: Arial; */',
'}',
'#classGrid table,',
'#classGrid tr,',
'#classGrid td,',
'#classGrid th {',
'    font-size: 1.125rem;',
'    /* font-family: Arial; */',
'}',
'#ICL-grid table,',
'#ICL-grid tr,',
'#ICL-grid td,',
'#ICL-grid th {',
'    font-size: 1.125rem;',
'    /* font-family: Arial; */',
'}',
'#ISL-grid table,',
'#ISL-grid tr,',
'#ISL-grid td,',
'#ISL-grid th {',
'    font-size: 1.125rem;',
'    /* font-family: Arial; */',
'}',
'#IDL-grid table,',
'#IDL-grid tr,',
'#IDL-grid td,',
'#IDL-grid th {',
'    font-size: 1.125rem;',
'    /* font-family: Arial; */',
'}',
'#discount-list table,',
'#discount-list tr,',
'#discount-list td,',
'#discount-list th {',
'    font-size: 1.125rem;',
'    /* font-family: Arial; */',
'}',
'',
'/* #discountGrid, #departmentGrid, #discount-list, #IDL-grid, #sicGrid, #ISL-grid, #classGrid, #ICL-grid {',
'    table, tr, td, th {',
'        font-size: 1.125rem;',
'    }',
'} */',
'',
'#discountGrid_ig, #departmentGrid_ig, #discount-list_ig, #IDL-grid_ig, #sicGrid_ig, #ISL-grid_ig, #classGrid_ig, #ICL-grid_ig {',
'    border: 0.0625rem solid rgb(30, 58, 138);',
'}',
'',
'.a-GV-table .a-GV-cell, th.a-GV-header {',
'    border-color: rgb(30, 58, 138);',
'}',
'',
'#discountGrid .a-GV-header a, #discountGrid th.a-GV-header{',
'    background-color: white;',
'    color: black;',
'}',
'#departmentGrid .a-GV-header a, #departmentGrid th.a-GV-header,',
'#sicGrid .a-GV-header a, #sicGrid th.a-GV-header,',
'#classGrid .a-GV-header a, #classGrid th.a-GV-header {',
'    background-color: rgb(30, 58, 138);',
'    color: white;',
'}',
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
'#P60_DISCOUNT_NAME, #P60_DISCOUNT_NAME_LABEL{',
'    font-size: 1.125rem;',
'}',
'#P60_DISCOUNT_NAME_LABEL{',
'    color: white;',
'}',
'#discount-form-details label,',
'#discount-form-details input,',
'#discount-form-details select {',
'    font-size: 1.125rem;',
'}',
'',
'#P60_TYPE{',
'    font-size: 1.125rem;',
'    padding-top: 0.438rem;',
'    padding-bottom: 0.438rem;',
'}',
'#P60_DISCOUNT_VALUE{',
'    text-align: right !important;',
'}',
'',
'.t-Form-labelContainer:has(> #P60_LEGAL_NAME_LABEL),',
'.t-Form-labelContainer:has(> #P60_DBA_LABEL),',
'.t-Form-labelContainer:has(> #P60_CONTACT_PERSON_LABEL),',
'.t-Form-labelContainer:has(> #P60_MAIN_ACCOUNT_CODE_LABEL),',
'.t-Form-labelContainer:has(> #P60_TYPE_LABEL),',
'.t-Form-labelContainer:has(> #P60_DATE_FROM_LABEL),',
'.t-Form-labelContainer:has(> #P60_DEPARTMENT_SEARCH_LABEL),',
'.t-Form-labelContainer:has(> #P60_SIC_SEARCH_LABEL),',
'.t-Form-labelContainer:has(> #P60_CLASS_SEARCH_LABEL) {',
'    text-align: start;',
'}',
'',
'.t-Form-labelContainer:has(> .t-form-label){',
'    text-align: start;',
'}',
'',
'.ui-dialog .ui-dialog-titlebar {',
'    background-color: #226597;',
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
'.ui-dialog-body{',
'',
'}',
'',
'.blueCorner{',
'    background-color: #226597;',
'    padding-top: 0;',
'    padding-bottom: 0;',
'}',
'#DSform label, #SSform label, #CSform label,',
'#DSform input, #SSform input, #CSform input {',
'    font-size: 1.125rem;',
'}',
'',
'#P60_DISCOUNT_NAME_error{',
'    color: #FFD700;',
'}'))
,p_step_template=>wwv_flow_imp.id(5671392681337017)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15147157911750649)
,p_plug_name=>'Header'
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>'<h1><span style="color:grey">Customer/Update/</span> Customer Discount Creation</h1>'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15414079206384228)
,p_plug_name=>'Menu Buttons'
,p_plug_display_sequence=>80
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15415390027384241)
,p_plug_name=>'Forms'
,p_plug_display_sequence=>40
,p_plug_grid_column_span=>8
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15147238558750650)
,p_plug_name=>'Read Only Customer Detail'
,p_region_name=>'readonly-form'
,p_parent_plug_id=>wwv_flow_imp.id(15415390027384241)
,p_region_template_options=>'t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT CUSTOMER_ID, LEGAL_NAME, DBA, MAIN_ACCOUNT_CODE, CONTACT_PERSON',
'FROM NPT009'))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15412061377384208)
,p_plug_name=>'Discount Form'
,p_region_name=>'discount-form'
,p_parent_plug_id=>wwv_flow_imp.id(15415390027384241)
,p_plug_display_sequence=>20
,p_query_type=>'TABLE'
,p_query_table=>'NPT008'
,p_include_rowid_column=>false
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18080607270113211)
,p_plug_name=>'Discount Form Details'
,p_region_name=>'discount-form-details'
,p_parent_plug_id=>wwv_flow_imp.id(15412061377384208)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>20
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15415428447384242)
,p_plug_name=>'Item Objects Grids'
,p_plug_display_sequence=>70
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15415539041384243)
,p_plug_name=>'Item Department'
,p_region_name=>'departmentGrid'
,p_parent_plug_id=>wwv_flow_imp.id(15415428447384242)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>3
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    n001,',
'    c001',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''ITEMDEPT'''))
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
 p_id=>wwv_flow_imp.id(15970754381037515)
,p_name=>'N001'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'N001'
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
 p_id=>wwv_flow_imp.id(15970881255037516)
,p_name=>'C001'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'C001'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Item Department'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>20
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
 p_id=>wwv_flow_imp.id(15782044821117637)
,p_internal_uid=>15782044821117637
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
 p_id=>wwv_flow_imp.id(15893100370722479)
,p_interactive_grid_id=>wwv_flow_imp.id(15782044821117637)
,p_static_id=>'158932'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(15893363839722481)
,p_report_id=>wwv_flow_imp.id(15893100370722479)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(16025786193346090)
,p_view_id=>wwv_flow_imp.id(15893363839722481)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(15970754381037515)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(16026676439346100)
,p_view_id=>wwv_flow_imp.id(15893363839722481)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(15970881255037516)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16326206584824743)
,p_plug_name=>'Item SIC'
,p_region_name=>'sicGrid'
,p_parent_plug_id=>wwv_flow_imp.id(15415428447384242)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>3
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    n001,',
'    c001',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''ITEMSIC'''))
,p_plug_source_type=>'NATIVE_IG'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(16326478812824745)
,p_name=>'N001'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'N001'
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
 p_id=>wwv_flow_imp.id(16326506837824746)
,p_name=>'C001'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'C001'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Item SIC'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>20
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
 p_id=>wwv_flow_imp.id(16326384994824744)
,p_internal_uid=>16326384994824744
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
 p_id=>wwv_flow_imp.id(16820386932395370)
,p_interactive_grid_id=>wwv_flow_imp.id(16326384994824744)
,p_static_id=>'168204'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(16820573451395371)
,p_report_id=>wwv_flow_imp.id(16820386932395370)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(16822120271395390)
,p_view_id=>wwv_flow_imp.id(16820573451395371)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(16326478812824745)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(16823076238395403)
,p_view_id=>wwv_flow_imp.id(16820573451395371)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(16326506837824746)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16851704184755903)
,p_plug_name=>'Item Class'
,p_region_name=>'classGrid'
,p_parent_plug_id=>wwv_flow_imp.id(15415428447384242)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>3
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    n001,',
'    c001',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''ITEMCLASS'''))
,p_plug_source_type=>'NATIVE_IG'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(16851934274755905)
,p_name=>'N001'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'N001'
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
 p_id=>wwv_flow_imp.id(16852073464755906)
,p_name=>'C001'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'C001'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Item Class'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>20
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
 p_id=>wwv_flow_imp.id(16851856093755904)
,p_internal_uid=>16851856093755904
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
 p_id=>wwv_flow_imp.id(16879339003860812)
,p_interactive_grid_id=>wwv_flow_imp.id(16851856093755904)
,p_static_id=>'168794'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(16879595419860812)
,p_report_id=>wwv_flow_imp.id(16879339003860812)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(16882771701860832)
,p_view_id=>wwv_flow_imp.id(16879595419860812)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(16851934274755905)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(16883611108860839)
,p_view_id=>wwv_flow_imp.id(16879595419860812)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(16852073464755906)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15782991626117646)
,p_plug_name=>'Discount List'
,p_region_name=>'discount-list'
,p_region_css_classes=>'blueCorner'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>90
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15969399691037501)
,p_plug_name=>'Customer Discounts'
,p_region_name=>'discount-list'
,p_parent_plug_id=>wwv_flow_imp.id(15782991626117646)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    DISCOUNT_ID, ',
'    DISCOUNT_NAME, ',
'    CASE WHEN TYPE = ''Percent''',
'        THEN DISCOUNT_VALUE || ''%''',
'    ELSE ''$'' || DISCOUNT_VALUE',
'    END AS DISCOUNT_VALUE,',
'    DATE_TO',
'FROM NPT008',
'WHERE CUSTOMER_ID = :P60_CUSTOMER_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P60_CUSTOMER_ID'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(15969570987037503)
,p_name=>'DISCOUNT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISCOUNT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(15969687595037504)
,p_name=>'DISCOUNT_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISCOUNT_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Discount Name'
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(15969708987037505)
,p_name=>'DISCOUNT_VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISCOUNT_VALUE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Value'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>30
,p_value_alignment=>'RIGHT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>41
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
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(15969868482037506)
,p_name=>'DATE_TO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DATE_TO'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'End Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_is_required=>true
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
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(15969495420037502)
,p_internal_uid=>15969495420037502
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
 p_id=>wwv_flow_imp.id(15980674438103932)
,p_interactive_grid_id=>wwv_flow_imp.id(15969495420037502)
,p_static_id=>'159807'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(15980844075103934)
,p_report_id=>wwv_flow_imp.id(15980674438103932)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15981303782103942)
,p_view_id=>wwv_flow_imp.id(15980844075103934)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(15969570987037503)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15982266752103960)
,p_view_id=>wwv_flow_imp.id(15980844075103934)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(15969687595037504)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15983049947103968)
,p_view_id=>wwv_flow_imp.id(15980844075103934)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(15969708987037505)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15983945044103975)
,p_view_id=>wwv_flow_imp.id(15980844075103934)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(15969868482037506)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15969973982037507)
,p_plug_name=>'DL Buttons'
,p_parent_plug_id=>wwv_flow_imp.id(15782991626117646)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15971013829037518)
,p_plug_name=>'Item Categories'
,p_region_css_classes=>'blueCorner'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>100
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15972259744037530)
,p_plug_name=>'Item Department List'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>110
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15972324377037531)
,p_plug_name=>'Item Dept Grid'
,p_region_name=>'IDL-grid'
,p_parent_plug_id=>wwv_flow_imp.id(15972259744037530)
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(15972692771037534)
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
 p_id=>wwv_flow_imp.id(15972766425037535)
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
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
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
 p_id=>wwv_flow_imp.id(15972821460037536)
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
,p_enable_hide=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(15972433007037532)
,p_internal_uid=>15972433007037532
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
 p_id=>wwv_flow_imp.id(16074642650529681)
,p_interactive_grid_id=>wwv_flow_imp.id(15972433007037532)
,p_static_id=>'160747'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(16074804881529682)
,p_report_id=>wwv_flow_imp.id(16074642650529681)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(16075325673529693)
,p_view_id=>wwv_flow_imp.id(16074804881529682)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(15972692771037534)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(16076164174529704)
,p_view_id=>wwv_flow_imp.id(16074804881529682)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(15972766425037535)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(16077075602529715)
,p_view_id=>wwv_flow_imp.id(16074804881529682)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(15972821460037536)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15973279653037540)
,p_plug_name=>'IDL Buttons'
,p_parent_plug_id=>wwv_flow_imp.id(15972259744037530)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15973811692037546)
,p_plug_name=>'Department Search'
,p_region_name=>'DSform'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>140
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16806302756342321)
,p_plug_name=>'Item SIC List'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>120
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16806474701342322)
,p_plug_name=>'Item SIC Grid'
,p_region_name=>'ISL-grid'
,p_parent_plug_id=>wwv_flow_imp.id(16806302756342321)
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(16806653899342324)
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
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(16806703836342325)
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
 p_id=>wwv_flow_imp.id(16806865797342326)
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
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
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
 p_id=>wwv_flow_imp.id(16806575409342323)
,p_internal_uid=>16806575409342323
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
 p_id=>wwv_flow_imp.id(16821061934395375)
,p_interactive_grid_id=>wwv_flow_imp.id(16806575409342323)
,p_static_id=>'168211'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(16821246063395375)
,p_report_id=>wwv_flow_imp.id(16821061934395375)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(16823912685395414)
,p_view_id=>wwv_flow_imp.id(16821246063395375)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(16806653899342324)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(16824881618395421)
,p_view_id=>wwv_flow_imp.id(16821246063395375)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(16806703836342325)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(16825708264395428)
,p_view_id=>wwv_flow_imp.id(16821246063395375)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(16806865797342326)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16806969669342327)
,p_plug_name=>'ISL Buttons'
,p_parent_plug_id=>wwv_flow_imp.id(16806302756342321)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16809274825342350)
,p_plug_name=>'SIC Search'
,p_region_name=>'SSform'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>150
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16829754130409831)
,p_plug_name=>'Item Class List'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>130
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16829887798409832)
,p_plug_name=>'Item Class Grid'
,p_region_name=>'ICL-grid'
,p_parent_plug_id=>wwv_flow_imp.id(16829754130409831)
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(16830094550409834)
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
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(16830118433409835)
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
 p_id=>wwv_flow_imp.id(16830259520409836)
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
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
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
 p_id=>wwv_flow_imp.id(16829987401409833)
,p_internal_uid=>16829987401409833
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
 p_id=>wwv_flow_imp.id(16878614917860809)
,p_interactive_grid_id=>wwv_flow_imp.id(16829987401409833)
,p_static_id=>'168787'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(16878848657860809)
,p_report_id=>wwv_flow_imp.id(16878614917860809)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(16880065636860815)
,p_view_id=>wwv_flow_imp.id(16878848657860809)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(16830094550409834)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(16880931008860820)
,p_view_id=>wwv_flow_imp.id(16878848657860809)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(16830118433409835)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(16881846246860826)
,p_view_id=>wwv_flow_imp.id(16878848657860809)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(16830259520409836)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16830368958409837)
,p_plug_name=>'ISL Buttons'
,p_parent_plug_id=>wwv_flow_imp.id(16829754130409831)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16851530386755901)
,p_plug_name=>'Class Search'
,p_region_name=>'CSform'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>160
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17189792456817101)
,p_plug_name=>'Item Category Validation'
,p_title=>'Discount Creation'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>170
,p_location=>null
,p_plug_source=>'<h3 style="font-size:1.25rem;text-align:center">You have not added any Item Category, Please add at least one.</h3>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17191529205817119)
,p_plug_name=>'Discount List Reached Max'
,p_title=>'Discount Creation'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>180
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18080312200113208)
,p_plug_name=>'Warning Text'
,p_parent_plug_id=>wwv_flow_imp.id(17191529205817119)
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>'<h3 style="font-size:1.25rem;text-align:center">Maximum Discount reached, do you want to remove other discount/s?</h3>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18080580807113210)
,p_plug_name=>'Discount Grid Header'
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source=>'<h3 style="font-size:1.125rem;color:white">Running Discounts</h3>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(30877022824364214)
,p_plug_name=>'Customer Discounts Menu'
,p_region_name=>'discountGrid'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>60
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    DISCOUNT_ID, ',
'    DISCOUNT_NAME, ',
'    CASE WHEN TYPE = ''Percent''',
'        THEN DISCOUNT_VALUE || ''%''',
'    ELSE '''' || DISCOUNT_VALUE',
'    END AS DISCOUNT_VALUE,',
'    DATE_TO',
'FROM NPT008',
'WHERE CUSTOMER_ID = :P60_CUSTOMER_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P60_CUSTOMER_ID'
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
 p_id=>wwv_flow_imp.id(18083066270113235)
,p_name=>'DISCOUNT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISCOUNT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(18083130424113236)
,p_name=>'DISCOUNT_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISCOUNT_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Discount Name'
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(18083298958113237)
,p_name=>'DISCOUNT_VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISCOUNT_VALUE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Discount Value'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'RIGHT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>41
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
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(18083368667113238)
,p_name=>'DATE_TO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DATE_TO'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Date To'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_is_required=>true
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
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(16945883791657843)
,p_internal_uid=>16945883791657843
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
,p_fixed_header_max_height=>169
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
 p_id=>wwv_flow_imp.id(17114657282400420)
,p_interactive_grid_id=>wwv_flow_imp.id(16945883791657843)
,p_static_id=>'171147'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(17114813175400420)
,p_report_id=>wwv_flow_imp.id(17114657282400420)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(20939728366170492)
,p_view_id=>wwv_flow_imp.id(17114813175400420)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(18083066270113235)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(20940692876170500)
,p_view_id=>wwv_flow_imp.id(17114813175400420)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(18083130424113236)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(20941568041170506)
,p_view_id=>wwv_flow_imp.id(17114813175400420)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(18083298958113237)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(20942466831170514)
,p_view_id=>wwv_flow_imp.id(17114813175400420)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(18083368667113238)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(15414266065384230)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(15414079206384228)
,p_button_name=>'Add_Item_Categories'
,p_button_static_id=>'f8'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>F8</u> - Add/Remove Item Department/SIC/CLASS'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(15970058212037508)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(15969973982037507)
,p_button_name=>'Remove_Discount'
,p_button_static_id=>'remove'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>R</u> - Remove Discount'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'dialog-btns'
,p_grid_column_css_classes=>'btns'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(15971550810037523)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(15971013829037518)
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
 p_id=>wwv_flow_imp.id(15973324125037541)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(15973279653037540)
,p_button_name=>'IDL_Mark'
,p_button_static_id=>'IDLm'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>M</u> - Mark/Unmark'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'dialog-btns'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(16807039328342328)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(16806969669342327)
,p_button_name=>'ISL_Mark'
,p_button_static_id=>'ISLm'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>M</u> - Mark/Unmark'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'dialog-btns'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(16830495127409838)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(16830368958409837)
,p_button_name=>'ICL_Mark'
,p_button_static_id=>'ICLm'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>M</u> - Mark/Unmark'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'dialog-btns'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(16830549227409839)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(16830368958409837)
,p_button_name=>'ICL_Search'
,p_button_static_id=>'ICLs'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>S</u> - Search'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'dialog-btns'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(16830648980409840)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(16830368958409837)
,p_button_name=>'ICL_Mark_All'
,p_button_static_id=>'ICLa'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>A</u> - Mark All'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'dialog-btns'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(16830730393409841)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(16830368958409837)
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
 p_id=>wwv_flow_imp.id(15970166515037509)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(15969973982037507)
,p_button_name=>'Add_Discount'
,p_button_static_id=>'add'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>A</u> - Add Discount'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'dialog-btns'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(15971686478037524)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(15971013829037518)
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
 p_id=>wwv_flow_imp.id(16856269513755948)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(15414079206384228)
,p_button_name=>'Open_Discount_List'
,p_button_static_id=>'f9'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>F9</u> - Open Discount List'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(17194401387817148)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(17191529205817119)
,p_button_name=>'No'
,p_button_static_id=>'DLRMn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>N</u> - No'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'reached-max-btns'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(15414525624384233)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(15414079206384228)
,p_button_name=>'Escape'
,p_button_static_id=>'esc'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'-'
,p_button_redirect_url=>'f?p=&APP_ID.:58:&SESSION.::&DEBUG.::P58_CUSTOMER_ID:&P60_CUSTOMER_ID.'
,p_button_css_classes=>'invisible-btn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(15970236081037510)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(15969973982037507)
,p_button_name=>'Update_Discount'
,p_button_static_id=>'update'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>U</u> - Update Discount'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'dialog-btns'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(15971795326037525)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(15971013829037518)
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
 p_id=>wwv_flow_imp.id(15973673357037544)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(15973279653037540)
,p_button_name=>'IDL_Search'
,p_button_static_id=>'IDLs'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>S</u> - Search'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'dialog-btns'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(16807142445342329)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(16806969669342327)
,p_button_name=>'ISL_Search'
,p_button_static_id=>'ISLs'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>S</u> - Search'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'dialog-btns'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(16853539414755921)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(15414079206384228)
,p_button_name=>'Enter'
,p_button_static_id=>'enter'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'-'
,p_button_css_classes=>'invisible-btn'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(17194594217817149)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(17191529205817119)
,p_button_name=>'Yes'
,p_button_static_id=>'DLRMy'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>Y</u> - Yes'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'reached-max-btns'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(15973559571037543)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(15973279653037540)
,p_button_name=>'IDL_Mark_All'
,p_button_static_id=>'IDLa'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>A</u> - Mark All'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'dialog-btns'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(16807211123342330)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(16806969669342327)
,p_button_name=>'ISL_Mark_All'
,p_button_static_id=>'ISLa'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>A</u> - Mark All'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'dialog-btns'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(15973737856037545)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(15973279653037540)
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
 p_id=>wwv_flow_imp.id(16807329915342331)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(16806969669342327)
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
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(16945248405657837)
,p_branch_name=>'Go To Page 58'
,p_branch_action=>'f?p=&APP_ID.:58:&SESSION.::&DEBUG.::P58_CUSTOMER_ID:&P60_CUSTOMER_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15411509370384203)
,p_name=>'P60_CUSTOMER_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(15147238558750650)
,p_item_source_plug_id=>wwv_flow_imp.id(15147238558750650)
,p_source=>'CUSTOMER_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15411647357384204)
,p_name=>'P60_LEGAL_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(15147238558750650)
,p_item_source_plug_id=>wwv_flow_imp.id(15147238558750650)
,p_prompt=>'Legal Name: '
,p_source=>'LEGAL_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'readonly-field'
,p_tag_attributes=>'readonly tabindex="-1"'
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_css_classes=>'readonly-fields'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15411750720384205)
,p_name=>'P60_DBA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(15147238558750650)
,p_item_source_plug_id=>wwv_flow_imp.id(15147238558750650)
,p_prompt=>'DBA: '
,p_source=>'DBA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'readonly-field'
,p_tag_attributes=>'readonly tabindex="-1"'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_css_classes=>'readonly-fields'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15411813624384206)
,p_name=>'P60_MAIN_ACCOUNT_CODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(15147238558750650)
,p_item_source_plug_id=>wwv_flow_imp.id(15147238558750650)
,p_prompt=>'Main Account Code: '
,p_source=>'MAIN_ACCOUNT_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'readonly-field'
,p_tag_attributes=>'readonly tabindex="-1"'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_css_classes=>'readonly-fields'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15411937515384207)
,p_name=>'P60_CONTACT_PERSON'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(15147238558750650)
,p_item_source_plug_id=>wwv_flow_imp.id(15147238558750650)
,p_prompt=>'Contact Person: '
,p_source=>'CONTACT_PERSON'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'readonly-field'
,p_tag_attributes=>'readonly tabindex="-1"'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_css_classes=>'readonly-fields'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15412242874384210)
,p_name=>'P60_DISCOUNT_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(15412061377384208)
,p_item_source_plug_id=>wwv_flow_imp.id(15412061377384208)
,p_source=>'DISCOUNT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15412364601384211)
,p_name=>'P60_DISCOUNT_VALUE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(18080607270113211)
,p_item_source_plug_id=>wwv_flow_imp.id(15412061377384208)
,p_prompt=>'New'
,p_source=>'DISCOUNT_VALUE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>9
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15412460075384212)
,p_name=>'P60_DISCOUNT_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(15412061377384208)
,p_item_source_plug_id=>wwv_flow_imp.id(15412061377384208)
,p_prompt=>'Discount Name <span style="color:red">*</span>'
,p_source=>'DISCOUNT_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_field_template=>wwv_flow_imp.id(4382138690084278)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15412599349384213)
,p_name=>'P60_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(18080607270113211)
,p_item_source_plug_id=>wwv_flow_imp.id(15412061377384208)
,p_prompt=>'Value <span style="color:red">*</span>'
,p_source=>'TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Percent;Percent,Fixed;Fixed'
,p_cHeight=>1
,p_colspan=>3
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15412671093384214)
,p_name=>'P60_DATE_FROM'
,p_source_data_type=>'DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(18080607270113211)
,p_item_source_plug_id=>wwv_flow_imp.id(15412061377384208)
,p_prompt=>'Date Range <span style="color:red">*</span>'
,p_source=>'DATE_FROM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15412790546384215)
,p_name=>'P60_DATE_TO'
,p_source_data_type=>'DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(18080607270113211)
,p_item_source_plug_id=>wwv_flow_imp.id(15412061377384208)
,p_prompt=>'To'
,p_source=>'DATE_TO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15413214723384220)
,p_name=>'P60_CUSTOMER_ID_DISCOUNT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(15412061377384208)
,p_item_source_plug_id=>wwv_flow_imp.id(15412061377384208)
,p_source=>'CUSTOMER_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15413328781384221)
,p_name=>'P60_DISCOUNT_PERCENT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(18080607270113211)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>2
,p_grid_column=>2
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15413438135384222)
,p_name=>'P60_DISCOUNT_FIXED'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(18080607270113211)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_column=>4
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15973921383037547)
,p_name=>'P60_DEPARTMENT_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(15973811692037546)
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
 p_id=>wwv_flow_imp.id(16826728221409801)
,p_name=>'P60_SIC_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(16809274825342350)
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
 p_id=>wwv_flow_imp.id(16851629796755902)
,p_name=>'P60_CLASS_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(16851530386755901)
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
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16854114166755927)
,p_name=>'P60_DATE_FROM_INITIAL'
,p_source_data_type=>'DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(15412061377384208)
,p_item_source_plug_id=>wwv_flow_imp.id(15412061377384208)
,p_source=>'DATE_FROM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16855878709755944)
,p_name=>'P60_PAGE_STATUS'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16942680216657811)
,p_name=>'P60_SELECTED_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(15782991626117646)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16942921655657814)
,p_name=>'P60_PREPARED_URL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(15782991626117646)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17190282110817106)
,p_name=>'P60_DATE_TO_INITIAL_1'
,p_source_data_type=>'DATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(15412061377384208)
,p_item_source_plug_id=>wwv_flow_imp.id(15412061377384208)
,p_source=>'DATE_TO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(16943838589657823)
,p_computation_sequence=>20
,p_computation_item=>'P60_DISCOUNT_FIXED'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'CASE WHEN :P60_TYPE = ''Fixed'' THEN :P60_DISCOUNT_NUMBER END'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(16943986579657824)
,p_computation_sequence=>30
,p_computation_item=>'P60_DISCOUNT_PERCENT'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'CASE WHEN :P60_TYPE = ''Percent'' THEN :P60_DISCOUNT_NUMBER END'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(16853613452755922)
,p_validation_name=>'Empty Name'
,p_validation_sequence=>10
,p_validation=>'P60_DISCOUNT_NAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Must have some value.'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_imp.id(15412460075384212)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(16853700575755923)
,p_validation_name=>'Empty Start Date'
,p_validation_sequence=>20
,p_validation=>'P60_DATE_FROM'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Must have some value.'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_imp.id(15412671093384214)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(16853822522755924)
,p_validation_name=>'Empty End Date'
,p_validation_sequence=>30
,p_validation=>'P60_DATE_TO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Must have some value.'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_imp.id(15412790546384215)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(16854344457755929)
,p_validation_name=>'Empty Type'
,p_validation_sequence=>40
,p_validation=>'P60_TYPE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Must have some value.'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_imp.id(15412599349384213)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(16854436835755930)
,p_validation_name=>'Empty Percent'
,p_validation_sequence=>50
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P60_TYPE = ''Percent'' AND :P60_DISCOUNT_PERCENT IS NOT NULL THEN',
'        RETURN TRUE;',
'    ELSIF :P60_TYPE = ''Fixed'' THEN',
'        RETURN TRUE;',
'    ELSE',
'        RETURN FALSE;',
'    END IF;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Must have some value.'
,p_associated_item=>wwv_flow_imp.id(15413328781384221)
,p_error_display_location=>'INLINE_WITH_FIELD'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(16854528184755931)
,p_validation_name=>'Empty Fixed'
,p_validation_sequence=>60
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P60_TYPE = ''Fixed'' AND :P60_DISCOUNT_FIXED IS NOT NULL THEN',
'        RETURN TRUE;',
'    ELSIF :P60_TYPE = ''Percent'' THEN',
'        RETURN TRUE;',
'    ELSE',
'        RETURN FALSE;',
'    END IF;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Must have some value.'
,p_associated_item=>wwv_flow_imp.id(15413438135384222)
,p_error_display_location=>'INLINE_WITH_FIELD'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(16944080735657825)
,p_validation_name=>'Empty Item Categories'
,p_validation_sequence=>70
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_dept_count NUMBER;',
'    l_sic_count NUMBER;',
'    l_class_count NUMBER;',
'BEGIN',
'    SELECT COUNT(N001) INTO l_dept_count FROM APEX_COLLECTIONS WHERE COLLECTION_NAME = ''ITEMDEPT'';',
'    SELECT COUNT(N001) INTO l_sic_count FROM APEX_COLLECTIONS WHERE COLLECTION_NAME = ''ITEMSIC'';',
'    SELECT COUNT(N001) INTO l_class_count FROM APEX_COLLECTIONS WHERE COLLECTION_NAME = ''ITEMCLASS'';',
'',
'    IF l_dept_count > 0 OR l_sic_count > 0 OR l_class_count > 0 THEN',
'        RETURN TRUE;',
'    ELSE',
'        RETURN FALSE;',
'    END IF;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Must have at least one Item Category Selected.'
,p_always_execute=>'Y'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(17190364597817107)
,p_validation_name=>'Valid Start Date Add'
,p_validation_sequence=>80
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1 FROM DUAL',
'WHERE TO_DATE(:P60_DATE_FROM) >= TO_DATE(SYSDATE)'))
,p_validation_type=>'EXISTS'
,p_error_message=>'Must be either today or day after today.'
,p_always_execute=>'Y'
,p_validation_condition=>'P60_DISCOUNT_ID'
,p_validation_condition_type=>'ITEM_IS_NULL'
,p_associated_item=>wwv_flow_imp.id(15412671093384214)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(17190485016817108)
,p_validation_name=>'Valid End Date'
,p_validation_sequence=>90
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1 FROM DUAL',
'WHERE TO_DATE(:P60_DATE_TO) > TO_DATE(:P60_DATE_FROM)'))
,p_validation_type=>'EXISTS'
,p_error_message=>'Must be day after Start Date.'
,p_associated_item=>wwv_flow_imp.id(15412790546384215)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(17190520988817109)
,p_validation_name=>'Valid Start Date Update'
,p_validation_sequence=>100
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1 FROM DUAL',
'WHERE TO_DATE(:P60_DATE_FROM_INITIAL) = TO_DATE(:P60_DATE_FROM) OR TO_DATE(:P60_DATE_FROM) >= SYSDATE'))
,p_validation_type=>'EXISTS'
,p_error_message=>'Must be either today or day after today.'
,p_always_execute=>'Y'
,p_validation_condition=>'P60_DISCOUNT_ID'
,p_validation_condition_type=>'ITEM_IS_NOT_NULL'
,p_associated_item=>wwv_flow_imp.id(15412671093384214)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(18084532250113250)
,p_validation_name=>'Empty Discount Value'
,p_validation_sequence=>110
,p_validation=>'P60_DISCOUNT_VALUE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Must have some value.'
,p_associated_item=>wwv_flow_imp.id(15412364601384211)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(22264214417028301)
,p_validation_name=>'Percent Validation'
,p_validation_sequence=>120
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P60_TYPE = ''Percent'' AND :P60_DISCOUNT_VALUE <= 100 THEN',
'        RETURN TRUE;',
'    ELSIF :P60_TYPE = ''Fixed'' THEN',
'        RETURN TRUE;',
'    ELSE ',
'        RETURN FALSE;',
'    END IF;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Value must not exceed 100.'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_imp.id(15412364601384211)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(15414357271384231)
,p_name=>'Department Search'
,p_event_sequence=>10
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'deptSearch'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16322775829824708)
,p_event_id=>wwv_flow_imp.id(15414357271384231)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let checkedArr = [];',
'let uncheckedRowNum = [];',
'$("#IDL-grid_ig_grid_vc .a-GV-bdy .a-GV-w-scroll .a-GV-table tbody").children(".a-GV-row").each( function () {',
'    if( $(this).find("input[type=checkbox]").attr( "checked" ) ){',
'        console.log($(this).attr("data-id") + ": Checked");',
'        checkedArr.push( Number($(this).attr("data-id")) );',
'    } else {',
'        uncheckedRowNum.push( Number($(this).attr("data-rownum")) );',
'    }',
'});',
'console.log("checked: " + checkedArr);',
'console.log("Unchecked Row Id: " + uncheckedRowNum);',
'',
'apex.server.process(',
'    ''IDL_SEARCH'',',
'    {   ',
'        x01: $("#P60_DEPARTMENT_SEARCH").val(),',
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
'            } else {',
'                console.log(''Selected cases closed'')',
'            }',
'        }',
'    }',
');',
'',
'setTimeout(() => {',
'    $( document ).ready(function() {',
'        console.log("Execute")',
'        $("#IDL-grid_ig_grid_vc .a-GV-bdy .a-GV-w-scroll .a-GV-table tbody").children(".a-GV-row").each( function () {',
'            for (let i = 0; i < checkedArr.length; i++){',
'                if( $(this).attr("data-id") ==  checkedArr[i]){',
'                    console.log(checkedArr[i]);',
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
 p_id=>wwv_flow_imp.id(15414463356384232)
,p_event_id=>wwv_flow_imp.id(15414357271384231)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(15973811692037546)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16323834670824719)
,p_event_id=>wwv_flow_imp.id(15414357271384231)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(15972324377037531)
,p_build_option_id=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16322102744824702)
,p_event_id=>wwv_flow_imp.id(15414357271384231)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var grid = apex.region(''IDL-grid'').widget().interactiveGrid(''getViews'').grid;',
'grid.model.clearChanges(); // Clears unsaved changes to avoid warnings',
'apex.region(''IDL-grid'').refresh(); // Refreshes the Interactive Grid',
'',
'// setTimeout(() => {',
'//     $( document ).ready(function() {',
'//         $(".js-confirmBtn").trigger("click");',
'//     });',
'// }, "500");',
'',
'setTimeout(() => {',
'    $( document ).ready(function() {',
'        $("#IDL-grid_ig_grid_vc .a-GV-bdy .a-GV-w-scroll .a-GV-table tbody .a-GV-cell").first().trigger("click");',
'    });',
'}, "500");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16827582986409809)
,p_name=>'SIC Search'
,p_event_sequence=>20
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'sicSearch'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16827612712409810)
,p_event_id=>wwv_flow_imp.id(16827582986409809)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let checkedArr = [];',
'let uncheckedRowNum = [];',
'$("#ISL-grid_ig_grid_vc .a-GV-bdy .a-GV-w-scroll .a-GV-table tbody").children(".a-GV-row").each( function () {',
'    if( $(this).find("input[type=checkbox]").attr( "checked" ) ){',
'        console.log($(this).attr("data-id") + ": Checked");',
'        checkedArr.push( Number($(this).attr("data-id")) );',
'    } else {',
'        uncheckedRowNum.push( Number($(this).attr("data-rownum")) );',
'    }',
'});',
'console.log("checked: " + checkedArr);',
'console.log("Unchecked Row Id: " + uncheckedRowNum);',
'',
'apex.server.process(',
'    ''ISL_SEARCH'',',
'    {   ',
'        x01: $("#P60_SIC_SEARCH").val(),',
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
'            } else {',
'                console.log(''Selected cases closed'')',
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
'                    console.log(checkedArr[i]);',
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
 p_id=>wwv_flow_imp.id(16827741932409811)
,p_event_id=>wwv_flow_imp.id(16827582986409809)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(16809274825342350)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16827997305409813)
,p_event_id=>wwv_flow_imp.id(16827582986409809)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var grid = apex.region(''ISL-grid'').widget().interactiveGrid(''getViews'').grid;',
'grid.model.clearChanges(); // Clears unsaved changes to avoid warnings',
'apex.region(''ISL-grid'').refresh(); // Refreshes the Interactive Grid',
'',
'// setTimeout(() => {',
'//     $( document ).ready(function() {',
'//         $(".js-confirmBtn").trigger("click");',
'//     });',
'// }, "500");',
'',
'setTimeout(() => {',
'    $( document ).ready(function() {',
'        $("#ISL-grid_ig_grid_vc .a-GV-bdy .a-GV-w-scroll .a-GV-table tbody .a-GV-cell").first().trigger("click");',
'    });',
'}, "500");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16852156605755907)
,p_name=>'Class Search'
,p_event_sequence=>30
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'classSearch'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16852234874755908)
,p_event_id=>wwv_flow_imp.id(16852156605755907)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let checkedArr = [];',
'let uncheckedRowNum = [];',
'$("#ICL-grid_ig_grid_vc .a-GV-bdy .a-GV-w-scroll .a-GV-table tbody").children(".a-GV-row").each( function () {',
'    if( $(this).find("input[type=checkbox]").attr( "checked" ) ){',
'        console.log($(this).attr("data-id") + ": Checked");',
'        checkedArr.push( Number($(this).attr("data-id")) );',
'    } else {',
'        uncheckedRowNum.push( Number($(this).attr("data-rownum")) );',
'    }',
'});',
'console.log("checked: " + checkedArr);',
'console.log("Unchecked Row Id: " + uncheckedRowNum);',
'',
'apex.server.process(',
'    ''ICL_SEARCH'',',
'    {   ',
'        x01: $("#P60_CLASS_SEARCH").val(),',
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
'            } else {',
'                console.log(''Selected cases closed'')',
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
'                    console.log(checkedArr[i]);',
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
 p_id=>wwv_flow_imp.id(16852394192755909)
,p_event_id=>wwv_flow_imp.id(16852156605755907)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(16851530386755901)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16852443509755910)
,p_event_id=>wwv_flow_imp.id(16852156605755907)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var grid = apex.region(''ICL-grid'').widget().interactiveGrid(''getViews'').grid;',
'grid.model.clearChanges(); // Clears unsaved changes to avoid warnings',
'apex.region(''ICL-grid'').refresh(); // Refreshes the Interactive Grid',
'',
'// setTimeout(() => {',
'//     $( document ).ready(function() {',
'//         $(".js-confirmBtn").trigger("click");',
'//     });',
'// }, "500");',
'',
'setTimeout(() => {',
'    $( document ).ready(function() {',
'        $("#ICL-grid_ig_grid_vc .a-GV-bdy .a-GV-w-scroll .a-GV-table tbody .a-GV-cell").first().trigger("click");',
'    });',
'}, "500");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(15783064595117647)
,p_name=>'Open Discount List'
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_cond=>'P60_PAGE_STATUS'
,p_display_when_cond2=>'v'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15783130170117648)
,p_event_id=>wwv_flow_imp.id(15783064595117647)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(15782991626117646)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15970483990037512)
,p_event_id=>wwv_flow_imp.id(15783064595117647)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP60KeysDL();',
'$("#discount-list_ig_grid_vc .a-GV-bdy .a-GV-w-scroll .a-GV-table tbody .a-GV-cell").first().trigger("click");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(15970542050037513)
,p_name=>'Create Collections'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15970690963037514)
,p_event_id=>wwv_flow_imp.id(15970542050037513)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'ITEMDEPT'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_collection_name varchar2(20) := ''ITEMDEPT'';',
'BEGIN',
'    -- IF NOT apex_collection.collection_exists(p_collection_name => v_collection_name) THEN',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(v_collection_name);',
'    -- END IF;',
'',
'    EXCEPTION WHEN others THEN',
'        raise_application_error(-2000,DBMS_UTILITY.format_error_backtrace);',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15972570608037533)
,p_event_id=>wwv_flow_imp.id(15970542050037513)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'ITEMDEPTLIST'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_collection_name varchar2(20) := ''ITEMDEPTLIST'';',
'BEGIN',
'    -- IF NOT apex_collection.collection_exists(p_collection_name => v_collection_name) THEN',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(v_collection_name);',
'    -- END IF;',
'',
'    EXCEPTION WHEN others THEN',
'        raise_application_error(-2000,DBMS_UTILITY.format_error_backtrace);',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16326644564824747)
,p_event_id=>wwv_flow_imp.id(15970542050037513)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'ITEMSIC'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_collection_name varchar2(20) := ''ITEMSIC'';',
'BEGIN',
'    -- IF NOT apex_collection.collection_exists(p_collection_name => v_collection_name) THEN',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(v_collection_name);',
'    -- END IF;',
'',
'    EXCEPTION WHEN others THEN',
'        raise_application_error(-2000,DBMS_UTILITY.format_error_backtrace);',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16326799829824748)
,p_event_id=>wwv_flow_imp.id(15970542050037513)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>'ITEMSICLIST'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_collection_name varchar2(20) := ''ITEMSICLIST'';',
'BEGIN',
'    -- IF NOT apex_collection.collection_exists(p_collection_name => v_collection_name) THEN',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(v_collection_name);',
'    -- END IF;',
'',
'    EXCEPTION WHEN others THEN',
'        raise_application_error(-2000,DBMS_UTILITY.format_error_backtrace);',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16326850780824749)
,p_event_id=>wwv_flow_imp.id(15970542050037513)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_name=>'ITEMCLASS'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_collection_name varchar2(20) := ''ITEMCLASS'';',
'BEGIN',
'    -- IF NOT apex_collection.collection_exists(p_collection_name => v_collection_name) THEN',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(v_collection_name);',
'    -- END IF;',
'',
'    EXCEPTION WHEN others THEN',
'        raise_application_error(-2000,DBMS_UTILITY.format_error_backtrace);',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16326915308824750)
,p_event_id=>wwv_flow_imp.id(15970542050037513)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_name=>'ITEMCLASSLIST'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_collection_name varchar2(20) := ''ITEMCLASSLIST'';',
'BEGIN',
'    -- IF NOT apex_collection.collection_exists(p_collection_name => v_collection_name) THEN',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(v_collection_name);',
'    -- END IF;',
'',
'    EXCEPTION WHEN others THEN',
'        raise_application_error(-2000,DBMS_UTILITY.format_error_backtrace);',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16944627584657831)
,p_event_id=>wwv_flow_imp.id(15970542050037513)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_name=>'ITEMDEPT POPULATE'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_collection_name varchar2(20) := ''ITEMDEPT'';',
'    CURSOR c_dept IS ',
'    SELECT',
'        a.DEPT_ID, a.DEPT_NAME',
'    FROM NIM024 a, NPT029 b',
'    WHERE a.DEPT_ID = b.DEPT_ID AND b.DISCOUNT_ID = :P60_DISCOUNT_ID;',
'BEGIN',
'    FOR c IN c_dept LOOP',
'        apex_collection.add_member (p_collection_name => ''ITEMDEPT'',',
'            p_n001 => c.DEPT_ID,',
'            p_c001 => c.DEPT_NAME',
'        );',
'    END LOOP;',
'',
'    -- EXCEPTION WHEN others THEN',
'    --     raise_application_error(-2000,DBMS_UTILITY.format_error_backtrace);',
'END;'))
,p_attribute_02=>'P60_DISCOUNT_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'ITEM_IS_NOT_NULL'
,p_server_condition_expr1=>'P60_DISCOUNT_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16944707739657832)
,p_event_id=>wwv_flow_imp.id(15970542050037513)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_name=>'ITEMSIC POPULATE'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_collection_name varchar2(20) := ''ITEMSIC'';',
'    CURSOR c_sic IS ',
'    SELECT',
'        a.SIC_ID, a.SIC_NAME',
'    FROM NIM023 a, NPT028 b',
'    WHERE a.SIC_ID = b.SIC_ID AND b.DISCOUNT_ID = :P60_DISCOUNT_ID;',
'BEGIN',
'    FOR c IN c_sic LOOP',
'        apex_collection.add_member (p_collection_name => ''ITEMSIC'',',
'            p_n001 => c.SIC_ID,',
'            p_c001 => c.SIC_NAME',
'        );',
'    END LOOP;',
'',
'    -- EXCEPTION WHEN others THEN',
'    --     raise_application_error(-2000,DBMS_UTILITY.format_error_backtrace);',
'END;'))
,p_attribute_02=>'P60_DISCOUNT_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'ITEM_IS_NOT_NULL'
,p_server_condition_expr1=>'P60_DISCOUNT_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16944872543657833)
,p_event_id=>wwv_flow_imp.id(15970542050037513)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_name=>'ITEMCLASS POPULATE'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_collection_name varchar2(20) := ''ITEMCLASS'';',
'    CURSOR c_class IS ',
'    SELECT',
'        a.CLASS_ID, a.CLASS_NAME',
'    FROM NIM025 a, NPT030 b',
'    WHERE a.CLASS_ID = b.CLASS_ID AND b.DISCOUNT_ID = :P60_DISCOUNT_ID;',
'BEGIN',
'    FOR c IN c_class LOOP',
'        apex_collection.add_member (p_collection_name => ''ITEMCLASS'',',
'            p_n001 => c.CLASS_ID,',
'            p_c001 => c.CLASS_NAME',
'        );',
'    END LOOP;',
'',
'    -- EXCEPTION WHEN others THEN',
'    --     raise_application_error(-2000,DBMS_UTILITY.format_error_backtrace);',
'END;'))
,p_attribute_02=>'P60_DISCOUNT_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'ITEM_IS_NOT_NULL'
,p_server_condition_expr1=>'P60_DISCOUNT_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16944907231657834)
,p_event_id=>wwv_flow_imp.id(15970542050037513)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(15415539041384243)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16945048460657835)
,p_event_id=>wwv_flow_imp.id(15970542050037513)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(16326206584824743)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16945146897657836)
,p_event_id=>wwv_flow_imp.id(15970542050037513)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(16851704184755903)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(15971169885037519)
,p_name=>'Open Dialog'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(15414266065384230)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15971253393037520)
,p_event_id=>wwv_flow_imp.id(15971169885037519)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(15971013829037518)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15971363289037521)
,p_event_id=>wwv_flow_imp.id(15971169885037519)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mapP60KeysIC();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(15971869311037526)
,p_name=>'Open Item Department List'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(15971550810037523)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16324716281824728)
,p_event_id=>wwv_flow_imp.id(15971869311037526)
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
 p_id=>wwv_flow_imp.id(16325604056824737)
,p_event_id=>wwv_flow_imp.id(15971869311037526)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(15972324377037531)
,p_build_option_id=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15972092677037528)
,p_event_id=>wwv_flow_imp.id(15971869311037526)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(15971013829037518)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15972160159037529)
,p_event_id=>wwv_flow_imp.id(15971869311037526)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(15972259744037530)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16325312907824734)
,p_event_id=>wwv_flow_imp.id(15971869311037526)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var grid = apex.region(''IDL-grid'').widget().interactiveGrid(''getViews'').grid;',
'// grid.model.clearChanges(); // Clears unsaved changes to avoid warnings',
'apex.region(''IDL-grid'').refresh(); // Refreshes the Interactive Grid',
'',
'setTimeout(() => {',
'    $( document ).ready(function() {',
'        $(".js-confirmBtn").trigger("click");',
'    });',
'    setTimeout(() => {',
'        $( document ).ready(function() {',
'            $("#IDL-grid_ig_grid_vc .a-GV-bdy .a-GV-w-scroll .a-GV-table tbody .a-GV-cell").first().trigger("click");',
'        });',
'    }, "500");',
'}, "500");',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15973436635037542)
,p_event_id=>wwv_flow_imp.id(15971869311037526)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP60KeysIDL();',
'setTimeout(() => {',
'    $( document ).ready(function() {',
'        $("#IDL-grid_ig_grid_vc .a-GV-bdy .a-GV-w-scroll .a-GV-table tbody .a-GV-cell").first().trigger("click");',
'    });',
'}, "500");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16826848047409802)
,p_name=>'Open Item SIC List'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(15971686478037524)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16826994326409803)
,p_event_id=>wwv_flow_imp.id(16826848047409802)
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
'    WHERE COLLECTION_NAME = ''ITEMSIC'';',
'BEGIN',
'    APEX_COLLECTION.TRUNCATE_COLLECTION (''ITEMSICLIST'');',
'    SELECT',
'        COUNT(n001)',
'    INTO l_selected_ids',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''ITEMSIC'';',
'',
'    IF',
'        l_selected_ids > 0 THEN',
'        FOR c IN c_dept LOOP',
'            apex_collection.add_member (p_collection_name => ''ITEMSICLIST'',',
'                p_n001 => c.n001,',
'                p_c001 => c.c001',
'            );',
'        END LOOP;',
'    END IF;',
'    ',
'    APEX_COLLECTION.RESEQUENCE_COLLECTION (''ITEMSICLIST'');',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16827199035409805)
,p_event_id=>wwv_flow_imp.id(16826848047409802)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(15971013829037518)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16827245866409806)
,p_event_id=>wwv_flow_imp.id(16826848047409802)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(16806302756342321)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16827326667409807)
,p_event_id=>wwv_flow_imp.id(16826848047409802)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var grid = apex.region(''ISL-grid'').widget().interactiveGrid(''getViews'').grid;',
'// grid.model.clearChanges(); // Clears unsaved changes to avoid warnings',
'apex.region(''ISL-grid'').refresh(); // Refreshes the Interactive Grid',
'',
'setTimeout(() => {',
'    $( document ).ready(function() {',
'        $(".js-confirmBtn").trigger("click");',
'    });',
'    setTimeout(() => {',
'        $( document ).ready(function() {',
'            $("#ISL-grid_ig_grid_vc .a-GV-bdy .a-GV-w-scroll .a-GV-table tbody .a-GV-cell").first().trigger("click");',
'        });',
'    }, "500");',
'}, "500");',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16827464812409808)
,p_event_id=>wwv_flow_imp.id(16826848047409802)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP60KeysISL();',
'setTimeout(() => {',
'    $( document ).ready(function() {',
'        $("#ISL-grid_ig_grid_vc .a-GV-bdy .a-GV-w-scroll .a-GV-table tbody .a-GV-cell").first().trigger("click");',
'    });',
'}, "500");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16829129274409825)
,p_name=>'Open Item Class List'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(15971795326037525)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16829216785409826)
,p_event_id=>wwv_flow_imp.id(16829129274409825)
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
'    WHERE COLLECTION_NAME = ''ITEMCLASS'';',
'BEGIN',
'    APEX_COLLECTION.TRUNCATE_COLLECTION (''ITEMCLASSLIST'');',
'    SELECT',
'        COUNT(n001)',
'    INTO l_selected_ids',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''ITEMCLASS'';',
'',
'    IF',
'        l_selected_ids > 0 THEN',
'        FOR c IN c_dept LOOP',
'            apex_collection.add_member (p_collection_name => ''ITEMCLASSLIST'',',
'                p_n001 => c.n001,',
'                p_c001 => c.c001',
'            );',
'        END LOOP;',
'    END IF;',
'    ',
'    APEX_COLLECTION.RESEQUENCE_COLLECTION (''ITEMCLASSLIST'');',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16829346570409827)
,p_event_id=>wwv_flow_imp.id(16829129274409825)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(15971013829037518)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16829484558409828)
,p_event_id=>wwv_flow_imp.id(16829129274409825)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(16829754130409831)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16829590347409829)
,p_event_id=>wwv_flow_imp.id(16829129274409825)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var grid = apex.region(''ICL-grid'').widget().interactiveGrid(''getViews'').grid;',
'// grid.model.clearChanges(); // Clears unsaved changes to avoid warnings',
'apex.region(''ICL-grid'').refresh(); // Refreshes the Interactive Grid',
'',
'setTimeout(() => {',
'    $( document ).ready(function() {',
'        $(".js-confirmBtn").trigger("click");',
'    });',
'    setTimeout(() => {',
'        $( document ).ready(function() {',
'            $("#ICL-grid_ig_grid_vc .a-GV-bdy .a-GV-w-scroll .a-GV-table tbody .a-GV-cell").first().trigger("click");',
'        });',
'    }, "500");',
'}, "500");',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16829687341409830)
,p_event_id=>wwv_flow_imp.id(16829129274409825)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP60KeysICL();',
'setTimeout(() => {',
'    $( document ).ready(function() {',
'        $("#ICL-grid_ig_grid_vc .a-GV-bdy .a-GV-w-scroll .a-GV-table tbody .a-GV-cell").first().trigger("click");',
'    });',
'}, "500");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(15974007637037548)
,p_name=>'Open Department Search'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(15973673357037544)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15974170630037549)
,p_event_id=>wwv_flow_imp.id(15974007637037548)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(15973811692037546)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15974268159037550)
,p_event_id=>wwv_flow_imp.id(15974007637037548)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mapP60KeysIDS();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16808539855342343)
,p_name=>'Open SIC Search'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(16807142445342329)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16808666957342344)
,p_event_id=>wwv_flow_imp.id(16808539855342343)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(16809274825342350)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16808757827342345)
,p_event_id=>wwv_flow_imp.id(16808539855342343)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mapP60KeysISS();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16831019524409844)
,p_name=>'Open Class Search'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(16830549227409839)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16831168625409845)
,p_event_id=>wwv_flow_imp.id(16831019524409844)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(16851530386755901)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16831221444409846)
,p_event_id=>wwv_flow_imp.id(16831019524409844)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mapP60KeysICS();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16323992153824720)
,p_name=>'Mark/Unmark IDL'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(15973324125037541)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16324018986824721)
,p_event_id=>wwv_flow_imp.id(16323992153824720)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// if( $(".is-selected").find("input[type=checkbox]").is('':checked'') ){',
'//     $(".is-selected").find("input[type=checkbox]").prop( "checked", false );',
'// } else {',
'//     $(".is-selected").find("input[type=checkbox]").prop( "checked", true );',
'// }',
'',
'$(".is-selected").find("input[type=checkbox]").trigger( "click" );'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16808309775342341)
,p_name=>'Mark/Unmark ISL'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(16807039328342328)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16808413001342342)
,p_event_id=>wwv_flow_imp.id(16808309775342341)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// if( $(".is-selected").find("input[type=checkbox]").is('':checked'') ){',
'//     $(".is-selected").find("input[type=checkbox]").prop( "checked", false );',
'// } else {',
'//     $(".is-selected").find("input[type=checkbox]").prop( "checked", true );',
'// }',
'',
'$(".is-selected").find("input[type=checkbox]").trigger( "click" );'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16830850267409842)
,p_name=>'Mark/Unmark ICL'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(16830495127409838)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16830903323409843)
,p_event_id=>wwv_flow_imp.id(16830850267409842)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// if( $(".is-selected").find("input[type=checkbox]").is('':checked'') ){',
'//     $(".is-selected").find("input[type=checkbox]").prop( "checked", false );',
'// } else {',
'//     $(".is-selected").find("input[type=checkbox]").prop( "checked", true );',
'// }',
'',
'$(".is-selected").find("input[type=checkbox]").trigger( "click" );'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16324188395824722)
,p_name=>'Mark All IDL'
,p_event_sequence=>160
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(15973559571037543)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16324266590824723)
,p_event_id=>wwv_flow_imp.id(16324188395824722)
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
 p_id=>wwv_flow_imp.id(16808801658342346)
,p_name=>'Mark All ISL'
,p_event_sequence=>170
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(16807211123342330)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16808964803342347)
,p_event_id=>wwv_flow_imp.id(16808801658342346)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#ISL-grid_ig_grid_vc .a-GV-bdy .a-GV-w-scroll .a-GV-table tbody").children(".a-GV-row").each( function () {',
'    if( !$(this).find("input[type=checkbox]").is('':checked'') ){',
'        $(this).find("input[type=checkbox]").trigger("click");',
'    }',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16831346589409847)
,p_name=>'Mark All ICL'
,p_event_sequence=>180
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(16830648980409840)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16831420975409848)
,p_event_id=>wwv_flow_imp.id(16831346589409847)
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
 p_id=>wwv_flow_imp.id(16324329499824724)
,p_name=>'Unmark All IDL'
,p_event_sequence=>190
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(15973737856037545)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16324420975824725)
,p_event_id=>wwv_flow_imp.id(16324329499824724)
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
 p_id=>wwv_flow_imp.id(16809002122342348)
,p_name=>'Unmark All ISL'
,p_event_sequence=>200
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(16807329915342331)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16809195572342349)
,p_event_id=>wwv_flow_imp.id(16809002122342348)
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
 p_id=>wwv_flow_imp.id(16831556267409849)
,p_name=>'Unmark All ICL'
,p_event_sequence=>210
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(16830730393409841)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16831641260409850)
,p_event_id=>wwv_flow_imp.id(16831556267409849)
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
 p_id=>wwv_flow_imp.id(16324541693824726)
,p_name=>'Department Close Dialog'
,p_event_sequence=>220
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'departmentCloseDialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16324678405824727)
,p_event_id=>wwv_flow_imp.id(16324541693824726)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    APEX_COLLECTION.TRUNCATE_COLLECTION (''ITEMDEPTLIST'');',
'    APEX_COLLECTION.RESEQUENCE_COLLECTION (''ITEMDEPTLIST'');',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16828001325409814)
,p_name=>'SIC Close Dialog'
,p_event_sequence=>230
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'sicCloseDialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16828121082409815)
,p_event_id=>wwv_flow_imp.id(16828001325409814)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    APEX_COLLECTION.TRUNCATE_COLLECTION (''ITEMSICLIST'');',
'    APEX_COLLECTION.RESEQUENCE_COLLECTION (''ITEMSICLIST'');',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16852569695755911)
,p_name=>'Class Close Dialog'
,p_event_sequence=>240
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'classCloseDialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16852681761755912)
,p_event_id=>wwv_flow_imp.id(16852569695755911)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    APEX_COLLECTION.TRUNCATE_COLLECTION (''ITEMCLASSLIST'');',
'    APEX_COLLECTION.RESEQUENCE_COLLECTION (''ITEMCLASSLIST'');',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16324810379824729)
,p_name=>'Department Enter'
,p_event_sequence=>250
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'departmentEnter'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16325114311824732)
,p_event_id=>wwv_flow_imp.id(16324810379824729)
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
'console.log("Unchecked rows to remove: " + uncheckedRowNum)',
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
'            } else {',
'                console.log(''Selected cases closed'')',
'            }',
'        }',
'    }',
');'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16326142719824742)
,p_event_id=>wwv_flow_imp.id(16324810379824729)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var grid = apex.region(''departmentGrid'').widget().interactiveGrid(''getViews'').grid;',
'// grid.model.clearChanges(); // Clears unsaved changes to avoid warnings',
'setTimeout(() => {',
'    $( document ).ready(function() {',
'        apex.region(''departmentGrid'').refresh(); // Refreshes the Interactive Grid',
'    });',
'}, "500");',
'',
'// js-confirmBtn',
'setTimeout(() => {',
'    $( document ).ready(function() {',
'        $(".js-confirmBtn").trigger("click");',
'    });',
'}, "500");'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16325588184824736)
,p_event_id=>wwv_flow_imp.id(16324810379824729)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(15972259744037530)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16828208335409816)
,p_name=>'SIC Enter'
,p_event_sequence=>260
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'sicEnter'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16828352856409817)
,p_event_id=>wwv_flow_imp.id(16828208335409816)
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
'console.log("Unchecked rows to remove: " + uncheckedRowNum)',
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
'            } else {',
'                console.log(''Selected cases closed'')',
'            }',
'        }',
'    }',
');'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16828493653409818)
,p_event_id=>wwv_flow_imp.id(16828208335409816)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var grid = apex.region(''sicGrid'').widget().interactiveGrid(''getViews'').grid;',
'// grid.model.clearChanges(); // Clears unsaved changes to avoid warnings',
'setTimeout(() => {',
'    $( document ).ready(function() {',
'        apex.region(''sicGrid'').refresh(); // Refreshes the Interactive Grid',
'    });',
'}, "500");',
'',
'// js-confirmBtn',
'setTimeout(() => {',
'    $( document ).ready(function() {',
'        $(".js-confirmBtn").trigger("click");',
'    });',
'}, "500");'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16828655383409820)
,p_event_id=>wwv_flow_imp.id(16828208335409816)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(16806302756342321)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16852797436755913)
,p_name=>'Class Enter'
,p_event_sequence=>270
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'classEnter'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16852868600755914)
,p_event_id=>wwv_flow_imp.id(16852797436755913)
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
'console.log("Unchecked rows to remove: " + uncheckedRowNum)',
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
'            } else {',
'                console.log(''Selected cases closed'')',
'            }',
'        }',
'    }',
');'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16852921210755915)
,p_event_id=>wwv_flow_imp.id(16852797436755913)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var grid = apex.region(''classGrid'').widget().interactiveGrid(''getViews'').grid;',
'// grid.model.clearChanges(); // Clears unsaved changes to avoid warnings',
'setTimeout(() => {',
'    $( document ).ready(function() {',
'        apex.region(''classGrid'').refresh(); // Refreshes the Interactive Grid',
'    });',
'}, "500");',
'',
'// js-confirmBtn',
'setTimeout(() => {',
'    $( document ).ready(function() {',
'        $(".js-confirmBtn").trigger("click");',
'    });',
'}, "500");'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16853051089755916)
,p_event_id=>wwv_flow_imp.id(16852797436755913)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(16829754130409831)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16854692965755932)
,p_name=>'Change Fields'
,p_event_sequence=>280
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P60_TYPE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16854763999755933)
,p_event_id=>wwv_flow_imp.id(16854692965755932)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P60_DISCOUNT_FIXED'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P60_TYPE'
,p_client_condition_expression=>'Percent'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16854916800755935)
,p_event_id=>wwv_flow_imp.id(16854692965755932)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P60_DISCOUNT_PERCENT'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P60_TYPE'
,p_client_condition_expression=>'Percent'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16854846753755934)
,p_event_id=>wwv_flow_imp.id(16854692965755932)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P60_DISCOUNT_PERCENT'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P60_TYPE'
,p_client_condition_expression=>'Fixed'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16855086158755936)
,p_event_id=>wwv_flow_imp.id(16854692965755932)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P60_DISCOUNT_FIXED'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P60_TYPE'
,p_client_condition_expression=>'Fixed'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16855132218755937)
,p_event_id=>wwv_flow_imp.id(16854692965755932)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P60_DISCOUNT_PERCENT'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P60_TYPE'
,p_client_condition_expression=>'Fixed'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16855246730755938)
,p_event_id=>wwv_flow_imp.id(16854692965755932)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P60_DISCOUNT_FIXED'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P60_TYPE'
,p_client_condition_expression=>'Percent'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16855903120755945)
,p_name=>'Disable Menu Buttons When View'
,p_event_sequence=>290
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_cond=>'P60_PAGE_STATUS'
,p_display_when_cond2=>'v'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16856065703755946)
,p_event_id=>wwv_flow_imp.id(16855903120755945)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(16853539414755921)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16942084176657805)
,p_event_id=>wwv_flow_imp.id(16855903120755945)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(16853539414755921)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16856177270755947)
,p_event_id=>wwv_flow_imp.id(16855903120755945)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(15414266065384230)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16942118206657806)
,p_event_id=>wwv_flow_imp.id(16855903120755945)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(15414266065384230)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16941776064657802)
,p_name=>'Disable Menu Buttons When Add'
,p_event_sequence=>300
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_cond=>'P60_PAGE_STATUS'
,p_display_when_cond2=>'a'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16943711661657822)
,p_event_id=>wwv_flow_imp.id(16941776064657802)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(16856269513755948)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16942219646657807)
,p_event_id=>wwv_flow_imp.id(16941776064657802)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(16856269513755948)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16942506484657810)
,p_event_id=>wwv_flow_imp.id(16941776064657802)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP60KeysCrud();',
'$x(''P60_DISCOUNT_NAME'').focus();',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16943327178657818)
,p_name=>'Disable Menu Buttons When Update'
,p_event_sequence=>310
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_cond=>'P60_PAGE_STATUS'
,p_display_when_cond2=>'u'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16943413503657819)
,p_event_id=>wwv_flow_imp.id(16943327178657818)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(16856269513755948)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16943527127657820)
,p_event_id=>wwv_flow_imp.id(16943327178657818)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(16856269513755948)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16943623079657821)
,p_event_id=>wwv_flow_imp.id(16943327178657818)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP60KeysCrud();',
'$x(''P60_DISCOUNT_NAME'').focus();',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16856335743755949)
,p_name=>'Open Discount List Button'
,p_event_sequence=>320
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(16856269513755948)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16856410034755950)
,p_event_id=>wwv_flow_imp.id(16856335743755949)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(15782991626117646)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16941615811657801)
,p_event_id=>wwv_flow_imp.id(16856335743755949)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP60KeysDL();',
'$("#discount-list_ig_grid_vc .a-GV-bdy .a-GV-w-scroll .a-GV-table tbody .a-GV-cell").first().trigger("click");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16942727158657812)
,p_name=>'Selection Change'
,p_event_sequence=>330
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(15969399691037501)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16942891927657813)
,p_event_id=>wwv_flow_imp.id(16942727158657812)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (this.data.selectedRecords.length > 0) {',
'    let itemNoSelected = this.data.selectedRecords[0][0];',
'    apex.item("P60_SELECTED_ID").setValue(itemNoSelected);',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16943087739657815)
,p_name=>'Update Discount'
,p_event_sequence=>340
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(15970236081037510)
,p_condition_element=>'P60_SELECTED_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16943123301657816)
,p_event_id=>wwv_flow_imp.id(16943087739657815)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P60_PREPARED_URL := apex_page.get_url(',
'       p_page   => 60,',
'       p_items  => ''P60_CUSTOMER_ID,P60_DISCOUNT_ID,P60_PAGE_STATUS'',',
'       p_values => :P60_CUSTOMER_ID || '','' || :P60_SELECTED_ID || '','' || ''u''',
'     );',
'END;'))
,p_attribute_02=>'P60_SELECTED_ID,P60_CUSTOMER_ID'
,p_attribute_03=>'P60_PREPARED_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16943297915657817)
,p_event_id=>wwv_flow_imp.id(16943087739657815)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P60_PREPARED_URL");',
'apex.navigation.redirect(url);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16946412505657849)
,p_name=>'Open Item Categories Validation Modal'
,p_event_sequence=>350
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'itemCategoriesValidation'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16946561462657850)
,p_event_id=>wwv_flow_imp.id(16946412505657849)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(17189792456817101)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17189815504817102)
,p_event_id=>wwv_flow_imp.id(16946412505657849)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mapP60KeysExit();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(17189901194817103)
,p_name=>'Close Item Categories Validation Modal'
,p_event_sequence=>360
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'itemCategoriesValidationClose'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17190027057817104)
,p_event_id=>wwv_flow_imp.id(17189901194817103)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(17189792456817101)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(17190818889817112)
,p_name=>'Redirect to Add'
,p_event_sequence=>370
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'reloadToAdd'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17190970012817113)
,p_event_id=>wwv_flow_imp.id(17190818889817112)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P60_PREPARED_URL := apex_page.get_url(',
'       p_page   => 60,',
'       p_items  => ''P60_CUSTOMER_ID,P60_PAGE_STATUS'',',
'       p_values => :P60_CUSTOMER_ID || '',''  || ''a''',
'     );',
'END;'))
,p_attribute_02=>'P60_CUSTOMER_ID'
,p_attribute_03=>'P60_PREPARED_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17191027980817114)
,p_event_id=>wwv_flow_imp.id(17190818889817112)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P60_PREPARED_URL");',
'apex.navigation.redirect(url);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(17191158694817115)
,p_name=>'Add Discount'
,p_event_sequence=>380
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(15970166515037509)
,p_condition_element=>'P60_CUSTOMER_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17191251246817116)
,p_event_id=>wwv_flow_imp.id(17191158694817115)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var discountListRowCount = apex.region("discount-list").widget()',
'        .interactiveGrid("getViews", "grid")',
'        .model.getTotalRecords();',
'        ',
'if(discountListRowCount >= 4){',
'    $.event.trigger("openDiscountListMax");',
'} else {',
'    $.event.trigger("reloadToAdd");',
'}',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(17191365940817117)
,p_name=>'Open Discount List Reached Max'
,p_event_sequence=>390
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'openDiscountListMax'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17194630574817150)
,p_event_id=>wwv_flow_imp.id(17191365940817117)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(15782991626117646)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17191413026817118)
,p_event_id=>wwv_flow_imp.id(17191365940817117)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(17191529205817119)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17191828112817122)
,p_event_id=>wwv_flow_imp.id(17191365940817117)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mapP60KeysReachedMax();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(17191954126817123)
,p_name=>'Remove Discount'
,p_event_sequence=>410
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(15970058212037508)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17192030221817124)
,p_event_id=>wwv_flow_imp.id(17191954126817123)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    DELETE FROM NPT029 WHERE DISCOUNT_ID = :P60_SELECTED_ID;',
'    DELETE FROM NPT028 WHERE DISCOUNT_ID = :P60_SELECTED_ID;',
'    DELETE FROM NPT030 WHERE DISCOUNT_ID = :P60_SELECTED_ID;',
'    DELETE FROM NPT008 WHERE DISCOUNT_ID = :P60_SELECTED_ID;',
'END;'))
,p_attribute_02=>'P60_DISCOUNT_ID,P60_SELECTED_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17192170110817125)
,p_event_id=>wwv_flow_imp.id(17191954126817123)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(30877022824364214)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17192209246817126)
,p_event_id=>wwv_flow_imp.id(17191954126817123)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(15969399691037501)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18079629036113201)
,p_name=>'Yes Remove Discount'
,p_event_sequence=>420
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(17194594217817149)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18079833731113203)
,p_event_id=>wwv_flow_imp.id(18079629036113201)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(17191529205817119)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18079792734113202)
,p_event_id=>wwv_flow_imp.id(18079629036113201)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(15782991626117646)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18080222425113207)
,p_event_id=>wwv_flow_imp.id(18079629036113201)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mapP60KeysDL();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18079945931113204)
,p_name=>'No Close Region'
,p_event_sequence=>430
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(17194401387817148)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18080083279113205)
,p_event_id=>wwv_flow_imp.id(18079945931113204)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(17191529205817119)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18080187685113206)
,p_event_id=>wwv_flow_imp.id(18079945931113204)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mapP60KeysView()'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18084333738113248)
,p_name=>'Clear Discount Value'
,p_event_sequence=>440
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P60_TYPE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18084416657113249)
,p_event_id=>wwv_flow_imp.id(18084333738113248)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P60_DISCOUNT_VALUE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(16322417265824705)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(15972324377037531)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Item Dept Grid - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
,p_internal_uid=>16322417265824705
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(16853480619755920)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Process form Add Discount'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_discount_id NPT008.DISCOUNT_ID%type;',
'BEGIN',
'    INSERT INTO NPT008(',
'        DISCOUNT_NAME,',
'        CUSTOMER_ID,',
'        TYPE,',
'        DISCOUNT_VALUE,',
'        DATE_FROM,',
'        DATE_TO,',
'        USER_CREATED,',
'        DATE_CREATED',
'    )',
'    VALUES(',
'        :P60_DISCOUNT_NAME,',
'        :P60_CUSTOMER_ID,',
'        :P60_TYPE,',
'        :P60_DISCOUNT_VALUE,',
'        -- CASE WHEN :P60_TYPE = ''Percent''',
'        --     THEN :P60_DISCOUNT_PERCENT',
'        --     ELSE :P60_DISCOUNT_FIXED',
'        -- END,',
'        :P60_DATE_FROM,',
'        :P60_DATE_TO,',
'        v(''APP_USER''),',
'        SYSDATE',
'    )',
'    RETURNING DISCOUNT_ID INTO l_discount_id;',
'',
'    FOR d IN (',
'        SELECT N001',
'            FROM APEX_COLLECTIONS',
'        WHERE COLLECTION_NAME=''ITEMDEPT''',
'    ) LOOP',
'        INSERT INTO NPT029 ( DISCOUNT_ID, DEPT_ID )',
'        VALUES ( l_discount_id, d.N001 );',
'    END LOOP;',
'',
'    FOR s IN (',
'        SELECT N001',
'            FROM APEX_COLLECTIONS',
'        WHERE COLLECTION_NAME=''ITEMSIC''',
'    ) LOOP',
'        INSERT INTO NPT028 ( DISCOUNT_ID, SIC_ID )',
'        VALUES ( l_discount_id, s.N001 );',
'    END LOOP;',
'',
'    FOR c IN (',
'        SELECT N001',
'            FROM APEX_COLLECTIONS',
'        WHERE COLLECTION_NAME=''ITEMCLASS''',
'    ) LOOP',
'        INSERT INTO NPT030 ( DISCOUNT_ID, CLASS_ID )',
'        VALUES ( l_discount_id, c.N001 );',
'    END LOOP;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P60_DISCOUNT_ID'
,p_process_when_type=>'ITEM_IS_NULL'
,p_process_success_message=>'Discount Successfully Added.'
,p_internal_uid=>16853480619755920
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(16944205537657827)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Process form Update Discount'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'BEGIN',
'    UPDATE NPT008 SET',
'        DISCOUNT_NAME = :P60_DISCOUNT_NAME,',
'        TYPE = :P60_TYPE,',
'        DISCOUNT_VALUE = :P60_DISCOUNT_VALUE,',
'            -- CASE WHEN :P60_TYPE = ''Percent''',
'            --     THEN :P60_DISCOUNT_PERCENT',
'            --     ELSE :P60_DISCOUNT_FIXED',
'            -- END,',
'        DATE_FROM = :P60_DATE_FROM,',
'        DATE_TO = :P60_DATE_TO,',
'        USER_UPDATE = v(''APP_USER''),',
'        DATE_UPDATED = SYSDATE',
'    WHERE DISCOUNT_ID = :P60_DISCOUNT_ID;',
'',
'    DELETE FROM NPT029 ',
'    WHERE DISCOUNT_ID = :P60_DISCOUNT_ID AND DEPT_ID NOT IN (',
'        SELECT N001',
'            FROM APEX_COLLECTIONS',
'        WHERE COLLECTION_NAME=''ITEMDEPT''',
'    );',
'    DELETE FROM NPT028 ',
'    WHERE DISCOUNT_ID = :P60_DISCOUNT_ID AND SIC_ID NOT IN (',
'        SELECT N001',
'            FROM APEX_COLLECTIONS',
'        WHERE COLLECTION_NAME=''ITEMSIC''',
'    );',
'    DELETE FROM NPT030 ',
'    WHERE DISCOUNT_ID = :P60_DISCOUNT_ID AND CLASS_ID NOT IN (',
'        SELECT N001',
'            FROM APEX_COLLECTIONS',
'        WHERE COLLECTION_NAME=''ITEMCLASS''',
'    );',
'',
'    FOR d IN (',
'        SELECT N001',
'            FROM APEX_COLLECTIONS',
'        WHERE COLLECTION_NAME=''ITEMDEPT''',
'    ) LOOP',
'        INSERT INTO NPT029 ( DISCOUNT_ID, DEPT_ID )',
'        SELECT :P60_DISCOUNT_ID, d.N001 FROM DUAL',
'        WHERE NOT EXISTS( ',
'            SELECT 1 FROM NPT029',
'            WHERE DISCOUNT_ID = :P60_DISCOUNT_ID AND DEPT_ID = d.N001',
'        );',
'    END LOOP;',
'    FOR s IN (',
'        SELECT N001',
'            FROM APEX_COLLECTIONS',
'        WHERE COLLECTION_NAME=''ITEMSIC''',
'    ) LOOP',
'        INSERT INTO NPT028 ( DISCOUNT_ID, SIC_ID )',
'        SELECT :P60_DISCOUNT_ID, s.N001 FROM DUAL',
'        WHERE NOT EXISTS( ',
'            SELECT 1 FROM NPT028',
'            WHERE DISCOUNT_ID = :P60_DISCOUNT_ID AND SIC_ID = s.N001',
'        );',
'    END LOOP;',
'    FOR c IN (',
'        SELECT N001',
'            FROM APEX_COLLECTIONS',
'        WHERE COLLECTION_NAME=''ITEMCLASS''',
'    ) LOOP',
'        INSERT INTO NPT030 ( DISCOUNT_ID, CLASS_ID )',
'        SELECT :P60_DISCOUNT_ID, c.N001 FROM DUAL',
'        WHERE NOT EXISTS( ',
'            SELECT 1 FROM NPT030',
'            WHERE DISCOUNT_ID = :P60_DISCOUNT_ID AND CLASS_ID = c.N001',
'        );',
'    END LOOP;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P60_DISCOUNT_ID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_process_success_message=>'Discount Successfully Updated.'
,p_internal_uid=>16944205537657827
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(15411340767384201)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(15147238558750650)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Customer Readonly'
,p_internal_uid=>15411340767384201
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(15412173611384209)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(15412061377384208)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Customer Discount Form'
,p_internal_uid=>15412173611384209
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(16322830630824709)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'IDL_SEARCH'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    -- f01_to_number DEPT_ID_TYPE;',
'    CURSOR c_dept IS ',
'    SELECT DEPT_ID, DEPT_NAME',
'    FROM NIM024',
'    WHERE UPPER(DEPT_NAME) LIKE ''%'' || UPPER(APEX_APPLICATION.g_x01) || ''%'';',
'    -- AND',
'    --     DEPT_ID NOT IN( SELECT TO_NUMBER(''*'' DEFAULT 0 ON CONVERSION ERROR) VALUE FROM TABLE(APEX_APPLICATION.g_f01) );',
'BEGIN',
'    -- FOR i in 1..APEX_APPLICATION.G_F01.COUNT LOOP',
'    --     f01_to_number(i) := TO_NUMBER(APEX_APPLICATION.g_f01(i));',
'    -- END LOOP;',
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
,p_internal_uid=>16322830630824709
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(16325025833824731)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'IDL_REMOVE_UNCHECKED'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    CURSOR c_dept IS ',
'    SELECT n001, c001',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''ITEMDEPTLIST'';',
'BEGIN',
'    APEX_COLLECTION.TRUNCATE_COLLECTION (''ITEMDEPT'');',
'    FOR i in 1..APEX_APPLICATION.g_f01.COUNT LOOP',
'        APEX_COLLECTION.DELETE_MEMBER(',
'            p_collection_name => ''ITEMDEPTLIST'',',
'            p_seq => TO_NUMBER(APEX_APPLICATION.g_f01(i))',
'        );',
'    END LOOP;',
'    -- APEX_COLLECTION.RESEQUENCE_COLLECTION (''ITEMDEPTLIST'');',
'    FOR c IN c_dept LOOP',
'        apex_collection.add_member (p_collection_name => ''ITEMDEPT'',',
'            p_n001 => c.n001,',
'            p_c001 => c.c001',
'        );',
'    END LOOP;',
'    APEX_COLLECTION.RESEQUENCE_COLLECTION (''ITEMDEPT'');',
'    -- APEX_COLLECTION.TRUNCATE_COLLECTION (''ITEMDEPTLIST'');',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>16325025833824731
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(16828735682409821)
,p_process_sequence=>30
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ISL_SEARCH'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    -- f01_to_number DEPT_ID_TYPE;',
'    CURSOR c_sic IS ',
'    SELECT SIC_ID, SIC_NAME',
'    FROM NIM023',
'    WHERE UPPER(SIC_NAME) LIKE ''%'' || UPPER(APEX_APPLICATION.g_x01) || ''%'';',
'    -- AND',
'    --     DEPT_ID NOT IN( SELECT TO_NUMBER(''*'' DEFAULT 0 ON CONVERSION ERROR) VALUE FROM TABLE(APEX_APPLICATION.g_f01) );',
'BEGIN',
'    -- FOR i in 1..APEX_APPLICATION.G_F01.COUNT LOOP',
'    --     f01_to_number(i) := TO_NUMBER(APEX_APPLICATION.g_f01(i));',
'    -- END LOOP;',
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
,p_internal_uid=>16828735682409821
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(16828849084409822)
,p_process_sequence=>50
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ISL_REMOVE_UNCHECKED'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    CURSOR c_sic IS ',
'    SELECT n001, c001',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''ITEMSICLIST'';',
'BEGIN',
'    APEX_COLLECTION.TRUNCATE_COLLECTION (''ITEMSIC'');',
'    FOR i in 1..APEX_APPLICATION.g_f01.COUNT LOOP',
'        APEX_COLLECTION.DELETE_MEMBER(',
'            p_collection_name => ''ITEMSICLIST'',',
'            p_seq => TO_NUMBER(APEX_APPLICATION.g_f01(i))',
'        );',
'    END LOOP;',
'    -- APEX_COLLECTION.RESEQUENCE_COLLECTION (''ITEMSICLIST'');',
'    FOR c IN c_sic LOOP',
'        apex_collection.add_member (p_collection_name => ''ITEMSIC'',',
'            p_n001 => c.n001,',
'            p_c001 => c.c001',
'        );',
'    END LOOP;',
'    APEX_COLLECTION.RESEQUENCE_COLLECTION (''ITEMDEPT'');',
'    -- APEX_COLLECTION.TRUNCATE_COLLECTION (''ITEMSICLIST'');',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>16828849084409822
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(16853128156755917)
,p_process_sequence=>60
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ICL_SEARCH'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    -- f01_to_number DEPT_ID_TYPE;',
'    CURSOR c_class IS ',
'    SELECT CLASS_ID, CLASS_NAME',
'    FROM NIM025',
'    WHERE UPPER(CLASS_NAME) LIKE ''%'' || UPPER(APEX_APPLICATION.g_x01) || ''%'';',
'    -- AND',
'    --     DEPT_ID NOT IN( SELECT TO_NUMBER(''*'' DEFAULT 0 ON CONVERSION ERROR) VALUE FROM TABLE(APEX_APPLICATION.g_f01) );',
'BEGIN',
'    -- FOR i in 1..APEX_APPLICATION.G_F01.COUNT LOOP',
'    --     f01_to_number(i) := TO_NUMBER(APEX_APPLICATION.g_f01(i));',
'    -- END LOOP;',
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
,p_internal_uid=>16853128156755917
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(16853274824755918)
,p_process_sequence=>70
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ICL_REMOVE_UNCHECKED'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    CURSOR c_class IS ',
'    SELECT n001, c001',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''ITEMCLASSLIST'';',
'BEGIN',
'    APEX_COLLECTION.TRUNCATE_COLLECTION (''ITEMCLASS'');',
'    FOR i in 1..APEX_APPLICATION.g_f01.COUNT LOOP',
'        APEX_COLLECTION.DELETE_MEMBER(',
'            p_collection_name => ''ITEMCLASSLIST'',',
'            p_seq => TO_NUMBER(APEX_APPLICATION.g_f01(i))',
'        );',
'    END LOOP;',
'    -- APEX_COLLECTION.RESEQUENCE_COLLECTION (''ITEMCLASSLIST'');',
'    FOR c IN c_class LOOP',
'        apex_collection.add_member (p_collection_name => ''ITEMCLASS'',',
'            p_n001 => c.n001,',
'            p_c001 => c.c001',
'        );',
'    END LOOP;',
'    APEX_COLLECTION.RESEQUENCE_COLLECTION (''ITEMCLASS'');',
'    -- APEX_COLLECTION.TRUNCATE_COLLECTION (''ITEMCLASSLIST'');',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>16853274824755918
);
wwv_flow_imp.component_end;
end;
/
