USE Internship_DB;

-- Average salary
SELECT AVG(Salary) AS AverageSalary FROM Employees;

-- Total employees per department
SELECT DepartmentID, COUNT(*) AS TotalEmployees
FROM Employees
GROUP BY DepartmentID;

-- Highest salary in each department
SELECT DepartmentID, MAX(Salary) AS MaxSalary
FROM Employees
GROUP BY DepartmentID;