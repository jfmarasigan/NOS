prompt --application/pages/page_00085
begin
--   Manifest
--     PAGE: 00085
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
 p_id=>85
,p_name=>'Create Invoice'
,p_alias=>'CREATE-INVOICE'
,p_page_mode=>'MODAL'
,p_step_title=>'Create Invoice'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#js/cmn#MIN#.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p85KeyMap = {',
'    w : (v) => {',
'        $("#w").click();',
'    },',
'    o : (v) => {',
'        $("#o").click();',
'    }',
'',
'}',
'',
'function mapP85Keys() {',
'    $(document).off(''keydown.p85keyevents'');',
'    $(document).on(''keydown.p85keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p85KeyMap[key]) {',
'            ev.preventDefault();',
'            p85KeyMap[key]();',
'        }',
'    });',
'}',
'',
'function customEvent(event, data){',
'    mapP85Keys();',
'}'))
,p_javascript_code_onload=>'mapP85Keys();'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Form-label {',
'    font-size: 1.125rem;',
'    white-space: nowrap;',
'    ',
'}',
'',
'.hiddenbtn{',
'    display: none;',
'}',
'',
'#P85_DBA {',
'    --a-field-input-flex-grow: .9;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'95'
,p_dialog_width=>'640px'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(30806815951808229)
,p_button_sequence=>30
,p_button_name=>'With'
,p_button_static_id=>'w'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<u>W</u> - With Quotation'
,p_button_redirect_url=>'f?p=&APP_ID.:88:&SESSION.::&DEBUG.:88::'
,p_button_css_classes=>'hiddenbtn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34403692026626231)
,p_name=>'P85_HIDDEN'
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37203776446281202)
,p_name=>'P85_DBA'
,p_item_sequence=>20
,p_prompt=>'DBA:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(34403455438626229)
,p_name=>'Focus'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34403553971626230)
,p_event_id=>wwv_flow_imp.id(34403455438626229)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(30806815951808229)
);
wwv_flow_imp.component_end;
end;
/