prompt --application/pages/page_09999
begin
--   Manifest
--     PAGE: 09999
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
 p_id=>9999
,p_name=>'Login Page'
,p_alias=>'LOGIN'
,p_step_title=>'NOS - Log In'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* div[aria-labelledby="login-form_heading"] {',
'    margin-right: 1rem;',
'}',
'',
'.t-Login-containerBody .row {',
'    align-items: center;',
'} */',
'',
'body {',
'    background-color: rgb(30, 58, 138);',
'}',
'',
'#img-1 {',
'    display: flex;',
'    justify-content: center;',
'}',
'',
'.t-Login-region {',
'    /* width: 50%; */',
'    background-color: hsla(0,0%,100%);',
'    border: 2px solid black; ',
'    border-radius: 12px; ',
'    box-shadow: 0 10px 10px -4px rgba(0, 0, 0, 0.2);',
'}',
'',
'.t-Login-body input {',
'    font-size: 1.5rem;',
'}',
'',
'.t-Login-buttons button {',
'    font-size: 1.5rem;',
'    line-height: normal;',
'}',
'',
'.comp-name {',
'    width: 75%;',
'    margin-inline-start: auto;',
'    margin-inline-end: auto;',
'    display: flex;',
'    justify-content: center;',
'    font-size: 4rem;',
'    margin-block-end: 1rem;',
'}',
'',
'/* .apex-item-wrapper--has-icon {',
'    --ut-field-input-icon-offset: 3.5rem;',
'} */'))
,p_step_template=>wwv_flow_imp.id(4224420124083982)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'12'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4502054016084860)
,p_plug_name=>'NOS'
,p_region_name=>'login-form'
,p_region_css_classes=>'.login-form'
,p_region_template_options=>'#DEFAULT#:t-Login-region--headerHidden js-removeLandmark'
,p_plug_template=>wwv_flow_imp.id(4304399837084134)
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>12
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5664380420316322)
,p_plug_name=>'Image'
,p_region_name=>'img-1'
,p_parent_plug_id=>wwv_flow_imp.id(4502054016084860)
,p_region_template_options=>'#DEFAULT#:t-ImageRegion--auto:t-ImageRegion--cover:t-ImageRegion--square:t-ImageRegion--noFilter:margin-bottom-md'
,p_plug_template=>wwv_flow_imp.id(4254771719084042)
,p_plug_display_sequence=>10
,p_location=>null
,p_region_image=>'#APP_FILES#images/CPI_logo.jpg'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16265438670399115)
,p_plug_name=>'Text'
,p_parent_plug_id=>wwv_flow_imp.id(4502054016084860)
,p_plug_display_sequence=>20
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="comp-name">',
'National Office Supply',
'</div>'))
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16265354818399114)
,p_plug_name=>'Image'
,p_region_template_options=>'#DEFAULT#:t-ImageRegion--auto:t-ImageRegion--cover:t-ImageRegion--square:t-ImageRegion--noFilter'
,p_plug_template=>wwv_flow_imp.id(4254771719084042)
,p_plug_display_sequence=>10
,p_location=>null
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
,p_region_image=>'#APP_FILES#img/login-img2.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4503788103084890)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(4502054016084860)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'NEXT'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4502542989084881)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(4502054016084860)
,p_prompt=>'Username'
,p_placeholder=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_field_template=>wwv_flow_imp.id(4381902469084273)
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4502978705084885)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(4502054016084860)
,p_prompt=>'Password'
,p_placeholder=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="current-password"'
,p_field_template=>wwv_flow_imp.id(4381902469084273)
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4503363726084889)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(4502054016084860)
,p_prompt=>'Remember username'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_display_when=>'apex_authentication.persistent_cookies_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(4381902469084273)
,p_item_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(16265897741399119)
,p_validation_name=>'Password NOT NULL'
,p_validation_sequence=>10
,p_validation=>'P9999_PASSWORD'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Password should have a value.'
,p_associated_item=>wwv_flow_imp.id(4502978705084885)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(16265918924399120)
,p_validation_name=>'Username NOT NULL'
,p_validation_sequence=>20
,p_validation=>'P9999_USERNAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Username should have a value.'
,p_associated_item=>wwv_flow_imp.id(4502542989084881)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4505941078084903)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Set Username Cookie'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'SEND_LOGIN_USERNAME_COOKIE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>4505941078084903
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(4506475159084904)
,p_page_process_id=>wwv_flow_imp.id(4505941078084903)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>'lower( :P9999_USERNAME )'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(4506913787084904)
,p_page_process_id=>wwv_flow_imp.id(4505941078084903)
,p_page_id=>9999
,p_name=>'p_consent'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_REMEMBER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4504076781084892)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Login'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'LOGIN'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>4504076781084892
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(4504531915084898)
,p_page_process_id=>wwv_flow_imp.id(4504076781084892)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P9999_USERNAME'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(4505081688084903)
,p_page_process_id=>wwv_flow_imp.id(4504076781084892)
,p_page_id=>9999
,p_name=>'p_password'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_PASSWORD'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(4505597234084903)
,p_page_process_id=>wwv_flow_imp.id(4504076781084892)
,p_page_id=>9999
,p_name=>'p_set_persistent_auth'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'API_DEFAULT'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4507855802084906)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>4507855802084906
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4507432327084906)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>4507432327084906
);
wwv_flow_imp.component_end;
end;
/
