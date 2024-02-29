create table employees (
    employee_id int auto_increment,
    last_name varchar(20) not null,
    first_name varchar(20) not null,
    middle_name varchar(20),
    age int not null,
    current_status varchar(20) not null default 'employed',
    primary key (employee_id)
);

desc employees;

insert into employees (last_name, first_name, age)
VALUES ('dummy', 'test', 14);

select * from employees;
