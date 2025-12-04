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

-- ----------------------------------------------------------------------

CREATE FUNCTION
	fn_get_full_name(
		first_name VARCHAR,
		last_name VARCHAR
	)
RETURNS VARCHAR
AS
$$
	DECLARE
		full_name VARCHAR;
	BEGIN
		IF first_name is NULL and last_name IS NULL THEN
			full_name := 'No name';
		ELSEIF first_name IS NULL THEN
				full_name := last_name;
		ELSEIF last_name IS NULL THEN
				full_name := first_name;
		ELSE
			full_name = CONCAT(first_name, ' ', last_name);
		END IF;

		RETURN full_name;
	END;
$$
LANGUAGE plpgsql;

-- ----------------------------------------------------------------------

CREATE FUNCTION
	get_town_by_id (id INT)
RETURNS VARCHAR AS
$$
	DECLARE
		town_name VARCHAR;
	BEGIN
		SELECT t.name
		INTO town_name
		FROM towns AS t
		WHERE id = t.town_id;
	RETURN town_name;
	END;
$$
LANGUAGE plpgsql;