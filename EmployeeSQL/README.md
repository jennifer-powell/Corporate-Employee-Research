# SQL-Challenge


ERD
Departments
--
dept_no FK >- Department_Employees.dept_no
dept_name

Titles
--
emp_title_id
titles

Department_Employees
--
emp_no FK >- Employees.emp_no
dept_no

Employees
--
emp_no FK >- Salaries.emp_no
emp_title_id FK >- Titles.emp_title_id
birth_date
first_name
last_name
sex
hire_date

Salaries
--
emp_no
salary

Dept_Manager
--
dept_no FK >- Departments.dept_no
emp_no FK >- Employees.emp_no
