USE `sakila`;

SHOW TABLES;
DESCRIBE `actor`;

SELECT * FROM `actor`;
SELECT * FROM `actor` WHERE `first_name` IN ('John');
SELECT * FROM `actor` WHERE `last_name` IN ('Neeson');
SELECT * FROM `actor` WHERE `actor_id` % 10 = 0;
SELECT * FROM `film` WHERE `film_id` = 100;
SELECT * FROM `film` WHERE `rating` = ('R');
SELECT * FROM `film` WHERE `rating` NOT IN ('R');
SELECT * FROM `film` ORDER BY `length` ASC LIMIT 10;
SELECT `title` FROM `film`;
SELECT * FROM `language` ORDER BY `language_id`;
