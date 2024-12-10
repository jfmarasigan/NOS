prompt --application/shared_components/files/js_masterfile_menu_min_js
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
wwv_flow_imp.g_varchar2_table(1) := '636F6E7374206D617374657266696C654D656E754B65794D61703D7B693A653D3E7B2428222369746D2D6D6173746572222926262428222369746D2D6D617374657222292E747269676765722822636C69636B22297D2C763A653D3E7B24282223737570';
wwv_flow_imp.g_varchar2_table(2) := '2D6D617374657222292626242822237375702D6D617374657222292E747269676765722822636C69636B22297D2C633A653D3E7B24282223637573746F6D65722D6D617374657266696C652229262624282223637573746F6D65722D6D61737465726669';
wwv_flow_imp.g_varchar2_table(3) := '6C6522292E747269676765722822636C69636B22297D2C6F3A653D3E7B242822236F72642D73616C65732D6D617374657222292626242822236F72642D73616C65732D6D617374657222292E747269676765722822636C69636B22297D2C623A653D3E7B';
wwv_flow_imp.g_varchar2_table(4) := '2428222362616E6B2D6D617374657266696C65222926262428222362616E6B2D6D617374657266696C6522292E747269676765722822636C69636B22297D2C643A653D3E7B24282223646973636F756E742D6D617374657266696C652229262624282223';
wwv_flow_imp.g_varchar2_table(5) := '646973636F756E742D6D617374657266696C6522292E747269676765722822636C69636B22297D2C6573636170653A653D3E7B617065782E6E617669676174696F6E2E7265646972656374282428222350325F4D55524C22292E76616C2829297D7D3B66';
wwv_flow_imp.g_varchar2_table(6) := '756E6374696F6E206D61704B65797328297B2428646F63756D656E74292E6F666628226B6579646F776E2E6D61737465724D656E754B65794576656E747322292C2428646F63756D656E74292E6F6E28226B6579646F776E2E6D61737465724D656E754B';
wwv_flow_imp.g_varchar2_table(7) := '65794576656E7473222C28653D3E7B76617220743D652E6B65793F2E746F4C6F7765724361736528293B6D617374657266696C654D656E754B65794D61705B745D262628652E70726576656E7444656661756C7428292C6D617374657266696C654D656E';
wwv_flow_imp.g_varchar2_table(8) := '754B65794D61705B745D2829297D29297D';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(43109688972255189)
,p_file_name=>'js/masterfile-menu.min.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/