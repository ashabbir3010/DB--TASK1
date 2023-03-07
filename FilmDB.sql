USE `sakila`;

SHOW TABLES;
DESCRIBE `actor`;

-- 1. Select all actors from the table
SELECT * FROM `actor`;

-- 2. Find the actor with the first name "John"
SELECT * FROM `actor` WHERE `first_name` IN ('John');

-- 3. Find all actors with the surname "Neeson"
SELECT * FROM `actor` WHERE `last_name` IN ('Neeson');

-- 4. Find all actors with Id numbers divisible by 10
SELECT * FROM `actor` WHERE `actor_id` % 10 = 0;

-- 5. What is the description of the movie with ID of 100?
SELECT * FROM `film` WHERE `film_id` = 100;

-- 6. Find every movie with a rating of "R"
SELECT * FROM `film` WHERE `rating` = ('R');

-- 7. Find every movie except those with a rating of "R"
SELECT * FROM `film` WHERE `rating` NOT IN ('R');

-- 8. Find the 10 shortest movies
SELECT * FROM `film` ORDER BY `length` ASC LIMIT 10;

-- 9. Now return only the movie titles
SELECT `title` FROM `film`;

-- 10. What are the names of all languages in the database (sorted alphabetically)
SELECT * FROM `language` ORDER BY `language_id`;

-- 11. Find all movies with Deleted Scenes
SELECT * FROM `film` WHERE `special_features` LIKE '%deleted scenes%';

-- 12. How many distinct countries are there?




-- 1. Which actor has appeared in the most films?


-- 2. What is the average running time of all the films in the database?
SELECT AVG(`length`) FROM `film`;

-- 3. What is the average running time of films by category?
SELECT AVG(`length`) FROM `film_list`;

-- 4. How many movies have Robots in them? 
SELECT COUNT(*) FROM `film` WHERE `description` LIKE '%robot%';

-- 5. Find the movie(s) with the longest runtime
SELECT MAX(`length`) FROM `film`;

-- 6. Count how many movies were released in 2010
SELECT COUNT(*) FROM `film` WHERE `release_year` = 2010;

-- 7. Which last names are not repeated?
SELECT (`last_name`) FROM `actor` GROUP BY `last_name` HAVING COUNT(`last_name`) = 1;