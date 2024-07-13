/*modifying existing column in a table*/
select * from book;

 alter table book
 modify qty number(10) check(qty >=2);
 
 alter table book
modify bprice number(7,2) default(100) not null;

 table altered.

alter table book
modify bprice number(7,2) check(bprice >=100);

 table altered.
 
 /*adding column to a table*/
 alter table worker
add country varchar(5);

 table altered.
 
 desc worker;
 
 /*using drop command to delete table from database*/
 drop table login;
table dropped.

drop table worker;
table dropped.

show recyclebin;
purge recyclebin;

/*using truncate to delete records*/
 truncate table orders;
table truncated.

 select * from orders;
no rows selected

 rollback;
rollback complete.

 select * from orders;
no rows selected
