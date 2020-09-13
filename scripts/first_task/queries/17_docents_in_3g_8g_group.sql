-- Получить информацию о доцентах, преподающих в группах 3Г и 8Г.

SELECT DISTINCT teachers.personal_number, last_name, tacher_position, department, phone_number, title 
FROM teachers JOIN teacher_teaches_subjects
ON teachers.personal_number = teacher_teaches_subjects.personal_number
JOIN spetialties
ON spetialties.personal_number = teachers.personal_number
WHERE tacher_position = 'Доцент' AND (code_group_number = '3Г' OR
                                      code_group_number = '8Г');
                                      