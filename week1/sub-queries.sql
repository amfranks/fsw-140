USE hr;

SELECT first_name, last_name, salary FROM employees WHERE salary > (SELECT salary FROM employees WHERE last_name = 'bull');

SELECT first_name, last_name, salary FROM employees WHERE department_id IN
	(SELECT department_id FROM departments WHERE department_name LIKE 'IT%');
    
SELECT first_name, last_name, salary FROM employees WHERE salary = (SELECT MIN(salary) FROM employees);

SELECT employee_id, first_name, last_name, (SELECT department_name FROM departments Depts WHERE Emps.department_id = Depts.department_id) AS 'Department Name'
FROM employees Emps;