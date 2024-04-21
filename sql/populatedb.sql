USE library;

#Create our masterlist of Items
INSERT INTO item (item_id, item_type, cost) VALUES ('i646572173', 'book', 10);
INSERT INTO item (item_id, item_type, cost) VALUES ('i395030105', 'book', 15);
INSERT INTO item (item_id, item_type, cost) VALUES ('i151637805', 'book', 10);
INSERT INTO item (item_id, item_type, cost) VALUES ('i081273805', 'book', 10);
INSERT INTO item (item_id, item_type, cost) VALUES ('i610023760', 'book', 10);
INSERT INTO item (item_id, item_type, cost) VALUES ('i571916009', 'laptop', 10);
INSERT INTO item (item_id, item_type, cost) VALUES ('i015010073', 'laptop', 15);
INSERT INTO item (item_id, item_type, cost) VALUES ('i455239366', 'dvd', 10);
INSERT INTO item (item_id, item_type, cost) VALUES ('i927487104', 'dvd', 10);
INSERT INTO item (item_id, item_type, cost) VALUES ('i245527607', 'calculator', 10);
INSERT INTO item (item_id, item_type, cost) VALUES ('i972832689', 'calculator', 10);
INSERT INTO item (item_id, item_type, cost) VALUES ('i376401903', 'textbook', 10);
INSERT INTO item (item_id, item_type, cost) VALUES ('i926656420', 'textbook', 10);
INSERT INTO item (item_id, item_type, cost) VALUES ('i422420656', 'textbook', 10);
INSERT INTO item (item_id, item_type, cost) VALUES ('i603603584', 'textbook', 10);

#Insert Individual Items
INSERT INTO item_book(ID, ISSN, title, author, publisher, genre) VALUES ('i081273805', '97767788', 'Hunger Games 1', 'Suzanne Collins', 'Scholastic', 'Action');
INSERT INTO item_book(ID, ISSN, title, author, publisher, genre) VALUES ('i151637805', '97741663', 'Hunger Games 2', 'Suzanne Collins', 'Scholastic', 'Action');
INSERT INTO item_book(ID, ISSN, title, author, publisher, genre) VALUES ('i395030105', '97744232', 'Hunger Games 3', 'Suzanne Collins', 'Scholastic', 'Action');
INSERT INTO item_book(ID, ISSN, title, author, publisher, genre) VALUES ('i610023760', '97730502', 'Hunger Games 4', 'Suzanne Collins', 'Scholastic', 'Action');
INSERT INTO item_book(ID, ISSN, title, author, publisher, genre) VALUES ('i646572173', '97753909', 'Hunger Games 5', 'Suzanne Collins', 'Scholastic', 'Action');


INSERT INTO room (room_no, capacity, is_reserved) VALUES ("1234", 10, false);
INSERT INTO room (room_no, capacity, is_reserved) VALUES ("1235", 10, false);
INSERT INTO room (room_no, capacity, is_reserved) VALUES ("1236", 10, false);
INSERT INTO room (room_no, capacity, is_reserved) VALUES ("1237", 10, false);

#create accounts
INSERT INTO ACCOUNTS (account_id, fname, lname, account_uname, account_type, account_pw, fees) VALUES ('0123456789', 'Matt', 'Stamm', "mstamm", 'student', "123", 0.0);
INSERT INTO ACCOUNTS (account_id, fname, lname, account_uname, account_type, account_pw, fees) VALUES ('7557644080', 'Bill', 'Gates', "bgates", 'student', "123", 0.0);
INSERT INTO ACCOUNTS (account_id, fname, lname, account_uname, account_type, account_pw, fees) VALUES ('4793371711', 'Steve', 'Jobs', "sjobs", 'student', "123", 0.0);
INSERT INTO ACCOUNTS (account_id, fname, lname, account_uname, account_type, account_pw, fees) VALUES ('4587249112', 'Jill', 'Cassity', "jcassity", 'teacher', "123", 0.0);
INSERT INTO ACCOUNTS (account_id, fname, lname, account_uname, account_type, account_pw, fees) VALUES ('5436759112', 'Jeff', 'Ronald', "jronald", 'librarian', "123", 0.0);


