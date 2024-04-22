USE library;

#Create our masterlist of Items
INSERT INTO item (item_id, item_type, cost) VALUES 
('i646572182', 'book', 18),
('i646572183', 'book', 22),
('i646572184', 'book', 25),
('i646572185', 'book', 12),
('i646572186', 'book', 20),
('i646572187', 'book', 14),
('i646572188', 'book', 16);
INSERT INTO item_book (ID, ISSN, title, author, publisher, genre) VALUES 
('i646572182', '97753918', 'The Road', 'Cormac McCarthy', 'Knopf', 'Post-Apocalyptic'),
('i646572183', '97753919', 'Animal Farm', 'George Orwell', 'Secker and Warburg', 'Political Satire'),
('i646572184', '97753920', 'The Shining', 'Stephen King', 'Doubleday', 'Horror'),
('i646572185', '97753921', 'Gone Girl', 'Gillian Flynn', 'Crown Publishing Group', 'Thriller'),
('i646572186', '97753922', 'The Book Thief', 'Markus Zusak', 'Picador', 'Historical Fiction'),
('i646572187', '97753923', 'Dune', 'Frank Herbert', 'Chilton Books', 'Science Fiction'),
('i646572188', '97753924', 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 'Harper', 'Non-fiction');

INSERT INTO item (item_id, item_type, cost) VALUES 
('i646572189', 'book', 30),
('i646572190', 'book', 18),
('i646572191', 'book', 22),
('i646572192', 'book', 25),
('i646572193', 'book', 12),
('i646572194', 'book', 20),
('i646572195', 'book', 14),
('i646572196', 'book', 16),
('i646572197', 'book', 28),
('i646572198', 'book', 32),
('i646572199', 'book', 19),
('i646572200', 'book', 24),
('i646572201', 'book', 16),
('i646572202', 'book', 21),
('i646572203', 'book', 15),
('i646572204', 'book', 26),
('i646572205', 'book', 23),
('i646572206', 'book', 17),
('i646572207', 'book', 29),
('i646572208', 'book', 18);
INSERT INTO item_book (ID, ISSN, title, author, publisher, genre) VALUES 
('i646572189', '97753925', '1984', 'George Orwell', 'Secker and Warburg', 'Dystopian'),
('i646572190', '97753926', 'To Kill a Mockingbird', 'Harper Lee', 'J. B. Lippincott & Co.', 'Southern Gothic'),
('i646572191', '97753927', 'The Catcher in the Rye', 'J. D. Salinger', 'Little, Brown and Company', 'Coming-of-age'),
('i646572192', '97753928', 'Pride and Prejudice', 'Jane Austen', 'T. Egerton, Whitehall', 'Romance'),
('i646572193', '97753929', 'The Great Gatsby', 'F. Scott Fitzgerald', 'Charles Scribner Sons', 'Tragedy'),
('i646572194', '97753930', 'Harry Potter and the Philosopher\'s Stone', 'J.K. Rowling', 'Bloomsbury', 'Fantasy'),
('i646572195', '97753931', 'The Hobbit', 'J.R.R. Tolkien', 'George Allen & Unwin', 'Fantasy'),
('i646572196', '97753932', 'The Da Vinci Code', 'Dan Brown', 'Doubleday', 'Mystery'),
('i646572197', '97753933', 'The Alchemist', 'Paulo Coelho', 'HarperTorch', 'Quest'),
('i646572198', '97753934', 'The Girl with the Dragon Tattoo', 'Stieg Larsson', 'Norstedts Förlag', 'Crime Fiction'),
('i646572199', '97753935', 'The Hunger Games', 'Suzanne Collins', 'Scholastic Corporation', 'Dystopian'),
('i646572200', '97753936', 'Lord of the Flies', 'William Golding', 'Faber and Faber', 'Allegory'),
('i646572201', '97753937', 'The Help', 'Kathryn Stockett', 'Amy Einhorn Books', 'Historical Fiction'),
('i646572202', '97753938', 'The Secret Garden', 'Frances Hodgson Burnett', 'Frederick Warne & Co', 'Children\'s Literature'),
('i646572203', '97753939', 'The Name of the Wind', 'Patrick Rothfuss', 'DAW Books', 'Epic Fantasy'),
('i646572204', '97753940', 'A Game of Thrones', 'George R. R. Martin', 'Bantam Spectra', 'Epic Fantasy'),
('i646572205', '97753941', 'The Road Less Traveled', 'M. Scott Peck', 'Simon & Schuster', 'Psychology'),
('i646572206', '97753942', 'Freakonomics', 'Steven D. Levitt, Stephen J. Dubner', 'William Morrow and Company', 'Economics'),
('i646572207', '97753943', 'The Power of Now', 'Eckhart Tolle', 'New World Library', 'Spirituality'),
('i646572208', '97753944', 'Brave New World', 'Aldous Huxley', 'Chatto & Windus', 'Dystopian');


