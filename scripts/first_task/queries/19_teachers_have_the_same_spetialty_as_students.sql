-- Получить номера групп с такой же специальностью, что и специальность преподавателей.

SELECT DISTINCT teacher_teaches_subjects.code_group_number FROM teacher_teaches_subjects
JOIN spetialties
ON spetialties.personal_number = teacher_teaches_subjects.personal_number
JOIN student_groups
ON student_groups.code_group_number = teacher_teaches_subjects.code_group_number
WHERE spetialties.title = student_groups.spetialty;