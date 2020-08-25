SELECT department, count(*) FROM staff GROUP BY department
SELECT gender, max(salary), min(salary) FROM staff GROUP BY gender