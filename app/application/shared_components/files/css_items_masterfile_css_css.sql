prompt --application/shared_components/files/css_items_masterfile_css_css
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
wwv_flow_imp.g_varchar2_table(1) := '23612C2023752C2023692C20236F2C2023642C2023686F6D652C2023656E642C20236573632C202373207B0D0A20202020746578742D616C69676E3A206C6566743B0D0A7D0D0A';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(6153839321317578)
,p_file_name=>'css/items_masterfile_css.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/