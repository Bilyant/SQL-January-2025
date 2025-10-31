CREATE TABLE
	employees_projects (
	id SERIAL PRIMARY KEY,
	employee_id INT,
	project_id INT,
	
	CONSTRAINT fk_employees_projects
		FOREIGN KEY (employee_id)
		REFERENCES employees(id),
	CONSTRAINT fk_employees_projects	
		FOREIGN KEY (project_id)
		REFERENCES projects(id)
)
;

-- SELECT * FROM employees;
