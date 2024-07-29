/*how to insert values into a random tables?*/
 insert into course
 values(100,'HTML','SUKHI',12800);

1 row created.

 insert into course
 values(101,'JAVASCRIPT','RAKESH',15600);

1 row created.

 insert into course
 values(102,'CSS','RAMIYA',12647);

1 row created.

 insert into course
 values(103,'SQL','ABIR',14230);

1 row created.

insert into student
values(12,'SUBIR',49.5,100);

 1 row created.
 
  insert into student
 values(13,'URMI',67.9,101);

1 row created.

 insert into student
 values(14,'YUSUF',80,102);

1 row created.

/*2. write a query to display all the details of the employees of deptno 20 and their salary should be more than the avarage salary of employees 
of department 20*/
select * from emp
where deptno=20 and sal>(select avg(sal)
 from emp
 where deptno=20);
 
/*3.Write a query to display employee number, employee name, job of all the employees who are working as clerk and getting the highest salary among the
clerks*/
 select empno, ename, job
 from emp
 where job='CLERK' and sal=(select max(sal)
 from emp 
 where job='CLERK');
 
 /*4.Write a query to display all the details of Allen's manager*/
 select * from emp
where empno=(select mgr
from emp
where ename='ALLEN');

/*5.Allen's manager is also the manager of how many people?*/
select * from emp
where mgr=(select mgr
from emp
where ename='ALLEN');

/*6.Write a query to display all the details of Alen's manager's manager.*/
select * from emp
where empno=(select mgr
			from emp
			where empno=(select mgr
						from emp
						where ename='ALLEN'));