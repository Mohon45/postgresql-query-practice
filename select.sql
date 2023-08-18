CREATE TABLE IF NOT EXISTS departments(
    deptID SERIAL PRIMARY KEY,
    name TEXT NOT NULL
)

CREATE TABLE employees(
    empID SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    email TEXT NOT NULL,
    salary INTEGER NOT NULL,
    joining_date DATE NOT NULL,
    deptID INTEGER NOT NULL,
    CONSTRAINT fk_deptID
        FOREIGN KEY(deptID)
        REFERENCES departments(deptID)
)

INSERT INTO employees(name, email, salary, joining_date, deptID)
VALUES
('Mohon', 'mohon@gmail.com', 7000, '2022-11-01', 1),
('Mohon2', 'mohon2@gmail.com', 5000, '2022-11-02', 2),
('Mohon3', 'mohon3@gmail.com', 2000, '2022-11-03', 3),
('Mohon4', 'mohon4@gmail.com', 10000, '2022-11-04', 4),
('Mohon5', 'mohon5@gmail.com', 3000, '2022-11-05', 5),
('Mohon6', 'mohon6@gmail.com', 30000, '2022-11-05', 1);


-- Select all fields/rows
SELECT * FROM departments;
SELECT * FROM employees;


-- select some COLUMN
SELECT name, email from employees;


SELECT * FROM employees
-- WHERE salary > 2000 AND salary < 7000
WHERE salary <> 7000;


-- sort by primary key in table
-- asending
SELECT * FROM employees 
ORDER BY name 
ASC;

--desding
SELECT * FROM employees 
ORDER BY name 
DESC;

--limit
SELECT * FROM employees 
ORDER BY name 
ASC LIMIT 2 OFFSET 2;

-- how to find a highest salary in TABLE
SELECT * FROM employees 
ORDER BY salary 
DESC LIMIT 1;

-- how to find a 3rd hightest salary in TABLE
SELECT * FROM employees
ORDER BY salary DESC LIMIT 1 OFFSET 2;

-- IN NOT IN, BETWEEN, LIKE

-- IN
SELECT * FROM employees
WHERE empid IN(2,3,5);

-- not in
SELECT * FROM employees
WHERE empid NOT IN(2,3,5);

-- BETWEEN
SELECT * FROM employees
WHERE salary BETWEEN 7000 AND 20000;


-- string searcing by LIKE
SELECT * FROM employees
WHERE name LIKE '%o%';

SELECT * FROM employees
WHERE name LIKE 'M%';

SELECT * FROM employees
WHERE name LIKE '%n';


-- specific position
SELECT * FROM employees
WHERE name LIKE '__h%';

SELECT * FROM employees
WHERE name LIKE '__h__';

SELECT * FROM employees
WHERE name LIKE 'M%2';



SELECT * FROM employees WHERE deptid IS NULL;