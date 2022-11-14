DROP DATABASE TTA;
CREATE DATABASE TTA;
USE TTA;
DROP TABLE IF EXISTS StudentScoring;
CREATE TABLE IF NOT EXISTS StudentScoring(
    ID int (10),
    Student varchar (25),
    Score int (10),
    Age int (10),
    PRIMARY KEY (ID)
);
INSERT INTO StudentScoring (ID, Student, Score, Age)
VALUES (1, "Chris", 78, 23),
(2, "Charlotte", 92, 22),
(3, "Caleb", 92, 24),
(4, "Chantelle", 88, 23);
SELECT * FROM StudentScoring;