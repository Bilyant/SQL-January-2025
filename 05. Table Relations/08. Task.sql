CREATE TABLE
	manufacturers (
	id INT PRIMARY KEY,
	name VARCHAR(50)
	)
;

CREATE TABLE
	models (
	id INT GENERATED ALWAYS AS IDENTITY (START WITH 1000 INCREMENT BY 1) PRIMARY KEY,
	model_name VARCHAR(50),
	manufacturer_id INT,

	CONSTRAINT fk_models_manufacturers
	FOREIGN KEY(manufacturer_id)
	REFERENCES manufacturers(id)
	)
;

CREATE TABLE
	production_years (
	id INT PRIMARY KEY,
	established_on TIMESTAMP,
	manufacturer_id INT,

	CONSTRAINT fk_production_year_manufacturers
	FOREIGN KEY (manufacturer_id)
	REFERENCES manufacturers(id)
	)
;