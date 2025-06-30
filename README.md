# SQL_TASK_FIVE
SQL Server project demonstrating creation of a UniversityDB with Students and Courses tables, plus INNER JOIN, LEFT JOIN, RIGHT JOIN, FULL OUTER JOIN, and CROSS JOIN .

UniversityDB SQL Joins Demo

Objective
Demonstrate the use of different SQL JOIN types (INNER, LEFT, RIGHT, FULL OUTER, CROSS) in SQL Server using a simple university database schema with realistic data.

---

Database
Name: UniversityDB

This database models a simple university scenario with:
- Students enrolling in courses.
- Courses taught by instructors.

---

Tables

1. Students
| Column     | Type          | Description                   |
|------------|---------------|-------------------------------|
| StudentID  | INT (PK)      | Unique student identifier     |
| StudentName| NVARCHAR(100) | Full name of the student      |
| Email      | NVARCHAR(100) | Student email address         |
| CourseID   | INT           | Foreign key to Courses table  |

---

2. Courses
| Column     | Type          | Description                   |
|------------|---------------|-------------------------------|
| CourseID   | INT (PK)      | Unique course identifier      |
| CourseName | NVARCHAR(100) | Name of the course            |
| Instructor | NVARCHAR(100) | Course instructor's name      |
| Credits    | INT           | Number of credits             |

---

Sample Data

Courses Table
| CourseID | CourseName        | Instructor           | Credits |
|----------|-------------------|----------------------|---------|
| 101      | Data Structures   | Dr. Alan Turing      | 4       |
| 102      | Database Systems  | Dr. Edgar Codd       | 3       |
| 103      | Operating Systems | Dr. Linus Torvalds   | 4       |
| 104      | Computer Networks | Dr. Radia Perlman    | 3       |

---

Students Table
| StudentID | StudentName   | Email                        | CourseID |
|-----------|----------------|-----------------------------|----------|
| 1         | Sophia Brown   | sophia.brown@example.com    | 102      |
| 2         | Liam Wilson    | liam.wilson@example.com     | 103      |
| 3         | Olivia Davis   | olivia.davis@example.com    | 105 (invalid) |
| 4         | Noah Johnson   | noah.johnson@example.com    | 101      |

> Note: Olivia Davis is assigned to a non-existent CourseID (105) to demonstrate OUTER JOIN behavior.


