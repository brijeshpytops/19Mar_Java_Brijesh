-- syntax of function: 

CREATE FUNCTION function_name ([parameter_list])
  RETURNS return_type
  [DETERMINISTIC | NOT DETERMINISTIC]
  [SQL DATA ACCESS {CONTAINS SQL | NO SQL | READS SQL DATA | MODIFIES SQL DATA}]
  [COMMENT 'string']
BEGIN
  -- Function body with SQL statements
  RETURN return_value;
END;


--  Create user define function
use instagram;

DELIMITER //

create function cube_of_number(x INT)
	RETURNS INT
	DETERMINISTIC
    
    BEGIN
    declare res int;
    set res = x * x * x;
    return res;
    END;

//

mysql> select cube_of_number(5);
+-------------------+
| cube_of_number(5) |
+-------------------+
|               125 |
+-------------------+
1 row in set (0.00 sec)

mysql> select cube_of_number(id) from users;
+--------------------+
| cube_of_number(id) |
+--------------------+
|                 27 |
|                  1 |
|               1000 |
|                125 |
|                729 |
|                 64 |
|                216 |
|                  8 |
|                343 |
+--------------------+
9 rows in set (0.00 sec)


DELIMITER //

CREATE FUNCTION calculate_area(length DECIMAL(8, 2), width DECIMAL(8, 2))
  RETURNS DECIMAL(12, 2)
  DETERMINISTIC
BEGIN
  DECLARE area DECIMAL(12, 2);
  SET area = length * width;
  RETURN area;
END;

//

DELIMITER ;


mysql> select calculate_area(10, 20);
+------------------------+
| calculate_area(10, 20) |
+------------------------+
|                 200.00 |
+------------------------+