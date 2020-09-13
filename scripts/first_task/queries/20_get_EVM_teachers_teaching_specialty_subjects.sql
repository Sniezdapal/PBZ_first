-- Получить номера преподавателей с кафедры ЭВМ, преподающих предметы по специальности, совпадающей со специальностью студенческой группы.
SELECT t.personal_number FROM teachers t                                                                                                                                                                                               
INNER JOIN teacher_teaches_subjects tts ON tts.personal_number = t.personal_number
INNER JOIN student_groups sg ON sg.code_group_number = tts.code_group_number
INNER JOIN subjects sub ON sub.code_subjet_number = tts.code_subjet_number
WHERE t.department = 'ЭВМ' AND sub.spetialty = sg.spetialty;