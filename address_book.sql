show databases;

#UC1 - create database
create database address_book;
use address_book;
select database();

#UC2 - create table
create table contacts(id int unsigned NOT NULL AUTO_INCREMENT, 
Name varchar(150) NOT NULL,
 Address varchar(150) NOT NULL,
 City varchar(150) NOT NULL,
 State varchar(150) NOT NULL,
 Zip int NOT NULL,
 PhoneNumber int NOT NULL,
 Email varchar(150), 
 primary key (id));
 show tables;
 describe contacts; 
 select * from contacts;
 
 #UC3 - Inserts contacts
 insert into Contacts ( Name, Address, City, State, Zip, PhoneNumber, Email) VALUES
 ('Rahul', 'Hanuman temple', 'pune', 'Maharashtra', '444011', '7385932', 'ry219613@gmail.com'),
 ('Rohit', 'Krishna temple', 'Mumbai', 'Maharashtra', '444012', '883014', 'Rohit123@gmail.com'),
 ('Rajesh', 'Shiv temple', 'Nashik', 'Maharashtra', '444013', '982312', 'Rajesh235@gmail.com');
 
#UC4 - Update Contact using Name
Update contact set address =  'Krishna temple' WHERE Name in('Rohit');
select * from Contacts;

#UC5 - Delete Contact using Name
insert into Contacts ( Name, Address, City, State, Zip, PhoneNumber, Email) VALUES 
('Radhika', 'marol naka', 'Mumbai', 'Maharashtra', '222044', '789522', 'Radhika234@gmail.com');
select * from Contacts;
delete from Contacts where Name in('Radhika');
select * from Contacts;

#UC6 - Retrieve all Contact using City or State name
select * from Contacts where City = 'Mumbai' or State = 'Maharashtra';

#UC7 - Count Contact in Address Book using City or State name
select count(city) from Contacts where City = 'Mumbai';

#UC8 - Sort Contacts by Person's name in given City or State
select * from Contacts where City = 'Mumbai' order by Name asc;


 
 

