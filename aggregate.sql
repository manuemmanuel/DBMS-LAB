-- 1. Find the class average for the subject ‘Physics’
SELECT AVG(physics) AS class_avg_physics FROM student;

-- 2. Find the highest marks for mathematics (To be displayed as highest_marks_maths)
SELECT MAX(mathematics) AS highest_marks_maths FROM student;

-- 3. Find the lowest marks for chemistry (To be displayed as lowest_mark_chemistry)
SELECT MIN(chemistry) AS lowest_mark_chemistry FROM student;

-- 4. Find the total number of students who have got a ‘pass’ in physics
SELECT COUNT(*) AS pass_in_physics 
FROM student 
WHERE physics >= 12;

-- 5. Generate the list of students who have passed in all the subjects
SELECT student_name 
FROM student 
WHERE physics >= 12 AND chemistry >= 12 AND mathematics >= 25;

-- 6. Generate a rank list for the class. Indicate Pass/Fail. Ranking based on total marks obtained by the students.
SELECT student_name, 
       (physics + chemistry + mathematics) AS total_marks, 
       CASE 
           WHEN physics >= 12 AND chemistry >= 12 AND mathematics >= 25 THEN 'Pass'
           ELSE 'Fail'
       END AS result,
       RANK() OVER (ORDER BY (physics + chemistry + mathematics) DESC) AS rank
FROM student;

-- 7. Find pass percentage of the class for mathematics
SELECT 
    (COUNT(CASE WHEN mathematics >= 25 THEN 1 END) * 100.0 / COUNT(*)) AS pass_percentage_maths
FROM student;

-- 8. Find the overall pass percentage for all classes
SELECT 
    (COUNT(CASE WHEN physics >= 12 AND chemistry >= 12 AND mathematics >= 25 THEN 1 END) * 100.0 / COUNT(*)) AS overall_pass_percentage
FROM student;

-- 9. Find the class average for all subjects
SELECT AVG(physics + chemistry + mathematics) AS class_avg FROM student;

-- 10. Find the total number of students who have got a Pass
SELECT COUNT(*) AS total_pass
FROM student 
WHERE physics >= 12 AND chemistry >= 12 AND mathematics >= 25;
