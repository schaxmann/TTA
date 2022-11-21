-- GROUPING

USE uni;

-- 1)

SELECT Subject, count(ModuleID) AS Modules
FROM module
GROUP BY Subject;

-- 2)

SELECT CourseName, count(accepted) AS ApplicantsAccepted
FROM application
LEFT JOIN course ON application.CourseAppliedFor = course.CourseID
WHERE CourseAppliedFor IS NOT NULL AND accepted = 1
GROUP BY CourseAppliedFor
ORDER BY ApplicantsAccepted DESC;

-- 3)

SELECT SupervisingStaff, AVG(MembershipFee) AS AvgMemberFee
FROM club
GROUP BY SupervisingStaff;

-- 4)

SELECT SupervisingStaff, SUM(JoiningFee) AS SumJoiningFee
FROM club
WHERE Active = 1
GROUP BY SupervisingStaff;
