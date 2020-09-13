-- Получить  номера предметов и названия предметов, которые ведет преподаватель Костин.
SELECT s.code_subjet_number, s.subject_name FROM subjects s
INNER JOIN teacher_teaches_subjects tts ON tts.code_subjet_number = s.code_subjet_number
INNER JOIN teachers AS t ON t.personal_number = tts.personal_number
WHERE t.last_name = 'Костин';