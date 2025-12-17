UPDATE
	agents
SET
	commission_rate =
CASE
	WHEN hire_date < '2025-01-01' AND license_number LIKE '%100%' THEN 3.00
	WHEN hire_date > '2025-01-01' AND license_number LIKE '%11%' THEN 0.99
	ELSE commission_rate
END
;