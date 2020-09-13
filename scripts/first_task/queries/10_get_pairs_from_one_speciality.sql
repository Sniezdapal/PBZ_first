-- Получить пары номеров групп с одной специальности.
SELECT sg1.code_group_number, sg2.code_group_number FROM student_groups sg1, student_groups sg2
WHERE sg1.spetialty = sg2.spetialty AND sg1.code_group_number <> sg2.code_group_number;