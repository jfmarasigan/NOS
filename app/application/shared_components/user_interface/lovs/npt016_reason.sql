prompt --application/shared_components/user_interface/lovs/npt016_reason
begin
--   Manifest
--     NPT016.REASON
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
 p_id=>wwv_flow_imp.id(33048713241693128)
,p_lov_name=>'NPT016.REASON'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'NPT016'
,p_return_column_name=>'REFUND_ID'
,p_display_column_name=>'REASON'
,p_default_sort_column_name=>'REASON'
,p_default_sort_direction=>'ASC'
,p_version_scn=>74662467
);
wwv_flow_imp.component_end;
end;
/
