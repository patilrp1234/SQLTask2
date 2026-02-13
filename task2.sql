CREATE DATABASE Task02DB;
USE Task02DB;
CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Age INT,
    Department VARCHAR(50) DEFAULT 'General',
    Salary DECIMAL(10,2)
);
-- Full insert
INSERT INTO Employees (EmpID, Name, Age, Department, Salary)
VALUES (1, 'Ravi', 25, 'IT', 40000.00);

-- Partial insert (Department auto-fills with default)
INSERT INTO Employees (EmpID, Name, Age, Salary)
VALUES (2, 'Priya', 28, 45000.00);

-- Insert with NULL
INSERT INTO Employees (EmpID, Name, Age, Department, Salary)
VALUES (3, 'Amit', NULL, 'HR', 30000.00);

UPDATE Employees
SET Salary = 50000.00
WHERE EmpID = 1;

DELETE FROM Employees
WHERE EmpID = 3;

-- Find rows with NULL Age
SELECT * FROM Employees WHERE Age IS NULL;

SET SQL_SAFE_UPDATES = 0;
UPDATE Employees
SET Age = 30
WHERE Age IS NULL;




