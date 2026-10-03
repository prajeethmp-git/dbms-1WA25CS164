create database insurance;
use insurance;
create table person
(did varchar(10) primary key,name char(50),address varchar(50));
create table cars
(rnum varchar(10) primary key,model varchar(20),year varchar(10));
create table accident
(renum varchar(10) primary key,acc_date date,location varchar(50));
create table owns
(did varchar(10) primary key,rnum varchar(10), foreign key(did) references person(did),foreign key(rnum) references cars(rnum));
show tables;
create table participated
(did varchar(10),
rnum varchar(10),
renum varchar(10),
amount int,
foreign key(did) references person(did),foreign key(rnum) references cars(rnum),foreign key(renum) references accident(renum));
insert into person values
("A01","Richard","srinivas nagar"),
("A02","Pradeep","rajaji nagar"),
("A03","smith","ashoka nagar"),
("A04","venu","nr colony"),
("A05","john","hanumanth nagar");
select * from person;
insert into cars values
("KA012222","indica","1990"),
("KA023333","lancer","1958"),
("KA034444","toyoto","1998"),
("KA045555","honda","2008"),
("KA056666","audi","2005");
insert into owns values
("A01","KA012222"),
("A02","KA023333"),
("A03","KA034444"),
("A04","KA045555"),
("A05","KA056666");
insert into accident values
("11","2003-01-01","mysore road"),
("12","2004-02-02","south end circle"),
("13","2003-01-21","bull temple"),
("14","2008-02-17","mysore road"),
("15","2005-03-04","kanakpura road");
insert into participated values
("A01","KA012222","11",12000),
("A02","KA023333","12",50000),
("A03","KA034444","13",25000),
("A04","KA045555","14",3000),
("A05","KA056666","15",5000);
update participated set amount=25000 where rnum="KA045555";
select * from participated;
insert into accident values
("16","2003-01-07","kr road");
select * from accident;
select acc_date,location from accident;
select did from participated where amount>=25000;
