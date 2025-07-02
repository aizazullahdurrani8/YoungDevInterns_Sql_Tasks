USE Internship_DB;

-- Employees earning more than their department's average salary
SELECT * FROM Employees E
WHERE Salary > (
    SELECT AVG(Salary)
    FROM Employees
    WHERE DepartmentID = E.DepartmentID
);

-- Departments with more than 3 employees
SELECT DepartmentID
FROM Employees
GROUP BY DepartmentID
HAVING COUNT(*) > 3;