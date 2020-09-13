CREATE TABLE projects
(
	project_item CHARACTER VARYING(3) PRIMARY KEY,
	title CHARACTER VARYING(4),
	city CHARACTER VARYING(15)
);

INSERT INTO projects VALUES 
	('ПР1', 'ИПР1', 'Минск'),
	('ПР2', 'ИПР2', 'Таллин'),
	('ПР3', 'ИПР3', 'Псков'),
	('ПР4', 'ИПР4', 'Псков'),
	('ПР5', 'ИПР5', 'Москва'),
	('ПР6', 'ИПР6', 'Саратов'),
	('ПР7', 'ИПР7', 'Саратов');