-- Получить фамилии преподавателей, которые ведут предметы в 210 аудитории.
SELECT t.last_name FROM teachers t
INNER JOIN teacher_teaches_subjects tts ON tts.personal_number = t.personal_number
WHERE tts.classroom = 210;