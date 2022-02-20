use student;
create table bsccs
(
    roll int,
    name varchar(30)
);
insert into bsccs
values(101, 'aman');
insert into bsccs
values(102, 'prerna');
insert into bsccs
values(103, 'nilima');
select *
from bsccs;

create table college
(
    cid int,
    cname varchar(30),
    ccity varchar(30)
);
-- this is to crreate table 

SELECT *
from college;
-- this will give what inside the table 
-- the asterisk means to select all  rows tuple column attribute

insert into college
values(101, 'bilasa college', 'bilaspur');
-- this will insert the data in the table 

--  ms sql server is not case sensitive
insert into college
values(102, 'atal science college', 'Ambikapur');
-- to insert more write again 

insert into college
values(104, 'bit', 'raipur'),
    (105, 'iit', 'durg'),
    (106, 'nit', 'nagput');
-- to insert multiple data use comma after the brackets end and at the end apply the semi colon again

SELECT ccity, cname
from college;
SELECT *
from college;
-- if we execute both of the query then it will give output of the both queries 
-- to select only single column replace * by column-name you will get the required column and also if you want to see two or more column than you have to write them with commas
-- also this is we can say that as vertical cut


create table emp
(
    empid int ,
    empname VARCHAR(30),
    eaddress VARCHAR(30)
);
insert into emp
VALUES(101, 'aman yadav', 'janjgir'),
    (102, 'Ebenezer k pravin', 'bilaspur');

insert into emp
    (empname,eaddress)
values('nilima', 'mahasamund');
-- here we didnt provided empid so it will be null 

SELECT *
from emp;
-- this was the classwork


-- 26 nov 
create TABLE new
(
    id int not null,
    named VARCHAR(30),
    lastname varchar(30)
);
-- since it int is not null we have to provide the values if we dont it will give us error

INSERT into new
    (id,named,lastname)
values(101, 'aman', 'yadav');
SELECT *
from new;


create table books
(
    id int,
    bname varchar(30)
);
insert into books
values(1, 'os'),
    (2, 'dbms'),
    (3, 'oracle'),
    (4, 'plsql');
insert into books
values(2, 'java');
select *
from books;

-- primary key is attribute which can IDENTIfy each and every record uniquely
-- if an attribute is not sufficient to create primary key we can combine more than 1 column to create primary key 
-- it doesnt allow null value 
-- in a single table there will be only one primary key i.e. one table one PK 

create table primaryst
(
    id int primary key,
    name varchar(50),
    city varchar(40)
);

select *
from primaryst;

insert into primaryst
values(1, 'john', 'ambikapur'),
    (2, 'david', 'bilaspur'),
    (3, 'samuel', 'durg');

insert into primaryst
values
    (4, 'mohan', 'rajnandgaon');
-- we arent obeying the rules of primary key it doesnt allow duplicate values in the primary key column it will be giving the error
-- INSERT into primaryst(name,city) VALUES('aman','janjgir'); this query will be error again as primary key doesnt allow null values


-- now will be combining two column to create primary key 
create table compositePK
(
    rollno int,
    sname VARCHAR(50),
    scity varchar(40),
    mobileno int,
    PRIMARY key(rollno,mobileno)
);
-- primary key(column name,);
-- composite primary key is created by keyword *primary key(column names)*

create table practicec
(
    id int primary key,
    name varchar(40),
    salary int,
    comission int,
    age int,
    job varchar(30)
);

insert into practicec
values(1, 'amit', 1000, 100, 25, 'clerk'),
    (2, 'amol', 2000, 150, 26, 'teach'),
    (3, 'sudeep', 3000, 200, 21, 'clerk'),
    (4, 'mahesh', 4000, 4000, 20, 'teacher');
insert into practicec
values(5, 'nilma', 2000, 500, 20, 'professor');
insert into practicec
values(6, 'prashant', 4000, 400, 32, 'professor');

UPDATE practicec set name='nilima' where name='nilma';

-- like operator   like('s%') to find the name whose start with s 
-- like('%h') it will give the ending letter 
select name
from practicec
where name like('____m%');
-- this will give the name of sudeep 
SELECT *
from practicec
where name like('a%');
select *
from practicec
where name like('%a');
-- this query is used for last letters which is here nilima

