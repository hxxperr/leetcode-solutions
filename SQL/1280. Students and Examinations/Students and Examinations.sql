SELECT S.student_id, S.student_name, SUB.subject_name, COUNT(E.student_id) AS attended_exams
FROM Students S cross join Subjects SUB left join Examinations E on S.student_id = E.student_id and SUB.subject_name = E.subject_name
GROUP BY S.student_id, S.student_name, SUB.subject_name
order by S.student_id, SUB.subject_name