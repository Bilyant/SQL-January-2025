SELECT
	population,
	LENGTH(CAST(population AS VARCHAR(30))) AS "length" 
FROM
	countries
;