USE employees;

SELECT * FROM employees WHERE first_name IN ('Irena','Vidya','Maya');
SELECT * FROM employees WHERE last_name like 'E%';
SELECT * FROM employees WHERE hire_date BETWEEN '1990-01-01' and '1999-12-31';
# OR SELECT * FROM employees WHERE hire date like '199%';
SELECT * FROM employees WHERE birth_date like '%12-25';
SELECT * FROM employees WHERE last_name like '%q%';
SELECT * FROM employees WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya';
SELECT * FROM employees WHERE gender = 'm' AND (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya');
SELECT * FROM employees WHERE last_name like '%e' OR last_name like 'e%';
SELECT * FROM employees WHERE last_name like '%e' AND last_name like 'e%';
SELECT * FROM employees WHERE hire_date like '199%' AND birth_date like '%12-25';
SELECT * FROM employees WHERE last_name like '%q%' And last_name NOT like '%qu%';