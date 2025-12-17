 SELECT
    e.id,
    CONCAT(UPPER(c.name), '/', LOWER(et.type)) AS city_type,
    CONCAT('Not offered! ', COALESCE(e.description, '')) AS description,
    e.price,
    e.area
FROM 
	 estates AS e
JOIN 
	 cities AS c
ON 
	e.city_id = c.id
JOIN 
	 estate_types AS et
ON 
	e.estate_type_id = et.id
LEFT JOIN 
	 offers AS o
ON o.estate_id = e.id
WHERE 
	 o.id IS NULL
ORDER BY
    e.price DESC,
    e.area DESC,
    e.id ASC
;