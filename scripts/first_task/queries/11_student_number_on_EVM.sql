-- Получить общее количество студентов, обучающихся на специальности ЭВМ.

SELECT SUM(persons_number) FROM student_groups
WHERE spetialty = 'ЭВМ';