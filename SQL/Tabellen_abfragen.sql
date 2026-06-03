use sakila;

-- 6

SELECT film.title, actor.first_name, actor.last_name
FROM film 
INNER JOIN film_actor
ON film.film_id = film_actor.film_id
INNER JOIN actor
ON film_actor.actor_id = actor.actor_id
WHERE film.release_year = 2019
ORDER BY film.title ASC;

