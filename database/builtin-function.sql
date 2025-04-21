mysql> select count(id) from users;
+-----------+
| count(id) |
+-----------+
|         9 |
+-----------+

mysql> select min(id) from users;
+---------+
| min(id) |
+---------+
|       1 |
+---------+

mysql> select max(id) from users;
+---------+
| max(id) |
+---------+
|      10 |
+---------+

mysql> select avg(id) from users;
+---------+
| avg(id) |
+---------+
|  5.2222 |
+---------+