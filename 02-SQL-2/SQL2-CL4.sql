-- JOINS

USE uni;

-- 1)

SELECT module.*, course.CourseName 
FROM module
LEFT JOIN course ON module.CourseID = course.CourseID;

-- 2)

SELECT student.*, application.applicationID
FROM student
LEFT JOIN application ON application.StudentID = student.StudentID;

-- 3)

SELECT schedule.ClassID, schedule.cDate AS MostRecentClassDate, schedule.FeedbackScore AS MostRecentFeedback from schedule, 
(SELECT schedule.ClassID, MAX(schedule.CDate) AS MostRecentClass
FROM schedule
GROUP BY schedule.ClassID) most_recent
where schedule.ClassID = most_recent.classID
AND schedule.CDate = most_recent.MostRecentClass;

/* Actually found #3 pretty difficult. Don't think this is the intended solution, but I tried my best to get the output the question is asking */