/*practicin substring function (SUBSTR())*/
SELECT 
	SUBSTR(ename,2)
FROM
	EMP e ;
/*getting enames from 2nd letter*/

SELECT
	*
FROM 
	EMP e 
WHERE 
	SUBSTR(HIREDATE,4,3)='DEC';
/*employee details who have joined in December*/

SELECT
	*
FROM
	DEPT d 
WHERE 
	SUBSTR(LOC,1,1)='D' AND SUBSTR(LOC,-1)='S';
/*department details when location is starting with D and ending with S*/

SELECT 
	ename
FROM 
	EMP e 
WHERE 
	SUBSTR(ENAME, -1)='N';
/*employee anmes ending with N*/

SELECT 
	ename
FROM 
	EMP e 
WHERE
	SUBSTR(ENAME,1,1)='A';
/*employee names starting with A*/

SELECT 
	SUBSTR(dname,1,2)
FROM
	DEPT d ;
/*Displaying first two letters of all department names*/

SELECT 
	ename,SUBSTR(ENAME,2,LENGTH(ENAME)-2)
FROM
	EMP e ;
/*Displaying employeenames after removing first and last characters*/

