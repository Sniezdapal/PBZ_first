CREATE TABLE details
(
	detail_item CHARACTER VARYING(2) PRIMARY KEY,
	title CHARACTER VARYING(15),
	color CHARACTER VARYING(15),
	measurement INTEGER,
	city CHARACTER VARYING(15)
);

INSERT INTO details VALUES 
	('Д1', 'Болт', 'Красный', 12, 'Москва'),
	('Д2', 'Гайка', 'Зеленый', 17, 'Минск'),
	('Д3', 'Диск', 'Черный', 17, 'Вильнюс'),
	('Д4', 'Диск', 'Черный', 14, 'Москва'),
	('Д5', 'Корпус', 'Красный', 12, 'Минск'),
	('Д6', 'Крышки', 'Красный', 19, 'Москва');