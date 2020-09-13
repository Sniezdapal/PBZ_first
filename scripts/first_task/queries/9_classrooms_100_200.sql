-- Получить названия предметов и названия групп, которые ведут занятия в аудиториях с 100 по 200. 

SELECT subject_name, group_name FROM teacher_teaches_subjects JOIN subjects
ON teacher_teaches_subjects.code_subjet_number = subjects.code_subjet_number
JOIN student_groups 
ON teacher_teaches_subjects.code_group_number = student_groups.code_group_number
WHERE classroom >= 100 AND classroom <= 200;