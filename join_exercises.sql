USE employees;

-- TODO: write a query that shows each department along with the name of the current manager for that department.
SELECT dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees as e
JOIN dept_manager as dm
    ON e.emp_no = dm.emp_no
JOIN departments as d
    ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01';

-- TODO: Find the name of all departments currently managed by women.
SELECT dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees as e
JOIN dept_manager as dm
    ON e.emp_no = dm.emp_no
JOIN departments as d
    ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01'
    AND e.gender = 'f';

-- TODO: Find the current titles of employees currently working in the Customer Service department.
SELECT title, COUNT(title) AS 'Total'
FROM titles as t
JOIN dept_emp as de
    ON t.emp_no = de.emp_no
JOIN departments as d
    ON de.dept_no = d.dept_no
WHERE t.to_date = '9999-01-01'
  AND de.to_date = '9999-01-01'
  AND d.dept_name = 'Customer Service'
GROUP BY title;

-- TODO: Find the current salary of all current managers.
SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager', salary AS 'Salary'
FROM employees as e
JOIN salaries as s
    ON s.emp_no = e.emp_no
JOIN dept_manager as dm
     ON dm.emp_no = e.emp_no
JOIN departments as d
    ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01'
    AND s.to_date = '9999-01-01'
ORDER BY d.dept_name;

-- TODO: Bonus Find the names of all current employees, their department name, and their current manager's name .
SELECT CONCAT(e1.first_name, ' ', e1.last_name) as 'Employee', d.dept_name as 'Department', CONCAT(e2.first_name, ' ', e2.last_name) as 'Manager'
FROM employees as e1
JOIN dept_emp de
    ON e1.emp_no = de.emp_no
JOIN departments d
    ON de.dept_no = d.dept_no
JOIN dept_manager dm
    ON d.dept_no = dm.dept_no
JOIN employees e2
    ON e2.emp_no = dm.emp_no
WHERE dm.to_date = '9999-01-01'
    AND de.to_date = '9999-01-01';

