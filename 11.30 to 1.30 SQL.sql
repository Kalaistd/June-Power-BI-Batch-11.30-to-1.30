create table students(
	rollno int,
	sname varchar(20),
	age int )

--single line cmnt
--    /* multi line cmnt */


/*
--to create an table
select *
from students;

alter table students rename to emp;*/

select *
from emp;


alter table students rename column sname to full_name;



--to add a column

alter table students add column job date


select *
from students;


--to modify an column
	ALTER TABLE students ALTER COLUMN job TYPE int;


---to insert
INSERT INTO students (rollno, ename, age,dob)
	VALUES (1,'Pradeep',30,'21-09-2026'),
	(2,'Ramesh',23,'23-05-2026'),
	(3,'Varsha',25,'02-03-2003'),
	(4,'Santhoshini',21,'02-03-2006');



select * from students
where age = 23

--to update

update students
set age = 16
where rollno=8


--to  delete a particular record

delete from students
where rollno=1








-------------------------------------------------------------------------------


CREATE TABLE emp (
  empno decimal(4,0) NOT NULL,
  ename varchar(10) default NULL,
  job varchar(9) default NULL,
  mgr decimal(4,0) default NULL,
  hiredate date default NULL,
  sal decimal(7,2) default NULL,
  comm decimal(7,2) default NULL,
  deptno decimal(2,0) default NULL
);

DROP TABLE IF EXISTS dept;

CREATE TABLE dept (
  deptno decimal(2,0) default NULL,
  dname varchar(14) default NULL,
  loc varchar(13) default NULL
);

INSERT INTO emp VALUES ('7369','SMITH','CLERK','7902','1980-12-17','800.00',NULL,'20');
INSERT INTO emp VALUES ('7499','ALLEN','SALESMAN','7698','1981-02-20','1600.00','300.00','30');
INSERT INTO emp VALUES ('7521','WARD','SALESMAN','7698','1981-02-22','1250.00','500.00','30');
INSERT INTO emp VALUES ('7566','JONES','MANAGER','7839','1981-04-02','2975.00',NULL,'20');
INSERT INTO emp VALUES ('7654','MARTIN','SALESMAN','7698','1981-09-28','1250.00','1400.00','30');
INSERT INTO emp VALUES ('7698','BLAKE','MANAGER','7839','1981-05-01','2850.00',NULL,'30');
INSERT INTO emp VALUES ('7782','CLARK','MANAGER','7839','1981-06-09','2450.00',NULL,'10');
INSERT INTO emp VALUES ('7788','SCOTT','ANALYST','7566','1982-12-09','3000.00',NULL,'20');
INSERT INTO emp VALUES ('7839','KING','PRESIDENT',NULL,'1981-11-17','5000.00',NULL,'10');
INSERT INTO emp VALUES ('7844','TURNER','SALESMAN','7698','1981-09-08','1500.00','0.00','30');
INSERT INTO emp VALUES ('7876','ADAMS','CLERK','7788','1983-01-12','1100.00',NULL,'20');
INSERT INTO emp VALUES ('7900','JAMES','CLERK','7698','1981-12-03','950.00',NULL,'30');
INSERT INTO emp VALUES ('7902','FORD','ANALYST','7566','1981-12-03','3000.00',NULL,'20');
INSERT INTO emp VALUES ('7934','MILLER','CLERK','7782','1982-01-23','1300.00',NULL,'10');

INSERT INTO dept VALUES ('10','ACCOUNTING','NEW YORK');
INSERT INTO dept VALUES ('20','RESEARCH','DALLAS');
INSERT INTO dept VALUES ('30','SALES','CHICAGO');
INSERT INTO dept VALUES ('40','OPERATIONS','BOSTON');



select * from emp

select * from dept


----- to filter the record
select ename,salary,dept_name
from emp
where dept_name = 'CLERK'




SELECT 23+3

SELECT * FROM EMP

------------------------Arithmetic Operators

update emp 
set salary=8000
where ename='KING'

select 10%3	



---------------------comparison


SELECT * FROM EMP
where dept_name = 'CLERK'

