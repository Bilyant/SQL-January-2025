SELECT
	address,
	COALESCE(area, 0.00) as area,
	COALESCE(description, 'Missing data!') AS desctipyion
FROM
	estates AS e
WHERE
	address LIKE 'Calle%'
ORDER BY
	area DESC,
	description,
	address
;
