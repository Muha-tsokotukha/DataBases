create table vendors (
    v_name varchar primary key
);

create table vendor_brands (
    v_name varchar,
    b_name varchar,
    foreign key (v_name) references vendors (v_name),
    foreign key (b_name) references brands (b_name)
);