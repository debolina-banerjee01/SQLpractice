/*
Problem Statement: List all the employees who do not have any commission.
Database: Oracle 10g
*/
select 
	ename
from
	emp
where
	comm is null;