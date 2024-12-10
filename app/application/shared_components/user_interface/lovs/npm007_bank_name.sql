prompt --application/shared_components/user_interface/lovs/npm007_bank_name
begin
--   Manifest
--     NPM007.BANK_NAME
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
 p_id=>wwv_flow_imp.id(26897719763890679)
,p_lov_name=>'NPM007.BANK_NAME'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'NPM007'
,p_return_column_name=>'BANK_ID'
,p_display_column_name=>'BANK_NAME'
,p_default_sort_column_name=>'BANK_NAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>58974421
);
wwv_flow_imp.component_end;
end;
/
