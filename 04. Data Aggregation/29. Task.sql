SELECT
	*
FROM
	departments as d
JOIN
	employees as e
ON
	e.department_id = d.id
;