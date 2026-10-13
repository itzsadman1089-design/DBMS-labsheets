-- Lab Sheet 2: DML Commands – INSERT, UPDATE and DELETE
USE CollegeDB;

-- 1. Insert one student
INSERT INTO Student (Student_ID, Name, Age, Course, City)
VALUES (1, 'Aman', 19, 'AIML', 'Meerut');

-- 2. Insert five student records using separate statements
INSERT INTO Student VALUES (2, 'Riya', 20, 'CSE', 'Delhi');
INSERT INTO Student VALUES (3, 'Rahul', 18, 'AIML', 'Meerut');
INSERT INTO Student VALUES (4, 'Neha', 21, 'IT', 'Noida');
INSERT INTO Student VALUES (5, 'Karan', 19, 'CSE', 'Delhi');
INSERT INTO Student VALUES (6, 'Sara', 20, 'ECE', 'Roorkee');

-- 3. Insert multiple records in one statement
INSERT INTO Student (Student_ID, Name, Age, Course, City) VALUES
(7, 'Ishita', 19, 'AIML', 'Saharanpur'),
(8, 'Dev', 20, 'IT', 'Meerut'),
(9, 'Pooja', 18, 'CSE', 'Delhi');

-- 4. Employee records
INSERT INTO Employee (Emp_ID, Emp_Name, Department, Salary) VALUES
(101, 'Arun', 'IT', 40000),
(102, 'Meera', 'HR', 35000),
(103, 'Vikas', 'IT', 50000);

-- 5. Department records
INSERT INTO Department (Dept_ID, Dept_Name, Location) VALUES
(1, 'IT', 'Block A'),
(2, 'HR', 'Block B'),
(3, 'Sales', 'Block C');

-- 6. Product records
INSERT INTO Product (Product_ID, Product_Name, Price, Quantity) VALUES
(1, 'Keyboard', 800, 10),
(2, 'Mouse', 500, 0),
(3, 'Monitor', 8000, 5);

-- 7. Customer records
INSERT INTO Customer (Customer_ID, Customer_Name, Email, Phone) VALUES
(1, 'Aarav', 'aarav@example.com', '9876500001'),
(2, 'Diya', 'diya@example.com', '9876500002');

-- 8. Course records
INSERT INTO Course (Course_ID, Course_Name, Duration, Fees) VALUES
(1, 'AIML', '4 years', 120000),
(2, 'CSE', '4 years', 110000),
(3, 'IT', '4 years', 100000);

-- 9. Insert a student with all columns
INSERT INTO Student (Student_ID, Name, Age, Course, City)
VALUES (10, 'Kabir', 20, 'AIML', 'Delhi');

-- 10. Insert selected columns only
INSERT INTO Student (Student_ID, Name, Course)
VALUES (11, 'Anaya', 'CSE');

-- 11. Update city of a particular student
UPDATE Student SET City = 'Noida' WHERE Student_ID = 1;

-- 12. Update salary of a particular employee
UPDATE Employee SET Salary = 45000 WHERE Emp_ID = 101;

-- 13. Increase all employee salaries by 10%
UPDATE Employee SET Salary = Salary * 1.10;

-- 14. Increase all product prices by 5%
UPDATE Product SET Price = Price * 1.05;

-- 15. Change a student's course
UPDATE Student SET Course = 'IT' WHERE Student_ID = 2;

-- 16. Update an employee's department
UPDATE Employee SET Department = 'Finance' WHERE Emp_ID = 102;

-- 17. Change Meerut students' city to Delhi
UPDATE Student SET City = 'Delhi' WHERE City = 'Meerut';

-- 18. Update course fees
UPDATE Course SET Fees = 125000 WHERE Course_ID = 1;

-- 19. Update multiple student columns
UPDATE Student SET Age = 21, City = 'Roorkee' WHERE Student_ID = 3;

-- 20. Delete a particular student
DELETE FROM Student WHERE Student_ID = 11;

-- 21. Delete students from a particular city
-- DELETE FROM Student WHERE City = 'Noida';

-- 22. Delete employees below a specified salary
-- DELETE FROM Employee WHERE Salary < 30000;

-- 23. Delete products with zero quantity
-- DELETE FROM Product WHERE Quantity = 0;

-- 24. Delete with multiple conditions
-- DELETE FROM Student WHERE City = 'Delhi' AND Course = 'CSE';
-- DELETE FROM Student WHERE City = 'Noida' OR Course = 'IT';

-- 25. Display tables after operations
SELECT * FROM Student;
SELECT * FROM Employee;
SELECT * FROM Department;
SELECT * FROM Product;
SELECT * FROM Customer;
SELECT * FROM Course;
