USE library;

delimiter //

CREATE TRIGGER prevent_overdue_checkout BEFORE INSERT ON checkedout_items
FOR EACH ROW
BEGIN
	DECLARE overdue_count integer;
    DECLARE fee_count integer;
	
    SET overdue_count := (SELECT COUNT(*) FROM checkedout_items WHERE NEW.account_id = account_id AND DATEDIFF(CURDATE(), checkout_date) >= 7);
    SET fee_count := (SELECT COUNT(*) FROM fees where NEW.account_id = f_account_id);
    
    IF overdue_count > 0 OR fee_count > 0 THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Cannot checkout: You have overdue books or outstanding fees';
	END IF;
END

//


/* prevent Hold trigger ################################# */




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


/* checkout log trigger ################################# */



DELIMITER //

CREATE TRIGGER after_checked_out_insert
AFTER INSERT ON checkedout_items
FOR EACH ROW
BEGIN
	INSERT INTO checkout_log (item_id) VALUES (NEW.item_id);
END;
//

DELIMITER ;

