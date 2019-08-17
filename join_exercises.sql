USE employees;

SELECT d.dept_name AS 'Department Name', CONCAT_ws(' ',first_name, last_name) AS 'Department Manager'
FROM employees AS e
JOIN dept_manager AS dm
ON dm.emp_no = e.emp_no
JOIN departments AS d
ON d.dept_no = dm.dept_no
WHERE e.emp_no AND dm.to_date > curdate()
ORDER BY dept_name;


SELECT d.dept_name
AS 'Department name', concat(e.first_name, ' ', e.last_name)
AS 'Manager'
FROM employees e
JOIN dept_manager dm ON dm.emp_no = e.emp_no
JOIN departments d ON d.dept_no = dm.dept_no
WHERE e.gender = 'F' AND dm.to_date >= curdate()
ORDER BY d.dept_name;

SELECT *
FROM employees AS e
JOIN dept_manager AS dm








# SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
# FROM employees as e
# JOIN dept_emp as de
# ON de.emp_no = e.emp_no
# JOIN departments as d
# ON d.dept_no = de.dept_no
# WHERE de.to_date = '9999-01-01' AND e.emp_no = 10001;