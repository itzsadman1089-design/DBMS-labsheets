-- Lab Sheet 3: SQL Functions (MySQL)
USE CollegeDB;

-- A. Number functions
SELECT ABS(-25) AS Absolute_Value;
SELECT ROUND(123.456, 2) AS Rounded_Value;
SELECT CEIL(4.2) AS Ceiling_Value, FLOOR(4.8) AS Floor_Value;
SELECT MOD(17, 5) AS Remainder;
SELECT Emp_Name, ROUND(Salary, 0) AS Rounded_Salary FROM Employee;

-- B. Aggregate functions
SELECT COUNT(*) AS Total_Students FROM Student;
SELECT SUM(Salary) AS Total_Salary FROM Employee;
SELECT AVG(Salary) AS Average_Salary FROM Employee;
SELECT MAX(Salary) AS Highest_Salary FROM Employee;
SELECT MIN(Salary) AS Lowest_Salary FROM Employee;

-- C. Character functions
SELECT Name, UPPER(Name) AS Upper_Name FROM Student;
SELECT Name, LOWER(Name) AS Lower_Name FROM Student;
SELECT Name, LENGTH(Name) AS Name_Length FROM Student;
SELECT CONCAT('Aman', ' ', 'Sharma') AS Full_Name;
SELECT SUBSTRING('Database', 1, 4) AS Substring_Result;

-- D. Conversion functions
SELECT CAST(123 AS CHAR) AS Number_As_String;
SELECT CAST('123' AS UNSIGNED) AS String_As_Number;
SELECT DATE_FORMAT('2026-10-13', '%d-%m-%Y') AS Formatted_Date;
SELECT CAST('45.75' AS DECIMAL(10,2)) AS Cast_Number;
SELECT CONVERT('2026-10-13', DATE) AS Converted_Date;

-- E. Date functions
SELECT CURDATE() AS Current_Date;
SELECT YEAR('2026-10-13') AS Year_Value,
       MONTH('2026-10-13') AS Month_Value,
       DAY('2026-10-13') AS Day_Value;
SELECT DATEDIFF('2026-12-31', '2026-10-13') AS Date_Difference_Days;
SELECT DATE_ADD('2026-10-13', INTERVAL 10 DAY) AS Date_After_10_Days;

-- Joining date example: first add a Joining_Date column if needed.
-- ALTER TABLE Employee ADD COLUMN Joining_Date DATE;
-- SELECT Emp_Name, DATE_FORMAT(Joining_Date, '%d-%m-%Y') AS Formatted_Joining_Date
-- FROM Employee;
