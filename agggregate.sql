SELECT COUNT(*) FROM books;

SELECT COUNT(author_lname) FROM books;

SELECT COUNT(DISTINCT author_lname) FROM books;

select author_lname, count(*) from books group by author_lname;