Show databases;
Use sakila;

-- 1
SELECT f.title, f.description, c.name AS Kategorie
FROM film f 
LEFT JOIN film f ON f.film_id = f.film_id
LEFT JOIN category c ON f.category_id = c.category_id
WHERE f.release_year = 1999;

-- KI
SELECT 
    f.title,
    f.description,
    c.name AS Kategorie
FROM film f
LEFT JOIN film_category fc 
    ON f.film_id = fc.film_id
LEFT JOIN category c 
    ON fc.category_id = c.category_id
WHERE f.release_year = 1999;

-- 2 
SELECT 
    f.title,
    f.description,
    c.name AS Kategorie
FROM film f
RIGHT JOIN film_category fc 
    ON f.film_id = fc.film_id
RIGHT JOIN category c 
    ON fc.category_id = c.category_id
WHERE f.release_year = 1999;

-- 3 
SELECT 
    f.title,
    f.description,
    c.name AS Kategorie
FROM film f
RIGHT JOIN film_category fc 
    ON f.film_id = fc.film_id
RIGHT JOIN category c 
    ON fc.category_id = c.category_id
WHERE f.release_year = 1999;

-- --------------------------------------------------------------------

-- 1

SELECT film.title, film.description, category.name
FROM film 
LEFT JOIN category
ON film.category_id = category.category_id 
WHERE film.release_year = 1999;

-- 2

SELECT film.title, film.description, category.name
FROM film 
INNER JOIN category
ON film.category_id = category.category_id 
WHERE film.release_year = 1999;

-- 3

SELECT film.title, film.description, category.name
FROM film 
INNER JOIN category
ON film.category_id = category.category_id 
WHERE film.release_year = 1999 AND category.name IN ('Drama', 'Horror');

-- 4

SELECT film.title, film.description, category.name, language.name AS Sprache
FROM film 
LEFT JOIN category
ON film.category_id = category.category_id 
LEFT JOIN language
ON film.language_id = language.language_id
WHERE film.release_year = 1999;

-- 5

SELECT film.title, film.description, category.name, language.name AS Sprache, ol.name AS Original_Sprache
FROM film 
LEFT JOIN category
ON film.category_id = category.category_id 
LEFT JOIN language
ON film.language_id = language.language_id
LEFT JOIN language ol
ON film.original_language_id = ol.language_id
WHERE film.release_year = 1999;

-- 6



