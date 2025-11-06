CREATE TABLE
	passports (
	id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY
		(START WITH 100 INCREMENT BY 1),
	nationality VARCHAR(100)
	)
;

INSERT INTO 
	passports (nationality)
VALUES
	('N34FG21B'),
	('K65LO4R7'),
	('ZE657QP2' )
;

-- SELECT * FROM passports;


CREATE TABLE
	people (
	id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	salary NUMERIC(10, 2),
	passport_id INT,

	CONSTRAINT fk_people_passports
	FOREIGN KEY (passport_id)
	REFERENCES passports(id)
	)
;

-- SELECT * FROM people;

INSERT INTO
	people (
	first_name, salary, passport_id
	)
VALUES 
	('Roberto', 43300.0000, 101),
	('Tom', 56100.0000, 102),
	('Yana', 60200.0000, 100)
;
