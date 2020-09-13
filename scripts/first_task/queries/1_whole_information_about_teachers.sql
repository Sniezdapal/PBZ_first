-- Получить полную информацию обо всех преподавателях.

SELECT * FROM teachers LEFT JOIN spetialties
ON teachers.personal_number = spetialties.personal_number;