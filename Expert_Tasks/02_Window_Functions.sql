USE Internship_DB;

-- ROW_NUMBER() within department by salary
SELECT 
    Name,
    DepartmentID,
    Salary,
    ROW_NUMBER() OVER (PARTITION BY DepartmentID ORDER BY Salary DESC) AS DeptRank
FROM Employees;

-- RANK() across all employees by salary
SELECT 
    Name,
    Salary,
    RANK() OVER (ORDER BY Salary DESC) AS CompanyRank
FROM Employees;