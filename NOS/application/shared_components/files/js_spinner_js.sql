prompt --application/shared_components/files/js_spinner_js
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
wwv_flow_imp.g_varchar2_table(1) := '6C657420677370696E6E6572203D206E756C6C3B0D0A0D0A66756E6374696F6E206F70656E5370696E6E65722829207B0D0A20202020677370696E6E6572203D20617065782E7769646765742E77616974506F70757028293B0D0A7D0D0A0D0A66756E63';
wwv_flow_imp.g_varchar2_table(2) := '74696F6E20636C6F73655370696E6E65722829207B0D0A20202020677370696E6E65722E72656D6F766528293B0D0A20202020677370696E6E6572203D206E756C6C3B0D0A7D';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(41851107945272596)
,p_file_name=>'js/spinner.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/
