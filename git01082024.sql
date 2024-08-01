/*Write a query to display concatination between ename and their designation*/
select ename||' working as a '||job
from emp;

/*Write a query to display concatination between ename and salary*/
 select ename||' gets salary as '|| sal
 from emp;
 
 /*Write a query to display concatination between ename and department number*/
 select ename||' works in department no '|| deptno
from emp;

/*Write a query to display concatination between ename and salary and hirdates*/
select ename||' has employee number of '||empno||' and joined the comapny on '||hiredate
from emp;

/*use aliasing for emp no and hiredate*/
 select empno empID, hiredate startDATE
 from emp;
 
 /*Using concatination and aliasing merge ename and job columns and create a new column as total*/
  select ename||' '||job "total"
 from emp;
 
 /*Write a query to fetch the second highest salary*/
  select max(sal)
 from emp
 where sal<(select max(sal)
 from emp);
 
 /*Write a query to fetch all the deatils of the employees whoare working in sales*/
  select *
 from emp
 where deptno=(select deptno
 from dept
where dname='SALES');
