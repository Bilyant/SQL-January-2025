SELECT
    e.id AS estate_id,
    e.price AS initial_price,
    ROUND(COALESCE(AVG(o.price), 0), 2) AS avg_offer_price,
    ROUND(COALESCE(AVG(o.price), 0) - e.price, 2) AS difference,
    COUNT(o.id) AS offer_count
FROM 
	estates AS e
LEFT JOIN 
	offers AS o
ON 
	o.estate_id = e.id
GROUP BY 
	e.id,
	e.price
ORDER BY
    difference DESC,
    estate_id ASC
;