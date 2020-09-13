-- Получить номера студенческих групп, которые не изучают предметы, преподаваемых преподавателем 430Л.

SELECT DISTINCT code_group_number FROM teacher_teaches_subjects 
WHERE code_group_number NOT IN (
	SELECT code_group_number FROM teacher_teaches_subjects
 	WHERE teacher_teaches_subjects.personal_number = '430Л'
);