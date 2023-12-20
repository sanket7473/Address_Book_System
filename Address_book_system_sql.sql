Welcome to address book system
//UC1 create database and use address book

create database Address_Book_Service;
show databases;
use address_book_service;

//UC2 Create a Address_Book_table with differen attributes

create table Address_Book_Table
(
firstname varchar(255) not null,
lastname varchar(255) not null,
address varchar(255) not null,
city varchar(255),
state varchar (255),
zip int,
phone_number varchar(20),
email varchar(255)

);

//UC3 Ability to insert new contacts to address book
insert into Address_Book_Table (firstname,lastname,address,city,state,zip,phone_number,email) values
('sanket','garde','ghatkopar','mumbai','maharashtra',40075,'7558797573','sanket@gmail.com'),
('rohan','shinde','pune','pune','maharashtra',411048,'7558654873','rohan@gmail.com'),
('mohit','shinde','wakad','pune','maharashtra',411042,'9860641089','mohit@gmail.com');

//UC4 Ability to edit existing contact person
select * from Address_Book_Table;
update Address_Book_Table set firstname ='sohan' where firstname='mohit';