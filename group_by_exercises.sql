USE employees;

SELECT DISTINCT title FROM titles;

SELECT last_name FROM employees WHERE last_name like '%e' AND last_name like 'e%' GROUP BY last_name;

SELECT DISTINCT first_name, last_name FROM employees WHERE last_name like '%e' AND last_name like 'e%';

SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';


# ASK ABOUT THIS ONE
SELECT DISTINCT last_name, COUNT(last_name)
FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%'
GROUP BY last_name
ORDER BY last_name;


SELECT COUNT(*), gender
FROM employees
WHERE first_name IN ('Irena','Vidya','Maya')
GROUP BY gender;





