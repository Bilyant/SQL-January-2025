SELECT
	-- TRIM('M' LEADING FROM peak_name)
	TRIM(LEADING 'M' FROM peak_name) AS left_trim,
	TRIM(TRAILING 'm' FROM peak_name) AS right_trim
FROM
	peaks
;