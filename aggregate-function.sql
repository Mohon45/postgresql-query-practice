SELECT AVG(salary) AS avarageSalary FROM employees;
SELECT MIN(salary) AS minimumSalary FROM employees;
SELECT MAX(salary) AS maximumSalary FROM employees;



SELECT deptid, AVG(salary) FROM employees GROUP BY deptid;


SELECT d.name, AVG(e.salary) AS avarageSalary, SUM(e.salary) AS sumation FROM employees e
FULL JOIN departments d ON e.deptid = d.deptid
GROUP BY d.name;


SELECT d.name, AVG(e.salary) AS avarageSalary, SUM(e.salary) AS sumation, COUNT(*)  FROM employees e
FULL JOIN departments d ON e.deptid = d.deptid
GROUP BY d.name;

