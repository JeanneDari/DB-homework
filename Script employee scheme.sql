
create table if not exists department (id serial primary key, name varchar(40) not null);
create table if not exists manager (id serial primary key, name varchar(40) not null);
create table if not exists employee
(id serial primary key, name varchar(40) not null, department_id integer references department(id), line_manager integer references manager(id));
