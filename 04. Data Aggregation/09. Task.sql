SELECT
	department_id,
	salary,
	TRUNC(SUM(
		CASE
			WHEN department_id = 1 THEN salary * 1.15
			WHEN department_id = 2 THEN salary * 1.10
			ELSE salary * 1.05
		END
	), 2) AS "Increased salary"
FROM
	employees
GROUP BY
	salary, department_id
ORDER BY
	department_id
;