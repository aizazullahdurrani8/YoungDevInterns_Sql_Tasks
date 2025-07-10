USE Internship_DB;

-- Add Managers table (for demonstration)
CREATE TABLE Managers (
    ManagerID INT PRIMARY KEY,
    ManagerName VARCHAR(50),
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

-- Insert managers
INSERT INTO Managers VALUES
(1, 'Tariq', 1),
(2, 'Kiran', 2),
(3, 'Faisal', 3),
(4, 'Adeel', 4),
(5, 'Mona', 5);

-- Join Employees, Departments, and Managers
SELECT E.Name AS Employee, E.Position, D.DepartmentName, M.ManagerName
FROM Employees E
JOIN Departments D ON E.DepartmentID = D.DepartmentID
JOIN Managers M ON D.DepartmentID = M.DepartmentID;