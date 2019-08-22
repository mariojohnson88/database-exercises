USE employees;

SELECT *
FROM employees AS e
WHERE hire_date IN(
    SELECT hire_date
    FROM employees AS e2
    WHERE e2.emp_no =101010
);


SELECT *
FROM titles AS t
WHERE t.emp_no IN (
    SELECT e.emp_no
    FROM employees AS e
    WHERE first_name = 'Aamod'
);


SELECT first_name , last_name
FROM employees AS e
WHERE gender = 'f' AND e.emp_no IN (
    SELECT dm.emp_no
    FROM dept_manager AS dm
    WHERE to_date > NOW());
