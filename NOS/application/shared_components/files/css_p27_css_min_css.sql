prompt --application/shared_components/files/css_p27_css_min_css
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
wwv_flow_imp.g_varchar2_table(1) := '2E742D4469616C6F677B6261636B67726F756E642D636F6C6F723A233035366163383B6C6566743A31257D2E742D4469616C6F672D626F64797B70616464696E672D746F703A307D23657869747B636F6C6F723A236666663B666F6E742D73697A653A31';
wwv_flow_imp.g_varchar2_table(2) := '2E31323572656D3B666F6E742D66616D696C793A417269616C3B626F726465723A307D23657869743A666F6375737B6F75746C696E653A307D7461626C652C74642C74682C74727B666F6E742D73697A653A312E31323572656D3B666F6E742D66616D69';
wwv_flow_imp.g_varchar2_table(3) := '6C793A417269616C7D2E666F726D61742D73697A657B666F6E742D73697A653A312E31323572656D3B636F6C6F723A236666667D2E742D526567696F6E2D626F64797B70616464696E672D746F703A307D';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(38711173201240976)
,p_file_name=>'css/p27_css.min.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/
