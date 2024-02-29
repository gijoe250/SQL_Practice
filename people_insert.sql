# Create a people table
# first name 20 last name 20 age
create table people (
    first_name varchar(20),
    last_name varchar(20),
    age int
);

insert into people (first_name, last_name, age)
    VALUES (
            'Joe', 'Garcia', 42
           ),
        ('Peep', 'pop', 14);

drop table people;