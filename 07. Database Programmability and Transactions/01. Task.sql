CREATE FUNCTION
	fn_get_initials (
	VARCHAR, VARCHAR
	)
RETURNS
	VARCHAR(5)
AS
$$
	BEGIN
		RETURN
			CONCAT(LEFT($1, 1), '.', LEFT($2, 1), '.');
	END
$$
LANGUAGE plpgsql;

-- ----------------------------------------------------------------------

CREATE FUNCTION
	fn_get_initials (VARCHAR, VARCHAR)
RETURNS
	VARCHAR(5) AS
$$
	DECLARE
		first_name ALIAS FOR $1;
		last_name ALIAS FOR $2;
	BEGIN
		RETURN
			CONCAT(LEFT(first_name, 1), '.', LEFT(last_name, 1), '.');
	END
$$
LANGUAGE plpgsql;

-- ----------------------------------------------------------------------

CREATE FUNCTION fn_get_initials (
	first_name VARCHAR,
	last_name VARCHAR)
RETURNS
	VARCHAR(5) AS
$$
	BEGIN
		RETURN
			CONCAT(LEFT(first_name, 1), '.', LEFT(last_name, 1), '.');
	END
$$
LANGUAGE plpgsql;