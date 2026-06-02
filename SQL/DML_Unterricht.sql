USE sakila;

SHOW TABLES;

-- 1

CREATE TABLE firstnames(
	id INT auto_increment primary key, 
    firstname varchar(150) NOT NULL
);

SHOW TABLES;
-- ---------

INSERT INTO firstnames (firstname)
SELECT DISTINCT first_name FROM actor;

-- testen
SELECT * FROM  firstnames;


-- 2

CREATE TABLE film_1999(
	film_1999_id INT AUTO_INCREMENT PRIMARY KEY, 
    title varchar(128) NOT NULL,
    description TEXT,
    release_year YEAR NOT NULL, 
    language_id INT NOT NULL, 
    original_language_id INT NOT NULL, 
    foreign key (language_id) references language(language_id ), 
    foreign key (original_language_id) references language(language_id), 
    category_id INT NOT NULL, 
    foreign key (category_id) references category(category_id ), 
    rental_duration INT NOT NULL, 
    rental_rate double not null, 
    length INT, 
    replacement_cost double NOT NULL, 
    rating ENUM('G','PG', 'PG-13', 'R', 'NC-17'),
    special_features varchar(1000)
);


-- AI 

CREATE TABLE film_1999 (
    film_1999_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(128) NOT NULL,
    description TEXT,
    release_year YEAR,
    language_id TINYINT UNSIGNED NOT NULL,
    original_language_id TINYINT UNSIGNED DEFAULT NULL,
    rental_duration TINYINT UNSIGNED NOT NULL,
    rental_rate DECIMAL(4,2) NOT NULL,
    length SMALLINT UNSIGNED DEFAULT NULL,
    replacement_cost DECIMAL(5,2) NOT NULL,
    rating ENUM('G','PG','PG-13','R','NC-17') DEFAULT 'G',
    special_features SET('Trailers','Commentaries','Deleted Scenes','Behind the Scenes') DEFAULT NULL,
    last_update TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (language_id) REFERENCES language(language_id),
    FOREIGN KEY (original_language_id) REFERENCES language(language_id)
    
);

INSERT INTO film_1999(title, description, release_year, language_id, original_language_id,
    rental_duration, rental_rate, length, replacement_cost,
    rating, special_features)
    
SELECT title, description, release_year, language_id, original_language_id,
    rental_duration, rental_rate, length, replacement_cost,
    rating, special_features 
    
FROM film WHERE release_year = 1999;

SELECT * FROM film_1999;


-- 3

create table spcial_price(
	film_id INT NOT NULL auto_increment PRIMARY KEY, 
    title VARCHAR(128) NOT NULL, 
    rental_rate DOUBLE NOT NULL
);

INSERT INTO 
