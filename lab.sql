create table department(
    dno int primary key,
    dname VARCHAR(50),
    location varchar(50)
);
insert into department
values(1, 'csit', 'GGU'),
    (2, 'chemistry', 'ggu'),
    (3, 'forestry', 'ggu'),
    (4, 'mathematics', 'ggu');
select *
from department;
insert into department values (10,'physics','ggu'),(30,'rural tech.','ggu');
create table employee1(
    eno int primary key,
    ename VARCHAR(50),
    jobtype VARCHAR(50),
    manager char(10),
    hiredate date,
    dno int FOREIGN key REFERENCES department(dno),
    commision decimal(10, 2),
    salary decimal(7, 3)
);

update employee1 set dno=10 where dno=2;
update employee1 set dno=30 where dno=1;


insert into employee1
VALUES(
        01,
        'aman',
        'vice chancellor',
        'a',
        '09/05/2020',
        1,
        '400050',
        '1000.050'
    );

    INSERT into employee1 values(02,'nilima','professor','b','05/22/2022',2,'500000','1200.090'),(03,'prerna','asst. professor','c','05/12/2020',2,'200000','1234.567'),(04,'ebenezer','hod','b','08/30/2020',1,'600000','1234.567');
select *
from employee1;

update employee1 set manager='yes';
update employee1 set manager='no' where eno=2;


-- query no 10
select ename,jobtype from employee1 where manager='no';

-- query no.1
select eno,ename,jobtype,hiredate from employee1;

-- query no.3
select CONCAT(ename,',',jobtype) as 'ename,job' from employee1;

-- query no 4
select concat(eno,',',ename,',',jobtype,',',manager,',',hiredate,',',dno,',',commision,',',salary) as 'THE_OUTPUT' from employee1;

-- query no 5
SELECT ename,salary from employee1 where salary>1200;

-- query no 6
select ename,dno from employee1 where eno=02;

-- -- queryno 7
-- select * from employee1 where salary not between 1200 and 1000;
-- insert into employee1 VALUES(05,'abhay','asst. professor','e','10/5/2020',3,'23545','2142.314');


-- alter TABLE employee1 ADD UNIQUE(jobtype);
-- query no 2
select distinct jobtype from employee1;

-- to get in order  
-- ascending
select ename from employee1 ORDER by ename asc;

-- descending
select ename from employee1 ORDER by ename desc;

-- this is for intgers
select salary from employee1 order by salary asc;


-- when we are using betweeen it will also select the borders and not in not between like we want between 3 and 5 it will display 3 and 5 also  but in not between it wont consider them 

select * from employee1 where salary in(1000.050,1200.090,1200); --passing direct values..

-- sub query conceptse
select * from department;
select * from employee1;

update employee1 set hiredate='05/12/2022'  WHERE manager='c';

select * from employee1 where dno=(select dno from department where dname='csit');
--this is like merging two queries 

select * from employee1 where salary in(select salary from employee1 where salary>1200.090);

-- query no 12
SELECT salary from employee1 ORDER by salary DESC;
SELECT commision from employee1 ORDER by commision DESC;


-- query no 8
select ename,dno from employee1 where dno in(10,30) order by ename asc; 

-- query no 9
select ename,hiredate from employee1 where hiredate between '01/01/2022' and '12/31/2022';

-- query no 13
SELECT ename from employee1 where ename like('__a%');

-- query no 16
select getdate() as 'current_date' ;

select ename,dname,dno from department;
