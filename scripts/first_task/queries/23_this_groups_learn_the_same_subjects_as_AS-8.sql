-- Получить номера студенческих групп, которые изучают те же предметы, что и студенческая группа АС-8.

SELECT DISTINCT code_group_number FROM teacher_teaches_subjects
WHERE code_subjet_number IN (
  SELECT code_subjet_number FROM teacher_teaches_subjects 
  JOIN student_groups
  ON teacher_teaches_subjects.code_group_number = student_groups.code_group_number
  WHERE student_groups.group_name = 'АС-8'
);