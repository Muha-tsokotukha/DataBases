create table genders(
    name varchar(30) primary key
);

CREATE TABLE Students(
    id integer primary key,
    full_name varchar not null unique,
    age int not null check ( age > 0 ),
    birth_date date not null,
    gender varchar(30) not null,
    average_grade double precision,
    info text,
    need_for_dorm boolean,
    additional_info text,
    foreign key (gender) references genders(name)
);

create table instructor(
    id int primary key,
    full_name varchar not null ,
    work_experience varchar(255),
    possibility_of_remote_lessons boolean not null
);
create table languages(
    name varchar primary key
);
create table language_knowledge(
    instructor_id int not null,
    language_name varchar not null ,
    foreign key (instructor_id) references instructor(id),
    foreign key (language_name) references languages(name)
);
create table disciplines(
    name varchar primary key
);
create table rooms(
    num int primary key
);

create table lesson_participants(
    id int primary key ,
    instructor_id int not null,
    title varchar not null ,
    room int not null ,
    foreign key (instructor_id) references instructor(id),
    foreign key (title) references  disciplines(name),
    foreign key (room) references  rooms (num)
);

create table study(
    stud_id int not null ,
    lesson varchar not null,
    foreign key (lesson) references disciplines(name),
    foreign key (stud_id) references students(id)
);