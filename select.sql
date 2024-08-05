-- Active: 1722495303135@@127.0.0.1@5432@postgres@public

CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT,
    grade CHAR(2),
    course VARCHAR(50),
    email VARCHAR(100),
    dob DATE,
    blood_group VARCHAR(5),
    country VARCHAR(50)
);

INSERT INTO students (first_name, last_name, age, grade, course, email, dob, blood_group, country)
VALUES 
('John', 'Doe', 20, 'A', 'Mathematics', 'john.doe@example.com', '2003-01-15', 'O+', 'USA'),
('Jane', 'Smith', 22, 'B', 'Biology', 'jane.smith@example.com', '2001-05-23', 'A-', 'Canada'),
('Alice', 'Johnson', 21, 'A', 'Chemistry', 'alice.johnson@example.com', '2002-07-07', 'B+', 'UK'),
('Bob', 'Brown', 19, 'C', 'Physics', 'bob.brown@example.com', '2004-03-10', 'AB-', 'Australia'),
('Emily', 'Davis', 23, 'B', 'Computer Science', 'emily.davis@example.com', '2000-12-01', 'O-', 'New Zealand'),
('Michael', 'Wilson', 18, 'A', 'Mathematics', 'michael.wilson@example.com', '2005-02-25', 'A+', 'USA'),
('Sarah', 'Miller', 21, 'B', 'History', 'sarah.miller@example.com', '2002-09-12', 'O+', 'Canada'),
('David', 'Moore', 22, 'C', 'Engineering', 'david.moore@example.com', '2001-11-05', 'B-', 'UK'),
('Laura', 'Taylor', 20, 'A', 'Literature', 'laura.taylor@example.com', '2003-04-18', 'AB+', 'Australia'),
('Chris', 'Anderson', 23, 'B', 'Biology', 'chris.anderson@example.com', '2000-08-29', 'O-', 'New Zealand'),
('Sophia', 'Thomas', 19, 'C', 'Chemistry', 'sophia.thomas@example.com', '2004-01-22', 'A+', 'USA'),
('James', 'Jackson', 21, 'A', 'Mathematics', 'james.jackson@example.com', '2002-06-17', 'O+', 'Canada'),
('Olivia', 'White', 22, 'B', 'Physics', 'olivia.white@example.com', '2001-10-30', 'B+', 'UK'),
('Daniel', 'Harris', 20, 'C', 'Computer Science', 'daniel.harris@example.com', '2003-03-25', 'AB-', 'Australia'),
('Mia', 'Martin', 23, 'A', 'Engineering', 'mia.martin@example.com', '2000-07-09', 'O-', 'New Zealand'),
('Jacob', 'Thompson', 18, 'B', 'History', 'jacob.thompson@example.com', '2005-11-15', 'A+', 'USA'),
('Isabella', 'Garcia', 21, 'C', 'Literature', 'isabella.garcia@example.com', '2002-02-07', 'O+', 'Canada'),
('Ethan', 'Martinez', 22, 'A', 'Mathematics', 'ethan.martinez@example.com', '2001-12-23', 'B-', 'UK'),
('Ava', 'Rodriguez', 20, 'B', 'Biology', 'ava.rodriguez@example.com', '2003-05-14', 'AB+', 'Australia'),
('Logan', 'Martinez', 23, 'C', 'Computer Science', 'logan.martinez@example.com', '2000-03-02', 'O-', 'New Zealand');

select * from students

SELECT * FROM students ORDER BY age DESC

SELECT DISTINCT country FROM students

SELECT * FROM students WHERE country = 'USA'

SELECT concat(first_name,' ',last_name) as fullName FROM students;

/*
    @Scalar functions
 UPPER() Converts a string to uppercase.
 LOWER() Converts a string to lowercase.
 CONCAT() Concatenates two or more strings.
 LENGTH() Returns the number of characters in a string.
 
    @Aggregate functions
 AVG() Calculate the average of a set of values.
 MAX() Returns the max value in a set.
 MIN() Returns the minimum value in a set.
 SUM Calculates the sum of values in a set.
 COUNT() Counts the number of rows in a set.

*/

SELECT AVG(age) as "Average Age" FROM students;

select COALESCE(email, 'Email not provided') as "Email", blood_group, first_name from students;

SELECT * FROM students WHERE country in ('USA','UK') ORDER BY age ASC

SELECT * FROM students LIMIT 5 OFFSET 5*0;
SELECT * FROM students LIMIT 5 OFFSET 5*2;

SELECT * FROM users;

UPDATE users SET phonenumber='01744136454' WHERE id = 2;