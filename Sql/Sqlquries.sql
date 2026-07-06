USE hr_analytics;

SELECT *
FROM employee_attrition limit 10;

#Quries 
# Which employee factors contribute the most to attrition? 
SELECT 
    jobsatisfaction,
    COUNT(*) AS total_employees,
    SUM(
	CASE 
		WHEN attrition='yes' THEN 1 ELSE 0 END
    ) AS employees_left,
    ROUND(
        SUM(
            CASE WHEN attrition='yes' THEN 1 ELSE 0 END) * 100 / COUNT(*),2) AS attrition_rate
FROM employee_attrition
GROUP BY
    jobsatisfaction
ORDER BY attrition_rate DESC;
# employees working overtime more likely to leave the company? 
SELECT 
    overtime,
    COUNT(*) AS total_employees,
SUM(
	CASE 
		WHEN attrition='yes' THEN 1 ELSE 0 END) AS employees_left,
ROUND(SUM(
	CASE WHEN attrition='yes' THEN 1 ELSE 0 END
) * 100 / COUNT(*),2) AS attrition_rate

FROM employee_attrition
GROUP BY overtime
ORDER BY attrition_rate DESC;

#Which job roles and departments have the highest employee attrition risk? 
SELECT 
    department,
    jobrole,
    COUNT(*) AS total_employees,
SUM(
		CASE 
		WHEN attrition='yes' THEN 1 ELSE 0 END) AS employees_left,

ROUND(
SUM(
	CASE 
		WHEN attrition='yes' THEN 1 ELSE 0 END
) * 100 / COUNT(*),2) AS attrition_rate
FROM employee_attrition
GROUP BY 
    department,
    jobrole
HAVING total_employees >= 10
ORDER BY attrition_rate DESC;
#How do monthly income, years since last promotion, and years of experience affect employee retention?
SELECT
    income_group,    
    COUNT(*) AS total_employees,
SUM(CASE 
	WHEN attrition = 'yes' THEN 1 ELSE 0 	END
) AS employees_left,

ROUND(
SUM(CASE 
		WHEN attrition = 'yes' THEN 1 ELSE 0 END
) * 1hr_analytics00 / COUNT(*),2) AS attrition_rate
FROM employee_attrition
GROUP BY income_group
ORDER BY attrition_rate DESC;
