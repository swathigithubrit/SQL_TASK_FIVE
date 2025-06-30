CREATE DATABASE UniversityDB;
GO

USE UniversityDB;
GO


CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    StudentName NVARCHAR(100),
    Email NVARCHAR(100),
    CourseID INT
);


CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName NVARCHAR(100),
    Instructor NVARCHAR(100),
    Credits INT
);


INSERT INTO Courses VALUES
(101, 'Data Structures', 'Dr. Alan Turing', 4),
(102, 'Database Systems', 'Dr. Edgar Codd', 3),
(103, 'Operating Systems', 'Dr. Linus Torvalds', 4),
(104, 'Computer Networks', 'Dr. Radia Perlman', 3);


INSERT INTO Students VALUES
(1, 'Sophia Brown', 'sophia.brown@example.com', 102),
(2, 'Liam Wilson', 'liam.wilson@example.com', 103),
(3, 'Olivia Davis', 'olivia.davis@example.com', 105),
(4, 'Noah Johnson', 'noah.johnson@example.com', 101);


---Inner Join

SELECT 
    s.StudentID,
    s.StudentName,
    s.Email,
    c.CourseName,
    c.Instructor,
    c.Credits
FROM 
    Students s
    INNER JOIN Courses c ON s.CourseID = c.CourseID;


---LEFT Join

	SELECT 
    s.StudentID,
    s.StudentName,
    s.Email,
    c.CourseName,
    c.Instructor,
    c.Credits
FROM 
    Students s
    LEFT JOIN Courses c ON s.CourseID = c.CourseID;


---RIGHT Join

SELECT 
    c.CourseID,
    c.CourseName,
    c.Instructor,
    c.Credits,
    s.StudentID,
    s.StudentName
FROM 
    Students s
    RIGHT JOIN Courses c ON s.CourseID = c.CourseID;


---FULL Outer JOIN

	SELECT 
    s.StudentID,
    s.StudentName,
    s.Email,
    c.CourseID,
    c.CourseName,
    c.Instructor,
    c.Credits
FROM 
    Students s
    FULL OUTER JOIN Courses c ON s.CourseID = c.CourseID;

---CROSS JOIN

SELECT 
    s.StudentName,
    c.CourseName
FROM 
    Students s
    CROSS JOIN Courses c;






