USE Internship_DB;

-- Employees earning > $50,000
SELECT * FROM Employees WHERE Salary > 50000;

-- Sort employees by name
SELECT * FROM Employees ORDER BY Name;

-- List departments in specific cities (e.g., Lahore or Karachi)
SELECT * FROM Departments WHERE Location IN ('Lahore', 'Karachi');