prompt --application/shared_components/user_interface/lovs/npm005_method_name
begin
--   Manifest
--     NPM005.METHOD_NAME
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
 p_id=>wwv_flow_imp.id(26901614097890685)
,p_lov_name=>'NPM005.METHOD_NAME'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'NPM005'
,p_return_column_name=>'PAYMENT_METHOD_ID'
,p_display_column_name=>'METHOD_NAME'
,p_default_sort_column_name=>'METHOD_NAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>58974422
);
wwv_flow_imp.component_end;
end;
/
