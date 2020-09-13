--Получить номера деталей, поставляемых либо лондонским поставщиком, либо для лондонского проекта.

SELECT detail_numbers_for_project.detail_item FROM detail_numbers_for_project
JOIN projects
ON detail_numbers_for_project.project_item = projects.project_item
JOIN producers
ON detail_numbers_for_project.producer_item = producers.producer_item
WHERE projects.city = 'Лондон' OR
producers.city = 'Лондон';