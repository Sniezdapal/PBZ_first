-- Получить номера предметов, номера преподавателей, номера групп, в которых ведут занятия преподаватели с кафедры ЭВМ, имеющих специальность АСОИ.
SELECT tts.code_subjet_number, tts.personal_number, tts.code_group_number FROM teacher_teaches_subjects tts
WHERE tts.personal_number = (
  SELECT t.personal_number FROM teachers t
  INNER JOIN spetialties s ON s.personal_number = t.personal_number
  WHERE t.department = 'ЭВМ' AND s.title = 'АСОИ'
  );