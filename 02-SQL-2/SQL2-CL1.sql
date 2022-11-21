USE uni;

SELECT AVG(FullTimeFee) AS ft_fee_average
FROM(
    SELECT FullTimeFee
    FROM fees
) X;


SELECT FullTimeFee AS above_ft_fee_average
FROM fees
WHERE FullTimeFee > (
SELECT AVG(FullTimeFee) AS ft_fee_average
FROM(
    SELECT FullTimeFee
    FROM fees
) X
);

SELECT FullTimeFee
FROM fees
ORDER BY FullTimeFee;

