SELECT DISTINCT
    i.id AS individuals_id,
    CONCAT(i.last_name,', ',i.first_name) AS full_name,
    a.license_number
FROM 
	individuals as i
JOIN 
	agents AS a
ON 
	i.id = a.individual_id
JOIN 
	transactions AS t
ON 
	t.buyer_id = i.id
ORDER BY 
	individuals_id ASC
;