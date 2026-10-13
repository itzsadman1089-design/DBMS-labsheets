-- Lab Sheet 5: SQL Joins (MySQL)
USE CollegeDB;

-- To support the requested joins, add sample department/course IDs if needed.
-- These ALTER statements are examples; run only once if the columns do not exist.
-- ALTER TABLE Student ADD COLUMN Dept_ID INT;
-- ALTER TABLE Student ADD COLUMN Course_ID INT;
-- ALTER TABLE Employee ADD COLUMN Manager_ID INT;
-- ALTER TABLE Employee ADD COLUMN Joining_Date DATE;

-- Sample joins assume Student.Dept_ID and Student.Course_ID exist.
-- 1-2. INNER JOIN Student and Department
-- SELECT s.Name, d.Dept_Name
-- FROM Student s INNER JOIN Department d ON s.Dept_ID = d.Dept_ID;

-- 3. Employee names with department names (if Employee.Dept_ID exists)
-- SELECT e.Emp_Name, d.Dept_Name
-- FROM Employee e INNER JOIN Department d ON e.Dept_ID = d.Dept_ID;

-- 4. Students with course details (if Student.Course_ID exists)
-- SELECT s.Name, c.Course_Name, c.Duration, c.Fees
-- FROM Student s INNER JOIN Course c ON s.Course_ID = c.Course_ID;

-- 5. Students in a particular department
-- SELECT s.Name, d.Dept_Name
-- FROM Student s INNER JOIN Department d ON s.Dept_ID = d.Dept_ID
-- WHERE d.Dept_Name = 'IT';

-- 6-7. LEFT JOIN: all students, including those without a matching department
-- SELECT s.Name, d.Dept_Name
-- FROM Student s LEFT JOIN Department d ON s.Dept_ID = d.Dept_ID;

-- 8-9. RIGHT JOIN: all departments, including departments without students
-- SELECT s.Name, d.Dept_Name
-- FROM Student s RIGHT JOIN Department d ON s.Dept_ID = d.Dept_ID;

-- 10. Students without a department
-- SELECT s.Name
-- FROM Student s LEFT JOIN Department d ON s.Dept_ID = d.Dept_ID
-- WHERE d.Dept_ID IS NULL;

-- 11. Departments without students
-- SELECT d.Dept_Name
-- FROM Department d LEFT JOIN Student s ON s.Dept_ID = d.Dept_ID
-- WHERE s.Student_ID IS NULL;

-- 12. FULL OUTER JOIN workaround in MySQL
-- SELECT s.Name, d.Dept_Name
-- FROM Student s LEFT JOIN Department d ON s.Dept_ID = d.Dept_ID
-- UNION
-- SELECT s.Name, d.Dept_Name
-- FROM Student s RIGHT JOIN Department d ON s.Dept_ID = d.Dept_ID;

-- 13-14. CROSS JOIN and number of combinations
SELECT COUNT(*) AS Student_Course_Combinations
FROM Student CROSS JOIN Course;

-- To display all combinations:
-- SELECT s.Name, c.Course_Name FROM Student s CROSS JOIN Course c;

-- 15. NATURAL JOIN (requires same-named matching column, e.g. Dept_ID)
-- SELECT * FROM Student NATURAL JOIN Department;

-- 16. Compare NATURAL JOIN and INNER JOIN
-- SELECT * FROM Student NATURAL JOIN Department;
-- SELECT s.Name, d.Dept_Name FROM Student s INNER JOIN Department d ON s.Dept_ID = d.Dept_ID;

-- 17-18. SELF JOIN: employee-manager relationship (requires Manager_ID)
-- SELECT e.Emp_Name AS Employee, m.Emp_Name AS Manager
-- FROM Employee e LEFT JOIN Employee m ON e.Manager_ID = m.Emp_ID;

-- 19-20. Join Student, Department and Course (requires Student.Dept_ID and Course_ID)
-- SELECT s.Name, c.Course_Name, d.Dept_Name
-- FROM Student s
-- INNER JOIN Course c ON s.Course_ID = c.Course_ID
-- INNER JOIN Department d ON s.Dept_ID = d.Dept_ID;

-- 21. Employees earning above their department's average (requires Employee.Dept_ID)
-- SELECT e.Emp_Name, e.Salary, d.Dept_Name
-- FROM Employee e
-- JOIN Department d ON e.Dept_ID = d.Dept_ID
-- JOIN (
--   SELECT Dept_ID, AVG(Salary) AS Avg_Salary
--   FROM Employee GROUP BY Dept_ID
-- ) x ON e.Dept_ID = x.Dept_ID
-- WHERE e.Salary > x.Avg_Salary;

-- 22. Department with maximum number of students
-- SELECT d.Dept_Name, COUNT(s.Student_ID) AS Student_Count
-- FROM Department d LEFT JOIN Student s ON s.Dept_ID = d.Dept_ID
-- GROUP BY d.Dept_ID, d.Dept_Name
-- ORDER BY Student_Count DESC LIMIT 1;

-- 23. Departments and student counts
-- SELECT d.Dept_Name, COUNT(s.Student_ID) AS Student_Count
-- FROM Department d LEFT JOIN Student s ON s.Dept_ID = d.Dept_ID
-- GROUP BY d.Dept_ID, d.Dept_Name;

-- 24. Courses and enrollment counts
-- SELECT c.Course_Name, COUNT(s.Student_ID) AS Student_Count
-- FROM Course c LEFT JOIN Student s ON s.Course_ID = c.Course_ID
-- GROUP BY c.Course_ID, c.Course_Name;

-- 25. Report using INNER JOIN, LEFT JOIN, GROUP BY and aggregates
-- SELECT d.Dept_Name, c.Course_Name, COUNT(s.Student_ID) AS Student_Count
-- FROM Department d
-- LEFT JOIN Student s ON s.Dept_ID = d.Dept_ID
-- LEFT JOIN Course c ON s.Course_ID = c.Course_ID
-- GROUP BY d.Dept_ID, d.Dept_Name, c.Course_ID, c.Course_Name;
