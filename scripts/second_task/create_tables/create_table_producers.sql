CREATE TABLE producers 
(
	producer_item CHARACTER VARYING(2) PRIMARY KEY,
	surname CHARACTER VARYING(15),
	status INTEGER,
	city CHARACTER VARYING(15)
);

INSERT INTO producers VALUES 
	('П1', 'Петров', 20, 'Москва'),
	('П2', 'Синицин', 10, 'Таллин'),
	('П3', 'Федоров', 30, 'Таллин'),
	('П4', 'Чаянов', 20, 'Минск'),
	('П5', 'Крюков', 30, 'Киев');