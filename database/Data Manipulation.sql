mysql> use instagram;
Database changed

mysql> drop table users;
Query OK, 0 rows affected (0.04 sec)

-- Create table
mysql> create table users(id int auto_increment primary key, username varchar(255) not null, email varchar(255) not null unique, mobile varchar(255) not null unique, password varchar(255) not null);
Query OK, 0 rows affected (0.11 sec)

mysql> show tables;
+---------------------+
| Tables_in_instagram |
+---------------------+
| users               |
+---------------------+
1 row in set (0.00 sec)

mysql> describe users;
+----------+--------------+------+-----+---------+----------------+
| Field    | Type         | Null | Key | Default | Extra          |
+----------+--------------+------+-----+---------+----------------+
| id       | int          | NO   | PRI | NULL    | auto_increment |
| username | varchar(255) | NO   |     | NULL    |                |
| email    | varchar(255) | NO   | UNI | NULL    |                |
| mobile   | varchar(255) | NO   | UNI | NULL    |                |
| password | varchar(255) | NO   |     | NULL    |                |
+----------+--------------+------+-----+---------+----------------+

-- Insert data
syntax : insert into table-name (col1, col2,.... coln) VALUES (val1, val2,...., valn);

mysql> insert into users(username, email, mobile, password)values("brijesh01", "brijesh@gmail.com", "+91 1236547890", "test@1234");
Query OK, 1 row affected (0.02 sec)

mysql> insert into users(username, email, mobile, password)values("ravi01", "ravi@gmail.com", "+91 11111147890", "ravi@1234"), ("bansi02", "bansi@gmail.com", "+91 222222222", "bansi@0987");
Query OK, 2 rows affected (0.01 sec)
Records: 2  Duplicates: 0  Warnings: 0


-- Select all columns data
mysql> select * from users;
+----+-----------+-------------------+-----------------+------------+
| id | username  | email             | mobile          | password   |
+----+-----------+-------------------+-----------------+------------+
|  1 | brijesh01 | brijesh@gmail.com | +91 1236547890  | test@1234  |
|  2 | ravi01    | ravi@gmail.com    | +91 11111147890 | ravi@1234  |
|  3 | bansi02   | bansi@gmail.com   | +91 222222222   | bansi@0987 |
+----+-----------+-------------------+-----------------+------------+

mysql> select id, username from users;
+----+-----------+
| id | username  |
+----+-----------+
|  1 | brijesh01 |
|  2 | ravi01    |
|  3 | bansi02   |
+----+-----------+

mysql> select * from users where id = 2;
+----+----------+----------------+-----------------+-----------+
| id | username | email          | mobile          | password  |
+----+----------+----------------+-----------------+-----------+
|  2 | ravi01   | ravi@gmail.com | +91 11111147890 | ravi@1234 |
+----+----------+----------------+-----------------+-----------+

mysql> select * from users where id = 2 and email = "ravi@gmail.com";
+----+----------+----------------+-----------------+-----------+
| id | username | email          | mobile          | password  |
+----+----------+----------------+-----------------+-----------+
|  2 | ravi01   | ravi@gmail.com | +91 11111147890 | ravi@1234 |
+----+----------+----------------+-----------------+-----------+

mysql> select * from users where id = 2 or email = "bansi@gmail.com";
+----+----------+-----------------+-----------------+------------+
| id | username | email           | mobile          | password   |
+----+----------+-----------------+-----------------+------------+
|  2 | ravi01   | ravi@gmail.com  | +91 11111147890 | ravi@1234  |
|  3 | bansi02  | bansi@gmail.com | +91 222222222   | bansi@0987 |
+----+----------+-----------------+-----------------+------------+
2 rows in set (0.00 sec)


mysql> INSERT INTO users (username, email, mobile, password) VALUES
    -> ('john_doe', 'john.doe@example.com', '9876543210', 'pass@123'),
    -> ('jane_smith', 'jane.smith@example.com', '8765432109', 'jane@456'),
    -> ('michael_lee', 'michael.lee@example.com', '7654321098', 'mike@789'),
    -> ('sara_khan', 'sara.khan@example.com', '6543210987', 'sara@321'),
    -> ('david_rao', 'david.rao@example.com', '5432109876', 'david@654');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0


