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