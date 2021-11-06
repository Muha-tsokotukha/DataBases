-- 1
-- a
SELECT * FROM dealer CROSS JOIN client;

-- b
SELECT *
FROM client
RIGHT OUTER JOIN dealer ON client.dealer_id = dealer.id
RIGHT OUTER JOIN sell ON sell.client_id = client.id;

-- C
SELECT dealer.id, dealer.name, client.id, client.name
FROM dealer
INNER JOIN client
ON dealer.location = client.city;


--D
SELECT sell.id, sell.amount, client.name, client.city
FROM sell
INNER JOIN client
ON sell.client_id = client.id
WHERE sell.amount BETWEEN 100 AND 500;

-- E
SELECT dealer.id, dealer.name, count(client.id) FROM dealer
LEFT OUTER JOIN  client
ON dealer.id = client.dealer_id
GROUP BY dealer.id, dealer.name;

-- F
SELECT dealer.id, dealer.name, client.id, client.name, client.city, dealer.charge
FROM dealer
INNER JOIN client
ON dealer.id = client.dealer_id;

-- G
SELECT client.name, client.city, dealer.name, dealer.charge
FROM dealer
LEFT OUTER JOIN client
ON dealer.id = client.dealer_id
WHERE dealer.charge > 0.12;

-- H
SELECT client.name, client.city, sell.id, sell.date, sell.amount, dealer.name, dealer.charge FROM client
LEFT OUTER JOIN sell
ON client.id = sell.client_id
LEFT OUTER JOIN dealer
ON dealer.id = sell.dealer_id;

-- I
SELECT client.name, client.priority, dealer.name,sell.id, sell.amount
FROM client
RIGHT OUTER JOIN dealer ON dealer.id = client.dealer_id
LEFT OUTER JOIN sell ON sell.client_id = client.id
WHERE sell.amount >= 2000 AND client.priority IS NOT NULL;


----------------------------------------------------------------
-- 2
-- A
CREATE VIEW V1 AS
    SELECT sell.date, count(client.id), avg(sell.amount), sum(sell.amount)
    FROM sell
    INNER JOIN client ON client.id = sell.client_id
    GROUP BY sell.date
    ORDER BY sell.date;
SELECT * FROM V1;


-- B
CREATE VIEW V2 AS
    SELECT sell.date, sum(sell.amount)
    FROM sell
    INNER JOIN client ON client.id = sell.client_id
    GROUP BY sell.date
    ORDER BY sum(-sell.amount);
SELECT * FROM V2 LIMIT 5;


-- C
CREATE VIEW V3 AS
    SELECT dealer.id, count(sell.id), avg(sell.amount), sum(sell.amount)
    FROM sell
    INNER JOIN dealer ON sell.dealer_id = dealer.id
    GROUP BY dealer.id;
SELECT * FROM V3;


-- D
CREATE VIEW V4 AS
    SELECT dealer.location, count(sell.dealer_id), sum(sell.amount), avg(sell.amount), sum(sell.amount * dealer.charge) AS TOTAL
    FROM sell
    INNER JOIN dealer ON dealer.id = sell.dealer_id
    GROUP BY dealer.location;
SELECT * FROM V4;
DROP VIEW V4;


-- E
CREATE VIEW V5 AS
    SELECT dealer.location, count(sell.id), avg(sell.amount), sum(sell.amount) AS S1
    FROM sell
    INNER JOIN dealer ON dealer.id = sell.dealer_id
    GROUP BY dealer.location;
SELECT * FROM V5;
DROP VIEW V5;


-- F
CREATE VIEW V6 AS
    SELECT client.city, count(sell.id), avg(sell.amount), sum(sell.amount) AS S2
    FROM sell
    INNER JOIN client ON client.id = sell.client_id
    GROUP BY client.city;
SELECT * FROM V6;
DROP VIEW V6;

-- G
SELECT * FROM V5
RIGHT JOIN V6 ON V5.location = V6.city
WHERE V5.S1 < V6.S2 OR (V5.location IS NULL AND V6.city IS NOT NULL)