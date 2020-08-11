-- select the name, genre, and year columns from the movies table

SELECT name, genre, year
FROM movies;

-- select the name and imdb_rating columns but rename them with aliases

SELECT name AS 'title',
imdb_rating AS 'IMDb'
FROM movies;

-- select the distinct genres

SELECT DISTINCT genre 
FROM movies;

-- select movies with an imdb rating less than 5

SELECT * 
FROM movies 
WHERE imdb_rating < 5;

-- select movies that were released after 2014

SELECT * 
FROM movies 
WHERE year > 2014;

-- select the movies titled 'Se7en' and 'Seven' using LIKE and the '_' wildcard

SELECT * 
FROM movies
WHERE name LIKE 'Se_en';

-- select the movies where the title contains the word 'man' using the '%' wildcard

SELECT * 
FROM movies
WHERE name LIKE '%man%';

-- select the movies where the title begins with the word 'The'

SELECT * 
FROM movies
WHERE name LIKE 'The %';

-- select the name column for the movies where the imdb_rating column is NULL

SELECT name
FROM movies
WHERE imdb_rating is NULL;

-- select the movies whose name begins with the letters 'D', 'E', and 'F'

SELECT *
FROM movies
WHERE name BETWEEN 'D' AND 'G';

-- select the movies that were released in the 1970s

SELECT *
FROM movies
WHERE year BETWEEN 1970 AND 1979;

-- select the movies that were released in the 1970s and had an imdb rating greater than 8

SELECT *
FROM movies
WHERE year BETWEEN 1970 AND 1979
AND imdb_rating > 8;

-- select the movies that were released before 1985 and were in the horror genre

SELECT *
FROM movies
WHERE year < 1985
AND genre = 'horror';

-- select the movies that were either released after 2014 or were in the action genre

SELECT *
FROM movies
WHERE year > 2014
OR genre = 'action';

-- select the movies that are either in the romance genre or the comedy genre

SELECT *
FROM movies
WHERE genre = 'romance'
OR genre = 'comedy';

-- select the name and year columns of the movies table and order the results alphabetically by name

SELECT name, year
FROM movies
ORDER BY name;

-- select the name, year, and imdb_rating columns of the movies table and order the results by imdb_rating from highest to lowest

SELECT name, year, imdb_rating
FROM movies
ORDER BY imdb_rating DESC;

-- select the top 3 highest rated movies

SELECT *
FROM movies
ORDER BY imdb_rating DESC
LIMIT 3;

-- select the name column from the movies table and use a CASE statement to create a second column aliased as 'Mood' where the value is 'Chill' if the genre is either romance or comedy and the value is 'Intense' for all other genres

SELECT name,
    CASE
        WHEN genre = 'romance' 
        OR genre = 'comedy' THEN 'Chill'
        ELSE 'Intense'
    END AS 'Mood'
FROM movies;







