prompt --application/shared_components/files/js_inv_trans_menu_js
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
wwv_flow_imp.g_varchar2_table(1) := '636F6E737420696E765472616E734D656E754B65794D6170203D207B0D0A2020202073203A2028657629203D3E207B0D0A20202020202020206966202824282223696E762D7472616E2D6D6170222929207B0D0A20202020202020202020202024282223';
wwv_flow_imp.g_varchar2_table(2) := '696E762D7472616E2D6D617022292E747269676765722822636C69636B22293B0D0A20202020202020207D0D0A202020207D2C0D0A2020202077203A2028657629203D3E207B0D0A20202020202020206966202824282223696E762D7472616E2D6D6170';
wwv_flow_imp.g_varchar2_table(3) := '2D7768222929207B0D0A20202020202020202020202024282223696E762D7472616E2D6D61702D776822292E747269676765722822636C69636B22293B0D0A20202020202020207D0D0A202020207D2C0D0A2020202075203A2028657629203D3E207B0D';
wwv_flow_imp.g_varchar2_table(4) := '0A202020202020202069662028242822237570642D696E762D62616C222929207B0D0A202020202020202020202020242822237570642D696E762D62616C22292E747269676765722822636C69636B22293B0D0A20202020202020207D0D0A202020207D';
wwv_flow_imp.g_varchar2_table(5) := '2C0D0A2020202071203A2028657629203D3E207B0D0A20202020202020206966202824282223696E712D696E762D62616C222929207B0D0A20202020202020202020202024282223696E712D696E762D62616C22292E747269676765722822636C69636B';
wwv_flow_imp.g_varchar2_table(6) := '22293B0D0A20202020202020207D0D0A202020207D2C0D0A20202020657363617065203A2028657629203D3E207B0D0A2020202020202020617065782E6E617669676174696F6E2E7265646972656374282428222350335F4D55524C22292E76616C2829';
wwv_flow_imp.g_varchar2_table(7) := '293B0D0A202020207D0D0A7D0D0A0D0A66756E6374696F6E206D61704B6579732829207B0D0A202020202428646F63756D656E74292E6F666628276B6579646F776E2E696E765472616E734D656E754B65794576656E747327293B0D0A20202020242864';
wwv_flow_imp.g_varchar2_table(8) := '6F63756D656E74292E6F6E28276B6579646F776E2E696E765472616E734D656E754B65794576656E7473272C2028657629203D3E207B0D0A2020202020202020766172206B6579203D2065762E6B65793F2E746F4C6F7765724361736528293B0D0A2020';
wwv_flow_imp.g_varchar2_table(9) := '20202020202069662028696E765472616E734D656E754B65794D61705B6B65795D29207B0D0A20202020202020202020202065762E70726576656E7444656661756C7428293B0D0A202020202020202020202020696E765472616E734D656E754B65794D';
wwv_flow_imp.g_varchar2_table(10) := '61705B6B65795D28293B0D0A20202020202020207D0D0A202020207D293B0D0A7D';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(8991289949807985)
,p_file_name=>'js/inv-trans-menu.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/