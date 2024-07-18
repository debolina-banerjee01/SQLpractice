/*replace function*/
 select empno, replace(empno, 7) from emp;
 
 select replace('good morning','o','w')
from dual;

 select replace('good','o', 't')
 from dual;
 
 /*conversion function (to_date)*/
 select to_date('01/01/24', 'dd/mm/yy')
from dual;

 select to_date('06/05/24', 'mm/yy/dd') from dual;
 
 select to_date('01/24', 'dd/yy') from dual;
 
 SELECT TO_DATE('01-01-2024', 'dd-mm-yyyy')
FROM
	dual;
	
SELECT TO_CHAR (SYSDATE, 'dd/mm/yyyy'), TO_CHAR(SYSTIMESTAMP, 'dd/mm/yyyy hh24:mi:ss') 
FROM
	dual;
/*working with different function together*/	
SELECT 
	hiredate, 
	TO_CHAR(hiredate,'yyyy') hire_year, 
	TO_CHAR(HIREDATE, 'month') hire_month, 
	TO_CHAR(HIREDATE,'day') hire_day,
	ROUND( MONTHS_BETWEEN(SYSDATE, HIREDATE)/12) exp 
FROM
	EMP e ;