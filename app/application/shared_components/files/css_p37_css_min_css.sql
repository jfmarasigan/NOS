prompt --application/shared_components/files/css_p37_css_min_css
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
wwv_flow_imp.g_varchar2_table(1) := '2E6572726F722D746578747B636F6C6F723A7265647D2E6572726F722D746578742C2E666F726D61742D73697A657B666F6E742D73697A653A312E31323572656D3B666F6E742D66616D696C793A417269616C7D';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(17130561647433540)
,p_file_name=>'css/p37_css.min.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/
