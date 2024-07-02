/*
List all employeesloyess working in department 10 who have reporting managers
*/
select ename
from emp
where mgr is not null and deptno=10;

/*
List who all are clerk and getting no commission.
*/
select ename
from emp 
where commission is null and job='CLERK';

/*
List all the employees of department no 10 and 30 and don't have reporting managers.
*/
select ename
from emp
where (deptno=10 or deptno=30) and mgr is null;

/*
List the salesmen from department 30 getting salary more than 2450.
*/
select ename
from emp
where job='SALESMAN' and deptno=30 ans sal>2450;

/*
List all the anaysts of department 20 with salary higher than 2500
*/
select ename
from emp
where job='ANALYST' and deptno=20 and sal> 2500;

/*
List employee names that start with M and J
*/
SELECT 
	ename
FROM 
	EMP e 
WHERE 
	ENAME LIKE 'M%' OR ENAME LIKE 'J%';

/*
Make a list of employees except of department 30 along with their annual salary.
*/
select ename, sal
from emp
where deptno !=30;

/*
Make a list of employees whose names don't end with 'ES' and 'R'
*/
SELECT 
	ename
FROM 
	EMP e 
WHERE 
	ENAME NOT LIKE '%ES' AND ENAME NOT LIKE '%R';

/*
List all the employees and a salary hike of 10% of department 10 who have reporting managers.
*/
select ename, sal+(sal *0.1)
from emp
where deptno=10 and mgr is not null;