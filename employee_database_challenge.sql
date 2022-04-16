--Deliverable One

select e.emp_no, e.first_name, e.last_name, ti.title,  ti.from_date, ti.to_date
INTO retirement_table
FROM employees as e
inner join titles as ti
ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

--Drop titles

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rti.emp_no) rti.emp_no,
rti.first_name,
rti.last_name,
rti.title
INTO retirement_unique_info
FROM retirement_table as rti
WHERE rti.to_date = ('9999-01-01')
ORDER BY rti.emp_no, rti.to_date DESC;


--RETIRING EMPLOYEES BY TITLE

select count(rtu.emp_no), rtu.title
INTO retiring_titles_info
FROM retirement_unique_info as rtu
GROUP BY rtu.title
order by count(rtu.emp_no)DESC;


--DELIVERABLE TWO

--Mentorship Program
select distinct on (e.emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date, de.from_date, de.to_date, ti.title
INTO mentorship_eligibility_employee
from employees as e
Inner join dept_emp as de
on (e.emp_no = de.emp_no)
Inner join titles as ti
on (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
and de.to_date = ('9999-01-01')
order by e.emp_no;



--Silver Tsunami




--Total Employee Talbe 
select e.emp_no, e.first_name, e.last_name, ti.title,  ti.from_date, ti.to_date
--INTO retirement_table
FROM employees as e
inner join titles as ti
ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;


-- Current Employees with Titles
SELECT DISTINCT ON (e.emp_no) e.emp_no, ti.title, ti.to_date
INTO ssemployee_table
FROM employees as e
inner join titles as ti
on (e.emp_no = ti.emp_no)
WHERE ti.to_date = ('9999-01-01')
ORDER BY e.emp_no, ti.to_date DESC;


-- EMPLOYEES BY TITLE
select count(sse.emp_no), sse.title
INTO title_count_info
FROM ssemployee_table as sse;
GROUP BY sse.title
order by count(sse.emp_no)DESC;

--select * from ssemployee_table;
--select * from title_count_info;



