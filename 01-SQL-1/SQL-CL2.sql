USE uni;

SELECT * FROM student WHERE CourseID <> 1;

SELECT Forenames, Surname, DateOfBirth FROM student WHERE EmailAddress = "val.bolger@example.com";

SELECT ModuleName from module WHERE Subject = "Economics";

SELECT course.CourseName, DateOfApplication
FROM application
INNER JOIN course ON CourseAppliedFor=course.CourseID
WHERE DateOfApplication < "2020-09-21";