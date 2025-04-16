-- create database
create database instagram;
Query OK, 1 row affected (0.02 sec)

-- show databases
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| facebook           |
| information_schema |
| instagram          |
| mysql              |
| performance_schema |
| sys                |
+--------------------+

-- work with specific database;
mysql> use instagram;
Database changed

-- delete specific database
mysql> drop database facebook;
Query OK, 1 row affected (0.06 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| instagram          |
| mysql              |
| performance_schema |
| sys                |
+--------------------+