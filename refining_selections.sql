USE book_shop;

select database();

INSERT INTO books
(title, author_fname, author_lname, released_year, stock_quantity, pages)
VALUES ('10% Happier', 'Dan', 'Harris', 2014, 29, 256),
       ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
       ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);

select * from books;

#distinct: do not show duplicate results. does not change database

select * from books;

select distinct author_lname from books;

select concat(author_fname, ' ', author_lname) from books;

select distinct concat(author_fname, ' ', author_lname) from books;

select distinct author_fname, author_lname from books;

#order by: order the results

insert into books (title, author_lname)
values ('my life', 'steele');

select * from books;

select book_id, author_fname, author_lname from books order by author_fname; #ascending

select book_id, author_fname, author_lname from books order by author_fname desc ; #descending

select title, pages from books order by pages;

select title, pages from books order by released_year;

select book_id, author_fname, author_lname, pages from books order by 4; #order by the number in select

select author_lname, released_year, title from books order by author_lname, released_year; #sort multiple

select concat(author_fname, ' ', author_lname) as author from books order by author; #sort by alias

#limit: limit the results shown
select book_id, author_fname, author_lname from books order by book_id limit 5; #starts at 0

select book_id, author_fname, author_lname from books order by book_id limit 2, 5; #starts after 2

#like: does not need to be exact match; \ can escape % and _
select author_fname from books where author_fname like '%da%'; # % is needed to work

select author_fname from books where author_fname like '____'; # _ number of characters




