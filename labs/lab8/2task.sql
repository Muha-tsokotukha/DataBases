create table person(name varchar, changed_date date);

-- a. Return timestamp of the occured action within the database

create function a_trig_func() returns trigger
language plpgsql
as
    $$
        begin
            update person set changed_date = now()
            where changed_date is null;
            return new;
        end;
    $$;

create trigger a_trig after insert on person
    for each row execute procedure a_trig_func();

insert into person(name) values ('Mukhit') returning now();

-- b. Computes the age of a person when persons’ date of birth is inserted

create table person2(name varchar,birth_date date,age int, total_bought_price int);

create function b_trig_func() returns trigger
language plpgsql
as
    $$
        begin
            update person2 set age = date_part('year', age(now(), birth_date));
            return new;
        end;
    $$;

create trigger b_trig after insert on person2
    for each row execute procedure b_trig_func();

insert into person2(name, birth_date) values ('Mukhit', '2002-10-08') returning date_part('year', age(now(), birth_date));;

-- c. Adds 12% tax on the price of the inserted item.

create function c_trig_func() returns trigger
language plpgsql
as
    $$
        begin
            update person2 set total_bought_price = total_bought_price*1.12;
            return new;
        end;
    $$;

create trigger c_trig after insert on person2
    for each row execute procedure c_trig_func();

insert into person2(name, total_bought_price) values ('Daria', 200);
--insert into person2(name, total_bought_price) values ('Kenes', 100) returning total_bought_price*1.12;


-- d. Prevents deletion of any row from only one table.
