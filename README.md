# Task 3: Writing Basic SELECT Queries

## Objective
Practice extracting data from database tables using SQL `SELECT` statements along with filtering, sorting, and limiting results.

## Tools
- DB Browser for SQLite
- MySQL Workbench (optional)

## Contents
-`tak3_select_queries.sql` → SQL script for Task 3  
- `sample_students.csv` → Sample dataset for practice  
- `screenshots` → Final output screenshots  
- `README.md` → Project documentation  



## Dataset Used
The **Students** table contains:
- `student_id` (Primary Key)
- `name`
- `age`
- `email`
- `grade`


---

## 🧾 Dataset Structure (students.csv)
| id | name         | age | email                 | grade |
|----|--------------|-----|-----------------------|-------|
| 1  | John Smith   | 20  | john.smith@email.com  | A     |
| 2  | Alice Brown  | 22  | alice.brown@email.com | B     |
| 3  | Mark Davis   | 19  | mark.davis@email.com  | C     |
| 4  | Emma Wilson  | 21  | emma.wilson@email.com | B     |
| 5  | David Lee    | 23  | david.lee@email.com   | A     |

---

## 💻 SQL Queries

### 1️⃣ Create Table
```sql
CREATE TABLE students (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    age INTEGER,
    email TEXT UNIQUE,
    grade TEXT
);

##Insert Data

INSERT INTO students (name, age, email, grade) VALUES
('John Smith', 20, 'john.smith@email.com', 'A'),
('Alice Brown', 22, 'alice.brown@email.com', 'B'),
('Mark Davis', 19, 'mark.davis@email.com', 'C'),
('Emma Wilson', 21, 'emma.wilson@email.com', 'B'),
('David Lee', 23, 'david.lee@email.com', 'A');


## Update Data
UPDATE students
SET grade = 'A+'
WHERE name = 'Alice Brown';

## Delete Data
DELETE FROM students
WHERE id = 3;

##  Select Queries
-- Select all columns
SELECT * FROM students;

-- Select specific columns
SELECT name, grade FROM students;

-- Apply WHERE condition
SELECT * FROM students WHERE grade = 'A';

-- Apply AND condition
SELECT * FROM students WHERE grade = 'A' AND age < 23;

-- Apply LIKE operator
SELECT * FROM students WHERE name LIKE 'E%';

-- Apply BETWEEN operator
SELECT * FROM students WHERE age BETWEEN 20 AND 22;

-- Order results
SELECT * FROM students ORDER BY age DESC;

-- Limit results
SELECT * FROM students LIMIT 3;


Sample Output
Before UPDATE & DELETE:


| id | name        | age | email                                                 | grade |
| -- | ----------- | --- | ----------------------------------------------------- | ----- |
| 1  | John Smith  | 20  | [john.smith@email.com](mailto:john.smith@email.com)   | A     |
| 2  | Alice Brown | 22  | [alice.brown@email.com](mailto:alice.brown@email.com) | B     |
| 3  | Mark Davis  | 19  | [mark.davis@email.com](mailto:mark.davis@email.com)   | C     |
| 4  | Emma Wilson | 21  | [emma.wilson@email.com](mailto:emma.wilson@email.com) | B     |
| 5  | David Lee   | 23  | [david.lee@email.com](mailto:david.lee@email.com)     | A     |


After UPDATE & DELETE:

| id | name        | age | email                                                 | grade |
| -- | ----------- | --- | ----------------------------------------------------- | ----- |
| 1  | John Smith  | 20  | [john.smith@email.com](mailto:john.smith@email.com)   | A     |
| 2  | Alice Brown | 22  | [alice.brown@email.com](mailto:alice.brown@email.com) | A+    |
| 4  | Emma Wilson | 21  | [emma.wilson@email.com](mailto:emma.wilson@email.com) | B     |
| 5  | David Lee   | 23  | [david.lee@email.com](mailto:david.lee@email.com)     | A     |

Author
**Name:** Bhargavi Thammina  
**Email:** bhargavithammina@gmail.com  
**LinkedIn:** [linkedin.com/in/bhargavi-thammina-846053263](https://linkedin.com/in/bhargavi-thammina-846053263)  
**GitHub:** [github.com/Bhargavi-Thammina](https://github.com/Bhargavi-Thammina)
---
