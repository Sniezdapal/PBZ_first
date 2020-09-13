-- Получить номера преподавателей, работающих с группой Э-15, но не преподающих предмет 12П.
SELECT tts.personal_number FROM teacher_teaches_subjects tts
INNER JOIN student_groups sg ON sg.code_group_number = tts.code_group_number
WHERE sg.group_name = 'Э-15' AND tts.code_subjet_number != '12П';