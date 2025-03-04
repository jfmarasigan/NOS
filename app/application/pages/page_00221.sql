prompt --application/pages/page_00221
begin
--   Manifest
--     PAGE: 00221
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
 p_id=>221
,p_name=>'Update User Password'
,p_alias=>'UPDATE-USER-PASSWORD'
,p_step_title=>'Update User Password'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#P221_NEW_PASSWORD, #P221_CONFIRM_PASSWORD")',
'    .keydown(function(e){',
'        if(',
'            e.key == " "',
'        ){',
'            return false;',
'        } else {',
'            return true;',
'        }',
'});',
'',
'const p221KeyMap = {',
'    escape : (v) => {',
'        $("#esc").trigger("click");',
'    }',
'}',
'',
'function mapP221Keys() {',
'    $(document).off(''keydown.p221keyevents'');',
'    $(document).on(''keydown.p221keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p221KeyMap[key]) {',
'            ev.preventDefault();',
'            p221KeyMap[key]();',
'        }',
'    });',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$x(''P221_NEW_PASSWORD'').focus();',
'mapP221Keys();'))
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
'.plain-text {',
'    font-size: 1.125rem;',
'}',
'',
'#form label, #form input{',
'    font-size: 1.125rem;',
'}',
'',
'.t-Form-labelContainer:has(> #P221_NEW_PASSWORD_LABEL),',
'.t-Form-labelContainer:has(> #P221_CONFIRM_PASSWORD_LABEL) {',
'    text-align: start;    ',
'}',
'',
'#enter, #esc{',
'    display: none;',
'}'))
,p_step_template=>wwv_flow_imp.id(5671392681337017)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(47182194934422128)
,p_plug_name=>'Password Form'
,p_region_name=>'form'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>30
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(47182260726422129)
,p_plug_name=>'Security Header'
,p_parent_plug_id=>wwv_flow_imp.id(47182194934422128)
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>'<h3 class="plain-text">For security reasons, you need to set your own password before proceeding</h3>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(47182560884422132)
,p_plug_name=>'Validation Header'
,p_parent_plug_id=>wwv_flow_imp.id(47182194934422128)
,p_plug_display_sequence=>50
,p_location=>null
,p_plug_source=>'<h3 class="plain-text">(Your password must meet the following requirements: minimum 8 characters, at least 1 uppercase letter, 1 number, and 1 special character.)</h3>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(58837238354496531)
,p_button_sequence=>40
,p_button_name=>'Escape'
,p_button_static_id=>'esc'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Escape'
,p_button_redirect_url=>'f?p=&APP_ID.:9999:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(47182679542422133)
,p_button_sequence=>50
,p_button_name=>'Enter'
,p_button_static_id=>'enter'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Enter'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(47183607249422143)
,p_branch_name=>'Go to Main Menu'
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47182352704422130)
,p_name=>'P221_NEW_PASSWORD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(47182194934422128)
,p_prompt=>'New Password <span style="color:red">*</span>'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47182419972422131)
,p_name=>'P221_CONFIRM_PASSWORD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(47182194934422128)
,p_prompt=>'Confirm New Password <span style="color:red">*</span>'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(47182724592422134)
,p_validation_name=>'Matching Password'
,p_validation_sequence=>10
,p_validation=>'(:P221_NEW_PASSWORD = :P221_CONFIRM_PASSWORD)'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Password does not Match. Please try again.'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_imp.id(47182419972422131)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(47182855271422135)
,p_validation_name=>'Invalid Password Length'
,p_validation_sequence=>20
,p_validation=>'P221_NEW_PASSWORD'
,p_validation2=>'^[a-zA-Z0-9~!@#$%^&*()-_+={}|\<>/?]{8,}$'
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>'Must be at least 8 Characters. Please try again.'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_imp.id(47182352704422130)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(47183065500422137)
,p_validation_name=>'Invalid Password Number'
,p_validation_sequence=>30
,p_validation=>'P221_NEW_PASSWORD'
,p_validation2=>'^.*[0-9]'
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>'Number Required. Please try again.'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_imp.id(47182352704422130)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(47183122626422138)
,p_validation_name=>'Invalid Password Upper'
,p_validation_sequence=>40
,p_validation=>'P221_NEW_PASSWORD'
,p_validation2=>'^.*[A-Z]'
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>'Uppercase Letter Required. Please try again.'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_imp.id(47182352704422130)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(47183228837422139)
,p_validation_name=>'Invalid Password Special'
,p_validation_sequence=>50
,p_validation=>'P221_NEW_PASSWORD'
,p_validation2=>'^.*[~!@#$%^&*()<>_?/\=|{}+-]'
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>'Special Character Required. Please try again.'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_imp.id(47182352704422130)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(47182959435422136)
,p_validation_name=>'Empty Password'
,p_validation_sequence=>60
,p_validation=>'P221_NEW_PASSWORD'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Password is Empty. Please try again.'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_imp.id(47182352704422130)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(47183325528422140)
,p_validation_name=>'Confirm Password is Empty'
,p_validation_sequence=>70
,p_validation=>'P221_CONFIRM_PASSWORD'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Confirm Password is Empty. Please try again.'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_imp.id(47182419972422131)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(47183566930422142)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Submit New Password'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_salt VARCHAR2(50 byte);',
'    v_hash VARCHAR2(100 char);',
'BEGIN',
'    SELECT SALT',
'    INTO v_salt',
'    FROM NPM009',
'    WHERE USER_NAME = v(''APP_USER'');',
'',
'    v_hash := nos_authentication_pkg.hash_pw(:P221_NEW_PASSWORD, v_salt);',
'',
'    UPDATE NPM009 SET',
'        PASSWORD = v_hash,',
'        IS_PASSWORD_TEMPORARY = ''N'',',
'        USER_UPDATE = v(''APP_USER''),',
'        DATE_UPDATED = SYSDATE',
'    WHERE USER_NAME = v(''APP_USER'');',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>47183566930422142
);
wwv_flow_imp.component_end;
end;
/
