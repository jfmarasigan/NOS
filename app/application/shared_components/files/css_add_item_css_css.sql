prompt --application/shared_components/files/css_add_item_css_css
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
wwv_flow_imp.g_varchar2_table(1) := '2E742D466F726D2D6C6162656C207B0D0A202020206D696E2D77696474683A203372656D3B0D0A202020206D61782D77696474683A206669742D636F6E74656E743B0D0A20202020666F6E742D7765696768743A20626F6C643B0D0A7D0D0A0D0A2E742D';
wwv_flow_imp.g_varchar2_table(2) := '466F726D2D6C6162656C436F6E7461696E6572207B0D0A20202020746578742D616C69676E3A206C6566742021696D706F7274616E743B0D0A7D0D0A0D0A2E742D466F726D2D696E707574436F6E7461696E6572207B0D0A202020206D61782D77696474';
wwv_flow_imp.g_varchar2_table(3) := '683A206669742D636F6E74656E743B0D0A7D0D0A0D0A2E742D466F726D2D6C6162656C436F6E7461696E6572202E742D466F726D2D6C6162656C3A3A6265666F7265207B0D0A20202020636F6E74656E743A2027272021696D706F7274616E743B202F2A';
wwv_flow_imp.g_varchar2_table(4) := '2052656D6F76652074686520617374657269736B206265666F726520746865206C6162656C202A2F0D0A7D0D0A0D0A0D0A0D0A2E74657374207B0D0A202020206D617267696E3A20303B0D0A7D';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(7294161292512185)
,p_file_name=>'css/add_item_css.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/