--  1.homework= write a sql query which display all the name with third character 'a' !!!!!!
-- name of the employee whose name ends with t 
update practicec set salary=1000000000 where id=5;
update practicec set comission=100000 where id=5;
select name
from practicec
where name like('%t');

-- name of emploee whose getting salary more than 3k
select name
from practicec
where salary>3000;
SELECT *
from practicec;
select name
from practicec
where name like('n%a');
-- to select the name that starts with a and ends with t 

UPDATE practicec set salary= salary+(salary*0.05) where id=5
;
-- to update salary of all this query will be used since there is no condition so we can use the above query if there is any specific condition is given then we have to use case 

-- after updating the salary incrementation we want to see the name and salary coloumn only so we have to write a new query again 
SELECT name, salary
from practicec;

select SUM(salary) as "total comission"
from practicec;
-- the above query will give the sum of any coumn you willll give and name the resultant column as " " in the above case there wasnt any specific condition to select which rows have to be sum so thats why we selected all the rows 



create table nilima
(
    id int primary key,
    name varchar(20)
);

insert into nilima
VALUES(01, 'nilima'),
    (2, 'aman');
SELECT *
from nilima;

insert into nilima
values(3, 'prerna');
-- create table department(id int primary key,dname varchar(30),location varchar(30));

-- alter command
-- to add extra column
alter table nilima add age int;
-- this will add one extra column in the nilima table 
-- if we dont insert value itll show null 

alter table nilima drop age;

-------------------------------------------------------------
-- DDL 
-- alter 
-- TRUNCATE
-- drop 

create table ddl
(
    id int ,
    name varchar(30),
    city varchar(20)
);
select *
from ddl;

alter table ddl add phone_no int;
-- this will add another column named phone_no

insert into ddl
values(1, 'aman', 'janjgir');

------------------------------------------------------------
alter table ddl drop COLUMN phone_no;
-- alter is only used to modify the schema

insert into ddl
values(2, 'nilima', 'mahasamund');

-------------------------------------------------------------
-- truncate coommmand
truncate table ddl;
select *
from ddl;
-- this will remove all the row from the tables.
-- this truncate will only show the schema..the structure

------------------------------------------------------------
-- drop command \ it will remove the entire schema from the database.
-- this will completely remove the table from the database. 
drop table ddl;
-- it will give error if we select i.e. object name is invalid.


-------------------------------------------------------------
-- data manipulation language dml
-- 1.INSERT
-- 2.UPDATE
-- 3.delete 
-- 4.select


select * from ddl;
--------------------------------------------------------------
-- update commmand..
-- this command will change values of the table..
UPDATE ddl set id=4 where name='aman';
-- set will used to update the value and where will find where to update. 
-------------------------------------------------------------
delete from ddl where id=2;
-- this will delete the whole row whose id is 2 

insert into ddl values(1,'nilima','mahasamund'),(3,'prerna','bilaspur'),(4,'ebenezer','bilaspur');
select * from ddl order by id asc;
update ddl set id=2 where name='ebenezer';

--------------------------------------------------------------
--------------------------view--------------------------------
-- it is a virtual table or a part of ttable.(also we can write as the part of the larrge table.)
-- it is dynamic in nature.
-- it is also an object like table 
--suppose we have very large table .. and we want some portion which we are using that small portion infformationl....
--then select this part and "copy" then nameit as tablesmall table complete name and add suffix small.
--then next time we will need that small portion we do not need to visit the large table we will only visit the small table and it will improve the performance..and also the time..
--whatever manipulation we will be doing in the large table it will be also reflectiing in the small table (virtual smalll table.) searching time will descrease.
--------------------------------------------------------------
insert into ddl values (5,'abhay','champa'),(6,'vaishnav','bilaspur'),(7,'manish','raipur');
select * from ddl;

-- those who are in bilaspur we need to make a view of them as they are used most to reduce the searching time..

select * from ddl where city='bilaspur';

create view ddlsmall as select * from ddl where city='bilaspur';
-- the above code will be create the small table..
select * from ddlsmall;
--now we can use this ddlsmall as a table whenever we need this,,
select name from ddlsmall where id=2;
-- this will give output from the small table.. 
