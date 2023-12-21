--In 8.sql, write a SQL query to list the names of all people who starred in Toy Story.

SELECT name FROM people
JOIN stars on stars.person_id=people.id
JOIN movies on movies.id=stars.movie_id
where movies.title = "Toy Story";