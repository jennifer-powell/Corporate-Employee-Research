

--1. List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT Employees.emp_no, Employees.last_name, Employees.first_name, Employees.sex, Salaries.salary
FROM Employees
LEFT JOIN Salaries on
Employees.emp_no= Salaries.emp_no;

select * from Employees;
--2. List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date FROM Employees
WHERE hire_date >= '1986-1-1' AND
hire_date <= '1986-12-31'
--35,150 people were hired in 1986

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

