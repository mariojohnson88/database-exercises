USE employees;


# 2
SELECT d.dept_name AS 'Department Name', CONCAT_WS(' ',first_name, last_name) AS 'Department Manager'
FROM employees AS e
JOIN dept_manager AS dm
ON dm.emp_no = e.emp_no
JOIN departments AS d
ON d.dept_no = dm.dept_no
WHERE e.emp_no AND dm.to_date > CURDATE()
ORDER BY dept_name;


# 3
SELECT d.dept_name AS Department_name, CONCAT_WS(' ', e.first_name, e.last_name) AS Manager
FROM employees e
JOIN dept_manager dm
ON dm.emp_no = e.emp_no
JOIN departments d
ON d.dept_no = dm.dept_no
WHERE e.gender = 'F' AND dm.to_date >= CURDATE()
ORDER BY d.dept_name;


# 4
SELECT t.title, COUNT(t.title) AS count
FROM titles AS t
JOIN dept_emp AS de
ON de.emp_no = t.emp_no
WHERE t.to_date > CURDATE() AND de.dept_no = 'd009' AND de.to_date > CURDATE()
GROUP BY t.title;


# 5
SELECT d.dept_name, CONCAT_WS(' ', e.first_name, e.last_name) AS manager, s.salary
FROM employees AS e
JOIN dept_manager AS dm
ON dm.emp_no = e.emp_no
JOIN departments AS d
ON d.dept_no = dm.dept_no
JOIN salaries AS s ON e.emp_no = s.emp_no
WHERE dm.to_date > CURDATE() AND s.to_date > CURDATE()
ORDER BY d.dept_name;


# BONUS
SELECT CONCAT_WS(' ', e.first_name, e.last_name) AS Employee_Name, d.Dept_name,
       CONCAT_WS(' ', mgmt.first_name, mgmt.last_name) AS Manager_Name
FROM employees AS e
JOIN dept_emp AS de
ON e.emp_no = de.emp_no
JOIN departments AS d
ON de.dept_no = d.dept_no
JOIN dept_manager AS dm
ON dm.dept_no = de.dept_no
JOIN employees AS mgmt
ON mgmt.emp_no = dm.emp_no
WHERE dm.to_date > CURDATE()
AND de.to_date > CURDATE()
ORDER BY d.dept_name;