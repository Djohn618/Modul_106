USE sakila;

-- VIEW

CREATE VIEW test AS 
SELECT title, description, release_year
FROM film 
WHERE film_id = 1 ;

-- View aufrufen
 
SELECT * FROM test;

-- ---------------------------------------------------------------------------

-- komplexer View

CREATE VIEW film_category_language AS
SELECT film.title, film.description, category.name, language.name AS Sprache, ol.name AS Original_Sprache
FROM film 
LEFT JOIN category
ON film.category_id = category.category_id 
LEFT JOIN language
ON film.language_id = language.language_id
LEFT JOIN language ol
ON film.original_language_id = ol.language_id
WHERE film.release_year = 1999;

-- view aufrufen
SELECT * FROM film_category_language;

-- ------------------------------------------------------------------------------------------

-- DML 

-- Einzelge Inserts 

INSERT INTO actor (actor_id, first_name, last_name) VALUES (DEFAULT, 'Noam', 'Busser');

-- Mehrere Inserts

INSERT INTO actor (actor_id, first_name, last_name) 
VALUES (DEFAULT, 'Jan', 'Schär'), (DEFAULT, 'Hamudi', 'Alibaba');

-- Insert film in to table film

INSERT INTO film 
(title, description, release_year, language_id, original_language_id, rental_duration, rental_rate, length, replacement_cost, rating, special_features)
VALUES ('Thomas is the man', 'A film about Thomas life story', 2026, 1, NULL, 7, 8.65, 90, 10.00, 'PG', 'Trailers');

-- ----------------------------------------------------------------------------------

-- Update 

UPDATE actor set last_name = 'Hartmann' WHERE first_name = 'Noam';


-- Index

CREATE INDEX idx_actor ON film (title, release_year);

