/*Write a query to fetch employee names along with first 3 letters of all names after converitn g them into lower case*/
SELECT ename, lower
(substr(ename,1,3))
from emp;

/*Write a query to fetch employee names after removing first letters from every name.*/
select substr(ename,2)
from emp;

/*Write a query to remove the last letter from every employee's name.*/
SELECT SUBSTR(ename,1,length(ename)-1)
from emp;

/*Write a query to fetch employee names after removing first and last letters.*/
select substr(ename,2, length(ename)-2)
from emp;

/*write a query to display enames and available A letters within all the employee names*/
select ename, instr(ename,'A')
from emp;

/*write a query to display enames and the letter A where it's present twice.*/
select ename, instr(ename,'A',1,2)
from emp;

