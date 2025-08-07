-- Students with average marks > 85
SELECT
    s.student_name,
    ROUND(AVG(e.marks_obtained), 2) AS avg_marks
FROM students s
JOIN enrollments e ON s.student_id = e.student_id
GROUP BY s.student_id, s.student_name
HAVING AVG(e.marks_obtained) > 85;

-- Courses with credit hours >= 4
SELECT * FROM courses WHERE credit_hours >= 4;
