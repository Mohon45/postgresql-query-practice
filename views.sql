CREATE VIEW view_name
AS
SELECT salary FROM employees;

SELECT * FROM view_name;

SELECT * FROM departments


CREATE VIEW department_emp_count
AS
SELECT d.name, COUNT(empid) FROM employees e
JOIN departments d ON d.deptid = e.deptid
GROUP BY d.deptid;

SELECT * FROM department_emp_count; 