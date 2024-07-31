/*Write a query to display all the details of the employee who get maximum and minimum salaries*/
 select *
 from emp
 where sal=(select max(sal)
 from emp) or sal=(select min(sal)
 from emp);
 
 /*Write a query to display all the details of the employee whose salary is same a Martin's salry and whose job is same as Allen's job*/
 select *
from emp
where sal=(select sal
from emp
where ename='MARTIN')and job=(select job
from emp
where ename='ALLEN');

/*Write a query to display all the details of the employee whose job is same as Smith's job*/
 select *
 from emp
 where job=(select job
from emp
where ename='SMITH');

/*Write a query to display all the details of Allen's manager's manager*/
select * from emp
where empno=(select mgr
from emp
where empno=(select mgr
from emp
where ename='ALLEN'));

/*How many people Allen's manager is managing?*/
select *
from emp
where mgr=(select mgr
from emp
where ename='ALLEN');

/* Write a query to display all the details of the employee whose salary is more than the avarage salary of department no 20*/
 select *
 from emp
 where sal>(select avg(sal)
 from emp
 where deptno=20);
 
 /*write a query to find jobs of dept no 10 those are not found in dept no 20*/
 SELECT job 
FROM employees 
WHERE deptno = 10 
  AND job NOT IN (
    SELECT job 
    FROM emp 
    WHERE deptno = 20
  );
/*Write a query to display the third highest salary without using multi row function*/
select sal
from(select sal
from (select distinct sal
from emp
order by sal desc)
where rownum<=3
order by sal asc)
where rownum=1;

/*Write a query to display the third highest salary by using multi row function*/
select min(sal)
from(select distinct sal
from emp
order by sal desc)
where rownum<=3;

/*Write a query to display all the details of the employees who are getting the third highest salary without using multi row function*/
select *
from emp
where sal=(select sal
from (select sal
from (select distinct sal
from emp
order by sal desc)
where rownum<=3
order by sal asc)
where rownum=1);

/*Write a query to display all the details of the employees who are getting the third highest salary by using multi row function*/
select *
from emp
where sal=(select min(sal)
from (select distinct sal
from emp
order by sal desc)
where rownum <=3
);