USE hr;

SELECT first_name, last_name, department_id, department_name
FROM employees JOIN departments USING (department_id);

SELECT Emp.first_name, Emp.last_name, Emp.job_id, Emp.department_id, Depts.department_name FROM employees Emp
	JOIN departments Depts ON (Emp.department_id = Depts.department_id)
	JOIN locations Loc ON (Depts.location_id = Loc.location_id)
WHERE LOWER(Loc.city) = 'London';

SELECT Emp.employee_id AS 'Employee ID', Emp.last_name AS 'Employee Last Name', Mgr.employee_id AS 'Manager ID', Mgr.last_name AS 'Manager Last Name'
FROM employees Emp JOIN employees mgr
ON (Emp.manager_id = Mgr.employee_id);

SELECT department_name AS 'Dept Name', COUNT(*) AS '# of Employees' FROM departments Depts
	INNER JOIN employees Emps ON Depts.department_id = Emps.department_id
    GROUP BY Depts.department_id, Depts.department_name
    ORDER BY Depts.department_name;
    
    SELECT Depts.department_id, Depts.department_name, Depts.manager_id, Emps.first_name
    FROM departments Depts INNER JOIN employees Emps
    ON (Depts.manager_id = Emps.employee_id);
    
    SELECT JobHis.* FROM job_history JobHis JOIN employees Emps
    ON (JobHis.employee_id = Emps.employee_id)
    WHERE Emps.salary > 10000;
    
    SELECT first_name, last_name, hire_date, salary, (DATEDIFF(now(), hire_date))/365 AS 'Yrs of Experience'
    FROM employees Emps JOIN departments Depts
    ON (Depts.manager_id = Emps.employee_id)
    WHERE (DATEDIFF(now(), hire_date))/365 > 15;