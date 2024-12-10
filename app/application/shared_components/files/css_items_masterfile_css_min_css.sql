prompt --application/shared_components/files/css_items_masterfile_css_min_css
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
wwv_flow_imp.g_varchar2_table(1) := '23612C23642C23656E642C236573632C23686F6D652C23692C236F2C23732C23757B746578742D616C69676E3A6C6566747D';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(6224340824817968)
,p_file_name=>'css/items_masterfile_css.min.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/
