/* 
information about employees and the highest salary for each job title 
*/
SELECT 
	employee_id, 
	first_name, 
	last_name, 
	job_title, 
	salary,
	MAX(salary) OVER(PARTITION BY job_title)
FROM employees;

/* 
information about employees and the quantity of people per job title 
*/
SELECT 
	employee_id, 
	first_name, 
	last_name, 
	job_title, 
	salary,
	COUNT(*) OVER(PARTITION BY job_title)
FROM employees;

/* 
information about employees and rank by age per job title, 
and average age per job title
*/
SELECT 
	employee_id, 
	first_name, 
	last_name, 
	job_title, 
	age,
	DENSE_RANK() OVER(partition BY job_title order by age) AS rank_per_job_title,
	ROUND(AVG(age) OVER(PARTITION BY job_title), 0) AS avg_age
FROM employees;

/* 
information about employees and cumulative distribution of age per job title, 
and average age per job title
*/
SELECT 
	employee_id, 
	first_name, 
	last_name, 
	job_title, 
	age,
	CUME_DIST() OVER(PARTITION BY job_title ORDER BY age) AS cume_dist
FROM employees;

/* 
median salary per title job
*/
SELECT
	job_title,
	PERCENTILE_CONT(0.5) WITHIN GROUP(ORDER BY salary) as median
FROM employees
GROUP BY job_title;

/* 
cumulative salary per title job
*/
SELECT 
	employee_id,
	first_name,
	last_name,
	job_title,
	salary,
	SUM(salary) OVER(PARTITION BY job_title ORDER BY salary)
FROM employees;

/* 
salary share by department
*/
WITH sum_salary_dep AS (
    SELECT
        job_title,
        SUM(salary) as dep_salary
    FROM employees
    GROUP BY 1
)
SELECT
    employee_id,
    first_name,
	last_name,
    job_title,
    salary,
    ROUND(salary/dep_salary * 100, 2) as dep_ratio
FROM employees
JOIN sum_salary_dep USING(job_title)
ORDER BY job_title, dep_ratio DESC;

/* employees with the highest salary per job_title 
*/
SELECT *
FROM (SELECT 
	employee_id,
	first_name,
	last_name,
	job_title,
	salary,
	MAX(salary) OVER(PARTITION BY job_title) AS max_salary
	FROM employees) n
WHERE max_salary=salary
ORDER BY employee_id

/* employees with the lowest salary per job_title 
*/
SELECT *
FROM (SELECT 
	employee_id,
	first_name,
	last_name,
	job_title,
	salary,
	MIN(salary) OVER(PARTITION BY job_title) AS min_salary
	FROM employees) n
WHERE min_salary=salary
ORDER BY employee_id