-- create a titles table
CREATE TABLE titles (
        title_id VARCHAR(5) PRIMARY KEY,
        title VARCHAR
);
-- create a employee table
CREATE TABLE employees (
        emp_no INT PRIMARY KEY,
        emp_title_id VARCHAR(5),
	    birth_date DATE,
        first_name VARCHAR,
        last_name VARCHAR,
        sex VARCHAR(1),
        hire_date DATE,
	    FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);
-- create a departments table
CREATE TABLE departments (
        dept_no VARCHAR(4) PRIMARY KEY,
	    dept_name VARCHAR
);
-- create a department employees table
CREATE TABLE dept_emp (
        emp_no INT,
	    dept_no VARCHAR(4),
	    PRIMARY KEY (emp_no, dept_no),
	    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);
-- create a department managers table
CREATE TABLE dept_manager (
        dept_no VARCHAR(4),
	    emp_no INT,
	    PRIMARY KEY (emp_no, dept_no),
	    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);
-- create a department salaries table
CREATE TABLE salaries (
        emp_no INT PRIMARY KEY,
	    salary INT,
	    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM departments
SELECT * FROM dept_emp
SELECT * FROM dept_manager
SELECT * FROM employees
SELECT * FROM salaries
SELECT * FROM titles