-- Lab Sheet 1: DDL Commands – CREATE, ALTER and DROP
-- MySQL Workbench
-- Run statements as needed; later tasks may depend on earlier tables.

CREATE DATABASE IF NOT EXISTS CollegeDB;
USE CollegeDB;

-- 1. Create Student table
CREATE TABLE Student (
    Student_ID INT,
    Name VARCHAR(100),
    Age INT,
    Course VARCHAR(100),
    City VARCHAR(100)
);

-- 2. Create Employee table
CREATE TABLE Employee (
    Emp_ID INT,
    Emp_Name VARCHAR(100),
    Department VARCHAR(100),
    Salary DECIMAL(10,2)
);

-- 3. Create Department table
CREATE TABLE Department (
    Dept_ID INT,
    Dept_Name VARCHAR(100),
    Location VARCHAR(100)
);

-- 4. Create Product table
CREATE TABLE Product (
    Product_ID INT,
    Product_Name VARCHAR(100),
    Price DECIMAL(10,2),
    Quantity INT
);

-- 5. Create Customer table
CREATE TABLE Customer (
    Customer_ID INT,
    Customer_Name VARCHAR(100),
    Email VARCHAR(150),
    Phone VARCHAR(20)
);

-- 6. Create Course table
CREATE TABLE Course (
    Course_ID INT,
    Course_Name VARCHAR(100),
    Duration VARCHAR(50),
    Fees DECIMAL(10,2)
);

-- 7. Create Faculty table
CREATE TABLE Faculty (
    Faculty_ID INT,
    Faculty_Name VARCHAR(100),
    Subject VARCHAR(100),
    Salary DECIMAL(10,2)
);

-- 8. Create Library table
CREATE TABLE Library (
    Book_ID INT,
    Book_Name VARCHAR(150),
    Author VARCHAR(100),
    Price DECIMAL(10,2)
);

-- 9. Department with Primary Key (use if creating this table separately)
CREATE TABLE Department_PK (
    Dept_ID INT PRIMARY KEY,
    Dept_Name VARCHAR(100),
    Location VARCHAR(100)
);

-- 10. Student with Primary Key and NOT NULL
CREATE TABLE Student_Constraints (
    Student_ID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Age INT,
    Course VARCHAR(100),
    City VARCHAR(100)
);

-- 11. Employee with UNIQUE Email
CREATE TABLE Employee_Unique (
    Emp_ID INT PRIMARY KEY,
    Emp_Name VARCHAR(100),
    Email VARCHAR(150) UNIQUE,
    Department VARCHAR(100),
    Salary DECIMAL(10,2)
);

-- 12. Product with CHECK constraint
CREATE TABLE Product_Check (
    Product_ID INT PRIMARY KEY,
    Product_Name VARCHAR(100),
    Price DECIMAL(10,2) CHECK (Price > 0),
    Quantity INT
);

-- 13. Add Email and Phone columns
ALTER TABLE Student ADD COLUMN Email VARCHAR(150);
ALTER TABLE Student ADD COLUMN Phone VARCHAR(20);

-- 14. Modify Name column size
ALTER TABLE Student MODIFY COLUMN Name VARCHAR(150);

-- 15. Rename Student table
ALTER TABLE Student RENAME TO Student_Details;

-- 16. Rename City column to Address
ALTER TABLE Student_Details RENAME COLUMN City TO Address;

-- 17. Add Salary column to Employee
ALTER TABLE Employee ADD COLUMN Salary_Extra DECIMAL(10,2);

-- 18. Drop Phone and Email columns
ALTER TABLE Student_Details DROP COLUMN Phone;
ALTER TABLE Student_Details DROP COLUMN Email;

-- 19. TRUNCATE example (removes all rows; table remains)
-- TRUNCATE TABLE Student_Details;

-- 20. DROP examples (uncomment when ready to permanently remove tables)
-- DROP TABLE Course;
-- DROP TABLE Customer;

-- 21. Complete Student table with constraints
CREATE TABLE Student_Complete (
    Student_ID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(150) UNIQUE,
    Age INT CHECK (Age >= 16),
    Course VARCHAR(100),
    City VARCHAR(100)
);

-- Example ALTER and DROP operations:
ALTER TABLE Student_Complete ADD COLUMN Phone VARCHAR(20);
ALTER TABLE Student_Complete DROP COLUMN Phone;
