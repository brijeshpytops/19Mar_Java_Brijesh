-- syntax of cursor

-- DECLARE cursor_name CURSOR FOR SELECT column1, column2 FROM your_table;


-- Example:

use instagram;

DELIMITER $$
CREATE PROCEDURE employee_cursor_procedur()
BEGIN
DECLARE done INT DEFAULT FALSE;
DECLARE var1 VARCHAR(100);
DECLARE var2 decimal(10,2);

DECLARE emp_cursor CURSOR FOR

select employee_name, salary from employees;
DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

OPEN emp_cursor;
read_loop: LOOP
        FETCH emp_cursor INTO var1, var2;
        IF done THEN
            LEAVE read_loop;
        END IF;
        
        END LOOP;

		CLOSE emp_cursor;
END $$

DELIMITER ;

call employee_cursor_procedur();