CREATE TABLE Student_Exp07_CSA_41 (student_id NUMBER PRIMARY KEY, student_name VARCHAR2(50), physics NUMBER(2), chemistry NUMBER(2), mathematics NUMBER(2));

INSERT INTO Student_Exp07_CSA_41 (student_id, student_name, physics, chemistry, mathematics) VALUES (1, 'Jose', 15, 18, 40);
INSERT INTO Student_Exp07_CSA_41 (student_id, student_name, physics, chemistry, mathematics) VALUES (2, 'Pranav', 10, 12, 30);
INSERT INTO Student_Exp07_CSA_41 (student_id, student_name, physics, chemistry, mathematics) VALUES (3, 'Jibin', 20, 25, 35);
INSERT INTO Student_Exp07_CSA_41 (student_id, student_name, physics, chemistry, mathematics) VALUES (4, 'Alwin', 25, 20, 50);
INSERT INTO Student_Exp07_CSA_41 (student_id, student_name, physics, chemistry, mathematics) VALUES (5, 'Althaf', 12, 15, 20);
INSERT INTO Student_Exp07_CSA_41 (student_id, student_name, physics, chemistry, mathematics) VALUES (6, 'Ashhar', 13, 22, 40);
INSERT INTO Student_Exp07_CSA_41 (student_id, student_name, physics, chemistry, mathematics) VALUES (7, 'Nandu', 18, 12, 45);
INSERT INTO Student_Exp07_CSA_41 (student_id, student_name, physics, chemistry, mathematics) VALUES (8, 'Ashwin', 15, 14, 35);
INSERT INTO Student_Exp07_CSA_41 (student_id, student_name, physics, chemistry, mathematics) VALUES (9, 'Awin', 17, 18, 28);
INSERT INTO Student_Exp07_CSA_41 (student_id, student_name, physics, chemistry, mathematics) VALUES (10, 'Basil', 19, 23, 48);


SELECT AVG(physics) AS class_avg_physics FROM student;

SELECT MAX(mathematics) AS highest_marks_maths FROM student;

SELECT MIN(chemistry) AS lowest_mark_chemistry FROM student;

SELECT COUNT(*) FROM Student_Exp07_CSA_41 WHERE physics >= 12;

SELECT student_name FROM Student_Exp07_CSA_41 WHERE physics >= 12 AND chemistry >= 12 AND mathematics >= 25;

SELECT student_name, physics + chemistry + mathematics AS total_marks, CASE WHEN physics >= 12 AND chemistry >= 12 AND mathematics >= 25 THEN 'Pass' ELSE 'Fail' END AS status FROM Student_Exp07_CSA_41 ORDER BY total_marks DESC;


SELECT (COUNT(*) * 100 / (SELECT COUNT(*) FROM student)) AS pass_percentage_maths FROM Student_Exp07_CSA_41 WHERE mathematics >= 25;

SELECT (COUNT(*) * 100 / (SELECT COUNT(*) FROM student)) AS overall_pass_percentage FROM Student_Exp07_CSA_41 WHERE physics >= 12 AND chemistry >= 12 AND mathematics >= 25;


SELECT AVG(physics + chemistry + mathematics) AS class_average FROM student;


SELECT COUNT(*) FROM Student_Exp07_CSA_41 WHERE physics >= 12 AND chemistry >= 12 AND mathematics >= 25;
