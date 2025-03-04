prompt --application/shared_components/files/img_down_arrow_png
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
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF610000000473424954080808087C08648800000009704859730000007600000076014E7B26080000001974455874536F667477617265007777772E696E6B73636170652E';
wwv_flow_imp.g_varchar2_table(2) := '6F72679BEE3C1A0000005549444154388DEDD0B10E40401444D1A3D8F8449DFFB3121ABE4E41A310615750EE6DE7CEBCE451F895161121E104F4BB7B190E9850BFC893D2A3F2599E773960BC2B578991EE90AF68B0E4AE9F47A2FC630B5FD900DDEA0F11';
wwv_flow_imp.g_varchar2_table(3) := '700C78030000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(59571266205198370)
,p_file_name=>'img/down-arrow.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/
