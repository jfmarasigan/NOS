prompt --application/shared_components/navigation/lists/navigation_menu
begin
--   Manifest
--     LIST: Navigation Menu
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>4200484135045687
,p_default_application_id=>100
,p_default_id_offset=>0
,p_default_owner=>'NOS'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(4208388572083921)
,p_name=>'Navigation Menu'
,p_list_status=>'PUBLIC'
,p_version_scn=>4066775
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4508149134084907)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Main Menu'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
