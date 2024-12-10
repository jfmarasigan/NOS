prompt --application/shared_components/logic/application_items/customer
begin
--   Manifest
--     APPLICATION ITEM: CUSTOMER
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
 p_id=>wwv_flow_imp.id(17423695885928534)
,p_name=>'CUSTOMER'
,p_protection_level=>'I'
,p_version_scn=>38145838
);
wwv_flow_imp.component_end;
end;
/
