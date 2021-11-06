-- 2
-- a. count the number of unique clients, compute average and total purchase
-- amount of client orders by each date.
create view A as
    select sell.date, count(client.id), avg(sell.amount), sum(sell.amount) from sell
    inner join client on client.id = sell.client_id group by sell.date
    order by sell.date;
select * from A;

-- b. find top 5 dates with the greatest total sell amount
create view B as
    select sell.date, sum(sell.amount) from sell
    inner join client on client.id = sell.client_id group by sell.date
    order by sum(-sell.amount);
select * from B limit 5;

-- c. count the number of sales, compute average and total amount of all
-- sales of each dealer
create view _C as
    select dealer.id, count(sell.id), avg(sell.amount), sum(sell.amount) from sell
    inner join dealer on sell.dealer_id = dealer.id
    group by dealer.id;
select * from _C;

-- d. compute how much all dealers earned from charge(total sell amount *
-- charge) in each location
create view _D AS
    select dealer.location, count(sell.dealer_id), sum(sell.amount), avg(sell.amount), sum(sell.amount * dealer.charge) as TOTAL from sell
    inner join dealer on dealer.id = sell.dealer_id
    group by dealer.location;
select * from _D;

-- e. compute number of sales, average and total amount of all sales dealers
-- made in each location
create view E as
    select dealer.location, count(sell.id), avg(sell.amount), sum(sell.amount) as S1
    from sell
    inner join dealer on dealer.id = sell.dealer_id
    group by dealer.location;
select * from E;

-- f. compute number of sales, average and total amount of expenses in
-- each city clients made.
create view F as
    select client.city, count(sell.id), avg(sell.amount), sum(sell.amount) as S2
    from sell
    inner join client on client.id = sell.client_id
    group by client.city;
select * from F;

-- g. find cities where total expenses more than total amount of sales in
-- locations
select * from E
right join F on E.location = F.city
where E.S1 < F.S2;






