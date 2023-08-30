-- List the employee number, last name, first name, sex, and salary of each employee.
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees as e
join salaries as s
on e.emp_no = s.emp_no
order by e.emp_no asc;

-- List the first name, last name, and hire date for the employees who were hired in 1986.
select e.first_name, e.last_name, e.hire_date
from employees as e
where extract (year from e.hire_date) = 1986
order by e.last_name;

-- List the manager of each department along with their department number, department name, employee number, last name, and first name.
select m.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name
from dept_manager as m
join departments as d
on m.dept_no = d.dept_no
join employees as e
on m.emp_no = e.emp_no
order by m.dept_no;

-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
select p.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
from dept_emp as p
join employees as e
on e.emp_no = p.emp_no
join departments as d
on p.dept_no = d.dept_no
order by p.dept_no ASC;

-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
select e.first_name, e.last_name, e.sex
from employees as e
where e.first_name = 'Hercules'
and e.last_name like 'B%'
order by e.last_name;

-- List each employee in the Sales department, including their employee number, last name, and first name.
select p.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
from dept_emp as p
join employees as e
on e.emp_no = p.emp_no
join departments as d
on p.dept_no = d.dept_no
where d.dept_name = 'Sales'
order by e.emp_no ASC;

-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
select p.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
from dept_emp as p
join employees as e
on e.emp_no = p.emp_no
join departments as d
on p.dept_no = d.dept_no
where d.dept_name = 'Sales'
or d.dept_name = 'Development'
order by e.emp_no ASC;

-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
select e.last_name, count(e.last_name) as count
from employees as e
group by e.last_name
order by e.last_name desc;


