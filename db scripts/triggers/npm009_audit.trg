create or replace TRIGGER "NPM009_AUDIT"
  BEFORE INSERT OR UPDATE ON "NPM009"
  REFERENCING FOR EACH ROW
  begin
    if inserting then
        :new.date_created := SYSDATE;
    end if;

    :new.user_update := NVL(:new.user_name, v('APP_USER'));
    :new.date_updated := SYSDATE;
end;
/