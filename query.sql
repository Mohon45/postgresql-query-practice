--department TABLE
CREATE TABLE Department(
    deptID SERIAL PRIMARY KEY,
    deptName VARCHAR(255)
)



--Employee Table Create
CREATE TABLE Employee (
    empID SERIAL PRIMARY KEY,
    empName VARCHAR(255) NOT NULL,
    departmentID INT,
    CONSTRAINT fk_constraint_dept
        Foreign Key (departmentID) REFERENCES Department(deptID)
)


--insert data in department in TABLE
INSERT INTO Department VALUES(1, 'IT')

SELECT * FROM Department;
DELETE FROM Department WHERE deptID = 1;

-- insert data in employees table
INSERT INTO Employee VALUES(1, 'Mohon', 1);

SELECT * FROM Employee;
DELETE FROM Employee WHERE empID = 1