SELECT department, last_name, salary, 
	avg(salary) OVER (PARTITION BY department)
FROM  staff

SELECT company_regions, last_name, salary, 
	min(salary) OVER (PARTITION BY company_regions)
FROM  staff_div_reg