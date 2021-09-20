CREATE TABLE products(
    id varchar not null unique,
    name varchar not null unique ,
    description text,
    price double precision not null check ( price > 0 ),
    primary key (id)
);

create table customers(
    id int not null unique ,
    full_name varchar(50) not null ,
    timestamp timestamp not null ,
    delivery_address text not null ,
    primary key (id)
);

create table orders(
    code int not null unique ,
    customer_id int,
    total_sum double precision not null check ( total_sum > 0 ),
    is_paid boolean not null ,
    primary key (code),
    foreign key (customer_id) references customers(id)
);

create table order_items(
    order_code int not null unique ,
    product_id varchar not null unique ,
    quantity int not null check ( quantity>0 ),
    primary key (order_code,product_id),
    foreign key (order_code) references orders(code),
    foreign key (product_id) references products(id)
);