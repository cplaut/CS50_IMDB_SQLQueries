--In 9.sql, write a SQL query to list the names of all people who starred in a movie released in 2004, ordered by birth year.

SELECT DISTINCT(people.name) FROM people
JOIN stars on stars.person_id=people.id
JOIN movies on movies.id=stars.movie_id
where movies.year = 2004
ORDER by people.birth;