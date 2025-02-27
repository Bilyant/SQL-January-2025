SELECT
	LEFT(first_name, 2) AS "initials",
	count('initials') AS "user_count"
FROM
	users
GROUP BY
	initials
ORDER BY
	count('initials') DESC,
	initials
;