-- Join students with their enrolled courses and marks
SELECT
    s.student_name,
    c.course_name,
    e.marks_obtained
FROM students s
JOIN enrollments e ON s.student_id = e.student_id
JOIN courses c ON e.course_id = c.course_id;
