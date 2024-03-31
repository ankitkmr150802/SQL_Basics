CREATE DATABASE IF NOT EXISTS instagram;

DROP database instagram;

USE instagram;

-- CREATE 

CREATE TABLE user(
	id INT PRIMARY KEY ,
    name VARCHAR(30) NOT NULL,
    email VARCHAR(50) UNIQUE,
    followers INT DEFAULT 0,
    following INT,
    age INT,
    CONSTRAINT CHECK (age>=3)
);

CREATE TABLE post(
	id INT PRIMARY KEY,
    content VARCHAR(100),
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES user(id)
);

-- INSERT

INSERT INTO user
(id, name, email, followers, following, age)
VALUE
(1, "pqr", "pqr@gmail.com",200,20,14),
(2, "xyz", "xyz@gmail.com",400,520,28),
(3, "xxx", "xxx@gmail.com",290,1200,38),
(4, "ABC", "ABC@gmail.com",800,210,20),
(5, "klm", "klm@gmail.com",120,310,21),
(6, "rst", "rst@gmail.com",680,930,25),
(7, "pmmodi", "pmmodi@gmail.com",520,380,15),
(8, "mla", "mla@gmail.com",650,470,16),
(9, "okay", "okay@gmail.com",100,130,18);

DROP TABLE user;
DROP table post;

INSERT INTO post
(id, content, user_id)
VALUE
(101,"Hello world",1),
(102,"bye bye",2),
(103,"hello ankit",3),
(104,"kaise ho!",4),
(105,"2 machhli",5),
(106,"pani me gayi",6),
(107,"chhpakk!!",7),
(108,"hi guys ",8),
(109,"i am learning sql",9);

-- SELECT 
SELECT * FROM user;
SELECT * FROM post;

-- where clause

SELECT * FROM user
WHERE followers >=300 AND age>=22;

SELECT name, age, followers FROM user
WHERE followers <300;

SELECT name, email, followers
FROM user
WHERE email IN ("ankitkmr1508@gmail.com","abcd@gmail.com","xyz@gmail.com");

SELECT name, followers, age
FROM user
ORDER BY followers ASC;  	-- >> Ascending order 

SELECT name, following, age
FROM user
ORDER BY following DESC  	 -- >> descending order
LIMIT 2;  -- will limit to only 2 entries

-- >> Aggregate function 

SELECT max(age)  -- column name
FROM user;

SELECT max(followers)
FROM user;

SELECT max(following)
FROM user;

SELECT min(followers)
FROM user;

SELECT count(followers) 	-- >>total row count of particular column
FROM user;

SELECT count(age)
FROM user
WHERE age >= 28;

SELECT sum(followers)  		-- >> total sum of a column
FROM user;

SELECT avg(followers)
FROM user;

SELECT age, max(followers) 		-- >> GROUP BY and HAVING clause
FROM user
GROUP BY age
HAVING max(followers) >300;

SELECT age, max(followers)		-- >> ORDER BY clause
FROM user
GROUP BY age
HAVING max(followers) >300
ORDER BY age DESC;

SET SQL_SAFE_UPDATES =0;

-- UPDATE  TO UPDATE EXISTING DATA)

UPDATE user
SET followers = 600
WHERE age  >= 28;

-- DELETE (TO DELETE EXISTING ROW)

DELETE FROM user
WHERE age = 14;

-- ALTER (TO CHANGE NEW COLUMN)

ALTER TABLE user
ADD COLUMN city VARCHAR(25) DEFAULT "DELHI";

ALTER TABLE user
DROP COLUMN age;

ALTER TABLE instauser  -- >> renamed
RENAME TO user;

ALTER TABLE user
CHANGE COLUMN followers subs INT DEFAULT 0;   -- >>followers changed into subs

INSERT INTO user
(id, name, email, following, age)
VALUE
(11, "csv", "csv@gmail.com",20,14);

ALTER TABLE user
MODIFY COLUMN followers INT DEFAULT 5;


DROP TABLE post;
TRUNCATE TABLE user;

SELECT * fROM user;