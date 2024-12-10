prompt --application/shared_components/files/css_add_item_css_min_css
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
wwv_flow_imp.g_varchar2_table(1) := '2E742D466F726D2D6C6162656C7B6D696E2D77696474683A3372656D3B6D61782D77696474683A6669742D636F6E74656E743B666F6E742D7765696768743A3730307D2E742D466F726D2D6C6162656C436F6E7461696E65727B746578742D616C69676E';
wwv_flow_imp.g_varchar2_table(2) := '3A6C65667421696D706F7274616E747D2E742D466F726D2D696E707574436F6E7461696E65727B6D61782D77696474683A6669742D636F6E74656E747D2E742D466F726D2D6C6162656C436F6E7461696E6572202E742D466F726D2D6C6162656C3A3A62';
wwv_flow_imp.g_varchar2_table(3) := '65666F72657B636F6E74656E743A222221696D706F7274616E747D2E746573747B6D617267696E3A307D';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(10436487529642328)
,p_file_name=>'css/add_item_css.min.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/
