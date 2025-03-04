create or replace FUNCTION           "PW_GEN" (
    v_salt          varchar2,
    v_pw            varchar2
)
return varchar2
as
begin
    return sys.dbms_crypto.mac(utl_raw.cast_to_raw(v_pw), sys.dbms_crypto.hash_sh256, utl_raw.cast_to_raw(v_salt));
end "PW_GEN";
/