-- Active: 1722495303135@@127.0.0.1@5432@postgres

SELECT country, count(*), AVG(age) FROM students GROUP BY country

SELECT country, avg(age) from students 
    GROUP BY country
       HAVING  avg(age) > 20.60;

-- Filter Groups Using HAVING to Show Only Countries with Average Age Above 20.60

-- Count Students Born in Each Year
SELECT extract(YEAR FROM dob) as "birth_year", count(*) FROM students GROUP BY birth_year;