
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
/*create table if not exists artist_genre (
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
constraint pk2 primary key (song_id, essential_id));*/

--homework SELECTS
insert into artist (name) values ('Emily');
insert into artist (name) values ('Ameliya');
insert into artist (name) values ('Maga');
insert into artist (name) values ('Crispy');
insert into artist (name) values ('Lil Nas');
insert into artist (name) values ('No name');
insert into artist (name) values ('Sairan');
insert into artist (name) values ('Johnny');

select * from artist;

insert into genres (name) values ('Jazz');
insert into genres (name) values ('Pop');
insert into genres (name) values ('Rap');
insert into genres (name) values ('Hip-hop');
insert into genres (name) values ('Rock');

select * from genres; 

insert into album (name, release_date) values ('Let it be', 1970);
insert into album (name, release_date) values ('Abbey road',1969);
insert into album (name, release_date) values ('Help',1965);
insert into album (name, release_date) values ('Revolver',1966);
insert into album (name, release_date) values ('Rubber soul',1965);
insert into album (name, release_date) values ('Meet the beetles', 1964);
insert into album (name, release_date) values ('Please please me',1963);
insert into album (name, release_date) values ('The beetles',1968);

select * from album; 

insert into songs (track, duration, album_id) values ('Something', 180, 2);
insert into songs (track, duration, album_id) values ('Come together', 250, 2);
insert into songs (track, duration, album_id) values ('Two of us', 210, 1);
insert into songs (track, duration, album_id) values ('Dig a pony', 235, 1);
insert into songs (track, duration, album_id) values ('Help', 141, 3);
insert into songs (track, duration, album_id) values ('Another girl', 128, 3);
insert into songs (track, duration, album_id) values ('Taxman', 150, 4);
insert into songs (track, duration, album_id) values ('Love you to', 170, 4);
insert into songs (track, duration, album_id) values ('The word', 205, 5);
insert into songs (track, duration, album_id) values ('Michelle', 182, 5);
insert into songs (track, duration, album_id) values ('This boy', 190, 6);
insert into songs (track, duration, album_id) values ('All my loving', 130, 6);
insert into songs (track, duration, album_id) values ('Anna', 200, 7);
insert into songs (track, duration, album_id) values ('Misery', 190, 7);
insert into songs (track, duration, album_id) values ('Glass onion', 220, 8);
insert into songs (track, duration, album_id) values ('Wild honey pie', 205, 8);

select * from songs; 

insert into essentials (name, release_date) values ('Top hits', 2018);
insert into essentials (name, release_date) values ('Good day', 2019);
insert into essentials (name, release_date) values ('Legends', 1970);
insert into essentials (name, release_date) values ('Summer hits', 1980);
insert into essentials (name, release_date) values ('Chill', 2000);
insert into essentials (name, release_date) values ('Happy', 2001);
insert into essentials (name, release_date) values ('Hot hits', 2006);
insert into essentials (name, release_date) values ('Epic', 2007);

select * from essentials;

insert into essent_songs (song_id, essential_id) values (10, 1);
insert into essent_songs (song_id, essential_id) values (7, 2);
insert into essent_songs (song_id, essential_id) values (3, 3);
insert into essent_songs (song_id, essential_id) values (1, 4);
insert into essent_songs (song_id, essential_id) values (12, 5);
insert into essent_songs (song_id, essential_id) values (5, 6);
insert into essent_songs (song_id, essential_id) values (4, 7);
insert into essent_songs (song_id, essential_id) values (9, 8);

select * from essent_songs; 

insert into artist_album (artist_id, album_id) values (8, 1);
insert into artist_album (artist_id, album_id) values (7, 2);
insert into artist_album (artist_id, album_id) values (6, 3);
insert into artist_album (artist_id, album_id) values (5, 4);
insert into artist_album (artist_id, album_id) values (4, 5);
insert into artist_album (artist_id, album_id) values (3, 6);
insert into artist_album (artist_id, album_id) values (2, 7);
insert into artist_album (artist_id, album_id) values (1, 8);

select * from artist_album;

insert into artist_genre (artist_id, genre_id) values (1, 1);
insert into artist_genre (artist_id, genre_id) values (2, 1);
insert into artist_genre (artist_id, genre_id) values (3, 2);
insert into artist_genre (artist_id, genre_id) values (4, 3);
insert into artist_genre (artist_id, genre_id) values (5, 3);
insert into artist_genre (artist_id, genre_id) values (6, 4);
insert into artist_genre (artist_id, genre_id) values (7, 4);
insert into artist_genre (artist_id, genre_id) values (8, 5);

select * from artist_genre;

select * from album a 
where a.release_date = 2018;

select track, duration  from songs
order by duration desc 
limit 1;

select s.track from songs s 
where s.duration > 210;

select * from essentials e 
where e.release_date between 2018 and 2020;

select * from artist a 
where a."name" not like '% %';

select s.track  from songs s 
where s.track ilike '%my%';

