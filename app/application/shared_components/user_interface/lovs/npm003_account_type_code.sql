prompt --application/shared_components/user_interface/lovs/npm003_account_type_code
begin
--   Manifest
--     NPM003.ACCOUNT_TYPE_CODE
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>4200484135045687
,p_default_application_id=>100
,p_default_id_offset=>0
,p_default_owner=>'NOS'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(14283087534817489)
,p_lov_name=>'NPM003.ACCOUNT_TYPE_CODE'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'NPM003'
,p_return_column_name=>'ACCOUNT_TYPE_ID'
,p_display_column_name=>'ACCOUNT_TYPE_CODE'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>28431280
);
wwv_flow_imp.component_end;
end;
/