CREATE TABLE students(
    id serial not null unique ,
    full_name varchar(50) NOT NULL unique ,
    age int not null check ( age > 0 ),
    birth_date DATE not null,
    gender  varchar(20)  not null,
    gpa float(2),
    info_about_yourself text,
    need_dormitory boolean,
    additional_info text,
    primary key(id)
);

create table instructors(
    id serial not null unique ,
    full_name varchar(50) NOT NULL unique ,
    language varchar ,
    experience text,
    possibility_remote boolean,
    primary key (id)
);

create table lesson_participants(
    title varchar(55) not null unique ,
    teaching_instructor varchar not null,
    studying_studs varchar,
    room int not null ,
    primary key (title),
    foreign key (teaching_instructor) references instructors(full_name),
    foreign key (studying_studs) references students(full_name)
);
