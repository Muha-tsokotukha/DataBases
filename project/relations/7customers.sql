create table customers (
    c_id serial primary key ,
    name varchar
);

create table orders (
    o_id serial primary key ,
    total_cost float,
    city varchar
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
