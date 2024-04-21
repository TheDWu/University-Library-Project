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