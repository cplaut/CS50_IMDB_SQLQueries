--In 5.sql, write a SQL query to list the titles and release years of all Harry Potter movies, in chronological order.

SELECT title, year as n FROM movies WHERE title like "harry potter%"
ORDER by n ASC;