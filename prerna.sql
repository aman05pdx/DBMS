create database prerna;
use prerna;
create table cocBase(
    profileName varchar(30),
    playerTag varchar(20),
    playerTh int,
    playerBH int,
    cwlStars int,
    warStars int,
    Disord VARCHAR(30)
);

insert into cocBase 
values
('aman yadav','#PV2J22VU',12,9,456,1811,'AMAN#7622'),
('varun empire','#22CUJLOLP',13,8,499,1893,'VARUN#3849'),
('crazy reaper','#WER2454J',13,6,345,1221,'REAPER#7387'),
('horcrux hoax','#23asdjfw',10,6,445,1839,'horc#2362');


UPDATE cocBase set playerTh=12 where profileName='varun empire';
update cocBase set playerTag='#EVWER242' where playerTh=10;
update cocBase set cwlStars=10 where profileName='horcrux hoax';
SELECT profileName,Disord,cwlStars from cocBase;
-- DELETE profileName='varun empire' from cocBase;
update cocBase set profileName='aman' WHERE profileName='aman yadav';
SELECT * from cocBase;

-- CONSTRAINT is a concept of implementing 
-- business logic or
--  restriction  on table or
-- imposing certain rule

-- two types of CONSTRAINT primary key CONSTRAINT,, FOREIGN key CONSTRAINT
/*create table department(id int primary key,dname varchar(30),location varchar(30));
insert into department values(1,'cs','bsp'),(2,'maths','janjgir');
select * from department;

create table clg(id int primary key,name varchar(30),sal int,dno int FOREIGN key references department(id));
-- here we are using first table primary key in another table above you can see the syntax
update clg set dno=id ;

select * from clg; */

-- FOREIGN key allow duplicate values 
-- when we need to use references we haave to use FOREIGN key 
