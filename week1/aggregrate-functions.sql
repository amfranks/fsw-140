USE hr;

SELECT SUM(salary) AS 'Total Salary' FROM employees;

SELECT MAX(salary) AS 'Max Salary', MIN(salary) AS 'Min Salary' FROM employees;

SELECT AVG(salary), COUNT(*) FROM employees;

SELECT COUNT(DISTINCT job_id) FROM employees;

SELECT first_name, SUBSTRING(first_name, 1, 3) FROM employees;

SELECT CONCAT(first_name, ' ', last_name) AS 'Emp Full Name' FROM employees;

SELECT ROUND(MAX(salary), 0) AS 'Maximum', MIN(salary) AS 'Minimum', SUM(salary) AS 'Sum', AVG(salary) AS 'Average' FROM employees;

SELECT MAX(salary) - MIN(salary) AS 'Difference' FROM employees;