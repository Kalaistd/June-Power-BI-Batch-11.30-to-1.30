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





