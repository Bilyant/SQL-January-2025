CREATE TABLE
	cities (
		id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
		name VARCHAR(60) NOT NULL UNIQUE
	)
;

CREATE TABLE
	estate_types (
		id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
		"type" VARCHAR(40) NOT NULL UNIQUE
	)
;

CREATE TABLE
	estates (
		id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
		address VARCHAR(100) NOT NULL,
		description TEXT,
		price DECIMAL(12, 2) NOT NULL CHECK(price > 0.00),
		area DECIMAL(8, 2),
		estate_type_id INT NOT NULL,
		city_id INT NOT NULL,

		CONSTRAINT fk_estates_estate_types
		FOREIGN KEY (estate_type_id)
		REFERENCES estate_types(id)
		ON UPDATE CASCADE
		ON DELETE CASCADE,

		CONSTRAINT fk_estates_cities
		FOREIGN KEY (city_id)
		REFERENCES cities(id)
		ON UPDATE CASCADE
		ON DELETE CASCADE
		
	)
;

CREATE TABLE
	individuals (
		id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
		first_name VARCHAR(50) NOT NULL,
		last_name VARCHAR(50) NOT NULL,
		phone VARCHAR(20) NOT NULL,
		email VARCHAR(100) NOT NULL UNIQUE CHECK(email LIKE '%@%'),
		city_id INT NOT NULL,

		CONSTRAINT fk_individuals_cities
		FOREIGN KEY (city_id)
		REFERENCES cities(id)
		ON UPDATE CASCADE
		ON DELETE CASCADE	
	)
;

CREATE TABLE
	agents (
		license_number VARCHAR(20) PRIMARY KEY UNIQUE,
		hire_date DATE,
		commission_rate DECIMAL(5, 2),
		individual_id INT NOT NULL UNIQUE,

		CONSTRAINT fk_agents_individuals
		FOREIGN KEY (individual_id)
		REFERENCES individuals(id)
		ON UPDATE CASCADE
		ON DELETE CASCADE	
	)
;

CREATE TABLE
	offers (
	id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	price DECIMAL(12, 2) NOT NULL CHECK(price >= 1.00),
	created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	estate_id INT NOT NULL,
	agent_license_number VARCHAR(20) NOT NULL,

	CONSTRAINT fk_offers_estates
	FOREIGN KEY (estate_id)
	REFERENCES estates(id)
	ON UPDATE CASCADE
	ON DELETE CASCADE,

	CONSTRAINT fk_offers_agents
	FOREIGN KEY (agent_license_number)
	REFERENCES agents(license_number)
	ON UPDATE CASCADE
	ON DELETE CASCADE
	)
;

CREATE TABLE
	transactions (
		offer_id INT NOT NULL,
		buyer_id INT NOT NULL,
		bank_name VARCHAR(50),
		iban VARCHAR(34) NOT NULL CHECK(LENGTH(iban) >=15),
		confirmation_date DATE NOT NULL,

		CONSTRAINT pk_offers_buyers
		PRIMARY KEY(offer_id, buyer_id),

		CONSTRAINT fk_transactions_offers
		FOREIGN KEY (offer_id)
		REFERENCES offers(id)
		ON UPDATE CASCADE
		ON DELETE CASCADE,

		CONSTRAINT fk_transactions_individuals
		FOREIGN KEY (buyer_id)
		REFERENCES individuals(id)
		ON UPDATE CASCADE
		ON DELETE CASCADE
				
	)
;