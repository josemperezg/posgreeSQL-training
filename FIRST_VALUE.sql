SELECT department, last_name, salary,
	first_value(salary) OVER (PARTITION BY department ORDER BY salary DESC)
FROM staff

SELECT department, last_name, salary,
	first_value(salary) OVER (PARTITION BY department ORDER BY last_name)
FROM staff