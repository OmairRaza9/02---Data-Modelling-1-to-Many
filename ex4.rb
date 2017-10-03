Find the author with the name 'Kara Melton' and then select all the articles she has written.

SELECT title FROM articles WHERE author_id = 8;
                                              title
--------------------------------------------------------------------------------------------------
 How Tech Business Models Come From Marginalized Communities, But Startups Are Still Mostly White
 Confronting the Assumption of Whiteness in Virtual Spaces
(2 rows)

one_to_many_assignment=#


2) Find Ontario in the provinces table and then find all the cities in that province.
SELECT * FROM provinces LIMIT 5;
 id |     name      | year_founded | country_id
----+---------------+--------------+------------
 14 | Ontario       |         1867 |          1
 15 | Quebec        |         1867 |          1
 16 | New Brunswick |         1867 |          1
 17 | New Brunswick |         1867 |          1
 18 | Nova Scotia   |         1867 |          1
(5 rows)


SELECT * FROM cities WHERE province_id = 14;
 id |  name   | year_founded | province_id
----+---------+--------------+-------------
  8 | Toronto |         1793 |          14
 11 | Ottawa  |         1826 |          14
(2 rows)


3) Who wrote the article called 'Coding Bootcamps and Emotional Labor'?
SELECT id, author_id, title FROM articles WHERE title = 'Coding Bootcamps and Emotional Labor';
 id | author_id |                title
----+-----------+--------------------------------------
  3 |         4 | Coding Bootcamps and Emotional Labor
(1 row)
SELECT name FROM authors WHERE id=4;
       name
-------------------
 Tilde Ann Thurium
(1 row)
4) Write a series of SQL queries to find out how many provinces are in Canada.
SELECT * FROM provinces LIMIT 20;
SELECT count(name) FROM provinces;
 count
-------
    14
(1 row)

5) How many people live at 4740 McDermott Street?
SELECT * FROM residences WHERE address = '4740 McDermott Street';
 id |        address        | year_built | city_id
----+-----------------------+------------+---------
  9 | 4740 McDermott Street |       1923 |      11
(1 row)

SELECT count(id) FROM persons WHERE residence_id = 9;
 count
-------
     2
(1 row)



6) What city is 4740 McDermott Street in?

SELECT * FROM residences WHERE address = '4740 McDermott Street';
 id |        address        | year_built | city_id
----+-----------------------+------------+---------
  9 | 4740 McDermott Street |       1923 |      11
(1 row)

SELECT * FROM cities WHERE id = 11;
 id |  name  | year_founded | province_id
----+--------+--------------+-------------
 11 | Ottawa |         1826 |          14
(1 row)

7) What province is 4740 McDermott Street in?
SELECT * FROM provinces WHERE id = 14;
 id |  name   | year_founded | country_id
----+---------+--------------+------------
 14 | Ontario |         1867 |          1
(1 row)


8) What country is 4740 McDermott Street in?
SELECT * FROM countries WHERE id = 1;
 id |  name  | year_founded | national_animal
----+--------+--------------+-----------------
  1 | Canada |         1867 | beaver
(1 row)


9) Find the person named 'Destini Davis' and then use a series of SQL queries to find what country they live in.

SELECT * FROM persons WHERE name = 'Destini Davis';
 id |     name      | age | residence_id
----+---------------+-----+--------------
  3 | Destini Davis |  37 |            2
(1 row)

SELECT * FROM residences WHERE id = 2;
 id |      address      | year_built | city_id
----+-------------------+------------+---------
  2 | 537 Wyman Harbors |       1975 |       8
(1 row)

SELECT * FROM cities WHERE id = 8;
 id |  name   | year_founded | province_id
----+---------+--------------+-------------
  8 | Toronto |         1793 |          14
(1 row)

SELECT * FROM provinces where id = 14;
 id |  name   | year_founded | country_id
----+---------+--------------+------------
 14 | Ontario |         1867 |          1
(1 row)

SELECT * FROM countries WHERE id = 1;
 id |  name  | year_founded | national_animal
----+--------+--------------+-----------------
  1 | Canada |         1867 | beaver
(1 row)



10) How many articles has Aditya Mukerjee written?
SELECT id, name FROM authors WHERE name = 'Aditya Mukerjee';
 id |      name
----+-----------------
  2 | Aditya Mukerjee
SELECT COUNT(title) FROM articles WHERE author_id = 2;
 count
-------
     1
(1 row)
