USE library;

CREATE TABLE checkout_log(
	item_id varchar(10),
    check_date DATETIME DEFAULT CURRENT_TIMESTAMP
);

DELIMITER //

CREATE TRIGGER after_checked_out_insert
AFTER INSERT ON checkedout_items
FOR EACH ROW
BEGIN
	INSERT INTO checkout_log (item_id) VALUES (NEW.item_id);
END;
//

DELIMITER ;