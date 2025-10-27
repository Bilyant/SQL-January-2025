SELECT
	EXTRACT(year FROM booked_at AT TIME ZONE 'UTC') AS "YEAR",
	EXTRACT(month FROM booked_at AT TIME ZONE 'UTC') AS "MONTH",
	EXTRACT(day FROM booked_at AT TIME ZONE 'UTC') AS "DAY",
	EXTRACT(hour FROM booked_at AT TIME ZONE 'UTC') AS "HOUR",
	EXTRACT(minute FROM booked_at AT TIME ZONE 'UTC') AS "MINUTE",
	CEILING(EXTRACT(second FROM booked_at AT TIME ZONE 'UTC')) AS "SECOND"
FROM
	bookings
;


-- SELECT * FROM bookings;