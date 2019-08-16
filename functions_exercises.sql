USE employee;

SELECT concat_ws(' ', first_name, last_name) AS 'Names' FROM employees WHERE last_name like '%e' AND last_name like 'e%';

SELECT first_name, last_name, emp_no, datediff(curdate(),hire_date) AS 'Days in company'
FROM employees
WHERE hire_date like '199%' AND birth_date like '%12-25';