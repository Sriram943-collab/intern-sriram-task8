
-- Drop existing procedure and function if they exist
DROP PROCEDURE IF EXISTS GetEmployeesByDepartment;
DROP FUNCTION IF EXISTS CalculateBonus;

-- Sample table creation (for testing)
DROP TABLE IF EXISTS Employees;
CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    EmpName TEXT,
    Department TEXT,
    Salary REAL
);

INSERT INTO Employees VALUES (1, 'Alice', 'HR', 45000);
INSERT INTO Employees VALUES (2, 'Bob', 'Engineering', 75000);
INSERT INTO Employees VALUES (3, 'Charlie', 'Engineering', 60000);
INSERT INTO Employees VALUES (4, 'David', 'Marketing', 55000);

-- Stored Procedure: GetEmployeesByDepartment
DELIMITER //
CREATE PROCEDURE GetEmployeesByDepartment(IN dept_name TEXT)
BEGIN
    SELECT * FROM Employees WHERE Department = dept_name;
END //
DELIMITER ;

-- Function: CalculateBonus
DELIMITER //
CREATE FUNCTION CalculateBonus(base_salary REAL) RETURNS REAL
BEGIN
    DECLARE bonus REAL;
    IF base_salary >= 70000 THEN
        SET bonus = base_salary * 0.20;
    ELSEIF base_salary >= 50000 THEN
        SET bonus = base_salary * 0.10;
    ELSE
        SET bonus = base_salary * 0.05;
    END IF;
    RETURN bonus;
END //
DELIMITER ;

-- Example Usage:
-- CALL GetEmployeesByDepartment('Engineering');
-- SELECT EmpName, Salary, CalculateBonus(Salary) AS Bonus FROM Employees;
