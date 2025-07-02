USE Internship_DB;

-- INNER JOIN to list employees and their departments
SELECT E.Name, E.Position, D.DepartmentName
FROM Employees E
INNER JOIN Departments D ON E.DepartmentID = D.DepartmentID;

-- LEFT JOIN to list all employees including those without departments
SELECT E.Name, E.Position, D.DepartmentName
FROM Employees E
LEFT JOIN Departments D ON E.DepartmentID = D.DepartmentID;