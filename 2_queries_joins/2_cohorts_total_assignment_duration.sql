Select sum(duration) as total_duration 
FROM assignment_submissions
JOIN students on students.id = student_id
JOIN cohorts on cohorts.id = cohort_id
WHERE cohorts.name = 'FEB12';

SELECT students.name as student, count(assignment_submissions.*) as total_submissions
FROM assignment_submissions
JOIN students ON students.id = student_id
WHERE end_date IS NULL
GROUP BY students.name
HAVING count(assignment_submissions.*) < 100;