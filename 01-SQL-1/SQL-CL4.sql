USE uni;

SELECT * FROM application
LEFT JOIN student ON application.StudentID=student.StudentID
WHERE CourseAppliedFor = 11 && accepted = 1 && student.studentID IS NULL;

INSERT INTO student (student.studentID, student.CourseID, student.Forenames, student.Surname, student.EmailAddress)
SELECT application.studentID, application.CourseAppliedFor, application.Forenames, application.Surname, application.EmailAddress
FROM application
LEFT JOIN student ON application.StudentID=student.StudentID
WHERE CourseAppliedFor = 11 && accepted = 1 && student.studentID IS NULL;

SELECT * FROM application
WHERE CourseAppliedFor = 11 && accepted = 0;