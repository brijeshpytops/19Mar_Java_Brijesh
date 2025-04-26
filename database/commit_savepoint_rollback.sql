CREATE TABLE employees (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    position VARCHAR(100)
);


START TRANSACTION;

INSERT INTO employees (name, position) VALUES ('Alice', 'Developer');
INSERT INTO employees (name, position) VALUES ('Bob', 'Designer');

SAVEPOINT after_two_inserts;

INSERT INTO employees (name, position) VALUES ('Charlie', 'Manager');

ROLLBACK TO after_two_inserts;


COMMIT;