mysql> CREATE TABLE user_posts (
    ->     id INT AUTO_INCREMENT PRIMARY KEY,
    ->     user_id INT NOT NULL,
    ->     title VARCHAR(255) NOT NULL,
    ->     content TEXT NOT NULL,
    ->     image VARCHAR(255), 
    ->     created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    ->     updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    ->     FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
    -> );

    mysql> show tables;
+---------------------+
| Tables_in_instagram |
+---------------------+
| user_posts          |
| users               |
+---------------------+
2 rows in set (0.00 sec)




INSERT INTO user_posts (user_id, title, content, image)
VALUES 
(1, 'My First Blog Post', 'This is the content of my first blog post!', 'post1.jpg');


INSERT INTO user_posts (user_id, title, content, image)
VALUES 
(2, 'Exploring Nature', 'Had an amazing trip to the mountains. Nature is healing!', 'nature.jpg');


INSERT INTO user_posts (user_id, title, content, image)
VALUES 
(3, 'Python Tips', 'Here are some useful Python tricks every coder should know.', 'python_tips.png');


INSERT INTO user_posts (user_id, title, content, image)
VALUES 
(4, 'Workout Routine', 'Sharing my daily workout schedule for fitness enthusiasts.', 'workout.jpg');


INSERT INTO user_posts (user_id, title, content, image)
VALUES 
(5, 'Baking 101', 'Just baked my first chocolate cake. Recipe inside!', 'cake.jpg');

INSERT INTO user_posts (user_id, title, content, image)
VALUES 
(6, 'Travel Diaries', 'Highlights from my Europe backpacking trip.', 'europe_trip.jpg');


INSERT INTO user_posts (user_id, title, content, image)
VALUES 
(7, 'Photography Tips', 'Top 5 photography techniques for beginners.', 'camera_tips.jpg');


mysql> select * from user_posts;
+----+---------+--------------------+-------------------------------------------------------------+-----------------+---------------------+---------------------+
| id | user_id | title              | content                                                     | image           | created_at          | updated_at          |
+----+---------+--------------------+-------------------------------------------------------------+-----------------+---------------------+---------------------+
|  1 |       1 | My First Blog Post | This is the content of my first blog post!                  | post1.jpg       | 2025-04-19 18:02:43 | 2025-04-19 18:02:43 |
|  2 |       2 | Exploring Nature   | Had an amazing trip to the mountains. Nature is healing!    | nature.jpg      | 2025-04-19 18:02:43 | 2025-04-19 18:02:43 |
|  3 |       3 | Python Tips        | Here are some useful Python tricks every coder should know. | python_tips.png | 2025-04-19 18:02:43 | 2025-04-19 18:02:43 |
|  4 |       4 | Workout Routine    | Sharing my daily workout schedule for fitness enthusiasts.  | workout.jpg     | 2025-04-19 18:02:43 | 2025-04-19 18:02:43 |
|  5 |       5 | Baking 101         | Just baked my first chocolate cake. Recipe inside!          | cake.jpg        | 2025-04-19 18:02:43 | 2025-04-19 18:02:43 |
|  6 |       6 | Travel Diaries     | Highlights from my Europe backpacking trip.                 | europe_trip.jpg | 2025-04-19 18:02:43 | 2025-04-19 18:02:43 |
|  7 |       7 | Photography Tips   | Top 5 photography techniques for beginners.                 | camera_tips.jpg | 2025-04-19 18:02:43 | 2025-04-19 18:02:43 |
+----+---------+--------------------+-------------------------------------------------------------+-----------------+---------------------+---------------------+