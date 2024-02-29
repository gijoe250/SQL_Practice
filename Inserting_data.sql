create table cats (
    name varchar(50),
    age int
);

insert into cats (name, age)
values ( 'Kitty', 3);

insert into cats (name, age)
values ("Poop", 4); # this works for mysql, but double quotes may not work for other DMSs

select * from cats;

insert into cats (age, name)
values (1, 'bunny'),
       (4, 'doggy');

insert into cats (name) VALUES ('ageless');

create table cats2 (
    name varchar(20) not null ,
    age int not null
);

insert into cats2 (name) values ('noAge'); /*wont run because no age with not null in affect*/

desc cats2;

insert into cats (name) values ('Mia\'s name'); /* \ escapes the ' so it can be used normally */

create table cats3 (
    name varchar(20) default 'nameless',
    age int default '99'
                    );

desc cats3;

# not null and default can be used in tandem. Null can be inserted manually. Default is just an initial setting

create table cats4 (
    name varchar(20) not null default 'nameless',
    age int not null default '99'
);

insert into cats4 (name, age)
values ( Null, null); /* wont work because not null*/

insert into cats4 (age)
values (13);

insert into cats4 (name)
values ('piggy');

select * from cats4;

insert into cats4 () values ();

# Primary Keys: a unique identifier that prevents duplicate entries
# primary key cannot be null, therefore not null not needed work

create table unique_cats (
    cat_id int not null primary key ,
    name varchar(20),
    age int
); # have to manually add primary key this way

drop table unique_cats;

create table unique_cats (
    cat_id int auto_increment,
    name varchar(20),
    age int,
    PRIMARY KEY (cat_id)
); #autoincrement will auto proc the ids starting from 1

desc unique_cats;

insert into unique_cats (name, age)
values ('twin', 2 ),
       ('twin', 2 ),
       ('twin', 2);

select * from unique_cats;




