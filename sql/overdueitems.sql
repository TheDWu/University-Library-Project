use library;

INSERT INTO checkedout_items(item_type, item_id, account_id, checkout_date,fees) VALUES ('book', 'i646572193', '0123456789', '2024-04-08 01:01:01', 0);

INSERT INTO checkedout_items(item_type, item_id, account_id, checkout_date,fees) VALUES ('book', 'i646572208', '4235654242', '2024-04-21 01:01:01', 0);
INSERT INTO checkedout_items(item_type, item_id, account_id, checkout_date,fees) VALUES ('book', 'i646572205', '4235654242', '2024-04-21 01:01:01', 0);
INSERT INTO checkedout_items(item_type, item_id, account_id, checkout_date,fees) VALUES ('book', 'i646572201', '4235654242', '2024-04-21 01:01:01', 0);
INSERT INTO checkedout_items(item_type, item_id, account_id, checkout_date,fees) VALUES ('book', 'i646572199', '4235654242', '2024-04-21 01:01:01', 0);

INSERT INTO checkedout_items(item_type, item_id, account_id, checkout_date,fees) VALUES ('book', 'i646572206', '4235654235', '2024-04-21 01:01:01', 0);
INSERT INTO checkedout_items(item_type, item_id, account_id, checkout_date,fees) VALUES ('book', 'i646572207', '4235654244', '2024-04-21 01:01:01', 0);
INSERT INTO checkedout_items(item_type, item_id, account_id, checkout_date,fees) VALUES ('book', 'i646572200', '4235654242', '2024-04-21 01:01:01', 0);



insert into fees (f_item_id, f_account_id, fee_amount, item_type) VALUES ("i646572208", "4235654235", 10, "book"); 
insert into fees (f_item_id, f_account_id, fee_amount, item_type) VALUES ("i646572205", "4235654244", 10, "book"); 
insert into fees (f_item_id, f_account_id, fee_amount, item_type) VALUES ("i646572201", "4235654242", 10, "book"); 
insert into fees (f_item_id, f_account_id, fee_amount, item_type) VALUES ("i646572199", "4235654242", 10, "book"); 
insert into fees (f_item_id, f_account_id, fee_amount, item_type) VALUES ("i646572206", "4235654242", 10, "book"); 
insert into fees (f_item_id, f_account_id, fee_amount, item_type) VALUES ("i646572200", "4235654242", 10, "book"); 