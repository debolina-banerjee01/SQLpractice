/*
Update name and job of the employee who has employee no of 100.
*/
update emp
set ename= 'RAJ', job= "CLERK'
where empno=100;

/*
Update department no 10 into 40.
*/
update emp
set deptno=40
where deptno=10;

/*
update a salary hike of 20% of all salespersons.
*/
update emp
set sal= sal+(sal*0.2)
where job='SALESMAN';

/*
update the employee table with an extra salary of 300 who are already getting commission.
*/
update emp
set comm= comm+300
where comm is not null;

/*
Update all the employees' salary to 5000.
*/
update emp
set comm=5000;

/*
Update employee table such a way so that people of department 30 get a salary of 3900.
*/
update emp
set sal= 3900
where deptno=30;

/*
Update job into salesman from employees of department 10.
*/
update emp
where job= 'SALESMAN'
where deptno=10;
