insert into products values ('face1' ,'AloeCream','cream from aloe used for face', 24.99 );
select id from products;
insert into products values ('hair1' ,'Pour','hair powder', 5.5 );
delete from products
where id='face1';

insert into products values ('feet1' ,'Aloe','Cream', 11.99 );
update products
set id = 'hands1'
where id='feet1';

select * from products;
--
insert into customers values(1, 'James Charles', '2004-10-19 10:23:54', 'LA, Tempe');

select * from customers;
--

insert into orders values (1465, 1 , 11, false );
select * from orders;
--
insert into order_items values (1465, 'hair1', 2 );
select * from order_items;

