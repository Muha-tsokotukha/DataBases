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

create function d_trig_func() returns trigger
    language plpgsql
    as
    $$
       begin
           return null;
       end;
    $$;

create trigger d_trig before delete on person2
    for each row execute procedure d_trig_func();

delete from person2 where name = 'Kenes';

-- e. Launches functions 1.d and 1.e.

create function d_val()
    returns trigger
    language plpgsql
   as
    $$
    declare numm boolean = false;
    declare x varchar;
    declare s varchar = person2.name;
        begin
            if length(s) < 8 then return null;
            end if;
            foreach x in array regexp_split_to_array(s, '')
                loop
                if x ~ '[0-9]' then  numm = true;
            end if; end loop;
            if numm = false then return null;
            end if;
            return new;
        end;
    $$;

create trigger e_val before update on person2
    for each row execute procedure d_val();

update person2
set name = 'Msdhjsdjd4'
where name = 'Daria';

create table length_of_string(word varchar, w int );

create function e_len_str( ) returns trigger language plpgsql
as
    $$
        begin
            update length_of_string set w = length(word);
            return new;
        end;
    $$;
create trigger e_len_tr after insert on length_of_string
    for each row execute procedure e_len_str();

insert into length_of_string(word) values ('Abacaba');

