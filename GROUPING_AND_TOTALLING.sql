SELECT company_division, company_regions, gender, count(*)
FROM staff_div_reg
GROUP BY 
	GROUPING SETS (company_division, company_regions, gender)
ORDER BY company_regions, company_division, gender