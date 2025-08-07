-- Insert students
INSERT INTO students (student_name, age, gender, date_of_admission)
VALUES
    ('Ali', 20, 'Male', '2024-05-15'),
    ('Sara', 21, 'Female', '2024-05-14');

-- Insert courses
INSERT INTO courses (course_name, credit_hours)
VALUES
    ('Mathematics', 3),
    ('Computer Science', 4);

-- Insert enrollments
INSERT INTO enrollments (student_id, course_id, marks_obtained)
VALUES
    (1, 1, 80),
    (1, 2, 90),
    (2, 1, 85),
    (2, 2, 88);
