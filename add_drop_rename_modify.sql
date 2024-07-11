/*adding a column with foreign key as a contsraint. Later deleting it from child table and parent table after that.*/

alter table products
add id number(10) references orders(id);

alter table products
drop column id;

 desc orders;

alter table orders
drop column id;

/*practicing DDL comman rename*/

 alter table students
 rename column cid to id;
 
 desc students;
 
 alter table course
rename column fees to c_fees;

alter table students
rename column id to cid;

/*practicing DDL comman modify*/

desc orders;

alter table orders
add id number(10);

 alter table orders
 modify id varchar(10);
 
 desc products;
 
 alter table products
modify pprice number(9,2);

alter table products
modify pname varchar(9);

 alter table products
 modify pname varchar(3);
 /*error message-cannot decrease column length because some value is too big*/