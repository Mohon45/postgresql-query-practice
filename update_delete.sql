CREATE TABLE courses(
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(255) NOT NULL,
    description VARCHAR(255),
    published_date DATE
)

SELECT * FROM courses;

INSERT INTO courses(course_name, description, published_date)
VALUES
    ('PostGreSQL for Developers', 'A Complete postgreSQL for developers', '2020-07-13'),
    ('PostGreSQL Administration', 'A Complete postgreSQL Guide for DBA', NULL),
    ('PostGreSQL High Performance', NULL, NULL),
    ('PostGreSQL Bootcamp', 'Learn PostgreSQL via Bootcamp', '2013-06-11'),
    ('Mastering PostGreSQL', 'Mastering PostgreSQL in 21 Days', '2024-01-20');


-- update a single row  
-- UPDATE table_name 
-- SET
-- column1 = value1,
-- -- if multiple column update then
-- column2 = value2
-- where condition

UPDATE courses
set 
course_name = 'PostGres for Beginners'
WHERE course_id = 1

-- delete a row in TABLE
DELETE FROM courses
WHERE course_id = 1