-- Active: 1722495303135@@127.0.0.1@5432@postgres@public

/*
A trigger is a database object in PostgreSQL (and other database management systems) that automatically executes a specified set of actions in response to certain database events or conditions. 
*/

-- Table-Level Events:
    -- INSERT, UPDATE, DELETE, TRUNCATE
-- Database-Level Events
    -- Database Startup, Database Shutdown, Connection start and end etc

-- CREATE TRIGGER trigger_name
-- {BEFORE | AFTER | INSTEAD OF} {INSERT | UPDATE | DELETE | TRUNCATE}
-- ON table_name
-- [FOR EACH ROW] 
-- EXECUTE FUNCTION function_name();

CREATE Table my_users
(
    user_name VARCHAR(50),
    email VARCHAR(100)
);

INSERT INTO my_users VALUES('Mezba', 'mezba@mail.com'), ('Mir', 'mir@mail.com');

SELECT * from my_users;

SELECT * from deleted_users_audit;

CREATE Table deleted_users_audit
(
    deleted_user_name VARCHAR(50),
    deletedAt TIMESTAMP
)

CREATE or REPLACE FUNCTION delete_user()
RETURNS TRIGGER
LANGUAGE plpgsql
AS
$$
    BEGIN
        INSERT INTO deleted_users_audit VALUES(OLD.user_name, now());
        RETURN OLD;
    END
$$

CREATE TRIGGER save_delete_info
BEFORE DELETE
ON my_users
FOR EACH ROW
EXECUTE FUNCTION delete_user();

DELETE FROM my_users WHERE user_name='Mir';