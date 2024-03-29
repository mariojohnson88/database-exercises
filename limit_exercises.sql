USE employees;

SELECT DISTINCT last_name FROM employees ORDER BY last_name DESC limit 10;

SELECT first_name, last_name
FROM employees
WHERE hire_date like '199%' AND birth_date like '%12-25' ORDER BY birth_date, hire_date DESC
LIMIT 5;

SELECT first_name, last_name
FROM employees
WHERE hire_date like '199%' AND birth_date like '%12-25' ORDER BY birth_date, hire_date DESC
LIMIT 5 OFFSET 45;

