Select sum(duration) as total_duration 
FROM assignment_submissions
INNER JOIN students on students.id = student_id
WHERE students.name = 'Ibrahim Schimmel';