create table vendors (
    v_name varchar primary key
);

create table vendor_brands (
    v_name varchar,
    b_name varchar,
    foreign key (v_name) references vendors (v_name),
    foreign key (b_name) references brands (b_name)
);

insert into vendors values ('Alico');
insert into vendors values ('CocaColaCo');
insert into vendor_brands values ('Alico', 'Coca-Cola');
insert into vendor_brands values ('CocaColaCo', 'Coca-Cola');

insert into vendors values ('DanoneCo');
insert into vendor_brands values ('DanoneCo', 'Breadman');

insert into vendors values ('Grupo_Bimbo');
insert into vendor_brands values ('Grupo_Bimbo', 'Azioni');
