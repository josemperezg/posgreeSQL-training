SELECT department, last_name, salary,
	ntile(4) OVER (PARTITION BY department ORDER BY salary DESC)
FROM staff