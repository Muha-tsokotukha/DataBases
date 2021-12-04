create table product_type (
    prod_type varchar primary key,
    package boolean
);

create table product_type_type (
    pt_name varchar,
    t_name varchar,
    foreign key (t_name) references type (type_name),
    foreign key (pt_name) references product_type (prod_type)
);