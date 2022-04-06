
/*create table if not exists artist
(id serial primary key, name varchar(40) not null);
create table if not exists album
(id serial primary key, name varchar(40) not null, release_date date, artist_id integer references artist(id));
create table if not exists songs
(id serial primary key, track varchar(40) not null, duration integer, album_id integer references album(id));
create table if not exists genres
(id serial primary key, name varchar(40) not null, artist_id integer references artist(id));
ALTER TABLE genres DROP COLUMN artist_id;
ALTER TABLE artist ADD genre_id integer references genres(id);
alter table album drop column release_date;
alter table album add release_date integer ;*/

--homework DB project:
create table if not exists artist_genre (
artist_id integer references artist(id),
genre_id integer references genres(id),
constraint pk primary key (artist_id, genre_id));

alter table artist drop column genre_id;

create table if not exists artist_album (
artist_id integer references artist(id),
album_id integer references album(id),
constraint pk1 primary key (artist_id, album_id));

alter table album drop column artist_id;

create table if not exists essentials
(id serial primary key, name varchar(40) not null, release_date integer);

create table if not exists essent_songs (
song_id integer references songs(id),
essential_id integer references essentials(id),
constraint pk2 primary key (song_id, essential_id));
