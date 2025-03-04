prompt --application/pages/page_00222
begin
--   Manifest
--     PAGE: 00222
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
 p_id=>222
,p_name=>'Utilities Menu'
,p_alias=>'UTILITIES-MENU'
,p_step_title=>'Utilities Menu'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#js/cmn#MIN#.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p222KeyMap = {',
'    escape : (v) => {',
'        $("#exit").click();',
'    },',
'    s : (v) => {',
'        $("#s").click();',
'    },',
'    u : (v) => {',
'        $("#user").click();',
'    }',
'}',
'',
'function mapP222Keys() {',
'    $(document).off(''keydown.p222keyevents'');',
'    $(document).on(''keydown.p222keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p222KeyMap[key]) {',
'            ev.preventDefault();',
'            p222KeyMap[key]();',
'        }',
'    });',
'}',
''))
,p_javascript_code_onload=>'mapP222Keys();'
,p_css_file_urls=>'#APP_FILES#css/menu#MIN#.css'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Header .t-Header-branding {',
'    background-color: white !important;',
'    color: rgb(30, 58, 138) !important;',
'}',
' ',
'body {',
'    background-color: rgb(30, 58, 138);',
'}',
'',
'.main-menu-header {',
'    margin-top: none;',
'    margin-block-start: 2rem;',
'}',
'',
'.menu-instruction {',
'    margin-block-start: 3rem;',
'}',
'',
'/* #menu-btns .row:nth-child(even) {',
'    height: 1rem',
'} */',
'',
'#exit {',
'    display: none;',
'}'))
,p_step_template=>wwv_flow_imp.id(5671392681337017)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(48534502507075742)
,p_plug_name=>'Header'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>20
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(48534720256075744)
,p_plug_name=>'Buttons'
,p_region_name=>'menu-btns'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>30
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(48534844483075745)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(48534720256075744)
,p_button_name=>'Systems_Options'
,p_button_static_id=>'s'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--noUI:t-Button--stretch:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>S</u> - Systems Options Utilities'
,p_button_redirect_url=>'f?p=&APP_ID.:160:&SESSION.::&DEBUG.:::'
,p_button_condition=>'has_access(:APP_USER, 28, 116) = ''Y'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_grid_new_row=>'Y'
,p_grid_column_span=>4
,p_grid_column=>5
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(48534906646075746)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(48534720256075744)
,p_button_name=>'User_Options'
,p_button_static_id=>'user'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--noUI:t-Button--stretch:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>U</u> - User Access Utilities'
,p_button_redirect_url=>'f?p=&APP_ID.:217:&SESSION.::&DEBUG.:::'
,p_button_condition=>'has_access(:APP_USER, 27, 110) = ''Y'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_grid_new_row=>'Y'
,p_grid_column_span=>4
,p_grid_column=>5
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(48535099164075747)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(48534720256075744)
,p_button_name=>'Exit'
,p_button_static_id=>'exit'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--noUI:t-Button--stretch:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'-'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'Y'
,p_grid_column_span=>4
,p_grid_column=>5
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48534672476075743)
,p_name=>'P222_NEW'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(48534502507075742)
,p_item_default=>'Utilities'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>4
,p_grid_column=>5
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_css_classes=>'p-header'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp.component_end;
end;
/
