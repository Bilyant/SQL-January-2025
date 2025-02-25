SELECT
	first_name AS "First name",
	last_name AS "Last name",
	EXTRACT(YEAR FROM born) AS "year"
FROM
	authors;
