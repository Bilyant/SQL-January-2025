SELECT
	estate_id,
	price,
	TO_CHAR(created_at, 'DD-MM-YYYY HH24:MI') AS created_at
FROM
	offers
WHERE
	created_at BETWEEN '01-01-2025' AND '02-28-2025'
			AND
	estate_id BETWEEN 5 AND 20
ORDER BY
	estate_id,
	price DESC,
	created_at
LIMIT
	10
;