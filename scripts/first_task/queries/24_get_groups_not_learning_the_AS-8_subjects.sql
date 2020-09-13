-- Получить номера студенческих групп, которые не изучают предметы, преподаваемых в студенческой группе АС-8.
SELECT tts.code_group_number FROM teacher_teaches_subjects tts
WHERE tts.code_subjet_number NOT IN (
  SELECT tts1.code_subjet_number FROM teacher_teaches_subjects tts1
  INNER JOIN student_groups sg ON sg.code_group_number = tts1.code_group_number
  WHERE sg.group_name = 'АС-8'
  );