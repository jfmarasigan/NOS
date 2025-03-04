create or replace TRIGGER "NPM009_NAME_CAP"
  BEFORE INSERT ON "NPM009"
  REFERENCING FOR EACH ROW
  begin
    :new.user_name := UPPER(:new.user_name);
end;
/