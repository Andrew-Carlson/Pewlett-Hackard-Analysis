-- create table for retiring employees
SELECT e.emp_no, 
	e.first_name,
	e.last_name,
	ti.title,
	ti.from_date,
	ti.to_date
INTO retirement_titles
FROM employees AS e
	INNER JOIN titles AS ti  -- titles and employees table have a shared column "emp_no"
		ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

SELECT * FROM retirement_titles;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no) 
	rt.emp_no,
	rt.first_name,
	rt.last_name,
	rt.title
INTO unique_titles
FROM retirement_titles as rt
WHERE rt.to_date = '9999-01-01' -- current employees
ORDER BY rt.emp_no ASC, rt.to_date DESC;  -- must include ORDER BY with DISTINCT ON

SELECT * FROM unique_titles;

-- Create table for count of retiring employees per title 
SELECT COUNT(u.title), 
	u.title
INTO retiring_titles
FROM unique_titles AS u
GROUP BY u.title -- Group by count per title
ORDER BY COUNT DESC; -- Put in descending order by title count

SELECT * FROM retiring_titles;

-- Creat a table for current employees born in 1965
SELECT DISTINCT ON (e.emp_no) 
	e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	ti.title
INTO mentorship_eligibility
FROM employees AS e
	INNER JOIN dept_emp AS de
		ON (e.emp_no = de.emp_no) -- join tables at primary key
	INNER JOIN titles AS ti
		ON (e.emp_no = ti.emp_no) -- join tables at primary key
	WHERE (de.to_date = '9999-01-01') -- current employees
		AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31' ) -- employees born in 1965
ORDER BY e.emp_no;

SELECT * FROM mentorship_eligibility;