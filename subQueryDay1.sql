/*Write a query ot fecth all the details of orders table which has minimum amount*/
SELECT * from orders
where amount=(select min(amount)
              from orders);
			  
/*Write a query ot fecth all the details of shippings table which has the minimum customer*/
SELECT * from shippings
where customer=(select min(customer)
              from shippings);
			  
/*Write a query ot fecth all the details of customers who have the customer id as 4*/
SELECT * from customers
where customer_id=(select customer_id
                   from orders
                   where customer_id=4);

/* Write a query ot fecth all the details of customers who have the customer id as 1 and 4*/
SELECT * from customers
where customer_id in(select customer_id
                   from orders
                   where customer_id in(1,4));

/*Write a query ot fecth all the details of customers whose items consist of atleast one O in it*/
SELECT * from customers
where customer_id in(select customer_id
                   from orders
                   where item like('%O%'));

/*Write a query to display second highest age*/
SELECT max(age) from customers
where age<(select max(age)
           from customers);

/*Write a query ot fecth all the details of the customer whose age is second highest*/
select * from customers
where age=(SELECT max(age) from customers
where age<(select max(age)
           from customers));

/*Write a query ot fecth fisrt name and last names of the customers who have keyboard and mouse*/
select first_name, last_name from customers
where customer_id in(select customer_id
                     from orders
                     where item in('KEYBOARD', 'MOUSE'));