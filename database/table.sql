-- In relational databases, constraints are rules that you can apply to columns or tables to maintain data integrity and ensure that the data follows certain rules.

-- constraint types that can be applied to keys (like primary keys and foreign keys) and other columns in a table to enforce specific rules. Here are a few common types of constraints:

-- Primary Key (PK) constraint 
-- Foreign Key (FK) constraint 
-- Unique Key (UK) constraint 
-- Check constraint 
-- Default constraint 
-- Not-Null constraint 


-- show tables 
mysql> show tables;
Empty set (0.00 sec)

-- create table

create table [table-name] (filed_name1 datatype(size) constraints,  filed_name2 datatype(size) constraints);

mysql> create table users(id int auto_increment primary key, full_name varchar(255) not null, email varchar(255) not null, password varchar(255));
Query OK, 0 rows affected (0.07 sec)
mysql> show tables;
+---------------------+
| Tables_in_instagram |
+---------------------+
| users               |
+---------------------+

mysql> describe users;
+-----------+--------------+------+-----+---------+----------------+
| Field     | Type         | Null | Key | Default | Extra          |
+-----------+--------------+------+-----+---------+----------------+
| id        | int          | NO   | PRI | NULL    | auto_increment |
| full_name | varchar(255) | NO   |     | NULL    |                |
| email     | varchar(255) | NO   |     | NULL    |                |
| password  | varchar(255) | YES  |     | NULL    |                |
+-----------+--------------+------+-----+---------+----------------+

mysql> alter table users add is_active bool;
Query OK, 0 rows affected (0.18 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> describe users;
+-----------+--------------+------+-----+---------+----------------+
| Field     | Type         | Null | Key | Default | Extra          |
+-----------+--------------+------+-----+---------+----------------+
| id        | int          | NO   | PRI | NULL    | auto_increment |
| full_name | varchar(255) | NO   |     | NULL    |                |
| email     | varchar(255) | NO   |     | NULL    |                |
| password  | varchar(255) | YES  |     | NULL    |                |
| is_active | tinyint(1)   | YES  |     | NULL    |                |
+-----------+--------------+------+-----+---------+----------------+

mysql> alter table users add mobile varchar(255) not null;
Query OK, 0 rows affected (0.13 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> describe users;
+-----------+--------------+------+-----+---------+----------------+
| Field     | Type         | Null | Key | Default | Extra          |
+-----------+--------------+------+-----+---------+----------------+
| id        | int          | NO   | PRI | NULL    | auto_increment |
| full_name | varchar(255) | NO   |     | NULL    |                |
| email     | varchar(255) | NO   |     | NULL    |                |
| password  | varchar(255) | YES  |     | NULL    |                |
| is_active | tinyint(1)   | YES  |     | NULL    |                |
| mobile    | varchar(255) | NO   |     | NULL    |                |
+-----------+--------------+------+-----+---------+----------------+

mysql> alter table users modify password varchar(200) not null;
Query OK, 0 rows affected (0.15 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> describe users;
+-----------+--------------+------+-----+---------+----------------+
| Field     | Type         | Null | Key | Default | Extra          |
+-----------+--------------+------+-----+---------+----------------+
| id        | int          | NO   | PRI | NULL    | auto_increment |
| full_name | varchar(255) | NO   |     | NULL    |                |
| email     | varchar(255) | NO   |     | NULL    |                |
| password  | varchar(200) | NO   |     | NULL    |                |
| is_active | tinyint(1)   | YES  |     | NULL    |                |
| mobile    | varchar(255) | NO   |     | NULL    |                |
+-----------+--------------+------+-----+---------+----------------+

mysql> alter table users drop mobile;
Query OK, 0 rows affected (0.13 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> describe users;
+-----------+--------------+------+-----+---------+----------------+
| Field     | Type         | Null | Key | Default | Extra          |
+-----------+--------------+------+-----+---------+----------------+
| id        | int          | NO   | PRI | NULL    | auto_increment |
| full_name | varchar(255) | NO   |     | NULL    |                |
| email     | varchar(255) | NO   |     | NULL    |                |
| password  | varchar(200) | NO   |     | NULL    |                |
| is_active | tinyint(1)   | YES  |     | NULL    |                |
+-----------+--------------+------+-----+---------+----------------+

mysql> drop table users;
Query OK, 0 rows affected (0.04 sec)

mysql> show tables;
Empty set (0.00 sec)