mysql> select * from users;
+----+-------------+-------------------------+-----------------+------------+
| id | username    | email                   | mobile          | password   |
+----+-------------+-------------------------+-----------------+------------+
|  1 | brijesh01   | brijesh@gmail.com       | +91 1236547890  | test@1234  |
|  2 | ravi01      | ravi@gmail.com          | +91 11111147890 | ravi@1234  |
|  3 | bansi02     | bansi@gmail.com         | +91 222222222   | bansi@0987 |
|  4 | john_doe    | john.doe@example.com    | 9876543210      | pass@123   |
|  5 | jane_smith  | jane.smith@example.com  | 8765432109      | jane@456   |
|  6 | michael_lee | michael.lee@example.com | 7654321098      | mike@789   |
|  7 | sara_khan   | sara.khan@example.com   | 6543210987      | sara@321   |
|  8 | david_rao   | david.rao@example.com   | 5432109876      | david@654  |
+----+-------------+-------------------------+-----------------+------------+
8 rows in set (0.00 sec)

mysql> select * from users order by id desc;
+----+-------------+-------------------------+-----------------+------------+
| id | username    | email                   | mobile          | password   |
+----+-------------+-------------------------+-----------------+------------+
|  8 | david_rao   | david.rao@example.com   | 5432109876      | david@654  |
|  7 | sara_khan   | sara.khan@example.com   | 6543210987      | sara@321   |
|  6 | michael_lee | michael.lee@example.com | 7654321098      | mike@789   |
|  5 | jane_smith  | jane.smith@example.com  | 8765432109      | jane@456   |
|  4 | john_doe    | john.doe@example.com    | 9876543210      | pass@123   |
|  3 | bansi02     | bansi@gmail.com         | +91 222222222   | bansi@0987 |
|  2 | ravi01      | ravi@gmail.com          | +91 11111147890 | ravi@1234  |
|  1 | brijesh01   | brijesh@gmail.com       | +91 1236547890  | test@1234  |
+----+-------------+-------------------------+-----------------+------------+

mysql> select * from users order by id asc;
+----+-------------+-------------------------+-----------------+------------+
| id | username    | email                   | mobile          | password   |
+----+-------------+-------------------------+-----------------+------------+
|  1 | brijesh01   | brijesh@gmail.com       | +91 1236547890  | test@1234  |
|  2 | ravi01      | ravi@gmail.com          | +91 11111147890 | ravi@1234  |
|  3 | bansi02     | bansi@gmail.com         | +91 222222222   | bansi@0987 |
|  4 | john_doe    | john.doe@example.com    | 9876543210      | pass@123   |
|  5 | jane_smith  | jane.smith@example.com  | 8765432109      | jane@456   |
|  6 | michael_lee | michael.lee@example.com | 7654321098      | mike@789   |
|  7 | sara_khan   | sara.khan@example.com   | 6543210987      | sara@321   |
|  8 | david_rao   | david.rao@example.com   | 5432109876      | david@654  |
+----+-------------+-------------------------+-----------------+------------+

mysql> select * from users limit 5;
+----+------------+------------------------+-----------------+------------+
| id | username   | email                  | mobile          | password   |
+----+------------+------------------------+-----------------+------------+
|  1 | brijesh01  | brijesh@gmail.com      | +91 1236547890  | test@1234  |
|  2 | ravi01     | ravi@gmail.com         | +91 11111147890 | ravi@1234  |
|  3 | bansi02    | bansi@gmail.com        | +91 222222222   | bansi@0987 |
|  4 | john_doe   | john.doe@example.com   | 9876543210      | pass@123   |
|  5 | jane_smith | jane.smith@example.com | 8765432109      | jane@456   |
+----+------------+------------------------+-----------------+------------+

mysql> select * from users order by id desc limit 5;
+----+-------------+-------------------------+------------+-----------+
| id | username    | email                   | mobile     | password  |
+----+-------------+-------------------------+------------+-----------+
|  8 | david_rao   | david.rao@example.com   | 5432109876 | david@654 |
|  7 | sara_khan   | sara.khan@example.com   | 6543210987 | sara@321  |
|  6 | michael_lee | michael.lee@example.com | 7654321098 | mike@789  |
|  5 | jane_smith  | jane.smith@example.com  | 8765432109 | jane@456  |
|  4 | john_doe    | john.doe@example.com    | 9876543210 | pass@123  |
+----+-------------+-------------------------+------------+-----------+