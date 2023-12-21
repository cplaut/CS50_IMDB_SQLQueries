--In 11.sql, write a SQL query to list the titles of the five highest rated movies (in order) that Chadwick Boseman starred in, starting with the highest rated.

SELECT movies.title FROM people 
JOIN stars on stars.person_id=people.id
JOIN movies on movies.id=stars.movie_id
JOIN ratings on ratings.movie_id=movies.id
WHERE people.name = "Chadwick Boseman"
ORDER by ratings.rating DESC
LIMIT 5;
