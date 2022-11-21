-- SUBQUERIES

USE uni;

-- 1)

SELECT AVG(FullTimeFee) AS ft_fee_average
FROM(
    SELECT FullTimeFee
    FROM fees
) X;

-- 2)

SELECT CourseID, FullTimeFee
FROM fees
WHERE FullTimeFee > (
SELECT AVG(FullTimeFee) AS ft_fee_average
FROM(
    SELECT FullTimeFee
    FROM fees
) X
);

-- 3)

SELECT *
FROM fees
ORDER BY FullTimeFee;

