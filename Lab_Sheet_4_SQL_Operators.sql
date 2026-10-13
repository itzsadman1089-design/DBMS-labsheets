-- Lab Sheet 4: SQL Operators (MySQL)
USE CollegeDB;

-- Arithmetic operators
SELECT 10 + 5 AS Addition;
SELECT 10 - 5 AS Subtraction;
SELECT 10 * 5 AS Multiplication;
SELECT 10 / 5 AS Division;
SELECT Product_Name, Price, Quantity, Price * Quantity AS Total_Amount
FROM Product;

-- Logical operators
SELECT * FROM Student WHERE Age >= 18 AND City = 'Delhi';
SELECT * FROM Employee WHERE Department = 'IT' OR Department = 'HR';
SELECT * FROM Student WHERE NOT City = 'Delhi';
SELECT * FROM Student WHERE Course = 'AIML' AND City = 'Delhi';
SELECT * FROM Employee WHERE Department IN ('IT', 'HR');

-- Comparison operators
SELECT * FROM Student WHERE City = 'Delhi';
SELECT * FROM Employee WHERE Salary > 40000;
SELECT * FROM Employee WHERE Salary < 40000;
SELECT * FROM Employee WHERE Salary >= 35000 AND Salary <= 50000;
SELECT * FROM Student WHERE City <> 'Delhi';
-- MySQL also supports: SELECT * FROM Student WHERE City != 'Delhi';

-- Special operators
SELECT * FROM Employee WHERE Salary BETWEEN 30000 AND 50000;
SELECT * FROM Student WHERE City IN ('Delhi', 'Meerut');
SELECT * FROM Student WHERE City NOT IN ('Delhi', 'Meerut');
SELECT * FROM Student WHERE Name LIKE 'A%';
SELECT * FROM Student WHERE City IS NULL;
SELECT * FROM Student WHERE City IS NOT NULL;

-- Set operations: UNION and UNION ALL
SELECT Name AS Person_Name FROM Student
UNION
SELECT Emp_Name AS Person_Name FROM Employee;

SELECT Name AS Person_Name FROM Student
UNION ALL
SELECT Emp_Name AS Person_Name FROM Employee;

-- MySQL versions before 8.0.31 do not support INTERSECT/EXCEPT.
-- If supported by your version:
-- SELECT City FROM Student INTERSECT SELECT Location FROM Department;
-- SELECT City FROM Student EXCEPT SELECT Location FROM Department;

-- Multiple operators together
SELECT * FROM Product
WHERE Price > 500 AND Quantity BETWEEN 1 AND 20 AND Product_Name LIKE 'M%';
