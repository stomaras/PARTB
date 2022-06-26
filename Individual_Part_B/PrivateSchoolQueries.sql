--A list of all the tudents 
SELECT *
FROM Students;

-- A list of all the traners
SELECT *
FROM Trainers;

-- A list o all the assigments 
SELECT *
FROM Assigments;

-- A list of all the courses
SELECT *
FROM Courses;

-- All the students per course
SELECT c.Type,COUNT(c.CourseId) as StudentsPerCourse
FROM Courses c
INNER JOIN Students s
ON c.CourseId = s.CourseId
GROUP BY c.Type

-- All the trainers per course
SELECT t.Subject, COUNT(t.CourseId) as TrainersPerCourse
FROM Trainers t
INNER JOIN Courses c
ON c.CourseId = t.CourseId
GROUP BY t.Subject

-- All the Assigments per course
SELECT a.Description, COUNT(c.Course_CourseId) as AssigmentsPerCourse
FROM Assigments a
INNER JOIN CourseAssigments c
ON a.AssigmentId = c.Assigment_AssigmentId
GROUP BY a.Description


-- A list of students that belong to more than one courses
SELECT s.FirstName,COUNT(c.CourseId) as ListOfCourses
FROM Courses c
INNER JOIN Students s
ON c.CourseId = s.CourseId
GROUP BY s.FirstName
HAVING COUNT(c.CourseId) > 1







