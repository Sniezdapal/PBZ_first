--Получить номера деталей, поставляемых поставщиком в Лондоне для проекта в Лондоне.

SELECT detail_item FROM detail_numbers_for_project 
JOIN producers
ON detail_numbers_for_project.producer_item = producers.producer_item
JOIN projectS
ON projects.project_item = detail_numbers_for_project.project_item
WHERE producers.city = 'Лондон' AND projects.city = 'Лондон';