prompt --application/shared_components/files/css_p26_css_css
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
wwv_flow_imp.g_varchar2_table(1) := '2E742D4469616C6F677B0D0A202020206261636B67726F756E642D636F6C6F723A20233035364143383B0D0A7D0D0A0D0A0D0A2E7032362D77686974652D746578747B0D0A20202020636F6C6F723A2077686974653B0D0A20202020666F6E742D73697A';
wwv_flow_imp.g_varchar2_table(2) := '653A20312E31323572656D3B0D0A20202020666F6E742D66616D696C793A20417269616C3B0D0A7D0D0A0D0A2E742D4469616C6F672D626F64797B0D0A2020202070616464696E672D746F703A20303B0D0A7D0D0A0D0A2E666F726D61742D73697A657B';
wwv_flow_imp.g_varchar2_table(3) := '0D0A20202020666F6E742D73697A653A20312E31323572656D2021696D706F7274616E743B0D0A20202020666F6E742D66616D696C793A20417269616C3B0D0A7D0D0A0D0A2E7174792D7469746C657B0D0A20202020666F6E742D7765696768743A206E';
wwv_flow_imp.g_varchar2_table(4) := '6F726D616C3B0D0A20202020666F6E742D73697A653A20312E31323572656D3B0D0A20202020666F6E742D66616D696C793A20417269616C3B0D0A20202020746578742D616C69676E3A2063656E7465723B0D0A7D0D0A0D0A237174797B0D0A20202020';
wwv_flow_imp.g_varchar2_table(5) := '77696474683A20313072656D3B0D0A7D0D0A0D0A2E7174792D6669656C64737B0D0A202020206D61782D77696474683A20313030253B0D0A7D0D0A0D0A2E686561646572207B0D0A20202020666F6E742D73697A653A20312E31323572656D3B0D0A2020';
wwv_flow_imp.g_varchar2_table(6) := '2020666F6E742D66616D696C793A20417269616C3B0D0A20202020666F6E742D7765696768743A203730303B0D0A202020206D617267696E2D626F74746F6D3A20302E373572656D3B0D0A7D0D0A0D0A2E77696474683530207B0D0A202020206D61782D';
wwv_flow_imp.g_varchar2_table(7) := '77696474683A203530252021696D706F7274616E743B0D0A7D0D0A0D0A2E7769647468333735207B0D0A202020206D61782D77696474683A2033372E35252021696D706F7274616E743B0D0A7D0D0A0D0A2E7769647468313235207B0D0A202020206D61';
wwv_flow_imp.g_varchar2_table(8) := '782D77696474683A2031322E35252021696D706F7274616E743B0D0A7D0D0A0D0A2E742D4469616C6F672D626F6479207B0D0A2020202070616464696E672D626F74746F6D3A20302E323572656D3B0D0A7D';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(10684775312612037)
,p_file_name=>'css/p26_css.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/