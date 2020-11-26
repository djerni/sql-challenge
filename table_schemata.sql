DROP TABLE IF EXISTS Employees;
DROP TABLE IF EXISTS Dept;
DROP TABLE IF EXISTS Dept_man;
DROP TABLE IF EXISTS Dept_emp;
DROP TABLE IF EXISTS Salaries;
DROP TABLE IF EXISTS Titles;

CREATE TABLE Employees(
	emp_no VARCHAR PRIMARY KEY, 
	title_id VARCHAR,
	birth_date VARCHAR,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date VARCHAR
);

CREATE TABLE Dept(
	dept_no VARCHAR PRIMARY KEY,
	dept_name VARCHAR
);

CREATE TABLE Dept_man(
	dept_no VARCHAR,
	emp_no VARCHAR,
	PRIMARY KEY (dept_no, emp_no), 
	FOREIGN KEY (dept_no) REFERENCES Dept (dept_no),
	FOREIGN KEY (emp_no) REFERENCES Employees (emp_no)
);

CREATE TABLE Dept_emp(
	emp_no VARCHAR,
	dept_no VARCHAR,
	PRIMARY KEY (dept_no, emp_no), 
	FOREIGN KEY (dept_no) REFERENCES Dept (dept_no),
	FOREIGN KEY (emp_no) REFERENCES Employees (emp_no)
);

CREATE TABLE Salaries(
	emp_no VARCHAR PRIMARY KEY,
	salary VARCHAR,
	FOREIGN KEY (emp_no) REFERENCES Employees (emp_no)
);

CREATE TABLE Titles(
	title_id VARCHAR,
	title VARCHAR,
	PRIMARY KEY (title_id, title)
);