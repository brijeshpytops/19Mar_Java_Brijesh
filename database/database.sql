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


-- Export (Backup) a MySQL Database
C:\Users\Admin\Desktop>mysqldump -u [username] -p instagram > instagram.sql
Enter password: ****

mysql> create database snapchat;
Query OK, 1 row affected (0.02 sec)

mysql> use snapchat
Database changed
mysql> show tables;
Empty set (0.00 sec)

-- Import a MySQL Database
C:\Users\Admin\Desktop>mysql -u root -p snapchat < instagram.sql
Enter password: ****

mysql> show tables;
+--------------------+
| Tables_in_snapchat |
+--------------------+
| users              |
+--------------------+
1 row in set (0.00 sec)