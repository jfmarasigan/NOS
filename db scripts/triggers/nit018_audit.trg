create or replace TRIGGER "NIT018_AUDIT"
  BEFORE INSERT OR UPDATE ON "NIT018"
  REFERENCING FOR EACH ROW
  begin
    if inserting then
        :new.create_date := SYSDATE;
        :new.create_user := NVL(v('APP_USER'), USER);
    end if;

    :new.update_user := NVL(v('APP_USER'), USER);
    :new.update_date := SYSDATE;
end;
/