USE uni;

SELECT COUNT(StudentID) AS NumberOfStudents
FROM student
WHERE CourseID IS NOT NULL;

SELECT SUM(FullTimeFee) AS FUllTimeFeesSum
FROM fees;

SELECT GREATEST(MAX(FullTimeFee), MAX(PartTimeFee)) AS MostExpensive
FROM fees;

SELECT LEAST(MIN(FullTimeFee), MIN(PartTimeFee)) AS LeastExpensive
FROM fees;

SELECT AVG(PartTimeFee) AS AveragePartTimeFee
FROM fees;

SELECT (FullTimeFee - ScholarshipDiscount) AS PriceAfterDiscount
FROM fees;