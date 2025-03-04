create or replace TRIGGER "NIT035_AUDIT"
  BEFORE INSERT OR UPDATE ON "NIT035"
  REFERENCING FOR EACH ROW
  begin
    if inserting then
        :new.create_date := SYSDATE;
        :new.create_user := NVL(v('APP_USER'), USER);
        -- :new.create_user := 'TEST';
    end if;

    :new.update_user := NVL(v('APP_USER'), USER);
    -- :new.update_user := 'TEST';
    :new.update_date := SYSDATE;
end;
/