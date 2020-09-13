-- Получить личный номер преподавателя и номера аудиторий, в которых они преподают предмет с кодовым номером 18П.

SELECT personal_number, classroom FROM teacher_teaches_subjects
WHERE code_subjet_number = '18П';
