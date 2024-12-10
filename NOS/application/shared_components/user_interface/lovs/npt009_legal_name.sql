prompt --application/shared_components/user_interface/lovs/npt009_legal_name
begin
--   Manifest
--     NPT009.LEGAL_NAME
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
 p_id=>wwv_flow_imp.id(26897105948890656)
,p_lov_name=>'NPT009.LEGAL_NAME'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'NPT009'
,p_return_column_name=>'CUSTOMER_ID'
,p_display_column_name=>'LEGAL_NAME'
,p_default_sort_column_name=>'LEGAL_NAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>58974411
);
wwv_flow_imp.component_end;
end;
/
