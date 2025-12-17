DELETE FROM 
	offers
WHERE 
	created_at < '2024-12-12'
  		AND 
	id NOT IN(
      SELECT offer_id
      FROM transactions
);