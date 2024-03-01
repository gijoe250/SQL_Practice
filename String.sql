CREATE database book_shop;

USE book_shop;

select database();

# ran book_data.sql, source could've also been used from the command line

select * from books;

#concat

select concat('h', 'e', 'l');

select concat(books.author_fname,' ' ,books.author_lname) as author_name from books;

select concat_ws('-', books.author_fname,books.author_lname) as author_name from books;

select substring('hello world', 2, 7); # range
select substring('hello world', 7); # range to end
select substring('hello world', -2); # range starts from end

select substring(title, 1, 15) from books;

select substring(books.author_lname, 1, 1) from books;

SELECT CONCAT
       (
               SUBSTRING(title, 1, 10),
               '...'
       ) AS 'short title'
FROM books;

#replace: does not change the data, but changes what is shown by 1: choosing section 2: what to replace 3: replace with
SELECT REPLACE('Hello World', 'Hell', '%$#@');

SELECT REPLACE('Hello World', 'l', '7');

SELECT REPLACE('Hello World', 'o', '0');

SELECT REPLACE('HellO World', 'o', '*');

SELECT
    REPLACE('cheese bread coffee milk', ' ', ' and ');

SELECT REPLACE(title, 'e ', '3') FROM books;

SELECT REPLACE(title, ' ', '-') FROM books;

#reverse reverses...
select reverse('hello world');

select reverse(author_fname) from books;

SELECT CONCAT('woof', REVERSE('woof'));

SELECT CONCAT(author_fname, REVERSE(author_fname)) FROM books;

#char_length will return the number of characters, not bits (like foreign characters wont be a one and one)

SELECT CHAR_LENGTH('Hello World');

SELECT CHAR_LENGTH(title) as length, title FROM books;

SELECT author_lname, CHAR_LENGTH(author_lname) AS 'length' FROM books;

SELECT CONCAT(author_lname, ' is ', CHAR_LENGTH(author_lname), ' characters long') FROM books;

#upper/lower changes the cases of the string
SELECT UPPER('Hello World');

SELECT LOWER('Hello World');

SELECT UPPER(title) FROM books;

SELECT CONCAT('MY FAVORITE BOOK IS ', UPPER(title)) FROM books;

SELECT CONCAT('MY FAVORITE BOOK IS ', LOWER(title)) FROM books;

#miscallenous: there are more not covered
SELECT INSERT('Hello Bobby', 6, 0, 'There');

SELECT LEFT('omghahalol!', 3);

SELECT RIGHT('omghahalol!', 4);

SELECT REPEAT('ha', 4);

SELECT TRIM('  pickle  ');


