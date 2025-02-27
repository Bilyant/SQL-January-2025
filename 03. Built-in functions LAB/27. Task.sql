SELECT
	EXTRACT(YEAR FROM booked_at) AS "Year",
	EXTRACT(MONTH FROM booked_at) AS "Month",
	EXTRACT(DAY FROM booked_at) AS "Day",
	EXTRACT(HOUR FROM booked_at) AS "Hour",
	EXTRACT(Minute FROM booked_at) AS "Minute",
	CEILING(EXTRACT(Second FROM booked_at)) AS "Second"
FROM
	bookings
;