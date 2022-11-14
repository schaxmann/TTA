DROP DATABASE sunday_league;
CREATE DATABASE sunday_league;
USE sunday_league;

DROP TABLE IF EXISTS players;
CREATE TABLE players(
    id int (10),
    first_name varchar (25),
    last_name varchar (25),
    shirt_number int (99),
    position varchar (3),
    PRIMARY KEY (ID)
);

INSERT INTO players (id, first_name, last_name, shirt_number, position)
VALUES (1, 'Aland', 'Bagshawe', 96, 'RDM'),
(2, 'Gan', 'Inge', 17, 'RAW'),
(3, 'Dante', 'Yewdell', 83, 'CM'),
(4, 'Adorne', 'Bullin', 32, 'LCM'),
(5, 'Benjamen', 'Michele', 28, 'GK'),
(6, 'Burnaby', 'Haggeth', 14, 'RAW'),
(7, 'Kort', 'Kofax', 5, 'RS'),
(8, 'Vicky', 'Files', 47, 'RAM'),
(9, 'Cordell', 'Mityukov', 63, 'RCM'),
(10, 'Abigail', 'Simond', 65, 'RDM');
SELECT * FROM players;

UPDATE players
SET first_name = "Max"
WHERE first_name = "Dante";

DELETE FROM players where shirt_number = 65;