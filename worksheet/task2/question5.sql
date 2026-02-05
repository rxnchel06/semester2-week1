-- For each student, calculate the total number of credits from courses they passed. Assume a passing grade is 40 or higher.
-- Expected Columns:
-- StudentId, FirstName, LastName, TotalCreditsPassed

SELECT 
    s.StudentId, 
    s.FirstName, 
    s.LastName, 
    COALESCE(SUM(c.credits), 0) AS TotalCreditsPassed
FROM Student s
LEFT JOIN Enrolment e ON s.StudentId = e.StudentId AND e.grade >= 40
LEFT JOIN Course c ON e.CourseId = c.CourseId
GROUP BY s.StudentId, s.FirstName, s.LastName;