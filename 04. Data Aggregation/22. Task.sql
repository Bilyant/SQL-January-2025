SELECT
		COUNT(CASE WHEN department_id = 1 THEN TRUE END) AS "Engineering",
		COUNT(CASE WHEN department_id = 2 THEN TRUE END) AS "Tool Design",
		COUNT(CASE WHEN department_id = 3 THEN TRUE END) AS "Sales",
		COUNT(CASE WHEN department_id = 4 THEN TRUE END) AS "Marketing",
		COUNT(CASE WHEN department_id = 5 THEN TRUE END) AS "Purchasing",
		COUNT(CASE WHEN department_id = 6 THEN TRUE END) AS "Research and Development",
		COUNT(CASE WHEN department_id = 7 THEN TRUE END) AS "Production"
FROM
	employees
;
