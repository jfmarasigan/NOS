prompt --application/shared_components/files/js_spinner_min_js
begin
--   Manifest
--     APP STATIC FILES: 100
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>4200484135045687
,p_default_application_id=>100
,p_default_id_offset=>0
,p_default_owner=>'NOS'
);
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '6C657420677370696E6E65723D6E756C6C3B66756E6374696F6E206F70656E5370696E6E657228297B677370696E6E65723D617065782E7769646765742E77616974506F70757028297D66756E6374696F6E20636C6F73655370696E6E657228297B6773';
wwv_flow_imp.g_varchar2_table(2) := '70696E6E65722E72656D6F766528292C677370696E6E65723D6E756C6C7D';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(41852384042279078)
,p_file_name=>'js/spinner.min.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/
