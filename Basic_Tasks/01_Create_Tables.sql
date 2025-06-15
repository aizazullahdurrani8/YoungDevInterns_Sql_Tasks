-- Create the database
CREATE DATABASE Internship_DB;
USE Internship_DB;

-- Create Departments table
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50),
    Location VARCHAR(50)
);

-- Create Employees table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(50),
    Position VARCHAR(50),
    Salary DECIMAL(10,2),
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

-- Insert records into Departments
INSERT INTO Departments VALUES
(1, 'IT', 'Lahore'),
(2, 'HR', 'Karachi'),
(3, 'Sales', 'Islamabad'),
(4, 'Marketing', 'Peshawar'),
(5, 'Support', 'Quetta');

-- Insert records into Employees
INSERT INTO Employees VALUES
(101, 'Ali', 'Developer', 60000, 1),
(102, 'Sara', 'HR Manager', 55000, 2),
(103, 'Zara', 'Sales Lead', 52000, 3),
(104, 'Hamza', 'Marketer', 48000, 4),
(105, 'Usman', 'Support Eng', 47000, 5);