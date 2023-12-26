/*Welcome to address book system
--UC1 create database and use address book
*/
create database Address_Book_Service1;
show databases;
use address_book_service1;

-- UC2 Create a Address_Book_table with differen attributes

create table Address_Book_Table_
(
id int auto_increment primary key,
firstname varchar(255) not null,
lastname varchar(255) not null,
address varchar(255) not null,
city varchar(255),
state varchar (255),
zip int,
phone_number varchar(20),
email varchar(255) 

);

-- UC3 Ability to insert new contacts to address book
insert into Address_Book_Table_ (firstname,lastname,address,city,state,zip,phone_number,email) values
('sanket','garde','ghatkopar','mumbai','maharashtra',40075,'7558797573','sanket@gmail.com'),
('rohan','shinde','pune','pune','maharashtra',411048,'7558654873','rohan@gmail.com'),
('mohit','shinde','wakad','pune','maharashtra',411042,'9860641089','mohit@gmail.com'),
('mahesh','mankar','wakad','pune','maharashtra',411042,'9860641089','mahesh@gmail.com'),
('jay','kadam','wakad','pune','maharashtra',411042,'9860641089','jay@gmail.com');

select * from address_book_table_;

-- UC4 Ability to edit existing contact person
update Address_Book_Table_ set firstname ='sohan' where firstname='mohit';

-- UC5 Ability to delete person using person name

delete from Address_Book_Table_ where firstname='sohan'; 
select * from address_book_table_;
  
-- UC6 Ability to person retrieving to a particular city

select * from Address_Book_table_ where city='mumbai'; 

-- UC7 Ability to understand the size of address book by city
SELECT City, State, COUNT(*) as AddressCount
FROM Address_Book_table_
GROUP BY City, State;

-- UC8 Ability to retrieve entries sorted alphabetically by persons name for given city
select * from Address_Book_Table_
order by firstname asc;
select * from address_book_table_;
-- UC9 Ability to identify each address book with name and type.
ALTER TABLE Address_Book_Table_
ADD COLUMN type varchar(50) ;
update Address_Book_Table_ set type='friend' where firstname='sanket';
update Address_Book_Table_ set type='friend' where firstname='rohan';
update Address_Book_Table_ set type='family' where firstname='sohan';
update Address_Book_Table_ set type='friend' where firstname='sanket';
update Address_Book_Table_ set type='family' where firstname='shubham';
update Address_Book_Table_ set type='friend' where firstname='mohit'; 

-- UC10 Ability to get the number of contact persons count by type
SELECT type, COUNT(*) as contact_count
FROM Address_Book_Table_
GROUP BY type;

-- UC11 Ability to add person to both friend and family
update Address_Book_Table_ set type='friend' where firstname='sanket';
update Address_Book_Table_ set type='friend' where firstname='rohan';
update Address_Book_Table_ set type='family' where firstname='vinay';
update Address_Book_Table_ set type='friend' where firstname='sanket';
update Address_Book_Table_ set type='family' where firstname='shubham';
update Address_Book_Table_ set type='friend' where firstname='mohit';

select * from address_book_table_;

-- Making a different table for the type

select * from address_book_table_;
-- Droped a type column.
alter table address_book_table_
drop column type;
select * from address_book_table_;

/*
Creating a table with type
*/
alter table address_book_table_
Add primary key (email);
drop table typetable;
create table typetable
( 
Tid int,
type varchar(20),
foreign key (Tid) references address_book_table_(id)
);

-- inserting into  a typetable 
select * from typetable;
select * from address_book_table_;
insert into typetable(Tid,type)
values
(1,'friend'),
(2,'family'),
(4,'friend'),
(5,'family');

-- UC 13 apply all the queries to uc6,UC7,uc8 and uc10
-- UC6
select * from Address_Book_table_ where city='mumbai';
-- uc7 
SELECT City, State, COUNT(*) as AddressCount
FROM Address_Book_table_
GROUP BY City, State;
-- UC8
select * from Address_Book_Table_
order by firstname asc;

-- Uc10
SELECT type, COUNT(*)
FROM typetable
GROUP BY type;

