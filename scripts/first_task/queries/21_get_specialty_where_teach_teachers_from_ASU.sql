-- Получить специальности студенческой группы, на которых работают преподаватели кафедры АСУ.

SELECT DISTINCT spetialty FROM student_groups sg
JOIN teacher_teaches_subjects tts
ON sg.code_group_number = tts.code_group_number
JOIN teachers tc 
ON tts.personal_number = tc.personal_number
WHERE department = 'АСУ';