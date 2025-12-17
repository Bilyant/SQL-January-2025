INSERT INTO
	individuals (
		first_name,
		last_name,
		phone,
		email,
		city_id
	)
SELECT 
	LEFT(address, 5),
	COALESCE(RIGHT(description, 5), 'Lastname'),
	CONCAT('0', estate_type_id, '-', FLOOR(price)),
	CONCAT(id, '@insert.com'),
	city_id
FROM 
	estates
ORDER BY
	estate_type_id DESC
LIMIT
	5
;