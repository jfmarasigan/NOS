prompt --application/shared_components/user_interface/lovs/vendors
begin
--   Manifest
--     VENDORS
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
 p_id=>wwv_flow_imp.id(17949418971432478)
,p_lov_name=>'VENDORS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT vendor_id,',
'       vendor_name,',
'       phone_number',
'  FROM nit006'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'VENDOR_ID'
,p_display_column_name=>'VENDOR_NAME'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'VENDOR_NAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>39496326
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(17951813359446203)
,p_query_column_name=>'VENDOR_ID'
,p_display_sequence=>10
,p_data_type=>'NUMBER'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(17952221980446204)
,p_query_column_name=>'VENDOR_NAME'
,p_heading=>'Vendor Name'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(17952668444446204)
,p_query_column_name=>'PHONE_NUMBER'
,p_heading=>'Phone Number'
,p_display_sequence=>30
,p_data_type=>'NUMBER'
);
wwv_flow_imp.component_end;
end;
/
