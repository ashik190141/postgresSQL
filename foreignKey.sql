-- Active: 1722495303135@@127.0.0.1@5432@postgres@public

SELECT * FROM users

CREATE TABLE posts (
    id SERIAL PRIMARY KEY,
    title TEXT,
    user_id INTEGER REFERENCES users(id)
)

INSERT INTO posts (title, user_id)
VALUES 
    ('Understanding React Hooks', 1),
    ('TypeScript Best Practices', 2),
    ('Building Scalable Applications with Node.js', 1);

SELECT * FROM posts

-- Insertion constraint on INSERT post
-- Attempting to insert a post with a user ID that does not exist
-- Inserting a post with a valid user ID
-- Attempting to insert a post without specifying a user ID

-- Deletion constraint on DELETE user
-- Restrict Deletion -> ON DELETE RESTRICT / ON DELETE NO ACTION (default)
-- Cascading Deletion -> ON DELETE CASCADE
-- Setting NULL -> ON DELETE SET NULL
-- Set Default value -> ON DELETE SET DEFAULT