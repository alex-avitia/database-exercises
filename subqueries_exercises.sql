USE employees;

SELECT CONCAT (first_name, ' ', last_name) AS 'Full Name', emp_no, hire_date AS 'Hire Date'
FROM employees
WHERE hire_date IN (
    SELECT hire_date
    FROM employees
    WHERE emp_no = '101010'
);

SELECT title
FROM titles
WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE first_name = 'Aamod'
);
-- adding DISTINCT shows 6 unique titles held

SELECT *
FROM dept_manager
WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE gender = 'F'
);

SELECT *
FROM departments
WHERE dept_no IN (
    SELECT dept_no
    FROM dept_manager
    WHERE emp_no IN (
        SELECT emp_no
        FROM employees
        WHERE gender = 'F'
    )
);

SELECT first_name, last_name
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM salaries
    WHERE salary = (
        SELECT salary
        FROM salaries
        ORDER BY salary DESC
    LIMIT 1
    )
    );