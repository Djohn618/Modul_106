Show databases;
Use sakila;

-- 1
SELECT f.title, f.description, c.name AS Kategorie
FROM film f 
LEFT JOIN category c ON f.film_id = c.film_id
WHERE f.release_year = 1999;