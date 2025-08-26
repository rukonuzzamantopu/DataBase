-- Create database
CREATE DATABASE employeeDB;
USE employeeDB;

-- Create tables
CREATE TABLE employee (
    e_name VARCHAR(50),
    street VARCHAR(50),
    city VARCHAR(50)
);

CREATE TABLE company (
    company_name VARCHAR(50),
    branch VARCHAR(50),
    city VARCHAR(50)
);

CREATE TABLE works (
    w_name VARCHAR(50),
    e_name VARCHAR(50),
    company_name VARCHAR(50),
    salary DECIMAL(10,2)
);

-- Insert sample records
INSERT INTO employee (e_name, street, city) VALUES
('Alice', '1st Avenue', 'New York'),
('Bob', 'Green Street', 'Chicago');

INSERT INTO company (company_name, branch, city) VALUES
('TechCorp', 'Main', 'New York'),
('InnoSoft', 'West', 'Chicago');

INSERT INTO works (w_name, e_name, company_name, salary) VALUES
('Alice W', 'Alice', 'TechCorp', 60000),
('Bob W', 'Bob', 'InnoSoft', 55000);

ALTER TABLE employee
ADD COLUMN emp_id INT AUTO_INCREMENT PRIMARY KEY,
ADD COLUMN entry_date DATE DEFAULT (CURRENT_DATE);

ALTER TABLE employee
CHANGE city address VARCHAR(100);

ALTER TABLE employee
ADD COLUMN email VARCHAR(100);

-- Update with sample data
UPDATE employee
SET email = 'alice@example.com', address = 'Brooklyn, New York'
WHERE e_name = 'Alice';

UPDATE employee
SET email = 'bob@example.com', address = 'Downtown Chicago'
WHERE e_name = 'Bob';

ALTER TABLE employee
ADD COLUMN email VARCHAR(100);

-- Update with sample data
UPDATE employee
SET email = 'alice@example.com', address = 'Brooklyn, New York'
WHERE e_name = 'Alice';

UPDATE employee
SET email = 'bob@example.com', address = 'Downtown Chicago'
WHERE e_name = 'Bob';


CREATE TABLE employee_backup AS
SELECT * FROM employee;

CREATE TABLE works_backup AS
SELECT * FROM works;


-- First ensure company_name in company is unique
ALTER TABLE company
ADD CONSTRAINT company_unique UNIQUE (company_name);

-- Then add foreign key in works
ALTER TABLE works
ADD CONSTRAINT fk_company
FOREIGN KEY (company_name) REFERENCES company(company_name)
ON DELETE CASCADE ON UPDATE CASCADE;

-- First ensure e_name in employee is unique
ALTER TABLE employee        
ADD CONSTRAINT employee_unique UNIQUE (e_name);
-- Then add foreign key in works
ALTER TABLE works
ADD CONSTRAINT fk_employee
FOREIGN KEY (e_name) REFERENCES employee(e_name)
ON DELETE CASCADE ON UPDATE CASCADE;

-- Drop tables
DROP TABLE works;   
DROP TABLE company;
DROP TABLE employee;
DROP TABLE works_backup;
DROP TABLE employee_backup; 
-- Drop database
DROP DATABASE employeeDB;

-- End of script
-- End of script
-- End of script


-- End of script
-- End of script
-- End of script
-- End of script

-- End of script
-- End of script    
-- End of script
-- End of script
    