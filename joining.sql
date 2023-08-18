SELECT * FROM employees;
SELECT * FROM departments;



----------Inner joining----------
SELECT e.name, e.joining_date, departments.name
FROM employees e
INNER JOIN departments ON departments.deptid = e.deptid ;



-----Left Join-----------
SELECT * FROM employees
LEFT JOIN departments ON departments.deptid = employees.deptid;






-------------Right Join--------------

SELECT * FROM employees
RIGHT JOIN departments ON departments.deptid = employees.deptid;





------------Full Join-------------
SELECT * FROM employees
FULL JOIN departments ON departments.deptid = employees.deptid;


---- NATURAL Join----

SELECT * FROM employees
NATURAL JOIN departments;