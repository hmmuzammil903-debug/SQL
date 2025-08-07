-- Create a student summary view
CREATE VIEW final_student_summary AS
SELECT
    s.student_id,
    s.student_name,
    s.gender,
    ROUND(AVG(e.marks_obtained), 2) AS average_grade
FROM students s
JOIN enrollments e ON s.student_id = e.student_id
GROUP BY s.student_id, s.student_name, s.gender;

-- Select from view
SELECT * FROM final_student_summary;