INSERT INTO room (room_no, capacity, is_reserved) VALUES ("1234", 10, false);
INSERT INTO room (room_no, capacity, is_reserved) VALUES ("1235", 10, false);
INSERT INTO room (room_no, capacity, is_reserved) VALUES ("1236", 10, false);
INSERT INTO room (room_no, capacity, is_reserved) VALUES ("1237", 10, false);
INSERT INTO room (room_no, capacity, is_reserved) VALUES ("1238", 10, false);
INSERT INTO room (room_no, capacity, is_reserved) VALUES ("1239", 10, false);
INSERT INTO room (room_no, capacity, is_reserved) VALUES ("1240", 10, false);
INSERT INTO room (room_no, capacity, is_reserved) VALUES ("1241", 10, false);

#create accounts
INSERT INTO ACCOUNTS (account_id, fname, lname, account_uname, account_type, account_pw, fees) VALUES
('4235654235', 'Lisa', 'Green', 'lgreen', 'teacher', '123', 0.0),
('4235654236', 'John', 'Doe', 'jdoe', 'student', '123', 0.0),
('4235654237', 'Emily', 'Brown', 'ebrown', 'student', '123', 0.0),
('4235654238', 'Michael', 'Smith', 'msmith', 'student', '123', 0.0),
('4235654239', 'Sophia', 'Martinez', 'smartinez', 'student', '123', 0.0),
('4235654240', 'James', 'Lee', 'jlee', 'student', '123', 0.0),
('4235654241', 'Patricia', 'Taylor', 'ptaylor', 'student', '123', 0.0),
('4235654242', 'Robert', 'Moore', 'rmoore', 'student', '123', 0.0),
('4235654243', 'Jennifer', 'Wilson', 'jwilson', 'teacher', '123', 0.0),
('4235654244', 'William', 'Davis', 'wdavis', 'teacher', '123', 0.0);
INSERT INTO ACCOUNTS (account_id, fname, lname, account_uname, account_type, account_pw, fees) VALUES ('0123456789', 'Matt', 'Stamm', "mstamm", 'student', "123", 0.0);
INSERT INTO ACCOUNTS (account_id, fname, lname, account_uname, account_type, account_pw, fees) VALUES ('7557644080', 'Bill', 'Gates', "bgates", 'student', "123", 0.0);
INSERT INTO ACCOUNTS (account_id, fname, lname, account_uname, account_type, account_pw, fees) VALUES ('4793371711', 'Steve', 'Jobs', "sjobs", 'student', "123", 0.0);
INSERT INTO ACCOUNTS (account_id, fname, lname, account_uname, account_type, account_pw, fees) VALUES ('4587249112', 'Jill', 'Cassity', "jcassity", 'teacher', "123", 0.0);
INSERT INTO ACCOUNTS (account_id, fname, lname, account_uname, account_type, account_pw, fees) VALUES ('5436759112', 'Jeff', 'Ronald', "jronald", 'librarian', "123", 0.0);


