select * from books where title like '%stories%';

select title, pages from books order by pages desc limit 1;

select title, released_year as summary from books order by released_year desc limit 3;

select title, author_lname from books where author_lname like '% %';

select title, released_year, stock_quantity from books order by stock_quantity limit 1,3;

select title, author_lname from books order by author_lname, title;

select concat('my favorite author is ', upper(author_fname), ' ', upper(author_lname)) from books order by author_lname;