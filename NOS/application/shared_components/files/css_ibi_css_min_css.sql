prompt --application/shared_components/files/css_ibi_css_min_css
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
wwv_flow_imp.g_varchar2_table(1) := '237461626C652D777261707065727B636F6C6F723A236666663B6261636B67726F756E642D636F6C6F723A233035366163383B626F726465723A307D237461626C65312074647B666F6E742D73697A653A312E31323572656D3B636F6C6F723A23303030';
wwv_flow_imp.g_varchar2_table(2) := '7D2E636F6C6F722D777B636F6C6F723A236666667D237461626C6531207461626C652C237461626C65312074682C237461626C65312074722C2E66732D317B666F6E742D73697A653A3172656D7D2E66772D3630307B666F6E742D7765696768743A3630';
wwv_flow_imp.g_varchar2_table(3) := '307D2E6865616465727B666F6E742D73697A653A312E3572656D7D2E702D327B70616464696E673A30203172656D203172656D7D2E63656E7465722D616C69676E7B746578742D616C69676E3A63656E7465727D2E612D47562D68656164657220612C74';
wwv_flow_imp.g_varchar2_table(4) := '682E612D47562D6865616465727B636F6C6F723A233030303B666F6E742D73697A653A3172656D7D2E612D47562D7461626C65202E612D47562D63656C6C2C2E612D49472C74682E612D47562D6865616465727B626F726465722D636F6C6F723A233561';
wwv_flow_imp.g_varchar2_table(5) := '3561356121696D706F7274616E747D2E612D47562D63656C6C2C2E612D47562D6865616465727B706F696E7465722D6576656E74733A6E6F6E657D237461626C6531202E612D47562D7461626C657B77696474683A3130302521696D706F7274616E747D';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(38696290832943056)
,p_file_name=>'css/ibi-css.min.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/