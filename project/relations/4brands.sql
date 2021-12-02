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
insert into brands values ('Choco');
insert into brands values ('Doctor Co');
insert into brands values ('Danone');
insert into brands values ('Nestle');

insert into brands_products values ('Choco', 'KitKat');
insert into brands_products values ('Choco', 'Kazakhstan');
insert into brands_products values ('Choco', 'MilkyWay');
insert into brands_products values ('Coca-Cola', 'Mars');
insert into brands_products values ('Coca-Cola', 'Sneakers');


insert into brands_products values ('Danone', 'AdalMilks');
insert into brands_products values ('Danone', 'DanoneMilk');
insert into brands_products values ('Nestle', 'NestleMilk');
insert into brands_products values ('Nestle', 'PeterMilky');



insert into brands_products values ('Coca-Cola', 'Coke');
insert into brands_products values ('Coca-Cola', 'Pepsi');
insert into brands_products values ('Coca-Cola', 'Fanta');
insert into brands_products values ('Doctor Co', 'DrPepper');
insert into brands_products values ('Coca-Cola', 'Sprite');

insert into brands_products values ('Breadman', 'PaneraBread');
insert into brands_products values ('Breadman', 'Dempsters');
insert into brands_products values ('Breadman', 'GreateHarvest');
insert into brands_products values ('Breadman', 'WholeGrains');
insert into brands_products values ('Azioni', 'ABCD');
insert into brands_products values ('Azioni', 'Wheat');
insert into brands_products values ('Azioni', 'WhiteBread');









