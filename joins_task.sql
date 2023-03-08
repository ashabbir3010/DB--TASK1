USE `sakila`;

-- 1. What is the average running time of films by category?
SELECT AVG(`film`.`length`), `category`.`name`
FROM `film`
JOIN `film_category` ON `film`.`film_id` = `film_category`.`film_id`
JOIN `category` ON `film_category`.`category_id` =  `category`.`category_id`  
GROUP BY `category`.`category_id`
ORDER BY AVG(`film`.`length`) DESC;
    
-- 2. Which last names appear more than once?
SELECT `last_name` FROM `actor` GROUP BY `last_name` HAVING COUNT(`last_name`) > 1;

-- 3. Retreive all movies that Fred Costner has appeared in.
SELECT `title` FROM `film` 
JOIN `film_actor` ON `film`.`film_id` = `film_actor`.`film_id`
JOIN `actor` ON `actor`.`actor_id` = `film_actor`.`actor_id`
WHERE `first_name` = 'FRED' AND `last_name` = 'COSTNER';

-- 4. Find out which location has the most copies of BUCKET BROTHERHOOD.alter
SELECT `inventory`.`store_id`, COUNT(`film`.`film_id`) FROM `store`
JOIN `inventory` ON `store`.`store_id` = `inventory`.`store_id`
JOIN `film` ON `inventory`.`film_id` = `film`.`film_id`
WHERE `title` = 'BUCKET BROTHERHOOD'
GROUP BY `inventory`.`store_id`;

-- 5. Create a list of categories and the number of films for each category.
SELECT COUNT(`film`.`film_id`),`category`.`name` AS `num_films` FROM `film`
JOIN `film_category` ON `film`.`film_id` = `film_category`.`film_id`
JOIN `category` ON `film_category`.`category_id` =  `category`.`category_id`
GROUP BY `category`.`category_id`
ORDER BY `num_films`DESC;

-- 6. Create a list of actors and the number of movies by each actor.
SELECT `first_name`, `last_name`, COUNT(`film_actor`.`film_id`) AS `num_films` FROM `actor`
JOIN `film_actor` ON `actor`.`actor_id` = `film_actor`.`actor_id`
JOIN `film` ON `film`.`film_id` = `film_actor`.`film_id`
GROUP BY `film_actor`.`actor_id`
ORDER BY `num_films` DESC;



-- 7. Is 'Academy Dinosaur' available for rent from Store 1?

-- 8. When is 'Academy Dinosaur' due? 