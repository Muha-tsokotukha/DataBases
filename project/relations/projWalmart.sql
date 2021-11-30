create table customers(
    c_id serial primary key ,
    name varchar );

create table orders(
    o_id serial  primary key ,
    total float ,
    city varchar);


create table order_items(
    name varchar,
    o_id serial,
    upc varchar,
    foreign key (o_id) references orders(o_id),
    foreign key (upc) references products(upc)
);

create table made_ord (
    c_id serial,
    o_id serial,
    foreign key (c_id) references customers(c_id),
    foreign key (o_id) references orders(o_id)
);

create table type(type_name varchar primary key );

create table Product_type(sizes varchar,  name varchar primary key );

create table products(upc varchar primary key , name varchar,cost float, p_size varchar );



create table type_of(
    name varchar,
    type_name varchar,
    foreign key (name) references product_type,
    foreign key (type_name) references type
);

create table product_type_of(
    upc varchar,
    name varchar,
    foreign key (upc) references products(upc),
    foreign key (name) references product_type(name)
);

create table brands(
    b_name varchar primary key
);

create table vendors(
    v_name varchar primary key
);
create table sold(
    name varchar,
    upc varchar,
    foreign key (name) references brands(b_name),
    foreign key (upc) references products(upc)
);

create table owned(
    name_b varchar,
    name_v varchar,
    foreign key (name_b) references brands(b_name),
    foreign key (name_v) references vendors(v_name)
);

create table stores(
    store_id serial primary key,
    Location varchar,
    Schedule varchar
);
create table store_prods(
    store_id serial,
    upc  varchar,
    foreign key (store_id) references stores(store_id),
    foreign key (upc) references products(upc)
);

create table stores_order(
    store_id serial,
    o_id serial,
    foreign key (store_id) references stores(store_id),
    foreign key (o_id) references orders(o_id)
);
