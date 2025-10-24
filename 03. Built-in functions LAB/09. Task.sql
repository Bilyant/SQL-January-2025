CREATE VIEW
	view_continents_countries_currencies_details
AS SELECT
	LTRIM(CONCAT(cont.continent_name, ': ', cont.continent_code)) AS continent_details,
	CONCAT_WS(' - ', countr.country_name, capital, area_in_sq_km, 'km2') AS country_information,
	CONCAT(curr.description, ' (', curr.currency_code, ')') AS currencies
FROM
	continents AS cont
JOIN
	countries AS countr
ON
	countr.continent_code = cont.continent_code
JOIN
	currencies AS curr
ON
	curr.currency_code = countr.currency_code
ORDER BY
	country_information,
	currencies
;