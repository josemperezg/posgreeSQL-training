SELECT department, sum(salary), round(avg(salary),2), round(var_pop(salary),2), round(stddev_pop(salary),2) 
FROM staff GROUP BY department