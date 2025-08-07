-- Students who scored above average overall
SELECT student_name
FROM students
WHERE student_id IN (
    SELECT student_id
    FROM enrollments
    GROUP BY student_id
    HAVING AVG(marks_obtained) > (
        SELECT AVG(marks_obtained) FROM enrollments
    )
);