---asc
SELECT * FROM EMP
order by salary asc


--desc
SELECT * FROM EMP
order by salary desc

SELECT * FROM EMP
where salary > 2000
order by salary desc


truncate table emp

SELECT * FROM EMP
where salary = 3000

SELECT * FROM EMP
where dept_name != 'CLERK'

-------------------------Logical Operators


SELECT * FROM EMP
where salary >= 3000



SELECT * FROM EMP
where salary >= 3000 and deptno=10


SELECT * FROM EMP
where salary >= 3000 or deptno=10

SELECT * FROM EMP
where salary >= 3000 and (deptno=10 or dept_name='CLERK')

---------------------------------------------------------

--SPECIAL OPETRATORS

select * 
from emp
where ename like 'A%'


select * 
from emp
where ename like '%N'


select * 
from emp
where ename like 'A%N'


select * 
from emp
where ename like '__R%'


select * 
from emp
where ename like '%_R%'


select * 
from emp
where ename not like 'A%'



select * 
from emp
where ename ilike 'a%'

------------------------------

--IN
select * 
from emp
where deptno=10


select * 
from emp
where deptno=10 or deptno=20 or deptno=30


select * from emp
where deptno in(10,20)


select * from emp
where deptno not in(10,20)


select * from emp
where salary >2000 and salary <4000



select * from emp
where salary between 2000 and 4000



---null


select * from emp
where mgr is null


select * from emp
where comm is null

select * from emp
where comm is not null

------------------------------------------------------------


--GROUP BY

SELECT * FROM EMP

SELECT DEPT_NAME,SUM(SALARY)
FROM EMP
GROUP BY DEPT_NAME


SELECT DEPTNO,SUM(SALARY)
FROM EMP
GROUP BY DEPTNO


SELECT DEPT_NAME, COUNT(*)
FROM EMP
GROUP BY DEPT_NAME




SELECT DEPT_NAME,AVG(SALARY)
FROM EMP
GROUP BY DEPT_NAME


SELECT DEPT_NAME,MIN(SALARY)
FROM EMP
GROUP BY DEPT_NAME


SELECT DEPT_NAME,MAX(SALARY),MIN(SALARY),SUM(SALARY),AVG(SALARY),COUNT(*)
FROM EMP
GROUP BY DEPT_NAME
ORDER BY MIN(SALARY) DESC



SELECT DEPT_NAME,MAX(SALARY),MIN(SALARY),SUM(SALARY),AVG(SALARY),COUNT(*)
FROM EMP
GROUP BY DEPT_NAME
ORDER BY 2



----------------------

--HAVING


SELECT DEPT_NAME,COUNT(*) AS NO_OF_EMPLOYEES
FROM EMP
GROUP BY DEPT_NAME
HAVING COUNT(*)>2
ORDER BY 2



----------------------

--DATE FNS

SELECT CURRENT_DATE; -- 2026-04-04

SELECT NOW(); -- 2026-04-04 17:26:00+05:30

	SELECT EXTRACT(YEAR FROM CURRENT_DATE); -- 2026
	SELECT EXTRACT(MONTH FROM CURRENT_DATE); -- 4

SELECT * FROM EMP


SELECT ENAME,EXTRACT(YEAR FROM HIREDATE) AS HIRED_YEAR
FROM EMP


SELECT DATE_TRUNC('month', NOW()); -- 2026-04-04 00:00:00

SELECT DATE_TRUNC('YEAR', NOW());

SELECT AGE('2026-04-04', '2020-05-23'); -- 6 years


SELECT TO_DATE('04-04-2026', 'DD-MM-YYYY');


SELECT '05-10-2026'


SELECT * FROM EMP


SELECT TO_TIMESTAMP('2026-04-04 17:26', 'YYYY-MM-DD HH24:MI');


-- Add Days  
SELECT DATE '2026-05-18' + 5; -- 2026-05-23


--Subtract dates   
SELECT DATE '2026-10-18' - DATE '2026-10-05'; -- 13


-------------------------------------------------

--STRING FNS

