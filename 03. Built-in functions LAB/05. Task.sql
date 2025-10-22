SELECT
	first_name,
	last_name,
	EXTRACT(years FROM born) AS year
FROM
	authors
;