create table brands (
    b_name varchar primary key
);

create table brands_products (
    b_name varchar,
    p_name varchar,
    foreign key (p_name) references product_names (name),
    foreign key (b_name) references brands (b_name)
);