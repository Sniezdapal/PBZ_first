-- Получить информацию о предметах, которые не ведет преподаватель с личным номером 221П.

SELECT DISTINCT subjects.code_subjet_number, subject_name, hours_number, spetialty, semester FROM subjects
JOIN teacher_teaches_subjects
ON subjects.code_subjet_number = teacher_teaches_subjects.code_subjet_number
WHERE personal_number != '221л';