prompt --application/deployment/definition
begin
--   Manifest
--     INSTALL: 100
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>4200484135045687
,p_default_application_id=>100
,p_default_id_offset=>0
,p_default_owner=>'NOS'
);
wwv_flow_imp_shared.create_install(
 p_id=>wwv_flow_imp.id(6010292355491439)
,p_deinstall_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    -- drop tables',
'    for rec in (select table_name ',
'                  from   user_tables ',
'                 where  table_name like ''NIM%''',
'                    or   table_name like ''NIT%''',
'                    or   table_name like ''NPM%''',
'                    or   table_name like ''NPT%''',
'             )',
'    loop',
'        execute immediate ''drop table ''|| rec.table_name || '' CASCADE CONSTRAINTS '';',
'    end loop;',
'',
'    -- drop packages',
'    execute immediate ''drop package item_trans_pkg'';',
'',
'    execute immediate ''drop package nos_authentication_pkg'';',
'',
'    execute immediate ''drop package order_sales_pkg'';',
'',
'    execute immediate ''drop package otas_sort_and_search'';',
'',
'    -- drop functions',
'    execute immediate ''drop function has_access'';',
'',
'    execute immediate ''drop function date_valid'';',
'end;',
'',
''))
,p_prompt_sub_string_03=>'Y'
,p_install_prompt_03=>'default or sit?'
,p_required_free_kb=>100
,p_required_sys_privs=>'CREATE PROCEDURE:CREATE TABLE:CREATE TRIGGER:CREATE VIEW'
);
wwv_flow_imp.component_end;
end;
/
