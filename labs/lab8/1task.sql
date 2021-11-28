-- a. Increments given values by 1 and returns it.
create function increase_by_one(value_to_be_incr numeric)
    returns numeric
    language plpgsql
   as
    $$
        begin
            return value_to_be_incr + 1;
        end;
    $$;
select increase_by_one(2);

-- b. Returns sum of 2 numbers.
create function sum_of_two(a numeric, b numeric)
    returns numeric
    language plpgsql
   as
    $$
        begin
            return a+b;
        end;
    $$;
select sum_of_two(5,12);

-- c. Returns true or false if numbers are divisible by 2.

create function div_2(a numeric)
    returns boolean
    language plpgsql
   as
    $$
        begin
            if a%2=0  then return true;
            else return false;
            end if;
        end;
    $$;
select div_2(4);

-- d. Checks some password for validity.
create function valid_password(s varchar)
    returns boolean
    language plpgsql
   as
    $$
    declare numm boolean = false;
    declare x varchar;
        begin
            if length(s) < 8 then return false;
            end if;
            foreach x in array regexp_split_to_array(s, '')
                loop
                if x ~ '[0-9]' then  numm = true;
            end if; end loop;
            return numm;
        end;
    $$;
select valid_password('sdfsf8');

-- e. Returns two outputs, but has one input.

create function len_str( s varchar ) returns RECORD language plpgsql
as
    $$
        declare ret record;
        begin
            select length(s),s into ret;
            return ret;
        end;
    $$;
select len_str('Mukhit');
