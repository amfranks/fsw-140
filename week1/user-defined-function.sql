USE hr;

-- Write a user-defined function that calculated years of experience each employee has in the organization.

DELIMITER //
CREATE FUNCTION YearsOfExperience (hire_date DATE)
RETURNS DECIMAL

BEGIN
	-- Calculate the difference between TODAY and the hire date provided as input (IN)
    DECLARE YrsExp INT;
    SET YrsExp = 0;
    
    SET YrsExp = ROUND(DATEDIFF(now(), hire_date) / 365, 2);
    RETURN YrsExp;
END; //
DELIMITER ;

SELECT first_name, last_name, hire_date, salary, YearsOfExperience(hire_date) AS 'YRS OF EXPERIENCE' FROM employees;