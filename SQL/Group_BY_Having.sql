USE sakila;

-- 1

SELECT category.name AS film_Kategorie, COUNT(film.film_id) AS Total_filme
FROM category
LEFT JOIN film
ON category.category_id = film.category_id
GROUP BY category.category_id, category.name
ORDER BY category.name ASC;

-- 2

SELECT category.name AS film_Kategorie, COUNT(film.film_id) AS Total_filme
FROM category
LEFT JOIN film
ON category.category_id = film.category_id
GROUP BY category.category_id, category.name
UNION ALL

SELECT 'Ohne kategorie', COUNT(*) 
FROM film 
WHERE category_id IS NULL;



-- 3

SELECT category.name AS film_Kategorie, ROUND(AVG(film.rental_rate)) AS AVG_rental_rate
FROM category
LEFT JOIN film
ON category.category_id = film.category_id
GROUP BY category.category_id, category.name
HAVING AVG(film.rental_rate) >= 5.00
ORDER BY AVG_rental_rate DESC;


-- 4

SELECT category.name AS film_Kategorie, ROUND(AVG(film.rental_rate), 2) AS AVG_rental_rate
FROM category
LEFT JOIN film
ON category.category_id = film.category_id
WHERE film.rating LIKE 'NC-17'
GROUP BY category.category_id, category.name
HAVING AVG(film.rental_rate) >= 5.00
ORDER BY AVG_rental_rate DESC
LIMIT 5;


-- 5


