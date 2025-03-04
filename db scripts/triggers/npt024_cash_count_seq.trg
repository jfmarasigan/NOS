create or replace TRIGGER "NPT024_CASH_COUNT_SEQ"
  BEFORE INSERT ON "NPT024"
  REFERENCING FOR EACH ROW
  BEGIN
    IF :NEW.cash_count_id IS NULL THEN
        :NEW.cash_count_id := cash_count_id_seq.NEXTVAL;
    END IF;
      
END;
/