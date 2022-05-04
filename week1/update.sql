USE hr;

UPDATE employees SET email = 'not available' WHERE employee_id = 206;

UPDATE employees SET job_id = 'SH_CLERK' WHERE employee_id = 118 AND department_id = 30 AND NOT job_id LIKE 'SH%';

UPDATE employees SET email = 'NA' WHERE department_id = (SELECT department_id FROM departments WHERE department_name = 'Human Resources');

UPDATE employees SET salary = CASE department_id
								WHEN 40 THEN salary+(salary*0.25)
                                WHEN 90 THEN salary+(salary*0.15)
                                WHEN 110 THEN salary+(salary+0.10)
                                ELSE salary
							END
WHERE department_id IN (40, 90, 110);

UPDATE jobs, employees SET jobs.min_salary = jobs.min_salary+2000, jobs.max_salary = jobs.max_salary+2000, employees.salary = employees.salary + (employees.salary * 0.20), 
employees.commission_pct = employees.commission_pct + 0.10
WHERE jobs.job_id = 'PU_CLERK' AND employees.job_id = 'PU_CLERK';

UPDATE employees SET email='not available', commission_pct=0.10;

UPDATE employees
     SET email='not available',
     commission_pct=0.10
WHERE department_id=110;

UPDATE employees
SET email='not available'
WHERE department_id=80 AND commission_pct<.20;

UPDATE employees
SET email='not available'
WHERE department_id=(
SELECT department_id
FROM departments
WHERE department_name='Accounting');

UPDATE employees SET SALARY = 8000 WHERE employee_id = 105 AND salary < 5000;

UPDATE employees SET JOB_ID= 'SH_CLERK'
WHERE employee_id=118
AND department_id=30
AND NOT JOB_ID LIKE 'SH%';

UPDATE jobs, employees
SET jobs.min_salary = jobs.min_salary+2000,
         jobs.max_salary = jobs.max_salary+2000,
         employees.salary = employees.salary + (employees.salary * 0.20),
         employees.commission_pct = employees.commission_pct+.10
WHERE jobs.job_id='PU_CLERK'
AND employees.job_id='PU_CLERK';