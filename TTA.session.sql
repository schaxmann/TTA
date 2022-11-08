SHOW DATABASES;

CREATE DATABASE IF NOT EXISTS TTA;

USE TTA;

CREATE TABLE IF NOT EXISTS StudentScoring(
    ID int (10),
    Student varchar (25),
    Score int (10),
    Age int (10),
    PRIMARY KEY (ID)
);

EXPLAIN StudentScoring;