
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

--1. List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT Employees.emp_no, Employees.last_name, Employees.first_name, Employees.sex, Salaries.salary
FROM Employees
LEFT JOIN Salaries on
Employees.emp_no= Salaries.emp_no;

select * from Employees;
--2. List first name, last name, and hire date for employees who were hired in 1986.
-- SELECT first_name, last_name, hire_date FROM Employees

-- ORDER BY hire_date ASC
-- WHERE hire_date BETWEEN '1/1/1986' AND '12/31/1986';
-- last_name, first_name

 --3. List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name.
SELECT  Departments.dept_name,Department_Managers.dept_no, Department_Managers.emp_no, Employees.last_name, Employees.first_name
FROM Department_Managers
JOIN Departments on 
Departments.dept_no = Department_Managers.dept_no
JOIN Employees on
Employees.emp_no = Department_Managers.emp_no;

-- 4. List the department of each employee with the following information:
-- employee number, last name, first name, and department name.
SELECT Employees.emp_no, Employees.last_name, Employees.first_name, Departments.dept_name
FROM Employees
JOIN Department_Employees on
Department_Employees.emp_no= Employees.emp_no
JOIN Departments on
Departments.dept_no= Department_Employees.dept_no

--5. List first name, last name, and sex for employees whose first name is "Hercules" 
--and last names begin with "B."
SELECT first_name, last_name, sex
FROM Employees
WHERE first_name = 'Hercules' and last_name LIKE 'B%'
--20 employees have the name 'B. Hercules'


--6. List all employees in the Sales department:
--including their employee number, last name, first name, and department name.
SELECT Employees.emp_no, Employees.last_name, Employees.first_name, Departments.dept_name
FROM Employees
JOIN Department_Employees on
Department_Employees.emp_no= Employees.emp_no
JOIN Departments on
Departments.dept_no= Department_Employees.dept_no
WHERE dept_name = 'Sales'
---52245 Employees in Sales


--7. List all employees in the Sales and Development departments:
--including their employee number, last name, first name, and department name.
SELECT Employees.emp_no, Employees.last_name, Employees.first_name, Departments.dept_name
FROM Employees
JOIN Department_Employees on
Department_Employees.emp_no= Employees.emp_no
JOIN Departments on
Departments.dept_no= Department_Employees.dept_no
WHERE dept_name = 'Development' OR dept_name = 'Sales';
-- There are no employees that in both departments, they are in one or the other.


--8. In descending order, list the frequency count of employee last names,
--i.e., how many employees share each last name.
SELECT last_name, count(last_name) FROM Employees
GROUP BY last_name
ORDER BY last_name;
-- there are 1638 different last names, this code puts them in alphabetical order along with count

Select last_name, first_name FROM Employees
WHERE emp_no= '499942'

-- Emplyee 'April Foolsday' hahaha

