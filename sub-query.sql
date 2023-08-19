SELECT * FROM employees WHERE salary = (
    SELECT max(salary) FROM employees
);


SELECT * FROM employees WHERE salary IN (
    SELECT salary FROM employees WHERE name LIKE  '%h%'
);


SELECT * FROM employees WHERE salary > (
    SELECT AVG(salary) FROM employees
);


SELECT email, (
    SELECT AVG (salary) AS avarageSalary FROM employees
) FROM employees;


SELECT dept_id, avg_salary FROM (
    SELECT deptid as dept_id, AVG(salary) AS avg_salary FROM employees GROUP BY deptid
) as tempTable;

SELECT * FROM employees;

SELECT deptid, AVG(salary) AS avg_salary FROM employees GROUP BY deptid