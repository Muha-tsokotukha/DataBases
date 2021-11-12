-- 1. How can we store large-object types?
-- they are stored as a large object:
-- blob: binary large object and clob: character large object

-- 2.
-- Privileges control the ability to run SQL statements. A role is a group of privileges.
-- Database users are the ones who really use and take the benefits of the database.

create role Administrator;
create role Accountant;
create role Support;

grant all on accounts, customers, transactions to Administrator;
grant all on accounts,transactions to Accountant;
grant select on customers to Support;

create user Mukhit;
create user Nassyr;
create user Kenesbay;

grant Administrator to Mukhit;
grant Accountant to Nassyr;
grant Support to Kenesbay;

alter user Kenesbay createrole;

revoke delete on transactions from Nassyr;



-- 3. add not null constraints

alter table transactions alter column date set not null;
alter table customers alter column name set not null;
alter table accounts alter column currency set not null ;


-- 5. Create indexes:
-- index for searching transactions by currency and balance
create index cur_bal on accounts( currency,balance );
-- create index cur_bal on transactions( src_account, amount );
