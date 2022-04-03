
/*create table if not exists artist
(id serial primary key, name varchar(40) not null);
create table if not exists album
(id serial primary key, name varchar(40) not null, release_date date, artist_id integer references artist(id));
create table if not exists songs
(id serial primary key, track varchar(40) not null, duration integer, album_id integer album(id));
create table if not exists genres
(id serial primary key, name varchar(40) not null, artist_id integer references artist(id));*/
ALTER TABLE genres DROP COLUMN artist_id;
ALTER TABLE artist ADD genre_id integer references genres(id);
