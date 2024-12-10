prompt --application/shared_components/logic/application_processes/get_hash
begin
--   Manifest
--     APPLICATION PROCESS: GET_HASH
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>4200484135045687
,p_default_application_id=>100
,p_default_id_offset=>0
,p_default_owner=>'NOS'
);
wwv_flow_imp_shared.create_flow_process(
 p_id=>wwv_flow_imp.id(17171071008592089)
,p_process_sequence=>1
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_HASH'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_rep_name      VARCHAR2(100) := apex_application.g_x01;',
'    v_format        VARCHAR2(50)  := apex_application.g_x02;',
'    v_filename      VARCHAR2(300) := apex_application.g_x03;',
'',
'    v_hash          VARCHAR2(300);',
'    v_usign         VARCHAR2(300);',
'begin',
'    v_hash := sys.dbms_crypto.hash(utl_raw.cast_to_raw(v(''APP_SIGN'') || v_rep_name || v_format || v_filename || :APP_USER), sys.dbms_crypto.hash_sh256);',
'    v_usign := :APP_USER;',
'',
'    apex_json.open_object;',
'    apex_json.write(''h'', v_hash);',
'    apex_json.write(''u'', v_usign);',
'    apex_json.close_object;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_security_scheme=>'MUST_NOT_BE_PUBLIC_USER'
,p_version_scn=>90046149
);
wwv_flow_imp.component_end;
end;
/
