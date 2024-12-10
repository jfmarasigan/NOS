prompt --application/shared_components/security/authentications/nos_authentication
begin
--   Manifest
--     AUTHENTICATION: NOS Authentication
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>4200484135045687
,p_default_application_id=>100
,p_default_id_offset=>0
,p_default_owner=>'NOS'
);
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(5653247844266906)
,p_name=>'NOS Authentication'
,p_scheme_type=>'NATIVE_CUSTOM'
,p_attribute_03=>'nos_authentication_pkg.nos_authentication'
,p_attribute_05=>'N'
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'procedure post_auth',
'as',
'    l_workspace_id number;',
'begin',
'    select workspace_id',
'      into l_workspace_id',
'      from apex_workspaces',
'     where workspace = (select workspace',
'                          from apex_applications',
'                         where application_id = :APP_ID);',
'',
'    for session_rec in (select apex_session_id',
'                          from apex_workspace_sessions',
'                         where workspace_id = l_workspace_id',
'                           and user_name = :APP_USER',
'                           and apex_session_id != :APP_SESSION)',
'    loop',
'        apex_session.delete_session(p_session_id => session_rec.apex_session_id);',
'    end loop;',
'end post_auth;'))
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>25727934
);
wwv_flow_imp.component_end;
end;
/
