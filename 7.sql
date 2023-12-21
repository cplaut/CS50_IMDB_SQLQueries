--In 7.sql, write a SQL query to list all movies released in 2010 and their ratings, in descending order by rating. 
--For movies with the same rating, order them alphabetically by title.

SELECT movies.title as m, ratings.rating as n FROM movies
JOIN ratings on ratings.movie_id=movies.id
WHERE year = 2010 
ORDER by n DESC, m ASC;