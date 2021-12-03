CREATE TABLE members(memid integer,
                        surname character varying(200),
                        firstname character varying(200),
                        address character varying(300),
                        zipcode integer,
                        telephone character varying(20),
                        recommendedby integer,
                        joindate timestamp);

CREATE TABLE bookings(facid integer,
                        memid integer,
                        starttime timestamp,
                        slots integer);

CREATE TABLE facilities (facid integer,
                            name character varying(100),
                            memercost numeric,
                            guestcost numeric,
                            initialoutlay numeric,
                            monthlymaintenance numeric);


WITH RECURSIVE recommenders(recommender, member) AS (
SELECT recommendedby, memid
FROM members
UNION ALL
SELECT mems.recommendedby, recs.member
FROM recommenders recs
INNER JOIN members mems
ON mems.memid = recs.recommender
)

SELECT recs.member member, recs.recommender, mems.firstname, mems.surname
FROM recommenders recs
INNER JOIN cd.members mems
ON recs.recommender = mems.memid
WHERE recs.member = 22 OR recs.member = 12
ORDER BY recs.member ASC, recs.recommender DESC
