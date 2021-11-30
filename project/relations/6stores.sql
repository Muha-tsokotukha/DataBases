create table store(
    s_id serial primary key ,
    location varchar not null ,
    schedule varchar
);

create table store_products (
    s_id integer,
    upc integer,
    foreign key (s_id) references store( s_id),
    foreign key (upc) references products( upc)
);

insert into  store (location, schedule) values ('WashingtonDC', '10:00-00:00');
insert into  store (location, schedule) values ('LasVegas', '09:00-00:00');
insert into  store (location, schedule) values ('NewYork', '08:00-02:00');


insert into store_products values (1, 1 );
insert into store_products values (1, 2 );
insert into store_products values (1, 3 );
insert into store_products values (1, 4 );
insert into store_products values (1, 5 );
insert into store_products values (1, 16 );
insert into store_products values (1, 31);
insert into store_products values (1, 32);
insert into store_products values (1, 33 );

insert into store_products values (2,6);
insert into store_products values (2,7);
insert into store_products values (2,8);
insert into store_products values (2,9);
insert into store_products values (2,10);
insert into store_products values (2,11);
insert into store_products values (2,12);
insert into store_products values (2,17);
insert into store_products values (2,18);
insert into store_products values (2,19);
insert into store_products values (2,20);
insert into store_products values (2,30);
insert into store_products values (2,34);
insert into store_products values (2,35);
insert into store_products values (2,36);
insert into store_products values (2,37);

insert into store_products values (3,13  );
insert into store_products values (3, 14 );
insert into store_products values (3, 15 );
insert into store_products values (3,  21);
insert into store_products values (3,  22);
insert into store_products values (3,  23);
insert into store_products values (3,  24);
insert into store_products values (3,  25);
insert into store_products values (3,  26);
insert into store_products values (3,  27);
insert into store_products values (3,  28);
insert into store_products values (3,  29);

