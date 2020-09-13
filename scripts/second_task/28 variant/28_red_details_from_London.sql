--Получить номера проектов, для которых не поставляются красные детали поставщиками из Лондона.

SELECT project_item FROM detail_numbers_for_project 
JOIN details
ON detail_numbers_for_project.detail_item = details.detail_item
JOIN producers
ON detail_numbers_for_project.producer_item = producers.producer_item
WHERE details.color = 'Красный' AND producers.city = 'Лондон';