#change Jackson to jack
select name from cats where name='jackson';

update cats set name='Jack' where name='jackson';

#change ricko breed to british shorthair

select * from cats where name='Ringo';

update cats set breed='British Shorthair' where name='Ringo';

#change breed maine coon to age 12

select * from cats where breed='maine coon';

update cats set age=12 where breed='maine coon';

select * from cats;

