SELECT last_name, job_title, salary
FROM staff
ORDER BY salary DESC
FETCH FIRST 10 ROWS ONLY

SELECT company_division, count(*)
FROM staff_div_reg_country
GROUP BY company_division
ORDER BY count(*) DESC
FETCH FIRST 5 ROWS ONLY
