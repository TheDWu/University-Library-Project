USE library;

INSERT INTO checkedout_items(item_type, item_id, account_id, checkout_date,fees) VALUES ('book', 'i646572190', '4235654235', '2024-04-15 01:01:01', 0);

INSERT INTO holds_waitlist(h_item_id, position, h_account_id) VALUES ('i646572190', 1 , '4235654236');
INSERT INTO holds_waitlist(h_item_id, position, h_account_id) VALUES ('i646572190', 2 , '4235654237');
INSERT INTO holds_waitlist(h_item_id, position, h_account_id) VALUES ('i646572190', 3 , '4235654238');
INSERT INTO holds_waitlist(h_item_id, position, h_account_id) VALUES ('i646572190', 4 , '4235654239');