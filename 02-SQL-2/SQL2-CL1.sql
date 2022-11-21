USE uni;

SELECT AVG(FullTimeFee) AS ft_fee_average
FROM(
    SELECT FullTimeFee
    FROM fees
) X;


SELECT CourseID, FullTimeFee
FROM fees
WHERE FullTimeFee > (
SELECT AVG(FullTimeFee) AS ft_fee_average
FROM(
    SELECT FullTimeFee
    FROM fees
) X
);

SELECT *
FROM fees
ORDER BY FullTimeFee;

