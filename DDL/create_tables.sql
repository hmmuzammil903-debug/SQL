-- Create table: students
CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    student_name TEXT NOT NULL,
    age INT,
    gender TEXT,
    date_of_admission DATE
);

-- Create table: courses
CREATE TABLE courses (
    course_id SERIAL PRIMARY KEY,
    course_name TEXT NOT NULL,
    credit_hours INT
);

-- Create table: enrollments
CREATE TABLE enrollments (
    enrollment_id SERIAL PRIMARY KEY,
    student_id INT REFERENCES students(student_id),
    course_id INT REFERENCES courses(course_id),
    marks_obtained INT
);
