SELECT
	department_id,
	count(salary) AS "employees_count"
FROM
	employees
GROUP BY
	department_id
ORDER BY
	department_id
;