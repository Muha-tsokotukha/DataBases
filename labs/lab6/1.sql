-- 1

-- a. combine each row of dealer table with each row of client table ( )
SELECT * FROM dealer
FULL JOIN client on 1=1;

-- b. find all dealers along with client name, city, grade, sell number, date, and amount
select dealer.id, dealer.name, dealer.location, dealer.charge,client.name,client.city,client.priority,sell.id,sell.date,sell.amount from client
inner join dealer on client.dealer_id = dealer.id
inner join sell on (client.id = sell.client_id and dealer.id = sell.dealer_id);

-- c. find the dealer and client who belongs to same city
select * from dealer
inner join client on client.city = dealer.location;

-- d. find sell id, amount, client name, city those sells where sell amount exists between
-- 100 and 500
select sell.id, sell.amount, client.name, client.city from sell
inner join client on sell.client_id = client.id
where sell.amount >= 100 and sell.amount <= 500;

-- e. find dealers who works either for one or more client or not yet join under any of
-- the clients
select dealer.id, dealer.name, count(client.id) from dealer
left outer join  client
on dealer.id = client.dealer_id
group by dealer.id, dealer.name;

-- f. find the dealers and the clients he service, return client name, city, dealer name,
-- commission.
select dealer.id, dealer.name, client.id, client.name, client.city, dealer.charge from dealer
inner join client on dealer.id = client.dealer_id;

-- g. find client name, client city, dealer, commission those dealers who received a
-- commission from the sell more than 12%
select client.name, client.city, dealer.name, dealer.charge from dealer
left outer join client on dealer.id = client.dealer_id
where dealer.charge > 0.12;

-- h. make a report with client name, city, sell id, sell date, sell amount, dealer name
-- and commission to find that either any of the existing clients haven’t made a
-- purchase(sell) or made one or more purchase(sell) by their dealer or by own.
select client.name, client.city, sell.id, sell.date, sell.amount, dealer.name, dealer.charge from client
left outer join sell on client.id = sell.client_id
left outer join dealer on dealer.id = sell.dealer_id;

-- i. find dealers who either work for one or more clients. The client may have made,
-- either one or more purchases, or purchase amount above 2000 and must have a
-- grade, or he may not have made any purchase to the associated dealer. Print
-- client name, client grade, dealer name, sell id, sell amount
select client.name, client.priority, dealer.name,sell.id, sell.amount from client
right outer join dealer on dealer.id = client.dealer_id
left outer join sell on sell.client_id = client.id
where sell.amount >= 2000;






