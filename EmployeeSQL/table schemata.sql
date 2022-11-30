CREATE TABLE departments (
    dept_no VARCHAR(30) NOT NULL PRIMARY KEY, 
    dept_name VARCHAR(30) NOT NULL)
--------------------------
CREATE TABLE dept_emp (
    dept_no VARCHAR(30) NOT NULL , 
    emp_no INT NOT NULL PRIMARY KEY)
------------------------
CREATE TABLE dept_manager (
    dept_no VARCHAR(30) NOT NULL, 
    emp_no INT NOT NULL PRIMARY KEY)
---------------------------
CREATE TABLE employees (
    emp_no INT(30) NOT NULL PRIMARY KEY, 
    emp_title_id VARCHAR(30) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR(1) NOT NULL,
	hire_date DATE NOT NULL)
-------------------------
CREATE TABLE salaries (
    emp_no INT NOT NULL PRIMARY KEY,
	salary int NOT NULL )
--------------------------
CREATE TABLE titles (
    title_id VARCHAR(30) NOT NULL PRIMARY KEY,
	title VARCHAR(30) NOT NULL )