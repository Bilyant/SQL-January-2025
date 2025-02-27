SELECT
	SUM(booked_for)
FROM
	bookings
WHERE
	apartment_id = 90
GROUP BY
	apartment_id
;