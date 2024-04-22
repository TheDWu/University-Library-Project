CREATE DATABASE library;
USE library;
# ACCOUNTS #############################################################

CREATE TABLE ACCOUNTS (
	account_id varchar(10) NOT NULL,
    fname varchar(15) NOT NULL,
    lname varchar(15) NOT NULL,
    account_uname varchar(16) NOT NULL,
    account_type varchar(10) NOT NULL,
    account_pw varchar(20) NOT NULL,
    fees double,
	CONSTRAINT CHK_account_type CHECK (account_type IN ('student', 'teacher', 'librarian', 'dev')),
    CONSTRAINT CHK_id_length CHECK (LENGTH(account_id) = 10),
    primary key (account_id)
);

# ITEMS #############################################################

CREATE TABLE ITEM (
	item_id varchar(10) NOT NULL,
    item_type varchar(15) NOT NULL,
	cost double,
    CONSTRAINT CHK_item_type CHECK (item_type IN ('Book', 'Textbook', 'Laptop', 'DVD', 'Calculator')),
    primary key (item_id, item_type)
);

CREATE TABLE ITEM_BOOK (
	ID varchar(10) NOT NULL,
    ISSN varchar(8) NOT NULL,
    title varchar(100) NOT NULL,
    author varchar(100),
    publisher varchar(100),
    genre varchar(100),
    primary key (ISSN),
    foreign key (ID) references ITEM(item_id)
);

CREATE TABLE ITEM_TEXTBOOK (
	ID varchar(10) NOT NULL,
    ISSN varchar(8) NOT NULL,
    title varchar(30) NOT NULL,
    author varchar(15),
    primary key (ISSN),
    foreign key (ID) references ITEM(item_id)
);

CREATE TABLE ITEM_LAPTOP (
	ID varchar(10) NOT NULL,
    serial_no varchar(20) NOT NULL,
    brand varchar(15),
    model varchar(15),
    primary key(serial_no),
    foreign key (ID) references ITEM(item_id)
);

CREATE TABLE ITEM_DVD (
	ID varchar(10) NOT NULL,
    serial_no varchar(20) NOT NULL,
    title varchar(30),
    director varchar(15),
    genre varchar(15),
    primary key(serial_no),
    foreign key (ID) references ITEM(item_id)
);

CREATE TABLE ITEM_CALCULATOR (
	ID varchar(10) NOT NULL,
    serial_no varchar(20) NOT NULL,
    calc_type varchar(15),
    brand varchar(15),
    primary key(serial_no),
    foreign key (ID) references ITEM(item_id),
    CONSTRAINT CHK_calc_type CHECK (calc_type IN ('scientific', 'graphing'))
);

# TRACKING HOLDS/CHECKEDOUT #############################################################

CREATE TABLE HOLDS_WAITLIST (
	h_item_id varchar(10),
    position int,
    h_account_id varchar(10),
    foreign key (h_account_id) references ACCOUNTS(account_id),
    foreign key (h_item_id) references ITEM(item_id),
    primary key (h_item_id, h_account_id)
);

CREATE TABLE CHECKEDOUT_ITEMS (
    item_type varchar(15),
	item_id varchar(10) NOT NULL,
    account_id varchar(10) NOT NULL,
	checkout_date datetime NOT NULL,
    fees double,
    primary key (item_id),
    foreign key (item_id, item_type) references ITEM(item_id, item_type),
    foreign key (account_id) references ACCOUNTS(account_id)
);

CREATE TABLE FEES (
	f_item_id varchar(10) NOT NULL,
    f_account_id varchar(10) NOT NULL,
    fee_amount double DEFAULT 0,
    item_type varchar(20),
    foreign key (f_account_id) references ACCOUNTS(account_id),
    foreign key (f_item_id) references ITEM(item_id),
    CONSTRAINT CHK_f_item_type CHECK (item_type IN ('Book', 'Textbook', 'Laptop', 'DVD', 'Calculator')),
    primary key (f_item_id, f_account_id)
);

# ROOMS ###################################################################################

CREATE TABLE ROOM (
	room_no varchar(4) NOT NULL,
    capacity int,
    is_reserved bool,
    primary key (room_no)
);

CREATE TABLE ROOM_RESERVED(
	room_no varchar(4) NOT NULL,
    reserved_by_id varchar(10) NOT NULL,
    reserved_time_start datetime NOT NULL,
    foreign key (room_no) REFERENCES ROOM(room_no),
    foreign key (reserved_by_id) REFERENCES ACCOUNTS(account_id),
    primary key (room_no, reserved_time_start)
);


CREATE TABLE hold_attempts_logs (
    item_id VARCHAR(10),
    account_id VARCHAR(10),
    attempted_on DATETIME DEFAULT CURRENT_TIMESTAMP,
    message VARCHAR(255),
    primary key (item_id)
);

CREATE TABLE checkout_log(
	item_id varchar(10),
    check_date DATETIME DEFAULT CURRENT_TIMESTAMP
);
