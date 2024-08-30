CREATE TABLE student (
    student_id NUMBER PRIMARY KEY,
    student_name VARCHAR2(50),
    physics NUMBER(2),
    chemistry NUMBER(2),
    mathematics NUMBER(2)
);

-- Insert sample data into the student table
INSERT INTO student (student_id, student_name, physics, chemistry, mathematics) VALUES (1, 'Alice', 20, 18, 40);
INSERT INTO student (student_id, student_name, physics, chemistry, mathematics) VALUES (2, 'Bob', 15, 12, 35);
INSERT INTO student (student_id, student_name, physics, chemistry, mathematics) VALUES (3, 'Charlie', 10, 14, 20);
INSERT INTO student (student_id, student_name, physics, chemistry, mathematics) VALUES (4, 'David', 22, 25, 45);
INSERT INTO student (student_id, student_name, physics, chemistry, mathematics) VALUES (5, 'Eve', 11, 10, 30);
INSERT INTO student (student_id, student_name, physics, chemistry, mathematics) VALUES (6, 'Frank', 13, 17, 28);
INSERT INTO student (student_id, student_name, physics, chemistry, mathematics) VALUES (7, 'Grace', 24, 20, 50);
INSERT INTO student (student_id, student_name, physics, chemistry, mathematics) VALUES (8, 'Hank', 25, 21, 48);
INSERT INTO student (student_id, student_name, physics, chemistry, mathematics) VALUES (9, 'Ivy', 19, 23, 35);
INSERT INTO student (student_id, student_name, physics, chemistry, mathematics) VALUES (10, 'Jack', 17, 15, 40);

COMMIT;
