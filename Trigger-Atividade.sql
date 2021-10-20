
/*
drop table employees_audit;

CREATE TABLE employees_audit (
    id INT AUTO_INCREMENT PRIMARY KEY,
    employeeNumber INT NOT NULL,
    lastname_old VARCHAR(50) NOT NULL,
    lastname_new VARCHAR(50) NOT NULL,
    changedat DATETIME DEFAULT NULL,
    salary_old VARCHAR(50) NOT NULL,
    salary_new VARCHAR(50) NOT NULL,
    
    action VARCHAR(50) DEFAULT NULL
);
*/
SELECT * FROM employees_audit;

SELECT * FROM classicmodel.employees;

DELIMITER $$
CREATE OR REPLACE TRIGGER before_employee_update 
    BEFORE UPDATE ON employees
    FOR EACH ROW 
    BEGIN
        INSERT INTO employees_audit
        (action, changedat, employeeNumber, lastname_old, lastname_new,salary_old,salary_new)
        values 
        ('update', now(), old.EmployeeID, old.lastname, new.lastname,old.salary,new.salary);
    END $$
DELIMITER ;

SELECT * FROM classicmodel.employees;

SELECT * FROM employees_audit;


UPDATE employees 
SET 
    Salary = 6000.50
WHERE
    EmployeeID = 2;