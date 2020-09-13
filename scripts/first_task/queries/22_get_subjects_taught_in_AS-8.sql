-- Получить номера предметов, изучаемых группой АС-8.
SELECT s.code_subjet_number FROM subjects s
INNER JOIN teacher_teaches_subjects tts ON tts.code_subjet_number = s.code_subjet_number
INNER JOIN student_groups sg ON sg.code_group_number = tts.code_group_number
WHERE sg.group_name = 'АС-8';