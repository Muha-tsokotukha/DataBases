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


