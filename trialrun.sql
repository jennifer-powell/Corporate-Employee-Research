
-- 1. List the following details of each employee: 
--employee number, last name, first name, sex, and salary.
SELECT e.emp_no, Employees.last_name, Employees.first_name, Employees.sex, Salaries.salary
FROM Employees e
LEFT JOIN Salaries as s on
Employees.emp_no= Salaries.emp_no;

-- 2. List first name, last name, and hire date for employees who were hired in 1986.
-- where statement: where hire_date= jan 1986 to Dec 1986
SELECT first_name,last_name, hire_date FROM Employees
WHERE hire_date=  1/1/1986 to 12/31/1986

-- 3. List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name.
--two inner join manager with department on dept no 
--joined with employees table on employee number
SELECT dept_no, dept_name, emp_no, last_name, first_name as 'Managers'
FROM Department_Managers
INNER JOIN Department_Managers on 
Department_Mangers.dept_no= Departments.dept_no
INNER JOIN Department_Manager on
Employees.emp_no = Department_Manager.emp_no


);



-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.

SELECT 
FROM empdata 