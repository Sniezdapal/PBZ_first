-- Получить информацию о преподавателях, которые ведут предметы на специальности АСОИ.

SELECT * FROM teachers LEFT JOIN spetialties
ON teachers.personal_number = spetialties.personal_number
WHERE title = 'АСОИ';