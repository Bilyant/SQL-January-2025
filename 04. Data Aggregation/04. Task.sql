SELECT
	department_id,
	max(salary)
FROM
	employees
GROUP BY
	department_id
ORDER BY
	department_id
;