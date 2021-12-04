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