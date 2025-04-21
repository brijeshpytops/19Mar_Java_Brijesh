mysql> select * from users inner join user_posts on users.id = user_posts.user_id;
+----+-------------+-------------------------+-----------------+------------+----+---------+--------------------+-------------------------------------------------------------+-----------------+---------------------+---------------------+
| id | username    | email                   | mobile          | password   | id | user_id | title              | content                                                     | image           | created_at          | updated_at          |
+----+-------------+-------------------------+-----------------+------------+----+---------+--------------------+-------------------------------------------------------------+-----------------+---------------------+---------------------+
|  1 | brijesh01   | brijesh@gmail.com       | +91 1236547890  | test@1234  |  1 |       1 | My First Blog Post | This is the content of my first blog post!                  | post1.jpg       | 2025-04-19 18:02:43 | 2025-04-19 18:02:43 |
|  2 | ravi01      | ravi@gmail.com          | +91 11111147890 | ravi@1234  |  2 |       2 | Exploring Nature   | Had an amazing trip to the mountains. Nature is healing!    | nature.jpg      | 2025-04-19 18:02:43 | 2025-04-19 18:02:43 |
|  3 | bansi02     | bansi@gmail.com         | +91 222222222   | bansi@0987 |  3 |       3 | Python Tips        | Here are some useful Python tricks every coder should know. | python_tips.png | 2025-04-19 18:02:43 | 2025-04-19 18:02:43 |
|  4 | john_doe    | john.doe@example.com    | 9876543210      | pass@123   |  4 |       4 | Workout Routine    | Sharing my daily workout schedule for fitness enthusiasts.  | workout.jpg     | 2025-04-19 18:02:43 | 2025-04-19 18:02:43 |
|  5 | jane_smith  | jane.smith@example.com  | 8765432109      | jane@456   |  5 |       5 | Baking 101         | Just baked my first chocolate cake. Recipe inside!          | cake.jpg        | 2025-04-19 18:02:43 | 2025-04-19 18:02:43 |
|  6 | michael_lee | michael.lee@example.com | 7654321098      | 111222333  |  6 |       6 | Travel Diaries     | Highlights from my Europe backpacking trip.                 | europe_trip.jpg | 2025-04-19 18:02:43 | 2025-04-19 18:02:43 |
|  7 | sara_khan   | sara.khan@example.com   | 6543210987      | 111222333  |  7 |       7 | Photography Tips   | Top 5 photography techniques for beginners.                 | camera_tips.jpg | 2025-04-19 18:02:43 | 2025-04-19 18:02:43 |
+----+-------------+-------------------------+-----------------+------------+----+---------+--------------------+-------------------------------------------------------------+-----------------+---------------------+---------------------+

insert into users(username, email, mobile, password)values("jay01", "jay@gmail.com", "+91 1236347677890", "test@1234"), ("eric01", "eric@gmail.com", "+91 12363347650", "test@1234");

mysql> select * from users inner join user_posts on users.id = user_posts.user_id;
+----+-------------+-------------------------+-----------------+------------+----+---------+--------------------+-------------------------------------------------------------+-----------------+---------------------+---------------------+
| id | username    | email                   | mobile          | password   | id | user_id | title              | content                                                     | image           | created_at          | updated_at          |
+----+-------------+-------------------------+-----------------+------------+----+---------+--------------------+-------------------------------------------------------------+-----------------+---------------------+---------------------+
|  1 | brijesh01   | brijesh@gmail.com       | +91 1236547890  | test@1234  |  1 |       1 | My First Blog Post | This is the content of my first blog post!                  | post1.jpg       | 2025-04-19 18:02:43 | 2025-04-19 18:02:43 |
|  2 | ravi01      | ravi@gmail.com          | +91 11111147890 | ravi@1234  |  2 |       2 | Exploring Nature   | Had an amazing trip to the mountains. Nature is healing!    | nature.jpg      | 2025-04-19 18:02:43 | 2025-04-19 18:02:43 |
|  3 | bansi02     | bansi@gmail.com         | +91 222222222   | bansi@0987 |  3 |       3 | Python Tips        | Here are some useful Python tricks every coder should know. | python_tips.png | 2025-04-19 18:02:43 | 2025-04-19 18:02:43 |
|  4 | john_doe    | john.doe@example.com    | 9876543210      | pass@123   |  4 |       4 | Workout Routine    | Sharing my daily workout schedule for fitness enthusiasts.  | workout.jpg     | 2025-04-19 18:02:43 | 2025-04-19 18:02:43 |
|  5 | jane_smith  | jane.smith@example.com  | 8765432109      | jane@456   |  5 |       5 | Baking 101         | Just baked my first chocolate cake. Recipe inside!          | cake.jpg        | 2025-04-19 18:02:43 | 2025-04-19 18:02:43 |
|  6 | michael_lee | michael.lee@example.com | 7654321098      | 111222333  |  6 |       6 | Travel Diaries     | Highlights from my Europe backpacking trip.                 | europe_trip.jpg | 2025-04-19 18:02:43 | 2025-04-19 18:02:43 |
|  7 | sara_khan   | sara.khan@example.com   | 6543210987      | 111222333  |  7 |       7 | Photography Tips   | Top 5 photography techniques for beginners.                 | camera_tips.jpg | 2025-04-19 18:02:43 | 2025-04-19 18:02:43 |
+----+-------------+-------------------------+-----------------+------------+----+---------+--------------------+-------------------------------------------------------------+-----------------+---------------------+---------------------+

