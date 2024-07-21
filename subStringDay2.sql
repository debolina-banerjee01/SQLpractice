/*Write a query to fetch first two letters of all employee names*/
select substr (ename,1,2) from emp;

/*Write a query to fetch last three letters of all employee names*/
select substr (ename,-3) from emp;

/*Write a query to fetch employess names starting with A*/
select ename from emp
where substr(ename,1,1)='A';

/*Write a query to fetch employess names ending with N*/
select ename from emp
where substr(ename,-1)='N';

/*Write a query to fetch department details where location starts with A and ends with S*/
select * from dept
where substr(loc,1,1)='D' and substr(loc,-1)='S'

/*Write a query to fetch employee details who joined in Decmber*/
select * from emp
where substr(hiredate, 4,3)='DEC'



