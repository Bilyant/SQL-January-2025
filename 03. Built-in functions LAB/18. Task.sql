SELECT
	peak_name,
	LEFT(peak_name, 4) AS "positive_left",
	LEFT(peak_name, -4) AS "negative left"
FROM
	peaks
;