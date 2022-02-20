
CREATE TABLE dept
(
    Dno INT NOT NULL,
    Dname varchar(50) DEFAULT NULL,
    Location varchar(50) DEFAULT NULL,
    PRIMARY KEY (Dno)
);
INSERT INTO dept
VALUES
    (10, 'Accounting', 'New York'),
    (20, 'Research', 'Dallas'),
    (30, 'Sales', 'Chicago'),
    (40, 'Operation', 'Boston'),
    (50, 'Marketing', 'New Delhi');

    SELECT * from dept;

CREATE TABLE employee
(
    Eno char(3) NOT NULL,
    Ename varchar(50) NOT NULL,
    Job_type varchar(50) NOT NULL,
    Manager char(3) DEFAULT NULL,
    Hire_date date NOT NULL,
    Dno int DEFAULT NULL,
    Commission decimal(10,2) DEFAULT NULL,
    Salary decimal(7,2) NOT NULL,
    PRIMARY KEY (Eno),
    CONSTRAINT Dno FOREIGN KEY (Dno) REFERENCES dept (Dno),
    CONSTRAINT Manager FOREIGN KEY (Manager) REFERENCES employee (Eno)
);



INSERT INTO employee
VALUES
    ('736', 'Smith', 'Clerk', '790', '1981-12-17', 20, 0.00, 1000.00),
    ('749', 'Allan', 'Sales_man', '769', '1981-02-20', 30, 300.00, 2000.00),
    ('752', 'Ward', 'Sales_man', '769', '1981-02-22', 30, 500.00, 1300.00),
    ('756', 'Jones', 'Manager', '783', '1981-04-02', 20, 0.00, 2300.00),
    ('765', 'Martin', 'Sales_man', '784', '1981-04-22', 30, 1400.00, 1250.00),
    ('769', 'Blake', 'Manager', '783', '1981-05-01', 30, 0.00, 2870.00),
    ('778', 'Clark', 'Manager', '783', '1981-06-09', 10, 0.00, 2900.00),
    ('783', 'King', 'President', NULL, '1981-11-17', 10, 0.00, 2950.00),
    ('784', 'Turner', 'Sales_man', '769', '1981-09-08', 30, 0.00, 1450.00),
    ('787', 'Adams', 'Clerk', '778', '1983-01-12', 20, 0.00, 1150.00),
    ('788', 'Scott', 'Analyst', '756', '1982-12-09', 20, 0.00, 2850.00),
    ('790', 'James', 'Clerk', '769', '1981-12-03', 30, 0.00, 950.00),

    ('792', 'Ford', 'Analyst', '756', '1981-12-03', 20, 0.00, 2600.00),
    ('793', 'Miller', 'Clerk', '788', '1982-01-23', 40, 0.00, 1300.00);
    select sum(Salary*0.1) from employee;
select * from employee;
-- query 1
    select Eno,Ename,Job_type,Hire_date from employee;

    -- query no 2
    SELECT distinct Job_type from employee;

    -- query no 3
    select CONCAT(Ename,',',Job_type) as 'ename,job' from employee;

    -- query no 4
    select concat(Eno,',',Ename,',',Job_type,',',Manager,',',Hire_date,',',Commission,',',Salary) as 'THE_OUTPUT' from employee;
    -- select * as 'the-output' from employee;

select * from employee;   

 -- query no 5
 select Ename,Salary from employee where Salary>2850;

-- queery no 6
SELECT Ename,Dno FROM employee WHERE Eno=790;

-- query no 7
select Ename,Salary from employee WHERE Salary not BETWEEN 1500 and 2850;                                  
select * from employee;

-- query no 8 #
select Ename, Dno from employee where Dno in(10,30) ORDER by Ename ASC;

-- query no 9
select Ename,Hire_date from employee where Hire_date like '1981%';
-- select Ename,Hire_date from employee where Hire_date= ;

-- query no 10
SELECT Ename,Job_type from employee where Manager is null;


-- query no 11
select Ename,Salary,Commission from employee where Commission NOT IN(0);

-- query no 12
SELECT * from employee   ORDER by Salary desc;

-- query no 13
select Ename from employee where Ename like '__a%';

-- query no 14
select Ename,Dno,Manager from employee WHERE Ename like '%r%r%' or Ename like '%a%a%' and Dno=30 or Manager=778;

-- query no 15
SELECT Ename, Salary,Commission from employee where Commission>(Salary + Salary*0.05);

-- query no 19
select CONCAT(Ename,' earns ',Salary,' monthly but wants ',3*Salary,'.') as Dream_Salary from employee;
-- SELECT * from employee;

-- query no 16
select getdate() as date;
-- the getdate() function is for mssql and in my sql it is curdate()

-- query no 23
select distinct Job_type from employee where Dno=30; 

-- select * from employee;
-- SELECT e.Ename,d.Dname from employee where Ename like '%a%';

-- query no. 20
select CONCAT(UPPER(SUBSTRING(Ename,1,1)),LOWER(SUBSTRING(Ename,2,50))) as name,len(Ename) as length from employee where Ename like 'j%' or Ename like 'a%' or Ename like 'm%';
-- for length FUNCTION use len() in sql server. 

-- select Ename,Dname,Dno from employee;
-- select DATENAME(weekday,Hire_date) as DAY;

-- query no 37
select dno,Ename,Job_type from employee where Dno=30;

-- query no 36
select Ename,Salary from employee where Manager=783;
select Ename,Salary from employee where Manager=(select Eno from employee where Ename='King');

 -- comment SELECT Eno,Ename from employee where Ename like '%t%' and ;-- select COUNT() comment


-- query no 22
 select employee.Ename,dept.Dname,dept.Dno from dept join employee on employee.Dno=dept.Dno;
 select employee.Ename,dept.Dname,dept.Dno from employee join dept on employee.Dno=dept.Dno order by Ename asc;


-- query no 24
select employee.Ename,dept.Dname from employee join dept on employee.Dno=dept.Dno WHERE Ename like '__a%';


-- query no 25
select employee.Ename,employee.Job_type,dept.Dno,dept.Dname from employee JOIN dept on employee.Dno=dept.Dno where dept.[Location]='Dallas';


-- query no 28
select Ename,replicate('*',(Salary/100)) as Salary_in_asterisk from employee;
-- use repeat in mssql

-- query no 29
select MAX(Salary) as maximum,MIN(Salary) as minimum,SUM(Salary) as sum,AVG(Salary) as average from employee;

-- query no 31
select COUNT(distinct Manager) as total_manager from employee;

-- query no 30
select Job_type,count(*) as no_of_employees from employee group by Job_type;


-- query no 33
select Ename,Hire_date from employee where Dno=30;
select Ename,Hire_date from employee where Dno=(select Dno from employee where Ename='Blake');


-- query no 34
select Eno,Ename from employee where Salary>(select AVG(Salary) from employee);

