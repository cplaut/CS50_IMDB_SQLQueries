--In 13.sql, write a SQL query to list the names of all people who starred in a movie in which Kevin Bacon also starred.

SELECT name from people
JOIN stars on stars.person_id=people.id
JOIN movies on movies.id=stars.movie_id
WHERE movies.title in(SELECT DISTINCT(movies.title) FROM people
JOIN stars on stars.person_id=people.id
JOIN movies on movies.id=stars.movie_id
WHERE people.name = "Kevin Bacon" and people.birth = 1958) 
and people.name <> "Kevin Bacon";