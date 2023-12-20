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

//UC5 Ability to delete person using person name

delete from Address_Book_Table where firstname='sohan'; 
  
//UC6 Ability to person retrieving to a particular city

select * from Address_Book_table where city='mumbai'; 

//UC7 Ability to understand the size of address book by city
SELECT City, State, COUNT(*) as AddressCount
FROM Address_Book_table
GROUP BY City, State;

//UC8 Ability to retrieve entries sorted alphabetically by persons name for given city
select * from Address_Book_Table
order by firstname asc;

//UC9 Ability to identify each address book with name and type.
ALTER TABLE Address_Book_Table
ADD COLUMN type varchar(50) ;
update Address_Book_Table set type='friend' where firstname='sanket';
update Address_Book_Table set type='friend' where firstname='rohan';
update Address_Book_Table set type='family' where firstname='vinay';
update Address_Book_Table set type='friend' where firstname='sanket';
update Address_Book_Table set type='family' where firstname='shubham';
update Address_Book_Table set type='friend' where firstname='mohit'; 

//UC10 Ability to get the number of contact persons count by type
SELECT type, COUNT(*) as contact_count
FROM Address_Book_Table
GROUP BY type;

//UC11 Ability to add person to both friend and family
update Address_Book_Table set type='friend' where firstname='sanket';
update Address_Book_Table set type='friend' where firstname='rohan';
update Address_Book_Table set type='family' where firstname='vinay';
update Address_Book_Table set type='friend' where firstname='sanket';
update Address_Book_Table set type='family' where firstname='shubham';
update Address_Book_Table set type='friend' where firstname='mohit'
