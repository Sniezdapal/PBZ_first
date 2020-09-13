--Получить все такие тройки "номера поставщиков-номера деталей-номера проектов", для которых никакие из двух выводимых поставщиков, деталей и проектов не размещены в одном городе.

SELECT producers.producer_item, details.detail_item, projects.project_item FROM detail_numbers_for_project 
JOIN producers
ON producers.producer_item = detail_numbers_for_project.producer_item
JOIN details
ON details.detail_item = detail_numbers_for_project.detail_item
JOIN projects
ON projects.project_item = detail_numbers_for_project.project_item
WHERE
producers.city != details.city OR
producers.city != projects.city OR
details.city != projects.city;