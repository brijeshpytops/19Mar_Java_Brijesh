-- Trigger syntax: 

CREATE TRIGGER trigger_name
{BEFORE | AFTER} {INSERT | UPDATE | DELETE} ON table_name
FOR EACH ROW
BEGIN
    -- Trigger action statements go here
END;


-- Example:

CREATE TABLE orders (
  order_id INT AUTO_INCREMENT PRIMARY KEY,
  order_date DATE,
  customer_name VARCHAR(255),
  total_amount DECIMAL(10, 2)
);


CREATE TABLE order_log (
  log_id INT AUTO_INCREMENT PRIMARY KEY,
  log_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  order_id INT,
  order_date DATE,
  customer_name VARCHAR(255),
  total_amount DECIMAL(10, 2)
);


use instagram;

DELIMITER //

CREATE TRIGGER log_new_order
AFTER insert on orders
FOR EACH ROW

BEGIN
insert into order_log(order_id, order_date, customer_name, total_amount) values (new.order_id, new.order_date, new.customer_name,  new.total_amount);

END
//

DELIMITER ;


use instagram;

insert into orders (order_date, customer_name, total_amount)values('2025-04-25', "brijesh gondaliya", 3999);