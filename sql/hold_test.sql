USE library;
 INSERT INTO accounts(account_id, fname, lname, account_uname, account_type, account_pw, fees) VALUES ('2345437561', 'test', 'test2', 'tt123', 'student', 'pwd', 0);
 
INSERT INTO checkedout_items(item_type, item_id, account_id, checkout_date,fees) VALUES ('book', 
'i081273805', '2345437561', '2024-04-15 01:01:01', 0);

INSERT INTO holds_waitlist(h_item_id, position, h_account_id) VALUES ('i081273805', 1 , '7557644080');
INSERT INTO holds_waitlist(h_item_id, position, h_account_id) VALUES ('i081273805', 2 , '4793371711');
INSERT INTO holds_waitlist(h_item_id, position, h_account_id) VALUES ('i081273805', 3 , '4587249112');
INSERT INTO holds_waitlist(h_item_id, position, h_account_id) VALUES ('i081273805', 4 , '5436759112');