--i. LENGTH(string) → Returns length 
	SELECT LENGTH('PostgreSQL'); -- 10


	SELECT * FROM EMP


	SELECT ENAME,LENGTH(ENAME)
	FROM EMP




-- ii. UPPER(string), LOWER(string) → Case conversion
-- 	Converts text to uppercase or lowercase.

	SELECT UPPER('postgresql'); -- POSTGRESQL
	
	SELECT LOWER('HELLO'); -- hello


	SELECT CONCAT('Hello', '--', 'World'); -- Hello World


-- iv. POSITION(substring IN string) → Find position
	
	SELECT POSITION('QL' IN 'PostgreSQL'); -- 8

-- v. REPLACE(string, from, to) → Replace substring
	
	SELECT REPLACE('2026-04-04', '-', '/'); -- 2026/04/04

	SELECT * FROM EMP



	SELECT HIREDATE,REPLACE(HIREDATE,'-','/')
	FROM EMP




	-- vi. TRIM([LEADING|TRAILING|BOTH] chars FROM string) → Remove characters
	SELECT TRIM(' ' FROM '  hello  '); -- hello

-- vii. LEFT(string, n) / RIGHT(string, n) → Extract characters from left/right
	SELECT LEFT('PostgreSQL', 4);  -- Post
	SELECT RIGHT('PostgreSQL', 3); -- SQL


	SELECT 'HELLO  '



------------------------------------------------------------------------------

--CONSTRAINTS

-- Example: Students Table with Full Constraints

CREATE TABLE studentss (
    student_id SERIAL PRIMARY KEY,                          -- PRIMARY KEY + SERIAL
    first_name VARCHAR(50) NOT NULL, 		   				-- NOT NULL
    last_name VARCHAR(50) NOT NULL,                  	    -- NOT NULL
    email VARCHAR(100) UNIQUE NOT NULL,             	    -- UNIQUE + NOT NULL
    age INT CHECK (age >= 18 AND age <= 60),        	    -- CHECK constraint
    status VARCHAR(10) DEFAULT 'non-active',           	    -- DEFAULT value
    class_id INT,                                   	    -- will be used for FOREIGN KEY
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 		-- DEFAULT timestamp
    FOREIGN KEY (class_id) REFERENCES classes(class_id) ON DELETE SET NULL -- FOREIGN KEY
);



CREATE TABLE classes (
	class_id SERIAL PRIMARY KEY,
	class_name VARCHAR(50) NOT NULL);


select * from studentss;

select * from CLASSES



INSERT INTO studentss (first_name, last_name, email, age, status, class_id)VALUES
	('Pradeep', 'Kumar', 'pradeep.kumar@example.com', 22, 'active', 1),
	('VArsha', 'Sharma', 'varsha.sharma@example.com', 25, DEFAULT, 2),
	('Ramesh', 'Mehta', 'ramesh.mehta@example.com', 20, 'non-active', 3),
	('Santhoshini', 'Singh', 'priyaa.singh@example.com', 28, 'active', NULL); -- NULL allowed for foreign key



INSERT INTO classes (class_name) VALUES
('Computer Science'),
('Mathematics'),
('Physics');

select * from emp
where ename='ALLEN'


create index idx_name on emp(ename)

select * from emp
where ename='ALLEN'


create index idx_mgr on emp(mgr)

drop index idx_mgr on emp



--------------------------------------------

--joins

--JOINS

--Department table
CREATE TABLE departments (
	dept_id INT PRIMARY KEY,
	dept_name VARCHAR(50)
);

--Employee table
CREATE TABLE employees (
	emp_id INT PRIMARY KEY,
	name VARCHAR(50),
	dept_id INT REFERENCES departments (dept_id)
	);


SELECT * FROM DEPARTMENTS

SELECT * FROM EMPLOYEES


-- Insert values for the table
INSERT INTO departments (dept_id,dept_name) VALUES
(10,'HR'),
(20,'IT'),
(30,'TRAINING'),
(40,'ACCOUNTS'),
(50,'SALES');

