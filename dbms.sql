create DATABASE dbms;
use dbms;

create table employee
(
    ename VARCHAR(30),
    eid int,
    ejoin date
    -- date format mm dd yyyy
    -- date is also a datatype \
    -- date will be in single inverted comma ''
    -- COMMENT 
);

insert into employee
values('aman yadav', 01, '09/05/2002');
insert into employee
values('prerna patnayak', 02, '10/20/2002');

select *
from employee;

insert into employee
    (eid, ejoin)
values(03, '12/15/2014');

CREATE table friends
(
    friendsid int not null,
    friendsName VARCHAR(50),
    friendsDate date,
);
select *
from friends;
insert into friends
values(101, 'prerna patnayak', '11/20/2010');
insert into friends
values(102, 'nilima sahu', '05/09/2010');
select *
from friends
WHERE friendsName='prerna patnayak';

UPDATE friends set friendsDate='04/03/2010' where friendsid=102;
-- to update existing row use this above query 
update friends set friendsName='aman' where friendsid=101;





create table schools
(
    schoolid int not null,
    schoolname VARCHAR(30),
    city VARCHAR(30)
);
insert into schools
values(1, 'paloti school', 'raipur'),
    (2, 'francis school', 'bilaspur'),
    (3, 'vnhs', 'bilaspur');
select *
from schools;
update schools set city='ambikapur' where schoolid=2;
update schools set schoolname='saint thomas' where schoolid=3;
update schoools set city='washington dc' where city='raipur';

create table restaurant(
    rid int,
    rname VARCHAR(30),
    rcity VARCHAR(30)
);
insert into restaurant VALUES(01,'heavens park','bilaspur'),(02,'balle balle','seoul'),(03,'hotel east park','gwangju');
select * from restaurant;
insert into restaurant(rname,rcity) values('kuchh bhi','kuchh kuchh');

UPDATE restaurant set rname='hongdae' where rname='hotel east park';