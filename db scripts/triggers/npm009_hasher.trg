create or replace trigger NPM009_HASHER
before
insert on "NPM009"
for each row
declare
    v_salt varchar2(32);
    v_new_pw varchar2(1000);
begin
    v_salt := dbms_random.string('x', 32);
    :NEW.salt := v_salt;
    :NEW.password := sys.dbms_crypto.mac(utl_raw.cast_to_raw(:NEW.password), sys.dbms_crypto.hash_sh256, utl_raw.cast_to_raw(v_salt));
end;
/