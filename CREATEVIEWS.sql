CREATE VIEW staff_div_reg AS
SELECT s.*, cd.company_division, cr.company_regions
FROM staff s LEFT JOIN company_divisions cd 
ON s.department = cd.department
LEFT JOIN company_regions cr
ON s.region_id = cr.region_id

SELECT count(*) FROM staff_div_reg