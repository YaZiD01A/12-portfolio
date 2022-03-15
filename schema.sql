DROP DATABASE IF EXISTS EMS_db;
CREATE DATABASE EMS_db;

USE EMS_db;

CREATE TABLE department(
    id INT NOT NULL PRIMARY KEY,
    name VARCHAR(30) NOT NULL
);

CREATE TABLE role(
    id INT PRIMARY KEY,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL NOT NULL,
    department_id INT NOT NULL,
    FOREIGN KEY (department_id)
    REFERENCES department (id)
);

CREATE TABLE employee(
    id INT PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    role_id INT,
    FOREIGN KEY (role_id)
    REFERENCES role(id),
    manager_id INT NULL,
    FOREIGN KEY (manager_id)
    REFERENCES employee(id)
);