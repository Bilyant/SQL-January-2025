SELECT
	id,
	CONCAT_WS(' ', number, street) AS "assress",
	city_id
FROM
	addresses
WHERE
	id >= 20
;