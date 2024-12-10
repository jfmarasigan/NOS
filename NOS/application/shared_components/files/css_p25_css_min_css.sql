prompt --application/shared_components/files/css_p25_css_min_css
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
wwv_flow_imp.g_varchar2_table(1) := '7461626C652C74642C74682C74727B666F6E742D73697A653A312E31323572656D3B666F6E742D66616D696C793A417269616C7D2E75692D6469616C6F672D7469746C657B666F6E742D73697A653A312E3572656D3B70616464696E672D626F74746F6D';
wwv_flow_imp.g_varchar2_table(2) := '3A2E3272656D3B70616464696E672D746F703A2E3272656D7D2E75692D6469616C6F672D7469746C656261727B626F726465722D626F74746F6D3A303B70616464696E672D746F703A303B70616464696E672D626F74746F6D3A2E3272656D7D2E742D48';
wwv_flow_imp.g_varchar2_table(3) := '6561646572202E742D4865616465722D6272616E64696E677B6261636B67726F756E642D636F6C6F723A2366666621696D706F7274616E743B636F6C6F723A2331653361386121696D706F7274616E747D2E7469746C652D6865616465727B646973706C';
wwv_flow_imp.g_varchar2_table(4) := '61793A666C65783B6A7573746966792D636F6E74656E743A63656E7465723B6D617267696E2D746F703A312E3572656D3B636F6C6F723A236666663B666F6E742D73697A653A3272656D3B666F6E742D7765696768743A3730303B6C696E652D68656967';
wwv_flow_imp.g_varchar2_table(5) := '68743A6E6F726D616C7D23636F6E74656E742C236E61762C626F64797B6261636B67726F756E642D636F6C6F723A233165336138617D2E62746E737B666F6E742D73697A653A312E31323572656D3B666F6E742D66616D696C793A417269616C3B636F6C';
wwv_flow_imp.g_varchar2_table(6) := '6F723A236666667D2E746578742D6C6566747B746578742D616C69676E3A6C6566747D2E746578742D72696768747B746578742D616C69676E3A72696768747D2E636F6E74656E742D626C6F636B7B666F6E742D73697A653A312E323572656D3B646973';
wwv_flow_imp.g_varchar2_table(7) := '706C61793A666C65783B6A7573746966792D636F6E74656E743A73706163652D6265747765656E3B666F6E742D7765696768743A3730307D2E612D47562D68656164657220612C74682E612D47562D6865616465727B6261636B67726F756E642D636F6C';
wwv_flow_imp.g_varchar2_table(8) := '6F723A233035366263393B636F6C6F723A236666667D2E75692D6469616C6F67202E75692D6469616C6F672D7469746C656261727B6261636B67726F756E642D636F6C6F723A233035366163383B636F6C6F723A236666667D2E75692D6469616C6F672E';
wwv_flow_imp.g_varchar2_table(9) := '696E762D7162792D772C2E75692D6469616C6F672E6D6F64616C2D6469616C6F672D2D70756C6C6F75747B6C6566743A34352521696D706F7274616E747D2E75692D6469616C6F672D7469746C656261722D636C6F73657B646973706C61793A6E6F6E65';
wwv_flow_imp.g_varchar2_table(10) := '7D2E612D47562D686472202E612D47562D7461626C657B77696474683A3130302521696D706F7274616E747D';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(38709240478232434)
,p_file_name=>'css/p25_css.min.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/