INSERT INTO employees (emp_id, name, dept_id) VALUES
(1, 'Kalai', 10),   
(2, 'Jana', 20),     
(3, 'Grace', 30),   
(4, 'Brindha', 40),    
(5, 'Keerthi', NULL),   
(6, 'Sakthi', 20),     
(7, 'Maha', NULL);   



SELECT * FROM DEPARTMENTS

SELECT * FROM EMPLOYEES




-inner join

select employees.name,departments.dept_name
from employees
inner join departments
on employees.dept_id = departments.dept_id


select E.name,D.dept_name
from employees E
inner join departments D
on E.dept_id = D.dept_id


---left join

select E.name,D.dept_name
from employees E
left join departments D
on D.dept_id = E.dept_id


---right join

select E.name,D.dept_name,D.dept_id
from employees E
right join departments D
on E.dept_id = D.dept_id


---full join

select E.name,D.dept_name,D.dept_id
from employees E
full join departments D
on E.dept_id = D.dept_id



-----cross join

select E.name,D.dept_name,D.dept_id
from employees E
cross join departments D


---self join

select e1.empno,e1.ename as Manager,e2.ename as Employee
from emp e1
join emp e2
on e1.empno=e2.mgr


select * from emp


-------------------------------------------------------------------

--union

-- First table

create table employee2025(emp_id int, name varchar(25));
insert into employee2025 values(1,'Kalai'),(2,'Jana');

--Second table

create table employee2026(emp_id int, name varchar(25));
insert into employee2026 values(5,'Shiva'),(2,'Jana');


select * from employee2025

select * from employee2026




select *
from employee2025
union
select * 
from employee2026




select emp_id,name
from employee2025
union all
select emp_id,name
from employee2026



select * from emp


-- Department table
CREATE TABLE departments (dept_id INT PRIMARY KEY, dept_name VARCHAR(50));

-- Employee table
CREATE TABLE employees (emp_id INT PRIMARY KEY,name VARCHAR(50),dept_id INT REFERENCES departments (dept_id));



-- Insert values for the table
INSERT INTO departments (dept_id,dept_name) VALUES
(10,'HR'),
(20,'IT'),
(30,'TRAINING'),
(40,'ACCOUNTS'),
(50,'SALES');

INSERT INTO employees (emp_id, name, dept_id) VALUES
(1, 'Kalai', 10),   
(2, 'Jana', 20),     
(3, 'Karthi', 30),   
(4, 'Sasi', 40),    
(5, 'Siva', NULL),   
(6, 'Vishnu', 20),     
(7, 'Arun', NULL);   




select * from employees

select * from departments

---full  join without union
select e.name,d.dept_name
from employees e
full join departments d
on e.dept_id=d.dept_id


--full join with union
select e.name,d.dept_name
from employees e
left join departments d
on e.dept_id=d.dept_id
union
select e.name,d.dept_name
from employees e
right join departments d
on e.dept_id=d.dept_id

------------------------------------------------------------

--views

create  view emp_details as 
select e.emp_id,e.name,d.dept_id,d.dept_name
from  employees e
inner join departments d
on e.dept_id = d.dept_id


select * from emp_details

CREATE VIEW MGR_DETAILS AS
select * from emp
where dept_name = 'MANAGER'


SELECT * FROM MGR_DETAILS


UPDATE MGR_DETAILS
		SET ename = 'Janani'
		WHERE empno = 7566;


		
-- Create or Replace View:
	CREATE OR REPLACE VIEW employee_detailsss AS
	SELECT e.emp_id, e.name, d.dept_name, d.dept_id
	FROM employees e
	LEFT JOIN departments d ON e.dept_id = d.dept_id;


	drop view employee_detailsss


----------------------------------------------------------

--single column indexes

	CREATE INDEX i_name ON emp(ename); 
	
	SELECT * FROM emp WHERE ename = 'ALLEN';



select * from emp


--Composite (Multi-Column) Index

	CREATE INDEX idx_name_dep ON emp(ename, dept_name);
	
	SELECT * FROM emp WHERE ename = 'CLARK' AND dept_name = 'MANAGER';



