drop table cats;

CREATE TABLE cats (
                      cat_id INT AUTO_INCREMENT,
                      name VARCHAR(100),
                      breed VARCHAR(100),
                      age INT,
                      PRIMARY KEY (cat_id)
);

INSERT INTO cats(name, breed, age)
VALUES ('Ringo', 'Tabby', 4),
       ('Cindy', 'Maine Coon', 10),
       ('Dumbledore', 'Maine Coon', 11),
       ('Egg', 'Persian', 4),
       ('Misty', 'Tabby', 13),
       ('George Michael', 'Ragdoll', 9),
       ('Jackson', 'Sphynx', 7);

select * from cats;

# gets a specific column from table
select name from cats;

select age from cats;

select name, breed from cats;

#Where: can give specifics from given info

select * from cats where age=4;

select name from cats where age=4;

select name from cats where name='egg';

select name from cats where name='eg';

#Alias: rename the column name displayed without changing the name in the table;
# also cane be used to give columns name that do not have a name by default

select cat_id as id, name as kitty_name from cats;

#update: way to change information in the table

update employees set last_name='roosterbeard'; # would update all rows, which might not be wanted

update employees set current_status='laid-off', last_name='who cares?';

select * from   employees;

update cats set age=14 where name='Misty';

select * from cats;

#GREAT TIP! Select before you update so you can make sure the update aligns with what you actually want to change



