SELECT 
	s1.last_name, s1.salary, s1.department,
	(SELECT round(avg(salary)) FROM staff s2 WHERE s2.department = s1.department)
FROM staff s1

SELECT
	s1.department,
	round(avg(s1.salary))
FROM  (SELECT department, salary FROM staff WHERE salary>100000) s1
GROUP BY s1.department