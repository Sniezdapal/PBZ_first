--Получить общее число проектов, обеспечиваемых поставщиком П1.

SELECT COUNT(project_item) FROM detail_numbers_for_project 
WHERE detail_numbers_for_project.producer_item = 'П1';