CREATE OR REPLACE VIEW staff_div_reg_country AS
SELECT s.*, cd.company_division, cr.company_regions, cr.country
FROM staff s LEFT JOIN company_divisions cd
ON s.department = cd.department
LEFT JOIN company_regions cr
ON s.region_id = cr.region_id

SELECT company_regions, country, count(*)
FROM staff_div_reg_country
GROUP BY
	ROLLUP (country, company_regions)
ORDER BY country, company_regions

SELECT company_division, company_regions, count(*)
FROM staff_div_reg_country
GROUP BY
	CUBE(company_division, company_regions)
