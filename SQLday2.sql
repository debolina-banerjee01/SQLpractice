/*
Problem Statement: List all the employees who do not have reorting managers.
Database: Oracle 10g
*/
select ename
from emp
where mgr is null;

/*
List all the salesman in departno 30.
*/
select ename
from emp
where job= 'SALESMAN' and deptno=30;

/*
List all the salesman in departno 30 and having salary more than 1500.
*/
select ename
from emp
where deptno=30 and sal>1500 and job= 'SALESMAN';

/*
List all the employees whose names start with 'S' or 'A'.
*/
select ename
from emp
where ename like 'S%' or ename like 'A%';

/*
List all the employees except those who are working in department no 10 and 20.
*/
select ename
from emp
where deptno !=10 and deptno !=20;

/*
List all the employees whose names don't start with 'S'
*/
select ename
from emp
where ename not like 'S%';