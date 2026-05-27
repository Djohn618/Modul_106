Show databases;
Use sakila;

Show tables;

-- 1)
SELECT title, description FROM film WHERE rental_rate >=5;

-- 14)

 SELECT title, release_year FROM film WHERE release_year BETWEEN 1900 AND 1999; 