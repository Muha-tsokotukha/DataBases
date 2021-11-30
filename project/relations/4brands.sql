create table brands (
    b_name varchar primary key
);

create table brands_products (
    b_name varchar,
    p_name varchar,
    foreign key (p_name) references product_names (name),
    foreign key (b_name) references brands (b_name)
);

insert into brands values ('Coca-Cola');
insert into brands values ('Breadman');
insert into brands values ('Azioni');

insert into brands_products values ('Coca-Cola', 'Coke');
insert into brands_products values ('Coca-Cola', 'Pepsi');
insert into brands_products values ('Breadman', 'Nestle');
insert into brands_products values ('Breadman', 'Danone');
insert into brands_products values ('Breadman', 'WholeGrains');
insert into brands_products values ('Azioni', 'Wheat');

