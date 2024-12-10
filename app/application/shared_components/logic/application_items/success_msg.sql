prompt --application/shared_components/logic/application_items/success_msg
begin
--   Manifest
--     APPLICATION ITEM: SUCCESS_MSG
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>4200484135045687
,p_default_application_id=>100
,p_default_id_offset=>0
,p_default_owner=>'NOS'
);
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(15028229000304575)
,p_name=>'SUCCESS_MSG'
,p_protection_level=>'I'
,p_version_scn=>30716590
);
wwv_flow_imp.component_end;
end;
/
