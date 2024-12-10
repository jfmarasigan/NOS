begin
    -- drop tables
    for rec in (select table_name 
                  from   user_tables 
                 where  table_name like 'NIM%'
                    or   table_name like 'NIT%'
                    or   table_name like 'NPM%'
                    or   table_name like 'NPT%'
             )
    loop
        execute immediate 'drop table '|| rec.table_name || ' CASCADE CONSTRAINTS ';
    end loop;

    -- drop packages
    execute immediate 'drop package item_trans_pkg';

    execute immediate 'drop package nos_authentication_pkg';

    execute immediate 'drop package order_sales_pkg';

    execute immediate 'drop package otas_sort_and_search';

    -- drop functions
    execute immediate 'drop function has_access';

    execute immediate 'drop function date_valid';
end;

