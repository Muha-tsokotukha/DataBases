create table products (
    upc serial,
    size varchar,
    cost float,
    primary key (upc)
);
create table product_names (
    name  varchar primary key
);
create table products2(
    upc serial,
    name varchar,
    foreign key (upc) references products (upc),
    foreign key (name) references product_names(name)
);
create table products_product_type (
    name varchar,
    p_type varchar,
    foreign key (name) references product_names(name),
    foreign key (p_type) references product_type(prod_type)
);
