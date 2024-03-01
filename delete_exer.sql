#delete all 4 year old cats
desc cats;

select * from cats where age=4;

delete from cats where age=4;

#delete cats where age = id
select * from cats where cat_id=age;

delete from cats where cat_id=age;

#delete all cats

select * from cats;

delete from cats; #clears table data but keeps table intact