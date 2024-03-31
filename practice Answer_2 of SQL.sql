CREATE DATABASE IF NOT EXISTS students;

DROP DATABASE IF EXISTS students;

USE students;

CREATE TABLE student(
	roll_no INT PRIMARY KEY,
    name VARCHAR(30),
    city VARCHAR(25),
    marks INT
);

INSERT INTO student
(roll_no, name , city, marks)
VALUES
(110, "adam", "delhi", 76),
(108, "bob", "mumbai", 65),
(124, "casey", "pune", 94),
(112, "duke", "pune", 80);


-- q1
SELECT * FROM student
WHERE marks >= 75;

-- q2
SELECT name, city FROM student;

-- Q3
SELECT city, max(marks) FROM student
GROUP BY city;

-- Q4
SELECT avg(marks) FROM student;

ALTER TABLE student
ADD COLUMN grade VARCHAR(5);

SET SQL_SAFE_UPDATES = 0;

UPDATE student
SET grade = "O" WHERE marks >= 85;
UPDATE student
SET grade = "A" WHERE marks >= 70 and marks <85;
UPDATE student
SET grade = "B" WHERE marks >= 60 and marks <70;
UPDATE student
SET grade = "C" WHERE marks >= 50 and marks <60;
UPDATE student
SET grade = "D" WHERE marks >= 40 and marks <50;
UPDATE student
SET grade = "F" WHERE marks <30;

SELECT * FROM student;