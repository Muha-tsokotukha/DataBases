create table product_type (
    prod_type varchar primary key,
    package boolean
);
insert into product_type values ('chocolate', true);
insert into product_type values ('soda', true);
insert into product_type values ('milk', false);
insert into product_type values ('bread', false);
insert into product_type values ('hygiene', false);

-- product type - type

create table product_type_type (
    pt_name varchar,
    t_name varchar,
    foreign key (t_name) references type (type_name),
    foreign key (pt_name) references product_type (prod_type)
);

insert into product_type_type values ('soda','food');
insert into product_type_type values ('milk','food');
insert into product_type_type values ('bread','food');
insert into product_type_type values ('chocolate','food');
insert into product_type_type values ('hygiene','health');
