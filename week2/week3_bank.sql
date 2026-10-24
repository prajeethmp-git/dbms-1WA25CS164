create database bank;
use bank;
create table branches(bname varchar(20) primary key,city varchar(20),assets int);
desc branches;
create table bankcustomer(cname varchar(10) primary key,cstreet varchar(20),ccity varchar(20));
desc bankcustomer;
create table bankaccount(accno int primary key,bname varchar(20),balance int,
foreign key(bname) references branches(bname));
desc bankaccount;
create table loan(lnum int primary key,bname varchar(20),amount int,
foreign key(bname) references branches(bname));
desc loan;
create table depositor(cname varchar(10),accno int,primary key(cname,accno),
foreign key(cname) references bankcustomer(cname),foreign key(accno) references bankaccount(accno));
desc depositor;

insert into branches values
('SBI Chamarajapete','bengalore',50000),
('SBI Residency road','bengalore',10000),
('SBI shivaji road','bombay',20000),
('SBI parliment road','delhi',10000),
('SBI jantar mantar','delhi',20000);
select * from branches;

insert into bankcustomer values
('avinash','bull temple road','bangalore'),
('dinesh','bannergatta road','bengalore'),
('mohan','nationalcollege road','bangalore'),
('nikhil','akbar road','delhi'),
('ravi','prithviraj road','delhi');
select * from bankcustomer;