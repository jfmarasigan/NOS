create or replace TRIGGER "NIM039_AUDIT" 
before
insert or update on "NIM039"
for each row
begin
    if inserting then
        :new.create_user := NVL(v('APP_USER'), USER);
        :new.create_date := SYSDATE;
    end if;

    :new.update_user := NVL(v('APP_USER'), USER);
    :new.update_date := SYSDATE;
end;
/