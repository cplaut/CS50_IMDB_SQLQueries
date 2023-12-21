--In 10.sql, write a SQL query to list the names of all people who have directed a movie that received a rating of at least 9.0.

SELECT DISTINCT(name) FROM people
JOIN ratings on movies.id = ratings.movie_id
JOIN movies ON directors.movie_id = movies.id
JOIN directors ON people.id = directors.person_id
WHERE ratings.rating >= 9;