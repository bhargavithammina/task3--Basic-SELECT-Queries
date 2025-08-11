DROP TABLE IF EXISTS Students;

CREATE TABLE Students (
    student_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    age INTEGER,
    email TEXT UNIQUE,
    grade TEXT DEFAULT 'Not Assigned'
);

INSERT INTO Students (name, age, email, grade) VALUES
('Alice', 20, 'alice@example.com', 'A'),
('Bob', 21, 'bob@example.com', 'B'),
('Charlie', 22, 'charlie@example.com', 'A+'),
('Diana', 19, 'diana@example.com', 'C'),
('Evan', 21, 'evan@example.com', 'B');

SELECT * FROM Students;

SELECT name, grade FROM Students;

-- Students with grade 'A'
SELECT * FROM Students
WHERE grade = 'A';

-- Students older than 20
SELECT * FROM Students
WHERE age > 20;

-- Students aged between 20 and 22
SELECT * FROM Students
WHERE age BETWEEN 20 AND 22;

-- Students whose name starts with 'A'
SELECT * FROM Students
WHERE name LIKE 'A%';

-- Students with grade A or B
SELECT * FROM Students
WHERE grade = 'A' OR grade = 'B';


-- Sort by age ascending
SELECT * FROM Students
ORDER BY age ASC;

-- Sort by name descending
SELECT * FROM Students
ORDER BY name DESC;

-- First 3 rows
SELECT * FROM Students
LIMIT 3;

-- First 2 oldest students
SELECT * FROM Students
ORDER BY age DESC
LIMIT 2;