mysql> select * from users left join user_posts on users.id = user_posts.user_id where user_posts.user_id is NULL;
+----+----------+----------------+-------------------+-----------+------+---------+-------+---------+-------+------------+------------+
| id | username | email          | mobile            | password  | id   | user_id | title | content | image | created_at | updated_at |
+----+----------+----------------+-------------------+-----------+------+---------+-------+---------+-------+------------+------------+
|  9 | jay01    | jay@gmail.com  | +91 1236347677890 | test@1234 | NULL |    NULL | NULL  | NULL    | NULL  | NULL       | NULL       |
| 10 | eric01   | eric@gmail.com | +91 12363347650   | test@1234 | NULL |    NULL | NULL  | NULL    | NULL  | NULL       | NULL       |
+----+----------+----------------+-------------------+-----------+------+---------+-------+---------+-------+------------+------------+

mysql> SELECT *
    -> FROM users
    -> LEFT JOIN user_posts ON users.id = user_posts.user_id
    ->
    -> UNION
    ->
    -> SELECT *
    -> FROM users
    -> RIGHT JOIN user_posts ON users.id = user_posts.user_id;
+------+-------------+-------------------------+-------------------+------------+------+---------+--------------------+-------------------------------------------------------------+-----------------+---------------------+---------------------+
| id   | username    | email                   | mobile            | password   | id   | user_id | title              | content                                                     | image           | created_at          | updated_at          |
+------+-------------+-------------------------+-------------------+------------+------+---------+--------------------+-------------------------------------------------------------+-----------------+---------------------+---------------------+
|    1 | brijesh01   | brijesh@gmail.com       | +91 1236547890    | test@1234  |    1 |       1 | My First Blog Post | This is the content of my first blog post!                  | post1.jpg       | 2025-04-19 18:02:43 | 2025-04-19 18:02:43 |
|    2 | ravi01      | ravi@gmail.com          | +91 11111147890   | ravi@1234  |    2 |       2 | Exploring Nature   | Had an amazing trip to the mountains. Nature is healing!    | nature.jpg      | 2025-04-19 18:02:43 | 2025-04-19 18:02:43 |
|    3 | bansi02     | bansi@gmail.com         | +91 222222222     | bansi@0987 |    3 |       3 | Python Tips        | Here are some useful Python tricks every coder should know. | python_tips.png | 2025-04-19 18:02:43 | 2025-04-19 18:02:43 |
|    4 | john_doe    | john.doe@example.com    | 9876543210        | pass@123   |    4 |       4 | Workout Routine    | Sharing my daily workout schedule for fitness enthusiasts.  | workout.jpg     | 2025-04-19 18:02:43 | 2025-04-19 18:02:43 |
|    5 | jane_smith  | jane.smith@example.com  | 8765432109        | jane@456   |    5 |       5 | Baking 101         | Just baked my first chocolate cake. Recipe inside!          | cake.jpg        | 2025-04-19 18:02:43 | 2025-04-19 18:02:43 |
|    6 | michael_lee | michael.lee@example.com | 7654321098        | 111222333  |    6 |       6 | Travel Diaries     | Highlights from my Europe backpacking trip.                 | europe_trip.jpg | 2025-04-19 18:02:43 | 2025-04-19 18:02:43 |
|    7 | sara_khan   | sara.khan@example.com   | 6543210987        | 111222333  |    7 |       7 | Photography Tips   | Top 5 photography techniques for beginners.                 | camera_tips.jpg | 2025-04-19 18:02:43 | 2025-04-19 18:02:43 |
|    9 | jay01       | jay@gmail.com           | +91 1236347677890 | test@1234  | NULL |    NULL | NULL               | NULL                                                        | NULL            | NULL                | NULL                |
|   10 | eric01      | eric@gmail.com          | +91 12363347650   | test@1234  | NULL |    NULL | NULL               | NULL                                                        | NULL            | NULL                | NULL                |
+------+-------------+-------------------------+-------------------+------------+------+---------+--------------------+-------------------------------------------------------------+-----------------+---------------------+---------------------+