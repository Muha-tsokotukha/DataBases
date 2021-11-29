create table employee(
    id int, name varchar, date_of_birth date, age int, salary int,workexperince  int, discount int);

-- a) Increases salary by 10% for every 2 years of work experience and provides
-- 10% discount and after 5 years adds 1% to the discount.
create or replace procedure bonus()
language plpgsql
as $$
begin
    update employee
    set salary = employee.salary*(employee.workexperince/2+1),
    discount = 10
    where workexperince >= 2;

    update employee set discount = discount+(workexperince/5)
    where workexperince >= 5;

    commit;
end;$$;

call bonus();

insert into employee values (1,'Nassyr', '2002-10-08', 20, 50000,12, 0);

-- b) After reaching 40 years, increase salary by 15%. If work experience is more
-- than 8 years, increase salary for 15% of the already increased value for work
-- experience and provide a constant 20% discount.
create or replace procedure bonus2()
language plpgsql
as $$
begin
    update employee
    set salary = employee.salary*1.15
    where age >= 40;

    update employee set discount = 20,
                        salary = salary*1.15
    where workexperince >= 8 and age >= 40;

    commit;
end;$$;
call bonus2();

insert into employee values ( 2, 'Kenes', '1965-08-03', 51, 40000, 9,0);