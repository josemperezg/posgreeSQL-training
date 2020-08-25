SELECT department, last_name, salary,
	lag(salary) OVER (PARTITION BY department ORDER BY salary DESC)
FROM staff

SELECT department, last_name, salary,
	lead(salary) OVER (PARTITION BY department ORDER BY salary DESC)
FROM staff