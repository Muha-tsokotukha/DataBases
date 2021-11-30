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

insert into product_names values('Coke');
insert into product_names values('Pepsi');
insert into product_names values('Danone');
insert into product_names values('Nestle');
insert into product_names values('Wheat');
insert into product_names values('WholeGrains');

insert into products_product_type values ('Coke', 'soda');
insert into products_product_type values ('Pepsi', 'soda');
insert into products_product_type values ('Danone', 'milk');
insert into products_product_type values ('Nestle', 'milk');
insert into products_product_type values ('Wheat', 'bread');
insert into products_product_type values ('WholeGrains', 'bread');

-- products, 2

insert into products( size, cost ) values('0.5l', 1.1);
insert into products( size, cost ) values('0.5l', 1.1);
insert into products( size, cost ) values('0.5l', 1.1);
insert into products( size, cost ) values('0.5l', 1.1);
insert into products( size, cost ) values('0.5l', 1.1);
insert into products( size, cost ) values('0.5l', 1.1);
insert into products( size, cost ) values('0.5l', 1.1);
insert into products( size, cost ) values('0.5l', 1.1);
insert into products( size, cost ) values('0.5l', 1.1);
insert into products( size, cost ) values('0.5l', 1.1);
insert into products( size, cost ) values('0.5l', 1.2);
insert into products( size, cost ) values('0.5l', 1.2);
insert into products( size, cost ) values('0.5l', 1.2);
insert into products( size, cost ) values('0.5l', 1.2);
insert into products( size, cost ) values('0.5l', 1.2);

insert into products2 values (1, 'Coke');
insert into products2 values (2, 'Coke');
insert into products2 values (3, 'Coke');
insert into products2 values (4, 'Coke');
insert into products2 values (5, 'Coke');
insert into products2 values (6, 'Coke');
insert into products2 values (7, 'Coke');
insert into products2 values (8, 'Coke');
insert into products2 values (9, 'Coke');
insert into products2 values (10, 'Coke');
insert into products2 values (11, 'Pepsi');
insert into products2 values (12, 'Pepsi');
insert into products2 values (13, 'Pepsi');
insert into products2 values (14, 'Pepsi');
insert into products2 values (15, 'Pepsi');

insert into products( size, cost ) values('1l', 1.95);
insert into products( size, cost ) values('1l', 1.95);
insert into products( size, cost ) values('1l', 1.95);
insert into products( size, cost ) values('1l', 1.95);
insert into products( size, cost ) values('1l', 1.95);
insert into products( size, cost ) values('1l', 1.95);
insert into products( size, cost ) values('1l', 1.95);
insert into products2 values (16, 'Danone');
insert into products2 values (17, 'Danone');
insert into products2 values (18, 'Danone');
insert into products2 values (19, 'Danone');
insert into products2 values (20, 'Danone');
insert into products2 values (21, 'Danone');
insert into products2 values (22, 'Danone');
insert into products( size, cost ) values('0.5l', 1.6);
insert into products( size, cost ) values('0.5l', 1.6);
insert into products( size, cost ) values('0.5l', 1.6);
insert into products( size, cost ) values('0.5l', 1.6);
insert into products( size, cost ) values('0.5l', 1.6);
insert into products( size, cost ) values('0.5l', 1.6);
insert into products( size, cost ) values('0.5l', 1.6);

insert into products2 values (23, 'Nestle');
insert into products2 values (24, 'Nestle');
insert into products2 values (25, 'Nestle');
insert into products2 values (26, 'Nestle');
insert into products2 values (27, 'Nestle');
insert into products2 values (28, 'Nestle');
insert into products2 values (29, 'Nestle');

insert into products(size, cost) values ('50g', 0.9);
insert into products(size, cost) values ('50g', 0.9);
insert into products(size, cost) values ('50g', 0.9);
insert into products(size, cost) values ('50g', 0.9);
insert into products(size, cost) values ('50g', 0.9);
insert into products(size, cost) values ('50g', 0.9);
insert into products(size, cost) values ('50g', 0.9);
insert into products(size, cost) values ('50g', 0.9);

insert into products2 values (30, 'WholeGrains');
insert into products2 values (31, 'WholeGrains');
insert into products2 values (32, 'WholeGrains');
insert into products2 values (33, 'WholeGrains');
insert into products2 values (34, 'WholeGrains');
insert into products2 values (35, 'WholeGrains');
insert into products2 values (36, 'WholeGrains');
insert into products2 values (37, 'WholeGrains');