prompt --application/pages/page_00160
begin
--   Manifest
--     PAGE: 00160
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
 p_id=>160
,p_name=>'Utilities'
,p_alias=>'UTILITIES'
,p_step_title=>'Utilities'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#js/cmn#MIN#.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p160KeyMap = {',
'    escape : (v) => {',
'        $("#exit").click();',
'    },',
'    f8 : (v) => {',
'        $("#proceed").click();',
'    }',
'',
'}',
'',
'',
'function mapP160Keys() {',
'    $(document).off(''keydown.p160keyevents'');',
'    $(document).on(''keydown.p160keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p160KeyMap[key]) {',
'            ev.preventDefault();',
'            p160KeyMap[key]();',
'        }',
'    });',
'}',
'',
''))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP160Keys();',
'',
'setTitle("Utilities")',
'$x("P160_MODULE").focus()',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'body, #buttons-region {',
'    background-color: rgb(30, 58, 138);',
'}',
'',
'.t-Header .t-Header-branding {',
'    background-color: white !important;',
'    color: rgb(30, 58, 138) !important;',
'}',
'',
'.t-Form-labelContainer .t-Form-label::before {',
'    content: '''' !important; /* Remove the asterisk before the label */',
'}',
'',
'',
'#list-container label, #list-container input, #list-container .apex-item-display-only{',
'    font-size: 1.125rem;',
'}',
'',
'.buttons-row {',
'    position: absolute;',
'    width: 98vw;',
'    bottom: 1rem;',
'}',
'',
'.btns {',
'    font-size: 1.125rem;',
'    color: white;',
'}',
'',
'.hiddenbtn, .a-GV-loadMore, .icon-search {',
'    display: none;',
'}',
'',
'.ui-dialog{',
'    border: none; ',
'    border-radius: 0; ',
'}',
'',
'.a-PopupLOV-search {',
'    padding: 0.2rem !important;',
'    /* padding-inline-start: unset !important; */',
'    font-size: 1.125rem !important;',
'}',
'',
'.a-IconList-item, .a-PopupLOV-search {',
'    font-size: 1.125rem !important;',
'}'))
,p_step_template=>wwv_flow_imp.id(5671392681337017)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19848021186977044)
,p_plug_name=>'List'
,p_region_name=>'list-container'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>30
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19848327181977047)
,p_plug_name=>'Button'
,p_region_name=>'buttons-region'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>40
,p_plug_grid_row_css_classes=>'buttons-row'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19848426521977048)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(19848327181977047)
,p_button_name=>'Proceed'
,p_button_static_id=>'proceed'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>F8</u> - Proceed'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns'
,p_grid_new_row=>'Y'
,p_grid_column_span=>2
,p_grid_column=>6
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19848632901977050)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(19848327181977047)
,p_button_name=>'Exit'
,p_button_static_id=>'exit'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Exit'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'hiddenbtn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19848188919977045)
,p_name=>'P160_MODULE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(19848021186977044)
,p_prompt=>'Module<span style="color:red;">*</span>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT n011.screen',
'FROM NIM036 n036',
'JOIN NPM011 n011 ON n036.module_id = n011.module_id;',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>3
,p_grid_column=>5
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382365997084278)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19848280861977046)
,p_name=>'P160_TYPE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(19848021186977044)
,p_prompt=>'Type<span style="color:red;">*</span>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT n036.table_name',
'FROM NIM036 n036',
'JOIN NPM011 n011 ON n036.module_id = n011.module_id',
'WHERE UPPER(n011.screen) = UPPER(:P160_MODULE)',
''))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P160_MODULE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_colspan=>3
,p_grid_column=>5
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382365997084278)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37727917784533415)
,p_name=>'P160_PREPARED_URL'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37727727949533413)
,p_name=>'Click Proceed'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(19848426521977048)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37727867901533414)
,p_event_id=>wwv_flow_imp.id(37727727949533413)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let targetPage;',
'apex.message.clearErrors();',
'',
'if ($v(''P160_MODULE'') === "Item Masterfile") {',
'    switch ($v(''P160_TYPE'')) {',
'        case null:',
'            apex.message.showErrors({',
'            type: "error",',
'            location: "inline",',
'            pageItem: "P160_TYPE",',
'            message: "Type can not be empty"',
'        });',
'        return;',
'        case "Department":',
'            targetPage = 161;',
'            break;',
'        case "Brand":',
'            targetPage = 165;',
'            break;',
'        case "SIC":',
'            targetPage = 168',
'            break;',
'        case "UOM":',
'            targetPage = 171',
'            break;',
'        case "Class":',
'            targetPage = 174',
'            break;',
'        default :',
'            apex.message.showErrors({',
'            type: "error",',
'            location: "inline",',
'            pageItem: "P160_TYPE",',
'            message: "Invalid type."',
'        });',
'        return;',
'    }',
'} else if ($v(''P160_MODULE'') === "Review Purchase Orders") {',
'    targetPage = 1;',
'} else if ($v(''P160_MODULE'') === "Update Inventory Balance") {',
'    targetPage = 1;',
'} else {',
'    apex.message.showErrors({',
'        type: "error",',
'        location: "inline",',
'        pageItem: "P160_MODULE",',
'        message: "Invalid module"',
'    });',
'    return;',
'}',
'',
'',
'',
'',
'let url = `f?p=&APP_ID.:${targetPage}:&APP_SESSION.`;',
'',
'apex.navigation.redirect(url);'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(37728134391533417)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Session'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_internal_uid=>37728134391533417
);
wwv_flow_imp.component_end;
end;
/
