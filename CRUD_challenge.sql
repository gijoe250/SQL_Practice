#create a new db shirts_db
create database shirts_db;

use shirts_db;

select database();

#create a table shirts
# shirt_id(PK), article(txt), color(txt), shirt_size(txt), last_worn(int)
create table shirts(
    shirt_id int auto_increment,
    article varchar(31),
    color varchar(31),
    shirt_size varchar(31),
    last_worn int,
    primary key (shirt_id)
);

desc shirts;

#insert all given info in one go
insert into shirts (article, color, shirt_size, last_worn)
VALUES ('t-shirt', 'white', 'S', 10),
       ('t-shirt', 'green', 'S', 200),
       ('polo shirt', 'black', 'M', 10),
       ('tank top', 'blue', 'S', 50),
       ('t-shirt', 'pink', 'S', 0),
       ('polo shirt', 'red', 'M', 5),
       ('tank top', 'white', 'S', 200),
       ('tank top', 'blue', 'M', 15);

select * from shirts;

#insert purple polo size m last worn 50 days
insert into shirts (article, color, shirt_size, last_worn)
VALUES ('polo shirt', 'purple', 'M', 50);

#select all print article and color
select article, color from shirts;

#select all med shirts dont print shirt_id
desc shirts;

select article, color, shirt_size, last_worn from shirts where shirt_size='M';

#change all polo to large
select * from shirts where article='polo shirt';

update shirts set shirt_size='L' where article='polo shirt';

#change last worn 15 days ago to 0
select * from shirts where last_worn=15;

update shirts set last_worn=0 where last_worn=15;

select * from shirts where last_worn=0;
#change all white to off white and xs
select * from shirts where color='white';

update shirts set color='off white', shirt_size='xs' where color='white';

select * from shirts where color='off white';
#delete shirts last worn 200 days ago
select * from shirts where last_worn=200;

delete from shirts where last_worn=200;

select * from shirts;

#delete all tank tops
select * from shirts where article='tank top';

delete from shirts where article='tank top';

select * from shirts;

#delete all shirts
delete from shirts;

select * from shirts;

#drop table
drop table shirts;