-- Active: 1722495303135@@127.0.0.1@5432@postgres@public

SELECT * from employees;

CREATE VIEW dept_avg_salary as
SELECT department_name, AVG(salary) as "Average Salary" FROM employees GROUP BY department_name

SELECT * FROM dept_avg_salary