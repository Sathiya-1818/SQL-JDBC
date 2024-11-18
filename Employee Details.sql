create database EmpDetails;
use EmpDetails;
create table EmplyTable(
empno int,
ename varchar(20),
job varchar(20),
mgr double,
hiredate date,
salary double,
comm int2 ,
deptno int3
) ;

INSERT INTO EmplyTable (empno, ename, job, mgr, hiredate, salary, comm, deptno)
VALUES 
(8369, 'SMITH', 'CLERK', 902, '1990-12-18', 800.00, NULL, 20),
(8499, 'ANYA', 'SALESMAN', 8698, '1991-02-20', 1600.00, 300.00, 20),
(8521, 'SETH', 'SALESMAN', 8698, '1991-02-22', 1250.00, 500.00, 30),
(8566, 'MAHADEVAN', 'MANAGER', 8839, '1991-04-02', 2985.00, NULL, 30),
(8654, 'MOMIN', 'SALESMAN', 8698, '1991-09-28', 1250.00, 1400.00, 20),
(8698, 'BINA', 'MANAGER', 8839, '1991-05-01', 2850.00, NULL, 30),
(8882, 'SHIVANSH', 'MANAGER', 8839, '1991-06-09', 2450.00, NULL, 30),
(8888, 'SCOTT', 'ANALYST', 8566, '1992-12-08', 3000.00, NULL, 10),
(8839, 'AMIR', 'PRESIDENT', NULL, '1991-11-18', 5000.00, NULL, 10),
(8844, 'KULDEEP', 'SALESMAN', 8698, '1991-09-08', 1500.00, 0.00, 30);


select * from EmplyTable;

select ename,salary from EmplyTable where salary>=2200;

select ename from EmplyTable where comm is null;
select ename,salary from EmplyTable where salary>2500 and salary<4000;

SELECT ename, job, salary FROM EmplyTable WHERE Mgr is null;

select * from EmplyTable where ename like '__a%';

select ename from EmplyTable where ename like '____t%';










 
  



