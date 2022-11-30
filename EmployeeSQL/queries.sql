select employees.emp_no,
first_name,
last_name,
sex,
salary
from employees

inner join salaries on employees.emp_no = salaries.emp_no
order by employees.emp_no
------------------------
select first_name,
last_name,
hire_date
from employees
where date_part('year', hire_date)= 1986
-----------------------------
select dept_manager.dept_no,
departments.dept_name,
first_name,
last_name
from dept_manager
inner join departments on departments.dept_no = dept_manager.dept_no
inner join employees on employees.emp_no = dept_manager.emp_no
------------------------
select dept_emp.dept_no,
departments.dept_name,
first_name,
last_name,
employees.emp_no
from employees
inner join dept_emp on dept_emp.emp_no = employees.emp_no
inner join departments on departments.dept_no = dept_emp.dept_no
-----------------------
select first_name,
last_name,
sex
from employees
where first_name = 'Hercules' and last_name like'B%'
---------------------
select first_name,
last_name,
employees.emp_no
from employees
inner join dept_emp on dept_emp.emp_no =  employees.emp_no
where dept_emp.dept_no = 'd007'
---------------------
select first_name,
last_name,
employees.emp_no,
dept_name
from employees
inner join dept_emp on dept_emp.emp_no =  employees.emp_no
inner join departments on dept_emp.dept_no = departments.dept_no
where dept_emp.dept_no = 'd007' or dept_emp.dept_no = 'd005'
------------------
select last_name,count(*) from employees
group by last_name
order by count(*) desc
