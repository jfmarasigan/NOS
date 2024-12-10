prompt --application/shared_components/user_interface/lovs/nim024_dept_code
begin
--   Manifest
--     NIM024.DEPT_CODE
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
 p_id=>wwv_flow_imp.id(10620208763246387)
,p_lov_name=>'NIM024.DEPT_CODE'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'NIM024'
,p_return_column_name=>'DEPT_ID'
,p_display_column_name=>'DEPT_CODE'
,p_default_sort_column_name=>'DEPT_CODE'
,p_default_sort_direction=>'ASC'
,p_version_scn=>17411052
);
wwv_flow_imp.component_end;
end;
/
