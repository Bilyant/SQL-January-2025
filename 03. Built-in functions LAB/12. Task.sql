SELECT
	REGEXP_SUBSTR("River Information", '([0-9]{1,4})', 4) AS river_length
FROM
	view_river_info
;

-- SELECT * FROM view_river_info;