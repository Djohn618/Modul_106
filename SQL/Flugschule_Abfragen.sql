use mydb;

Show tables;

-- Adressbuch

-- 1

SELECT * FROM tbl_personen ORDER BY nachname ASC, vorname ASC; 

-- 2

-- 3

-- 4

-- 5

-- Flugzeug

-- 1 

SELECT tbl_flugzeug.kennung, tbl_hersteller.name, tbl_type.model, tbl_type.kuerzel, tbl_kategorie.kategorie
FROM tbl_flugzeug 
INNER JOIN tbl_kategorie 
ON tbl_flugzeug.flugzeug_id = tbl_kategorie.flugzeug_id
INNER JOIN tbl_hersteller
ON tbl_kategorie.kategorie_id = tbl_hersteller.kategorie_id
INNER JOIN tbl_type
ON tbl_hersteller.hersteller_id = tbl_type.tbl_hersteller_hersteller_id 
INNER JOIN tbl_type
ON tbl_hersteller.hersteller_id = tbl_type.tbl_flugzeug_flugzeug_id;



