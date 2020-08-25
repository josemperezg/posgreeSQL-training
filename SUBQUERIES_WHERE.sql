SELECT department, s1.last_name, s1.salary
from staff s1
WHERE 
 s1.salary = (SELECT max(s2.salary) FROM staff s2)


// Returns the person with the highest salary and the department