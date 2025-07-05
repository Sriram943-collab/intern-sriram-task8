
# Task 8: Stored Procedures and Functions

## 🎯 Objective
Learn reusable SQL blocks using **Stored Procedures** and **Functions**.

## 🛠 Tools
- DB Browser for SQLite (for structure)
- MySQL Workbench (for execution of stored procedures and functions)

## 📂 Contents
- `task8_procedures_functions.sql`: Includes table creation, stored procedure, function, and usage examples.
- `README.md`: This file.

## 📌 What’s Covered?
1. ✅ **Stored Procedure** `GetEmployeesByDepartment` with input parameter and SELECT logic.
2. ✅ **Function** `CalculateBonus` using conditional logic to return calculated bonus.

## 🧪 Example Queries:
```sql
CALL GetEmployeesByDepartment('Engineering');
SELECT EmpName, Salary, CalculateBonus(Salary) AS Bonus FROM Employees;
```

## ✅ Outcome
You will understand how to modularize SQL logic using stored procedures and user-defined functions, including parameters and conditional logic.

"SQLITE DOES NOT SUPPORT THIS FOR EXECUTION WE NEED TO USE MYSQL WORKBENCH FOR EXECUTION

---
