CREATE DATABASE IF NOT EXISTS college;

USE college;

CREATE TABLE teacher(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    subject VARCHAR(30),
    salary INT
);

INSERT INTO teacher
(id, name, subject, salary)
VALUES
(23, "ajay", "math", 50000),
(47, "bharat", "english", 60000),
(18, "chetah", "chemistry", 45000),
(9, "divya", "physics", 75000);

SELECT id, name, subject, salary FROM teacher
WHERE salary >65000;

ALTER TABLE teacher
RENAME COLUMN salary to ctc;

SET SQL_SAFE_UPDATES = 0;

UPDATE teacher
SET ctc = ctc + 0.25 * ctc;

ALTER TABLE teacher
ADD COLUMN city VARCHAR(30) DEFAULT "GURUGRAM";

ALTER TABLE teacher
DROP COLUMN CTC;

SELECT * FROM teacher;