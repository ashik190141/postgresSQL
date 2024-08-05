-- Active: 1722495303135@@127.0.0.1@5432@postgres@public

SELECT * FROM users;

SELECT * FROM posts

SELECT title as "Title", name as "User Name" FROM posts JOIN users on posts.id = users.id

INSERT INTO posts (id, title, user_id) VALUES
(5,'this is a test post title', NULL);

SELECT * FROM posts as p
LEFt OUTER JOIN users u on p.user_id = u.id;


SELECT * FROM posts as p
RIGHT OUTER JOIN users u on p.user_id = u.id;