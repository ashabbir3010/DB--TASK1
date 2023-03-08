USE `sakila`;

-- How many distinct countries are there?
SELECT COUNT(DISTINCT `country_id`) FROM `country`;

-- Which actor has appeared in the most films?
SELECT `actor_id`, COUNT(*) FROM `film_actor` GROUP BY `actor_id` ORDER BY COUNT(*) DESC;

-- What is the average running time of films by category?
SELECT `category`, AVG(`length`), COUNT(*) FROM `film_list` GROUP BY `category`;


