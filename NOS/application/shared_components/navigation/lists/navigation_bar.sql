prompt --application/shared_components/navigation/lists/navigation_bar
begin
--   Manifest
--     LIST: Navigation Bar
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
 p_id=>wwv_flow_imp.id(4497540207084770)
,p_name=>'Navigation Bar'
,p_list_status=>'PUBLIC'
,p_version_scn=>7695344
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4509612260084934)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4510191339084935)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(4509612260084934)
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4510556890084937)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Sign Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(4509612260084934)
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/