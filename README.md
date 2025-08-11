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

### Sample Data
| student_id | name    | age | email               | grade |
|------------|---------|-----|---------------------|-------|
| 1          | Alice   | 20  | alice@example.com   | A     |
| 2          | Bob     | 21  | bob@example.com     | B     |
| 3          | Charlie | 22  | charlie@example.com | A+    |
| 4          | Diana   | 19  | diana@example.com   | C     |
| 5          | Evan    | 21  | evan@example.com    | B     |

---

## SQL Queries & Outputs

### 1. Select all columns from the table

SELECT * FROM Students;

Output:

student_id	name	age	email	grade
1	Alice	20	alice@example.com	A
2	Bob	21	bob@example.com	B
3	Charlie	22	charlie@example.com	A+
4	Diana	19	diana@example.com	C
5	Evan	21	evan@example.com	B

2. Select specific columns

SELECT name, grade FROM Students;

Output:
name	grade
Alice	A
Bob	B
Charlie	A+
Diana	C
Evan	B

3. Filtering results using WHERE
a) Students with grade 'A'

SELECT * FROM Students WHERE grade = 'A';

Output:
student_id	name	age	email	grade
1	Alice	20	alice@example.com	A

b) Students older than 20

SELECT * FROM Students WHERE age > 20;

Output:
student_id	name	age	email	grade
2	Bob	21	bob@example.com	B
3	Charlie	22	charlie@example.com	A+
5	Evan	21	evan@example.com	B

c) Students aged between 20 and 22

SELECT * FROM Students WHERE age BETWEEN 20 AND 22;

Output:
student_id	name	age	email	grade
1	Alice	20	alice@example.com	A
2	Bob	21	bob@example.com	B
3	Charlie	22	charlie@example.com	A+
5	Evan	21	evan@example.com	B

d) Students whose names start with 'A'

SELECT * FROM Students WHERE name LIKE 'A%';

Output:
student_id	name	age	email	grade
1	Alice	20	alice@example.com	A

e) Students with grade A or B

SELECT * FROM Students WHERE grade = 'A' OR grade = 'B';

Output:
student_id	name	age	email	grade
1	Alice	20	alice@example.com	A
2	Bob	21	bob@example.com	B
5	Evan	21	evan@example.com	B

4. Sorting results
a) Sort by age ascending

SELECT * FROM Students ORDER BY age ASC;

Output:
student_id	name	age	email	grade
4	Diana	19	diana@example.com	C
1	Alice	20	alice@example.com	A
2	Bob	21	bob@example.com	B
5	Evan	21	evan@example.com	B
3	Charlie	22	charlie@example.com	A+

b) Sort by name descending

SELECT * FROM Students ORDER BY name DESC;

Output:
student_id	name	age	email	grade
5	Evan	21	evan@example.com	B
4	Diana	19	diana@example.com	C
3	Charlie	22	charlie@example.com	A+
2	Bob	21	bob@example.com	B
1	Alice	20	alice@example.com	A

5. Limiting the number of results
a) First 3 students

SELECT * FROM Students LIMIT 3;

Output:
student_id	name	age	email	grade
1	Alice	20	alice@example.com	A
2	Bob	21	bob@example.com	B
3	Charlie	22	charlie@example.com	A+

b) Top 2 oldest students

SELECT * FROM Students ORDER BY age DESC LIMIT 2;

Output:
student_id	name	age	email	grade
3	Charlie	22	charlie@example.com	A+
2	Bob	21	bob@example.com	B

Author
**Name:** Bhargavi Thammina  
**Email:** bhargavithammina@gmail.com  
**LinkedIn:** [linkedin.com/in/bhargavi-thammina-846053263](https://linkedin.com/in/bhargavi-thammina-846053263)  
**GitHub:** [github.com/Bhargavi-Thammina](https://github.com/Bhargavi-Thammina)
---
