-- Получить номера преподавателей, обучающих студентов по специальности ЭВМ.
SELECT te.personal_number FROM teachers te
INNER JOIN teacher_teaches_subjects tts ON tts.personal_number = te.personal_number
INNER JOIN student_groups sg ON sg.code_group_number = tts.code_group_number
WHERE sg.spetialty = 'ЭВМ';