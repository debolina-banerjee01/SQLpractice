/*Write to query to fetch th 3rd highest salary WITHOUT using multi row function*/
select sal
from(select sal
from (select distinct sal
from emp
order by sal desc)
where rownum<=3
order by sal asc)
where rownum=1;

/*Write a query to fetch all the details who are getting 3rd highest salary*/
 select * from emp
 where sal=(select sal
 from(select sal
 from (select distinct sal
 from emp
 order by sal desc)
 where rownum<=3
 order by sal asc)
 where rownum=1);
 
 /*Write to query to fetch th 4th highest salary WITHOUT using multi row function*/
 select sal
from(select sal
from (select distinct sal
from emp
order by sal desc)
where rownum<=4
order by sal asc)
where rownum=1;