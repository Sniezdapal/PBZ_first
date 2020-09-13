-- Получить информацию о предметах, которые не изучаются в группе М-6.
SELECT DISTINCT s.* FROM subjects s
INNER JOIN teacher_teaches_subjects tts ON s.code_subjet_number = tts.code_subjet_number
INNER JOIN student_groups sg ON sg.code_group_number = tts.code_group_number
EXCEPT
SELECT DISTINCT s.* FROM subjects s
INNER JOIN teacher_teaches_subjects tts ON s.code_subjet_number = tts.code_subjet_number
INNER JOIN student_groups sg ON tts.code_group_number = sg.code_group_number
WHERE sg.group_name = 'М-6';