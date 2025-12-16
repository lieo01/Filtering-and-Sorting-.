-- ============================
-- 1. Setup: Create & Populate Table
-- ============================
CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    Department VARCHAR(50),
    City VARCHAR(50),
    Salary INT,
    HireDate DATE
);

INSERT INTO Employees (EmpID, EmpName, Department, City, Salary, HireDate)
VALUES
(101, 'Rahul Mehta', 'Sales', 'Delhi', 55000, '2020-04-12'),
(102, 'Priya Sharma', 'HR', 'Mumbai', 62000, '2019-09-25'),
(103, 'Aman Singh', 'IT', 'Bengaluru', 72000, '2021-03-10'),
(104, 'Neha Patel', 'Sales', 'Delhi', 48000, '2022-01-14'),
(105, 'Karan Joshi', 'Marketing', 'Pune', 45000, '2018-07-22'),
(106, 'Divya Nair', 'IT', 'Chennai', 81000, '2019-12-11'),
(107, 'Raj Kumar', 'HR', 'Delhi', 60000, '2020-05-28'),
(108, 'Simran Kaur', 'Finance', 'Mumbai', 58000, '2021-08-03'),
(109, 'Arjun Reddy', 'IT', 'Hyderabad', 70000, '2022-02-18'),
(110, 'Anjali Das', 'Sales', 'Kolkata', 51000, '2023-01-15');

-- ============================
-- 2. Solution Queries
-- ============================

-- Q1. Show employees working in either 'IT' or 'HR'
SELECT * FROM Employees WHERE department = 'IT' OR department = 'HR';

-- Q2. Employees in 'Sales', 'IT', or 'Finance' (Using IN)
SELECT * FROM Employees WHERE department IN ('Sales', 'IT', 'Finance');

-- Q3. Employees with salary between 50,000 and 70,000
SELECT * FROM Employees WHERE Salary BETWEEN 50000 AND 70000;

-- Q4. Employees whose names start with 'A'
SELECT * FROM Employees WHERE EmpName LIKE 'A%';

-- Q5. Employees whose names contain 'an'
SELECT * FROM Employees WHERE EmpName LIKE '%an%';

-- Q6. Employees from Delhi/Mumbai earning > 55,000
SELECT * FROM Employees WHERE City IN ('Delhi', 'Mumbai') AND Salary > 55000;

-- Q7. All employees EXCEPT those in HR
SELECT * FROM Employees WHERE Department != 'HR';

-- Q8. Employees hired between 2019 and 2022, ordered by oldest first
SELECT * FROM Employees 
WHERE YEAR(HireDate) BETWEEN 2019 AND 2022 
ORDER BY HireDate ASC;