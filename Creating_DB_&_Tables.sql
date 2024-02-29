SHOW DATABASES; /*shows all the databases in the mysql server*/

Create DATABASE soapStore; /*creates database*/

DROP DATABASE soapStore; /*deletes database*/

USE mySQL_Practice; /*select database to use*/

select database(); /*shows current database*/

/*Three Data Types: Numeric, String, Date Types*/
/*VARCHAR we set max length, INt is for numbers and signed by default*/

CREATE table cats(
    name varchar(20),
    age int
);

create table dogs(
    name varchar(20),
    bread varchar(50),
    age int
);

SHOW tables; /*show all tables for selected database*/
show columns from dogs; /*show column names of specified table*/
desc cats; /*also shows table details*/

drop table cats; /*deletes specified table
