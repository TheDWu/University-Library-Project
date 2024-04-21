USE library;

CREATE TABLE hold_attempts_logs (
    item_id VARCHAR(10),
    account_id VARCHAR(10),
    attempted_on DATETIME DEFAULT CURRENT_TIMESTAMP,
    message VARCHAR(255),
    primary key (item_id)
);

DELIMITER $$

CREATE TRIGGER BeforeAddHold BEFORE INSERT ON HOLDS_WAITLIST
FOR EACH ROW
BEGIN
    DECLARE hold_count integer;
    
    SELECT COUNT(*) INTO hold_count FROM HOLDS_WAITLIST
    WHERE h_item_id = NEW.h_item_id;

    IF hold_count >= 4 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Hold limit exceeded';
    END IF;
END $$
DELIMITER ;