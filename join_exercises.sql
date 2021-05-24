USE employees;

SELECT emp_no FROM dept_manager;

SELECT
    first_name,
    last_name,
    birth_date
FROM employees WHERE emp_no IN (SELECT emp_no FROM dept_manager);