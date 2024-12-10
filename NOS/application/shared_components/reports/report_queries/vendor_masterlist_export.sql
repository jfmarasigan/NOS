prompt --application/shared_components/reports/report_queries/vendor_masterlist_export
begin
--   Manifest
--     REPORT QUERY: VENDOR_MASTERLIST_EXPORT
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>4200484135045687
,p_default_application_id=>100
,p_default_id_offset=>0
,p_default_owner=>'NOS'
);
wwv_flow_imp_shared.create_shared_query(
 p_id=>wwv_flow_imp.id(13475822217852560)
,p_name=>'VENDOR_MASTERLIST_EXPORT'
,p_static_id=>'VENDOR_MASTERLIST_EXPORT'
,p_include_session_state=>'N'
,p_format=>'XLS'
,p_output_file_name=>'VENDOR_MASTERLIST_EXPORT'
,p_content_disposition=>'INLINE'
);
wwv_flow_imp_shared.create_shared_query_stmnt(
 p_id=>wwv_flow_imp.id(13476176180852614)
,p_shared_query_id=>wwv_flow_imp.id(13475822217852560)
,p_name=>'VENDOR_MASTERLIST_EXPORT'
,p_display_sequence=>1
,p_data_loop_name=>'vendor_masterlist_export'
,p_location=>'LOCAL'
,p_query_type=>'SQL'
,p_sql_statement=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  ',
'    VENDOR_ID,',
'    VENDOR_CODE,',
'    VENDOR_NAME, ',
'    CONTACT_PERSON, ',
'    PHONE_NUMBER, ',
'    EMAIL_ADDRESS1, ',
'    PAYMENT_TERM, ',
'    ''DUMMY'' AS OS_BALANCE, ',
'    ''DUMMY'' AS OS_CREDIT_MEMO',
'FROM NIT006',
'WHERE   ',
'        (:P5_SEARCH_CODE IS NOT NULL AND :P5_SEARCH_NAME IS NULL ',
'            AND UPPER(VENDOR_CODE) LIKE ''%'' || UPPER(:P5_SEARCH_CODE) || ''%'') OR',
'        (:P5_SEARCH_CODE IS NULL AND :P5_SEARCH_NAME IS NOT NULL ',
'            AND UPPER(VENDOR_NAME) LIKE ''%'' || UPPER(:P5_SEARCH_NAME) || ''%'') OR',
'        (:P5_SEARCH_CODE IS NOT NULL AND :P5_SEARCH_NAME IS NOT NULL ',
'            AND UPPER(VENDOR_CODE) LIKE ''%'' || UPPER(:P5_SEARCH_CODE) || ''%'')'))
);
wwv_flow_imp.component_end;
end;
/
