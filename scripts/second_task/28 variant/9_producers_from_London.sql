--Получить номера деталей, поставляемых поставщиком в Лондоне.

SELECT detail_item FROM detail_numbers_for_project 
JOIN producers
ON detail_numbers_for_project.producer_item = producers.producer_item
WHERE producers.city = 'Лондон';