create table customers (
    c_id serial primary key ,
    name varchar[]
);

create table orders (
    o_id serial primary key ,
    total_cost float,
    city int
);

create table order_items(
    o_id integer,
    upc integer,
    foreign key (o_id) references orders (o_id),
    foreign key (upc) references products(upc)
);

create table cus_ord (
    c_id integer,
    o_id integer,
    foreign key (c_id) references customers(c_id),
    foreign key (o_id) references orders(o_id)
);

-- procedure to compute total cost of an order

alter table order_items add column _cost float;
alter table order_items add column prod_name varchar;

create function cost_finder() returns trigger
language plpgsql
as
    $$
        begin
            update order_items set _cost =
                (select cost from products where order_items.upc=products.upc),
                prod_name =  (
                    select name from products2  where order_items.upc = products2.upc);

            UPDATE orders m
                SET total_cost = f.valsum
                FROM
                (
                  SELECT o_id, SUM(_cost) valsum
                  FROM order_items
                  GROUP BY  o_id
                ) f
                WHERE m.o_id = f.o_id;

            return new;
        end;
    $$;

create trigger cost_f after insert on order_items
    for each row execute procedure cost_finder();

insert into orders values (1,0,1);

insert into order_items values (1, 302);
insert into order_items values (1, 5);
insert into order_items values (1, 100);
insert into order_items values (1, 101);


