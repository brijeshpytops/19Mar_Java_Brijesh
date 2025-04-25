-- Syntax of procedure

CREATE PROCEDURE procedure_name ([parameter_list])
BEGIN
  -- Procedure body with SQL statements
END;


use instagram;

CREATE TABLE employees (
  employee_id INT AUTO_INCREMENT PRIMARY KEY,
  employee_name VARCHAR(255) NOT NULL,
  salary DECIMAL(10, 2) NOT NULL
);

use instagram;

DELIMITER //

create procedure insert_employee_and_emp_counts(IN emp_name VARCHAR(255), IN emp_salary DECIMAL(10, 2))
begin
	  INSERT INTO employees (employee_name, salary) VALUES (emp_name, emp_salary);
    select count(employee_id) as employee_count  from employees;
end;

//


mysql> call insert_employee_and_emp_counts("bansi patel", 9000);
+----------------+
| employee_count |
+----------------+
|              2 |
+----------------+