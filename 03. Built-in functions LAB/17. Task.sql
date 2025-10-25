SELECT
	peak_name,
	LEFT(peak_name, 4) AS positive_left,
	LEFT(peak_name, -4) AS negaive_left
	
FROM
	peaks
;

-- SELECT * FROM peaks;