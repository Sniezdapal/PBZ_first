--Получить номера предметов, изучаемых всеми студенческими группами.

SELECT code_subjet_number FROM teacher_teaches_subjects
GROUP BY code_subjet_number
HAVING COUNT(code_group_number) = (SELECT COUNT(*) FROM student_groups);