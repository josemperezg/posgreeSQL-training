SELECT DISTINCT UPPER(department) FROM staff
SELECT job_title || '-' ||  department title_dept FROM staff
SELECT length(trim('     Software Engineer   '))
SELECT job_title, (job_title like '%Assistant%') is_asst FROM staff
SELECT SUBSTRING(job_title FROM 10) FROM staff WHERE job_title LIKE 'Assistant%'
SELECT OVERLAY(job_title PLACING 'Asst.' FROM 1 FOR 9) FROM staff WHERE job_title LIKE 'Assistant%'

