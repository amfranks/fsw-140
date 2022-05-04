SELECT first_name AS "First Name", last_name AS "Last Name" FROM employees;

SELECT * FROM employees ORDER BY first_name DESC;

SELECT first_name, last_name, LENGTH(first_name) + LENGTH(last_name) AS "Length of Names" FROM employees;

SELECT employee_id, first_name, last_name FROM employees LIMIT 10;

SELECT first_name, last_name, salary FROM employees WHERE salary NOT BETWEEN 10000 AND 15000;

SELECT first_name, last_name, department_id FROM employees WHERE department_id IN (30, 100) ORDER BY department_id ASC;

SELECT first_name, last_name, salary, department_id FROM employees WHERE salary NOT BETWEEN 10000 AND 15000 and department_id IN (30, 100);

SELECT first_name, last_name, hire_date FROM employees WHERE YEAR(hire_date) LIKE '1987%';

SELECT last_name, job_id, salary FROM employees WHERE job_id IN ('SH_CLERK', 'IT_PROG') AND salary NOT IN (4500, 10000, 15000);

SELECT first_name "First Name", last_name "Last Name" FROM employees;

SELECT DISTINCT department_id FROM employees;

SELECT * FROM employees ORDER BY first_name DESC;

SELECT first_name, last_name, salary, salary*.15 "PF" FROM employees;

SELECT employee_id, first_name, last_name, salary FROM employees ORDER BY salary;

SELECT SUM(salary) FROM employees;

SELECT MAX(salary), MIN(salary) FROM employees;

SELECT AVG(salary), COUNT(*) FROM employees;

SELECT COUNT(*) FROM employees;

SELECT COUNT(DISTINCT job_id) FROM employees;

SELECT UPPER (first_name) FROM employees;

SELECT SUBSTRING(first_name,1,3) FROM employees;

SELECT 171*214+625 Result;

SELECT CONCAT(first_name, ' ', last_name) 'Employee Name' FROM employees;

SELECT TRIM(first_name) FROM employees;

SELECT first_name, last_name, LENGTH(first_name)+LENGTH(last_name) 'Length of Names' FROM employees;

SELECT employee_id, first_name FROM employees LIMIT 10;

SELECT first_name, last_name, round(salary/12,2) as 'Monthly Salary' FROM employees;

SELECT first_name FROM employees WHERE first_name LIKE '%b%' AND first_name LIKE '%c%';

SELECT last_name FROM employees WHERE last_name LIKE '______';

SELECT last_name FROM employees WHERE last_name LIKE '__e%';

SELECT DISTINCT job_id FROM employees;

SELECT * FROM employees WHERE last_name IN('JONES', 'BLAKE', 'SCOTT', 'KING', 'FORD');

SELECT COUNT(DISTINCT job_id) FROM employees;

SELECT MIN(salary) FROM employees;

SELECT MAX(salary) FROM employees WHERE job_id = 'IT_PROG';

SELECT AVG(salary),count(*) FROM employees WHERE department_id = 90;

SELECT ROUND(MAX(salary),0) 'Maximum', ROUND(MIN(salary),0) 'Minimum', ROUND(SUM(salary),0) 'Sum', ROUND(AVG(salary),0) 'Average' FROM employees;

SELECT job_id, COUNT(*) FROM employees GROUP BY job_id;

SELECT MAX(salary) - MIN(salary) DIFFERENCE FROM employees;

SELECT manager_id, MIN(salary) FROM employees WHERE manager_id IS NOT NULL GROUP BY manager_id ORDER BY MIN(salary) DESC;

SELECT department_id, SUM(salary) FROM employees GROUP BY department_id;

SELECT job_id, AVG(salary) FROM employees WHERE job_id <> 'IT_PROG' GROUP BY job_id;

SELECT job_id, SUM(salary), AVG(salary), MAX(salary), MIN(salary) FROM employees WHERE department_id = '90' GROUP BY job_id;

SELECT job_id, MAX(salary) FROM employees GROUP BY job_id HAVING MAX(salary) >= 4000;

SELECT department_id, AVG(salary), COUNT(*) FROM employees GROUP BY department_id HAVING COUNT(*) > 10;