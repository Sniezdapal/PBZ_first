--Получить номера проектов, обеспечиваемых по крайней мере одним поставщиком не из того же города.

SELECT detail_numbers_for_project.project_item FROM detail_numbers_for_project
JOIN projects
ON detail_numbers_for_project.project_item = projects.project_item
JOIN producers
ON detail_numbers_for_project.producer_item = producers.producer_item
WHERE projects.city != producers.city;