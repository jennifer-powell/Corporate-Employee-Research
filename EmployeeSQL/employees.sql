
DROP TABLE Salaries;
DROP TABLE Department_Managers;
DROP TABLE Department_Employees;
DROP TABLE Departments;
DROP TABLE Employees;
DROP TABLE Titles;





CREATE TABLE Titles(
	emp_title_id VARCHAR NOT NULL,
	Title VARCHAR NOT NULL,
	PRIMARY KEY (emp_title_id)
);
CREATE TABLE Employees(
	emp_no VARCHAR NOT NULL,
	emp_title_id VARCHAR NOT NULL,
	birth_date VARCHAR NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR NOT NULL,
	hire_date VARCHAR NOT NULL,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES Titles (emp_title_id)
);
	
CREATE TABLE Departments (
	dept_no VARCHAR NOT NULL,
	dept_name VARCHAR NOT NULL,
	PRIMARY KEY (dept_no)
);

CREATE TABLE Department_Employees (
	emp_no VARCHAR NOT NULL,
	dept_no VARCHAR NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES Employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES Departments (dept_no),
	PRIMARY KEY (dept_no, emp_no)
);

CREATE TABLE Department_Managers (
	dept_no VARCHAR NOT NULL,
	emp_no VARCHAR NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES Employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES Departments (dept_no),
	PRIMARY KEY (dept_no, emp_no)
);

CREATE TABLE Salaries (
	emp_no VARCHAR NOT NULL,
	salary int NOT NULL,
	PRIMARY KEY (emp_no)
);
SELECT Employees.emp_no, Employees.last_name, Employees.first_name, Employees.sex, Salaries.salary
FROM Employees
LEFT JOIN Salaries on
Employees.emp_no= Salaries.emp_no;

select * from Employees;

