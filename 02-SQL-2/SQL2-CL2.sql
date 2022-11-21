-- BETWEEN TWO NULLS

USE uni;

-- 1)

SELECT *
FROM application
WHERE CourseAppliedFor IS NULL;

-- 2)

SELECT *
FROM student
WHERE CourseID IS NOT NULL;

-- 3)

SELECT *
FROM student
WHERE DateOfBirth
BETWEEN '2002-06-01'
AND '2002-06-30';

-- 4)

SELECT *
FROM application
WHERE CourseAppliedFor IS NULL AND DateOfApplication
BETWEEN '2020-04-01'
AND '2020-07-31';