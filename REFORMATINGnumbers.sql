SELECT department, avg(salary), trunc(avg(salary)), round(avg(salary),2), ceil(avg(salary)) FROM staff GROUP BY department