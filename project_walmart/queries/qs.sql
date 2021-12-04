-- 1 What are the 20 top-selling products at each store?

select store.location,prod_name, count(prod_name) from order_items,orders, store
where store.s_id = 1 and  store.s_id = orders.city and orders.o_id = order_items.o_id
group by s_id,prod_name
order by count(prod_name) desc
limit 20;

select store.location,prod_name, count(prod_name) from order_items,orders, store
where store.s_id = 2 and  store.s_id = orders.city and orders.o_id = order_items.o_id
group by s_id,prod_name
order by count(prod_name) desc
limit 20;

select store.location,prod_name, count(prod_name) from order_items,orders, store
where store.s_id = 3 and  store.s_id = orders.city and orders.o_id = order_items.o_id
group by s_id,prod_name
order by count(prod_name) desc
limit 20;

select store.location,prod_name, count(prod_name) from order_items,orders, store
where store.s_id = 4 and  store.s_id = orders.city and orders.o_id = order_items.o_id
group by s_id,prod_name
order by count(prod_name) desc
limit 20;

select store.location,prod_name, count(prod_name) from order_items,orders, store
where store.s_id = 5 and  store.s_id = orders.city and orders.o_id = order_items.o_id
group by s_id,prod_name
order by count(prod_name) desc
limit 20;

select store.location,prod_name, count(prod_name) from order_items,orders, store
where store.s_id = 6 and  store.s_id = orders.city and orders.o_id = order_items.o_id
group by s_id,prod_name
order by count(prod_name) desc
limit 20;



-- 2 What are the 20 top-selling products in each state?



select city,prod_name, count(prod_name) from order_items,orders
where orders.city = 1 and orders.o_id = order_items.o_id
group by city,prod_name
order by count(prod_name) desc
limit 20;

select city,prod_name, count(prod_name) from order_items,orders
where orders.city = 2 and orders.o_id = order_items.o_id
group by city,prod_name
order by count(prod_name) desc
limit 20;

select city,prod_name, count(prod_name) from order_items,orders
where orders.city = 3 and orders.o_id = order_items.o_id
group by city,prod_name
order by count(prod_name) desc
limit 20;

select city,prod_name, count(prod_name) from order_items,orders
where orders.city = 4 and orders.o_id = order_items.o_id
group by city,prod_name
order by count(prod_name) desc
limit 20;

select city,prod_name, count(prod_name) from order_items,orders
where orders.city = 5 and orders.o_id = order_items.o_id
group by city,prod_name
order by count(prod_name) desc
limit 20;


select city,prod_name, count(prod_name) from order_items,orders
where orders.city = 6 and orders.o_id = order_items.o_id
group by city,prod_name
order by count(prod_name) desc
limit 20;




--- 3 What are the 5 stores with the most sales so far this year?

select orders.city, count(orders.city) from orders
group by orders.city
order by count(city) desc
limit 5;

select store.location from store
where store.s_id in
(
    select orders.city from orders
    group by orders.city
    order by count(city) desc
    limit 5
    );

-- 4 In how many stores does Coke outsell Pepsi?
--


create or replace function outsells2() returns int
language plpgsql
as
    $$
    declare cnt int = 0;
    declare ind int = 1;
        begin
            for ind in 1..6 loop
            if (select count(prod_name) from order_items,orders where prod_name='Coke' and city=1 ) >
                (select count(prod_name) from order_items,orders where prod_name='Pepsi' and city=1 )
                then cnt = cnt + 1;
            end if;
            end loop;
            return cnt;
        end;
    $$;

select outsells2();

-- 5 What are the top 3 types of product that customers buy in addition to milk?

select prod_name,count(prod_name) from order_items
where o_id in
(select o_id from order_items where prod_name='DanoneMilk' or prod_name='AdalMilks' or prod_name='PeterMilky'
        or prod_name='NestleMilk')
and prod_name != 'DanoneMilk' and prod_name != 'AdalMilks' and prod_name!='PeterMilky' and prod_name!='NestleMilk'
group by prod_name
order by count(prod_name) desc
limit 3;