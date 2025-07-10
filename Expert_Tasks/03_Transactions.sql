USE Internship_DB;

-- Start transaction
START TRANSACTION;

-- Update salaries by 10%
UPDATE Employees
SET Salary = Salary * 1.10;

-- ROLLBACK if needed
-- ROLLBACK;

-- Or commit if confirmed
COMMIT;