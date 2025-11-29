SELECT
	COUNT(*) as countries_without_mountains
FROM
	(
		SELECT
		mc.country_code
	FROM
		mountains_countries AS mc
	RIGHT JOIN
		countries AS c
	USING
		(country_code)
	WHERE
		mc.country_code IS NULL
		)
;