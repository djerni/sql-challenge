--List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM Salaries AS s
INNER JOIN Employees AS e ON
e.emp_no = s.emp_no

--List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM Employees
WHERE hire_date LIKE '%1986'

--List the manager of each department with the following info: department number, department name, the manager's employee number, last name, first name
SELECT d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
FROM Dept AS d
INNER JOIN Dept_man AS dm ON
d.dept_no = dm.dept_no 
INNER JOIN Employees AS e ON 
dm.emp_no = e.emp_no; 

--List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM Employees AS e 
INNER JOIN Dept_emp AS de
ON e.emp_no = de.emp_no 
INNER JOIN Dept AS d 
ON de.dept_no = d.dept_no;

--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex
FROM Employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

--List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.first_name, e.last_name, d.dept_name
FROM Employees AS e 
INNER JOIN dept_emp AS de 
ON e.emp_no = de.emp_no
INNER JOIN Dept AS d
ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';

--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.first_name, e.last_name, d.dept_name
FROM Employees AS e 
INNER JOIN dept_emp AS de 
ON e.emp_no = de.emp_no
INNER JOIN Dept AS d
ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development';

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name) AS "Count of Last Names"
FROM Employees
GROUP BY last_name
ORDER BY COUNT(last_name) desc;