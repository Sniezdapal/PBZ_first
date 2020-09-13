--Получить номера проектов, для которых среднее количество поставляемых деталей Д1 больше, чем наибольшее количество любых деталей, поставляемых для проекта ПР1.

SELECT project_item FROM detail_numbers_for_project
WHERE detail_item = 'Д1'
AND quantity > (
	SELECT MAX(quantity)
  	FROM detail_numbers_for_project
  	WHERE project_item = 'ПР1'
);