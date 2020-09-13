-- Получить фамилии преподавателей, преподающих те же предметы, что и преподаватель преподающий предмет с номером 14П.
SELECT t.last_name FROM teachers t
INNER JOIN teacher_teaches_subjects tts ON tts.personal_number = t.personal_number
WHERE tts.code_subjet_number = '14П';