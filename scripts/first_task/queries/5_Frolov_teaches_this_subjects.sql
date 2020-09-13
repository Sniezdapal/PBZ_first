-- Получить номер группы, в которой ведутся предметы преподавателем Фроловым.

SELECT code_group_number FROM
teacher_teaches_subjects JOIN teachers
ON teacher_teaches_subjects.personal_number = teachers.personal_number
WHERE teachers.last_name = 'Фролов';