-----------------------------------------------------

--sub queries

-- Example  Employees who work in department 30

SELECT ename, deptno
FROM emp
WHERE deptno IN (
    SELECT deptno
    FROM dept
    WHERE deptno = 30
);



select *
from emp
order by salary desc
limit 1


select ename,max(salary) as higher_salary
from emp
group by emp.ename
order by higher_salary desc
limit 1


select * from emp where deptno = 30


select max(salary) from emp

select * from emp where salary = 5000
-------------------------------
select *
from emp
where salary =(
	select max(salary)
	from emp
)
--------------------------------

---IN

SELECT ename, deptno
FROM emp
WHERE deptno IN (
    SELECT deptno
    FROM dept
    WHERE deptno = 30
);



SELECT ename, deptno
FROM emp
WHERE deptno not IN (
    SELECT deptno
    FROM dept
    WHERE deptno = 30
);



-- Employees whose job is SALESMAN
SELECT ename, dept_name
FROM emp
WHERE dept_name IN (
    SELECT dept_name
    FROM emp
    WHERE dept_name = 'SALESMAN' );

select * from emp



--Exist
-- ExampleDepartments that have employees

SELECT d.deptno, d.dname
FROM dept d
WHERE EXISTS (
    SELECT 1
    FROM emp e
    WHERE e.deptno = d.deptno
);




SELECT d.deptno, d.dname
FROM dept d
WHERE not EXISTS (
    SELECT 1
    FROM emp e
    WHERE e.deptno = d.deptno
);



select * from emp



--NOT EXISTS (Row does NOT exist)
-- Example:
-- Employees who do NOT have a manager

SELECT ename
FROM emp e
WHERE NOT EXISTS (
    SELECT 1
    FROM emp m
    WHERE m.empno = e.mgr
);



--Example 1: Employees earning more than ANY employee in dept 30

SELECT ename, salary
FROM emp
WHERE salary > ANY (
    SELECT salary
    FROM emp
    WHERE deptno = 30
);


-- Example:
SELECT ename, salary,deptno
FROM emp
WHERE salary > ALL (
    SELECT salary
    FROM emp
    WHERE deptno = 30
);





select * from emp




---------------------------------------------

--single row subquery

select * 
from emp
where salary =(
	select max(salary) 
	from emp
)



--multi row subquery

SELECT * 
FROM Emp 
WHERE Deptno IN (
	SELECT deptno 
	FROM dept
	WHERE dept_name = 'MANAGER'
	);

select * from emp

select * from dept

SELECT * 
FROM Emp 
WHERE salary >any (
	SELECT deptno 
	FROM Dept 
	WHERE dept_name = 'MANAGER'
	);



------correlated subquery

---employees who earning more than the avg salary from each dept
SELECT e.eName, e.Salary,e.deptno
FROM Emp e 
WHERE e.Salary > (
	SELECT AVG(Salary)                   
	FROM Emp 
	WHERE Deptno = e.Deptno
	);


select * from emp


select deptno,avg(salary)
from emp
group by deptno


select * from emp
where deptno=30


--------------------------------

-- Some subqueries in emp table
-- Employees earning more than average salary
		SELECT ename, salary
		FROM emp
		WHERE salary > (
			SELECT AVG(salary) 
			FROM emp
			);

		
-- 2. Employees earning more than SMITH
		SELECT ename, salary
		FROM emp
		WHERE salary > (
    		SELECT salary 
   			FROM emp 
   			WHERE ename = 'FORD'
		);



--3.Employees with highest salary
	SELECT ename, salary
	FROM emp
	WHERE salary = (
    		SELECT MAX(salary) 
			FROM emp
	);



	
-- 4. Employees not in department 20
 	SELECT ename
	FROM emp
	WHERE deptno not IN (
    		SELECT deptno 
   			FROM emp 
    		WHERE deptno = 20
	);



--5. Employees whose manager is KING
	SELECT ename
	FROM emp
	WHERE mgr = (
		SELECT empno 
		FROM emp 
		WHERE ename = 'KING'
	);



select * from emp
