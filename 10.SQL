CREATE OR REPLACE FUNCTION udf_estates_count(
    city_name VARCHAR(60),
    estate_type_name VARCHAR(40)
)
RETURNS VARCHAR AS
$$
DECLARE
    estate_count INT;
BEGIN
    SELECT COUNT(*)
    INTO estate_count
    FROM estates AS e
    JOIN cities AS c 
	ON e.city_id = c.id
    JOIN estate_types AS et 
	ON e.estate_type_id = et.id
    WHERE c.name = city_name
      	AND 
	et.type = estate_type_name;

    IF estate_count > 0 THEN
        RETURN CONCAT('Found ', estate_count,' estates.');
    ELSE
        RETURN 'No estates found.';
    END IF;
END;
$$
LANGUAGE plpgsql;